package com.shilapi.xcertplay.network

import android.content.Context
import android.net.ConnectivityManager
import android.os.Bundle
import android.os.ResultReceiver
import android.provider.Settings
import com.shilapi.xcertplay.adb.AdbKeys
import com.shilapi.xcertplay.adb.LocalAdb
import java.lang.reflect.InvocationTargetException
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicReference
import java.util.concurrent.TimeUnit
import java.util.concurrent.locks.ReentrantLock

/** Uses the car's saved hotspot configuration. This never stops or reconfigures the hotspot. */
object CarHotspotTethering {
    const val DEFAULT_TIMEOUT_MILLIS = WirelessStartupPolicy.HOTSPOT_READY_MILLIS
    private const val GRANT_BUDGET_MILLIS = 4_000L
    private val startupLock = ReentrantLock()
    enum class Result(val diagnostic: String) {
        READY("Car hotspot is on"),
        PERMISSION_REQUIRED("Hotspot control permission is missing"),
        UNSUPPORTED("This firmware does not support automatic hotspot startup"),
        FAILED("The car could not start its hotspot"),
        TIMED_OUT("Timed out waiting for the car hotspot"),
        CANCELLED("Hotspot startup was cancelled"),
    }

    fun permitted(context: Context): Boolean = Settings.System.canWrite(context)

    /**
     * Grants the `WRITE_SETTINGS` app-op silently through the head unit's own adbd (127.0.0.1:5555).
     * The saved-hotspot `startTethering` call needs this permission on firmware that does not ship
     * T-link as a privileged system app. This is the same grant the settings flow performs, but it
     * never shows a dialog: it only succeeds when adbd already trusts this device's key.
     */
    private fun grantWriteSettings(context: Context, log: (String) -> Unit): Boolean {
        if (Settings.System.canWrite(context)) return true
        // Firmware without adbd on 5555 leaves this hanging on the connect timeout, so the grant may
        // never eat more than a small slice of the hotspot budget.
        val deadline = System.nanoTime() + GRANT_BUDGET_MILLIS * 1_000_000L
        val client = AtomicReference<LocalAdb?>()
        return CarHotspotAdbFallback.bounded(deadline, cancelled = { false },
            abort = { client.get()?.cancelPendingOperations() }) {
            val adb = LocalAdb(AdbKeys.load(context))
            client.set(adb)
            adb.use {
                val access = it.connect(mayAsk = false)
                log("hotspot write-settings grant: local ADB access=$access")
                if (access != LocalAdb.Access.READY) false
                else {
                    val output = it.shell("appops set ${context.packageName} WRITE_SETTINGS allow")
                    log("hotspot write-settings grant: appops output=$output")
                    Settings.System.canWrite(context).also { granted ->
                        log("hotspot write-settings grant: canWrite now=$granted")
                    }
                }
            }
        }
    }

    /** Blocking; serialize startup and connection requests, checking cancellation after acquiring the lock. */
    fun enable(
        context: Context,
        isCancelled: () -> Boolean,
        timeoutMillis: Long = DEFAULT_TIMEOUT_MILLIS,
        log: (String) -> Unit,
    ): Result {
        if (!Settings.System.canWrite(context)) {
            log("hotspot write-settings missing; attempting silent grant")
            grantWriteSettings(context, log)
        }
        val deadline = System.nanoTime() + timeoutMillis * 1_000_000L
        val observedAdbState = AtomicReference<Boolean?>()
        val startReflection: (ResultReceiver) -> Unit = { receiver ->
            val service = ConnectivityManager::class.java.getDeclaredField("mService")
                .apply { isAccessible = true }
                .get(context.getSystemService(ConnectivityManager::class.java))
                ?: throw NoSuchMethodException("Connectivity service unavailable")
            service.javaClass.getMethod(
                "startTethering", Int::class.javaPrimitiveType, ResultReceiver::class.java,
                Boolean::class.javaPrimitiveType, String::class.java,
            ).invoke(service, 0, receiver, false, context.packageName)
        }
        val startAdb: () -> Boolean = {
            val client = AtomicReference<LocalAdb?>()
            CarHotspotAdbFallback.bounded(deadline, isCancelled,
                abort = { client.get()?.cancelPendingOperations() }) {
                val adb = LocalAdb(AdbKeys.load(context))
                client.set(adb)
                adb.use {
                    if (isCancelled() || Thread.currentThread().isInterrupted || System.nanoTime() >= deadline) false
                    else if (adb.connect(mayAsk = false) != LocalAdb.Access.READY) false
                    else CarHotspotAdbFallback.start(deadline, isCancelled,
                        state = { CarHotspotStatus.isEnabled(context) }, shell = adb::shell, log = log)
                        .also { if (it) observedAdbState.set(true) }
                }
            }
        }
        return enableUntil(
            deadline,
            isCancelled,
            stateWithAdbObservation({ CarHotspotStatus.isEnabled(context) }, observedAdbState),
            startFallback = startAdb,
            start = startReflection,
        ).also { log("car hotspot auto-enable: ${it.diagnostic}") }
    }

