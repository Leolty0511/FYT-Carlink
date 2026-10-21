package com.shilapi.xcertplay.vendor

/** Parser for Carlink's little-endian length + Annex-B access-unit video socket framing. */
internal class VendorVideoFramer(
    private val maxFrameSize: Int,
    private val onFrame: (ByteArray, Int, Int) -> Unit,
    private val onDesync: () -> Unit,
) {
    private val buffer = ByteArray(maxFrameSize + READ_SLACK_BYTES)
    private var length = 0

    fun append(source: ByteArray, count: Int) {
        var sourceOffset = 0
        var remaining = count.coerceIn(0, source.size)
        while (remaining > 0) {
            val copied = minOf(remaining, buffer.size - length)
            if (copied == 0) {
                resetAfterDesync()
                continue
            }
            System.arraycopy(source, sourceOffset, buffer, length, copied)
            length += copied
            sourceOffset += copied
            remaining -= copied
            drain()
        }
    }

    fun reset() {
        length = 0
    }

    private fun drain() {
        while (length >= HEADER_BYTES) {
            if (!hasStartCode(4)) {
                val nextHeader = findHeader(1)
                if (nextHeader < 0) {
                    if (length > HEADER_SEARCH_BYTES) resetAfterDesync()
                    return
                }
                discard(nextHeader)
                onDesync()
                continue
            }

            val frameSize = littleEndianInt(0)
            if (frameSize !in START_CODE_BYTES + 1..maxFrameSize) {
                discard(1)
                onDesync()
                continue
            }
            val packetSize = LENGTH_PREFIX_BYTES + frameSize
            if (length < packetSize) return
            onFrame(buffer, LENGTH_PREFIX_BYTES, frameSize)
            discard(packetSize)
        }
    }

    private fun findHeader(from: Int): Int {
        var prefixOffset = from
        while (prefixOffset + HEADER_BYTES <= length) {
            if (hasStartCode(prefixOffset + LENGTH_PREFIX_BYTES)) {
                val size = littleEndianInt(prefixOffset)
                if (size in START_CODE_BYTES + 1..maxFrameSize) return prefixOffset
            }
            prefixOffset++
        }
        return -1
    }

    private fun hasStartCode(offset: Int): Boolean =
        offset + START_CODE_BYTES <= length &&
            buffer[offset] == 0.toByte() && buffer[offset + 1] == 0.toByte() &&
            buffer[offset + 2] == 0.toByte() && buffer[offset + 3] == 1.toByte()

    private fun littleEndianInt(offset: Int): Int =
        (buffer[offset].toInt() and 0xff) or
            ((buffer[offset + 1].toInt() and 0xff) shl 8) or
            ((buffer[offset + 2].toInt() and 0xff) shl 16) or
            ((buffer[offset + 3].toInt() and 0xff) shl 24)

    private fun discard(count: Int) {
        if (count >= length) {
            length = 0
            return
        }
        System.arraycopy(buffer, count, buffer, 0, length - count)
        length -= count
    }

    private fun resetAfterDesync() {
        length = 0
        onDesync()
    }

    private companion object {
        const val LENGTH_PREFIX_BYTES = 4
        const val START_CODE_BYTES = 4
        const val HEADER_BYTES = LENGTH_PREFIX_BYTES + START_CODE_BYTES
        const val HEADER_SEARCH_BYTES = 64 * 1024
        const val READ_SLACK_BYTES = 64 * 1024 + HEADER_BYTES
    }
}

/** Holds decoder output until the new decoder has SPS, PPS and an IDR reference frame. */
internal class VendorH264SyncGate {
    data class Decision(
        val feed: Boolean,
        val codecConfig: Boolean,
        val keyFrame: Boolean,
        val requestSync: Boolean,
    )

    private var seenSps = false
    private var seenPps = false
    private var synchronized = false

    fun reset() {
        seenSps = false
        seenPps = false
        synchronized = false
    }

    fun evaluate(data: ByteArray, offset: Int, size: Int): Decision {
        val types = nalTypes(data, offset, size)
        val hasSps = NAL_SPS in types
        val hasPps = NAL_PPS in types
        val hasIdr = NAL_IDR in types
        seenSps = seenSps || hasSps
        seenPps = seenPps || hasPps

        if (synchronized) {
            return Decision(feed = true, codecConfig = false, keyFrame = hasIdr, requestSync = false)
        }
        if (hasIdr && seenSps && seenPps) {
            synchronized = true
            return Decision(feed = true, codecConfig = false, keyFrame = true, requestSync = false)
        }
        val onlyConfiguration = types.isNotEmpty() && types.all {
            it == NAL_SPS || it == NAL_PPS || it == NAL_SEI || it == NAL_ACCESS_UNIT_DELIMITER
        }
        return Decision(
            feed = onlyConfiguration && (hasSps || hasPps),
            codecConfig = onlyConfiguration && (hasSps || hasPps),
            keyFrame = false,
            requestSync = !hasSps && !hasPps,
        )
    }

    internal fun nalTypes(data: ByteArray, offset: Int, size: Int): Set<Int> {
        val end = (offset + size).coerceAtMost(data.size)
        val result = LinkedHashSet<Int>()
        var index = offset
        while (index + 3 < end) {
            val header = when {
                data[index] == 0.toByte() && data[index + 1] == 0.toByte() &&
                    data[index + 2] == 1.toByte() -> index + 3
                index + 4 < end && data[index] == 0.toByte() &&
                    data[index + 1] == 0.toByte() && data[index + 2] == 0.toByte() &&
                    data[index + 3] == 1.toByte() -> index + 4
                else -> {
                    index++
                    continue
                }
            }
            if (header < end) result += data[header].toInt() and 0x1f
            index = header + 1
        }
        return result
    }

    companion object {
        internal const val NAL_IDR = 5
        const val NAL_SEI = 6
        internal const val NAL_SPS = 7
        internal const val NAL_PPS = 8
        const val NAL_ACCESS_UNIT_DELIMITER = 9
    }
}
