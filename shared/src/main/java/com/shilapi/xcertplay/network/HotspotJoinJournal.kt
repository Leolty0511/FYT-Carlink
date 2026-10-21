package com.shilapi.xcertplay.network

import java.io.*
import java.nio.file.AtomicMoveNotSupportedException
import java.nio.file.Files
import java.nio.file.StandardCopyOption
import java.security.MessageDigest

/** Shell-private, bounded, versioned journal; never use app external storage or diagnostic export. */
internal class HotspotJoinJournal<C>(directory: File, private val firmware: String,
    private val codec: Codec<C>, private val syncFile: (FileOutputStream) -> Unit = { it.fd.sync() },
    private val syncDirectory: () -> Unit = {}) : HotspotJoinTransaction.Store<C> {
    interface Codec<C> { fun encode(config: C): ByteArray; fun decode(bytes: ByteArray): C }
    class FirmwareChanged : IOException()
    private val file = File(directory, "journal")
    private val pendingFile = File(directory, "journal.new")
    private val backupFile = File(directory, "journal.bak")

    override fun load(): HotspotJoinTransaction.Record<C>? {
        if (!file.exists() && !backupFile.exists()) return null
        if (file.isFile) {
            try {
                return decode(file.inputStream().use { it.readBytesBounded(MAX_BYTES) })
            } catch (changed: FirmwareChanged) {
                throw changed
            } catch (_: IOException) {
                // Fall through to the last durable backup after an interrupted write.
            }
        }
        return decode(backupFile.inputStream().use { it.readBytesBounded(MAX_BYTES) })
    }

    private fun decode(bytes: ByteArray): HotspotJoinTransaction.Record<C> {
        if (bytes.size < 32) throw IOException()
        val body = bytes.copyOf(bytes.size - 32)
        if (!MessageDigest.isEqual(digest(body), bytes.copyOfRange(body.size, bytes.size))) throw IOException()
        return DataInputStream(ByteArrayInputStream(body)).use { input ->
            if (input.readInt() != MAGIC || input.readInt() != VERSION) throw IOException()
            // Check BEFORE unparcelling: Android parcels cannot be safely migrated across firmware.
            if (input.readUTF() != firmware) throw FirmwareChanged()
            val token = input.readUTF()
            val stage = HotspotJoinTransaction.Stage.entries.getOrNull(input.readInt()) ?: throw IOException()
            fun snapshot(): C {
                val size = input.readInt()
                if (size !in 1..MAX_SNAPSHOT || size > input.available()) throw IOException()
                return codec.decode(ByteArray(size).also { input.readFully(it) })
            }
            val original = snapshot(); val target = snapshot()
            if (input.available() != 0) throw IOException()
            HotspotJoinTransaction.Record(token, firmware, original, target, stage)
        }
    }

    override fun save(record: HotspotJoinTransaction.Record<C>) {
        if (record.firmware != firmware) throw FirmwareChanged()
        val buffer = ByteArrayOutputStream()
        DataOutputStream(buffer).use { output ->
            output.writeInt(MAGIC); output.writeInt(VERSION); output.writeUTF(firmware)
            output.writeUTF(record.token); output.writeInt(record.stage.ordinal)
            for (config in listOf(record.original, record.target)) {
                val bytes = codec.encode(config)
                if (bytes.size !in 1..MAX_SNAPSHOT) throw IOException()
                output.writeInt(bytes.size); output.write(bytes)
            }
        }
        val bytes = buffer.toByteArray()
        val persisted = bytes + digest(bytes)
        val stream = FileOutputStream(pendingFile)
        try {
            stream.write(persisted)
            syncFile(stream)
        } catch (error: Exception) {
            runCatching { stream.close() }
            pendingFile.delete()
            throw error
        } finally {
            runCatching { stream.close() }
        }
        if (file.exists()) move(file, backupFile)
        try {
            move(pendingFile, file)
        } catch (error: Exception) {
            if (!file.exists() && backupFile.exists()) runCatching { move(backupFile, file) }
            throw error
        }
        syncDirectory() // Persist the rename itself, not only the snapshot file contents.
        // Compare the exact parcel bytes; decoding and encoding an OEM Parcelable need not be canonical.
        val saved = file.inputStream().use { it.readBytesBounded(MAX_BYTES) }
        if (!MessageDigest.isEqual(saved, persisted)) {
            val difference = saved.indices.firstOrNull { it >= persisted.size || saved[it] != persisted[it] }
                ?: minOf(saved.size, persisted.size)
            throw IOException("Journal verification failed: expected=${persisted.size} read=${saved.size} firstDifference=$difference")
        }
        Files.deleteIfExists(backupFile.toPath())
    }

    private fun move(source: File, destination: File) {
        try {
            Files.move(source.toPath(), destination.toPath(),
                StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING)
        } catch (_: AtomicMoveNotSupportedException) {
            Files.move(source.toPath(), destination.toPath(), StandardCopyOption.REPLACE_EXISTING)
        }
    }

    private fun InputStream.readBytesBounded(limit: Int): ByteArray {
        val out = ByteArrayOutputStream()
        val buffer = ByteArray(4096)
        while (true) {
            val size = read(buffer)
            if (size < 0) break
            if (out.size() + size > limit) throw IOException()
            out.write(buffer, 0, size)
        }
        return out.toByteArray()
    }
    companion object {
        private const val MAGIC = 0x44485031
        private const val VERSION = 1
        private const val MAX_SNAPSHOT = 262144
        private const val MAX_BYTES = MAX_SNAPSHOT * 2 + 8192
        fun digest(bytes: ByteArray): ByteArray = MessageDigest.getInstance("SHA-256").digest(bytes)
    }
}
