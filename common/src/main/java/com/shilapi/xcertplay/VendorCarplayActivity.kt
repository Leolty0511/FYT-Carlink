package com.shilapi.xcertplay

import android.annotation.SuppressLint
import android.app.Activity
import android.content.res.ColorStateList
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.ServiceConnection
import android.graphics.Bitmap
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.view.Gravity
import android.view.MotionEvent
import android.view.PixelCopy
import android.view.Surface
import android.view.SurfaceHolder
import android.view.SurfaceView
import android.view.View
import android.view.WindowManager
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.TextView
import com.shilapi.xcertplay.host.R
import com.shilapi.xcertplay.vendor.VendorCarplayClient
import com.shilapi.xcertplay.vendor.VendorCarplayTransport
import com.shilapi.xcertplay.vendor.VendorDisplayProtocol

internal fun vendorProjectionReady(
    framesRendered: Long,
    directSurfaceCodec: Boolean,
    sessionState: String,
    freshFrameAfter: Long?,
): Boolean = (freshFrameAfter?.let { framesRendered > it } ?: (framesRendered > 0L)) ||
    directSurfaceCodec && sessionState == VendorCarplaySessionService.ACTIVE_SESSION_STATE

/**
 * Full-screen display for the head unit's vendor CarPlay engine: DiPlay plays the same role
 * the vendor CarLink app does — it binds `CarplayServer`, hands over a Surface (zero-copy
 * video render) and forwards touches — while all chrome, status and settings stay DiPlay's.
 *
 * Wire contract reproduced from the decompiled CarLink 2.0 (`CarplayView` + `CarplayFragment`):
 *  - the current window is negotiated into the engine's logical display space with cmd 218;
 *  - touch coordinates are mapped into that negotiated display space and sent via cmd 202;
 *  - surface is delivered via transact 4 on creation and released with null on destruction;
 *  - projection start/end (cmd 210) marks the visible window;
 * The Binder connection and video listener live in [VendorCarplaySessionService], matching the
 * vendor app's long-lived service. Destroying this Activity only releases its display Surface.
 */
class VendorCarplayActivity : Activity(), VendorCarplaySessionService.Observer {

    private lateinit var surfaceView: SurfaceView
    private lateinit var resumeFrameView: ImageView
    private lateinit var videoCover: View
    private lateinit var waitingView: View
    private lateinit var statusView: TextView

    private var surfaceReady = false
    private var surface: Surface? = null
    private var sessionService: VendorCarplaySessionService? = null
    private var serviceBound = false
    private var availableWidth = 0
    private var availableHeight = 0
    private var displayWidth = VendorCarplayClient.DISPLAY_WIDTH
    private var displayHeight = VendorCarplayClient.DISPLAY_HEIGHT
    private var videoWidth = 0
    private var videoHeight = 0
    private val touchCoordinates = IntArray(6)
    private var primaryPointerId = MotionEvent.INVALID_POINTER_ID
    private var secondaryPointerId = MotionEvent.INVALID_POINTER_ID
    private var projectionVisible = false
    private val main = Handler(Looper.getMainLooper())
    private var cachedFrame: Bitmap? = null
    private var resumeFrameBaseline = 0L
    private var awaitingResumeFrame = false
    private var frameCaptureGeneration = 0