    /** An ADB observation supplements hidden platform status, but never overrides a current off state. */
    internal fun stateWithAdbObservation(
        platformState: () -> Boolean?,
        observation: AtomicReference<Boolean?>,
    ): () -> Boolean? = { platformState() ?: observation.get() }

    internal fun enable(
        timeoutMillis: Long,
        isCancelled: () -> Boolean,
        isEnabled: () -> Boolean?,
        start: (ResultReceiver) -> Unit,
    ): Result = enable(timeoutMillis, isCancelled, isEnabled, null, start)

    internal fun enable(
        timeoutMillis: Long,
        isCancelled: () -> Boolean,
        isEnabled: () -> Boolean?,
        startFallback: (() -> Boolean)?,
        start: (ResultReceiver) -> Unit,
    ): Result = enableUntil(System.nanoTime() + timeoutMillis * 1_000_000L,
        isCancelled, isEnabled, startFallback, start)

    private fun enableUntil(
        deadline: Long,
        isCancelled: () -> Boolean,
        isEnabled: () -> Boolean?,
        startFallback: (() -> Boolean)?,
        start: (ResultReceiver) -> Unit,
    ): Result {
        fun stopped(): Result? = when {
            isCancelled() || Thread.currentThread().isInterrupted -> Result.CANCELLED
            System.nanoTime() >= deadline -> Result.TIMED_OUT
            else -> null
        }
        while (true) {
            stopped()?.let { return it }
            val remaining = (deadline - System.nanoTime()) / 1_000_000L
            if (remaining <= 0) return Result.TIMED_OUT
            try {
                if (startupLock.tryLock(minOf(250L, remaining), TimeUnit.MILLISECONDS)) break
            } catch (_: InterruptedException) {
                Thread.currentThread().interrupt()
                return Result.CANCELLED
            }
        }
        try {
            stopped()?.let { return it }
            val initialState = isEnabled()
            stopped()?.let { return it }
            if (initialState == true) return Result.READY
            fun fallback(): Boolean {
                stopped()?.let { return false }
                return try { startFallback?.invoke() == true } catch (error: Exception) {
                    if (error is InterruptedException) Thread.currentThread().interrupt()
                    false
                }
            }
            val unknown = initialState == null
            if (unknown) {
                if (!fallback()) return stopped() ?: Result.UNSUPPORTED
            }
            val response = AtomicInteger(-1)
            try {
                stopped()?.let { return it }
                if (!unknown) {
                    start(object : ResultReceiver(null) {
                        override fun onReceiveResult(resultCode: Int, resultData: Bundle?) {
                            response.set(resultCode)
                        }
                    })
                }
            } catch (error: Exception) {
                val adbRecovered = ((error is ReflectiveOperationException && error !is InvocationTargetException) ||
                    error is SecurityException ||
                    (error is InvocationTargetException && error.targetException is SecurityException)) &&
                    fallback()
                if (!adbRecovered) {
                    stopped()?.let { return it }
                    return when {
                        error is InvocationTargetException -> if (error.targetException is SecurityException) Result.PERMISSION_REQUIRED else Result.FAILED
                        error is ReflectiveOperationException -> Result.UNSUPPORTED
                        error is SecurityException -> Result.PERMISSION_REQUIRED
                        else -> Result.FAILED
                    }
                }
            }
            while (true) {
                stopped()?.let { return it }
                val enabled = isEnabled()
                stopped()?.let { return it }
                if (enabled == true) return Result.READY
                if (response.get() > 0) return Result.FAILED
                val remainingMillis = (deadline - System.nanoTime()) / 1_000_000L
                if (remainingMillis <= 0) return Result.TIMED_OUT
                try {
                    Thread.sleep(minOf(250L, remainingMillis))
                } catch (_: InterruptedException) {
                    Thread.currentThread().interrupt()
                    return Result.CANCELLED
                }
            }
        } finally {
            startupLock.unlock()
        }
    }
}