    private val serviceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, binder: IBinder?) {
            val service = (binder as? VendorCarplaySessionService.LocalBinder)?.session ?: return
            sessionService = service
            serviceBound = true
            service.registerObserver(this@VendorCarplayActivity)
            service.setProjectionVisible(projectionVisible)
            service.configureViewport(availableWidth, availableHeight)
            surface?.takeIf { surfaceReady && it.isValid }?.let(service::attachSurface)
            service.requestSession()
            refreshStatus()
        }

        override fun onServiceDisconnected(name: ComponentName?) {
            serviceBound = false
            sessionService = null
            statusView.visibility = View.VISIBLE
            statusView.text = getString(R.string.opening_carplay)
        }
    }

    private val statusTicker = Runnable { refreshStatus() }

    @SuppressLint("SetTextI18n")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.addFlags(
            WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON or
                WindowManager.LayoutParams.FLAG_FULLSCREEN,
        )

        val root = FrameLayout(this)
        root.setBackgroundColor(WAITING_BACKGROUND)

        surfaceView = SurfaceView(this)
        surfaceView.holder.addCallback(Callbacks())
        surfaceView.isClickable = true
        surfaceView.setOnTouchListener { _, event -> handleTouch(event) }
        root.addView(
            surfaceView,
            FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT,
                Gravity.CENTER,
            ),
        )

        resumeFrameView = ImageView(this).apply {
            scaleType = ImageView.ScaleType.FIT_XY
            visibility = View.GONE
        }
        root.addView(
            resumeFrameView,
            FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT,
                Gravity.CENTER,
            ),
        )

        videoCover = View(this).apply { setBackgroundColor(WAITING_BACKGROUND) }
        root.addView(
            videoCover,
            FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT,
                Gravity.CENTER,
            ),
        )

        waitingView = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER
            setPadding(dp(32), dp(32), dp(32), dp(32))

            addView(
                ImageView(this@VendorCarplayActivity).apply {
                    setImageResource(R.drawable.ic_carplay)
                    scaleType = ImageView.ScaleType.FIT_CENTER
                    contentDescription = getString(R.string.carplay_icon)
                },
                LinearLayout.LayoutParams(dp(104), dp(104)).apply {
                    bottomMargin = dp(28)
                },
            )

            addView(
                TextView(this@VendorCarplayActivity).apply {
                    text = "CarPlay"
                    setTextColor(0xFFF4F7FB.toInt())
                    textSize = 30f
                    gravity = Gravity.CENTER
                },
                LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT,
                ),
            )

            statusView = TextView(this@VendorCarplayActivity).apply {
                setTextColor(0xFFB8C4D6.toInt())
                textSize = 16f
                gravity = Gravity.CENTER
                text = getString(R.string.opening_carplay)
            }
            addView(
                statusView,
                LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT,
                ).apply {
                    topMargin = dp(10)
                    bottomMargin = dp(24)
                },
            )

            addView(
                ProgressBar(this@VendorCarplayActivity).apply {
                    isIndeterminate = true
                    indeterminateTintList = ColorStateList.valueOf(0xFF86B4F8.toInt())
                },
                LinearLayout.LayoutParams(dp(32), dp(32)).apply {
                    gravity = Gravity.CENTER_HORIZONTAL
                },
            )
        }
        root.addView(
            waitingView,
            FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT,
            ),
        )
        setContentView(root)
        root.addOnLayoutChangeListener { _, left, top, right, bottom, _, _, _, _ ->
            availableWidth = right - left
            availableHeight = bottom - top
            sessionService?.configureViewport(availableWidth, availableHeight)
            updateVideoViewport()
        }

        hideSystemUi()
        if (!VendorCarplaySessionService.isRunning()) {
            val requestedTransport = intent.getStringExtra(VendorCarplaySessionService.EXTRA_TRANSPORT)
                ?.let { runCatching { VendorCarplayTransport.valueOf(it) }.getOrNull() }
                ?: VendorCarplayTransport.WIRELESS
            VendorCarplaySessionService.startSession(this, transport = requestedTransport)
        }
        bindService(
            Intent(this, VendorCarplaySessionService::class.java),
            serviceConnection,
            Context.BIND_AUTO_CREATE,
        )
    }

    override fun onResume() {
        super.onResume()
        projectionVisible = true
        val snapshot = sessionService?.snapshot()
        awaitingResumeFrame = cachedFrame != null && snapshot?.directSurfaceCodec == false
        if (awaitingResumeFrame) resumeFrameBaseline = snapshot?.framesRendered ?: resumeFrameBaseline
        sessionService?.setProjectionVisible(true)
        hideSystemUi()
        statusView.post(statusTicker)
    }

    override fun onPause() {
        projectionVisible = false
        sessionService?.snapshot()?.let { resumeFrameBaseline = it.framesRendered }
        captureLastFrame()
        sessionService?.setProjectionVisible(false)
        releaseTouches()
        super.onPause()
        statusView.removeCallbacks(statusTicker)
    }

    override fun onDestroy() {
        frameCaptureGeneration++
        clearCachedFrame()
        surface?.let { sessionService?.detachSurface(it) }
        sessionService?.unregisterObserver(this)
        if (serviceBound) runCatching { unbindService(serviceConnection) }
        serviceBound = false
        sessionService = null
        surface = null
        super.onDestroy()
    }

    override fun onBackPressed() {
        releaseTouches()
        moveTaskToBack(true)
    }

    // ---------------------------------------------------------------- surface

    private inner class Callbacks : SurfaceHolder.Callback {
        override fun surfaceCreated(holder: SurfaceHolder) {
            surfaceReady = true
            surface = holder.surface
            sessionService?.attachSurface(holder.surface)
        }

        override fun surfaceChanged(holder: SurfaceHolder, format: Int, width: Int, height: Int) = Unit

        override fun surfaceDestroyed(holder: SurfaceHolder) {
            surfaceReady = false
            sessionService?.detachSurface(holder.surface)
            surface = null
        }
    }

    // ---------------------------------------------------------------- touch

    @SuppressLint("ClickableViewAccessibility")
    private fun handleTouch(event: MotionEvent): Boolean {
        if (surfaceView.width <= 0 || surfaceView.height <= 0) return false
        val actionIndex = event.actionIndex
        val pointerId = event.getPointerId(actionIndex)

        fun update(slot: Int, index: Int, pressed: Boolean) {
            touchCoordinates[slot] = VendorDisplayProtocol.mapCoordinate(
                event.getX(index), surfaceView.width, displayWidth,
            )
            touchCoordinates[slot + 1] = VendorDisplayProtocol.mapCoordinate(
                event.getY(index), surfaceView.height, displayHeight,
            )
            touchCoordinates[slot + 2] = if (pressed) 1 else 0
        }

        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                primaryPointerId = pointerId
                secondaryPointerId = MotionEvent.INVALID_POINTER_ID
                update(0, actionIndex, true)
                touchCoordinates[3] = touchCoordinates[0]
                touchCoordinates[4] = touchCoordinates[1]
                touchCoordinates[5] = 0
            }
            MotionEvent.ACTION_POINTER_DOWN -> if (secondaryPointerId == MotionEvent.INVALID_POINTER_ID &&
                pointerId != primaryPointerId
            ) {
                secondaryPointerId = pointerId
                update(3, actionIndex, true)
            }
            MotionEvent.ACTION_MOVE -> {
                for (index in 0 until minOf(event.pointerCount, 2)) {
                    when (event.getPointerId(index)) {
                        primaryPointerId -> update(0, index, true)
                        secondaryPointerId -> update(3, index, true)
                    }
                }
            }
            MotionEvent.ACTION_POINTER_UP -> when (pointerId) {
                secondaryPointerId -> {
                    update(3, actionIndex, false)
                    secondaryPointerId = MotionEvent.INVALID_POINTER_ID
                }
                primaryPointerId -> {
                    update(0, actionIndex, false)
                    primaryPointerId = secondaryPointerId
                    if (secondaryPointerId != MotionEvent.INVALID_POINTER_ID) {
                        touchCoordinates[0] = touchCoordinates[3]
                        touchCoordinates[1] = touchCoordinates[4]
                        touchCoordinates[2] = touchCoordinates[5]
                    }
                    secondaryPointerId = MotionEvent.INVALID_POINTER_ID
                    touchCoordinates[5] = 0
                }
            }
            MotionEvent.ACTION_UP -> {
                update(0, actionIndex, false)
                primaryPointerId = MotionEvent.INVALID_POINTER_ID
                secondaryPointerId = MotionEvent.INVALID_POINTER_ID
                touchCoordinates[5] = 0
            }
            MotionEvent.ACTION_CANCEL -> {
                primaryPointerId = MotionEvent.INVALID_POINTER_ID
                secondaryPointerId = MotionEvent.INVALID_POINTER_ID
                touchCoordinates[2] = 0
                touchCoordinates[5] = 0
            }
        }
        sessionService?.touch(touchCoordinates.copyOf())
        return true
    }

    private fun releaseTouches() {
        if (touchCoordinates[2] == 0 && touchCoordinates[5] == 0) return
        primaryPointerId = MotionEvent.INVALID_POINTER_ID
        secondaryPointerId = MotionEvent.INVALID_POINTER_ID
        touchCoordinates[2] = 0
        touchCoordinates[5] = 0
        sessionService?.touch(touchCoordinates.copyOf())
    }

    // ---------------------------------------------------------------- status

    private fun refreshStatus() {
        val snapshot = sessionService?.snapshot()
        if (awaitingResumeFrame && snapshot != null && snapshot.framesRendered > resumeFrameBaseline) {
            awaitingResumeFrame = false
            clearCachedFrame()
        }
        val cachedFrameReady = awaitingResumeFrame && cachedFrame != null &&
            snapshot?.sessionEstablished == true &&
            snapshot.state == VendorCarplaySessionService.ACTIVE_SESSION_STATE
        val ready = snapshot?.let {
            vendorProjectionReady(
                framesRendered = it.framesRendered,
                directSurfaceCodec = it.directSurfaceCodec,
                sessionState = it.state,
                freshFrameAfter = resumeFrameBaseline.takeIf { awaitingResumeFrame },
            )
        } == true || cachedFrameReady
        resumeFrameView.visibility = if (cachedFrameReady) View.VISIBLE else View.GONE
        videoCover.visibility = if (ready) View.GONE else View.VISIBLE
        waitingView.visibility = if (ready) View.GONE else View.VISIBLE
        statusView.text = getString(
            if (snapshot?.connected == true) R.string.opening_carplay
            else R.string.connecting_to_your_iphone,
        )
        statusView.removeCallbacks(statusTicker)
        statusView.postDelayed(statusTicker, 2000L)
    }

    private fun updateVideoViewport() {
        val contentWidth = videoWidth.takeIf { it > 0 } ?: displayWidth
        val contentHeight = videoHeight.takeIf { it > 0 } ?: displayHeight
        val viewport = VendorDisplayProtocol.fitViewport(
            availableWidth = availableWidth,
            availableHeight = availableHeight,
            contentWidth = contentWidth,
            contentHeight = contentHeight,
        )
        if (viewport.width <= 0 || viewport.height <= 0) return
        for (view in arrayOf<View>(surfaceView, resumeFrameView, videoCover)) {
            val params = view.layoutParams as FrameLayout.LayoutParams
            if (params.width == viewport.width && params.height == viewport.height) continue
            params.width = viewport.width
            params.height = viewport.height
            params.gravity = Gravity.CENTER
            view.layoutParams = params
        }
    }

    private fun captureLastFrame() {
        if (!surfaceReady || !surfaceView.holder.surface.isValid ||
            surfaceView.width <= 0 || surfaceView.height <= 0
        ) return
        val generation = ++frameCaptureGeneration
        val bitmap = Bitmap.createBitmap(surfaceView.width, surfaceView.height, Bitmap.Config.ARGB_8888)
        PixelCopy.request(surfaceView, bitmap, { result ->
            if (generation != frameCaptureGeneration || isDestroyed) {
                bitmap.recycle()
                return@request
            }
            if (result == PixelCopy.SUCCESS) {
                cachedFrame?.takeIf { it !== bitmap }?.recycle()
                cachedFrame = bitmap
                resumeFrameView.setImageBitmap(bitmap)
            } else {
                bitmap.recycle()
            }
        }, main)
    }

    private fun clearCachedFrame() {
        resumeFrameView.visibility = View.GONE
        resumeFrameView.setImageDrawable(null)
        cachedFrame?.recycle()
        cachedFrame = null
    }

    private fun hideSystemUi() {
        window.decorView.systemUiVisibility = (
            View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                or View.SYSTEM_UI_FLAG_FULLSCREEN
                or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                or View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
            )
        @Suppress("DEPRECATION")
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            window.attributes.layoutInDisplayCutoutMode =
                WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES
        }
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density + 0.5f).toInt()

    // ---------------------------------------------------------------- service events

    override fun onVendorSessionUpdated(snapshot: VendorCarplaySessionService.Snapshot) {
        runOnUiThread {
            if (isDestroyed) return@runOnUiThread
            displayWidth = snapshot.displayWidth
            displayHeight = snapshot.displayHeight
            videoWidth = snapshot.videoWidth
            videoHeight = snapshot.videoHeight
            updateVideoViewport()
            refreshStatus()
        }
    }

    override fun onVendorSessionStopped() {
        runOnUiThread { if (!isFinishing) finish() }
    }

    private companion object {
        const val WAITING_BACKGROUND = 0xFF080E19.toInt()
    }
}
