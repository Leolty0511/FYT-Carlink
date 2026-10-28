package com.shilapi.xcertplay.vendor

object VendorDisplayProtocol {
    data class Viewport(val width: Int, val height: Int)

    private val SYSTEM_DECODE_PLATFORMS = setOf("6318", "6523", "6316", "6315")
    private const val PLATFORM_6318_NATIVE_CODEC_CUTOFF_SECONDS = 1_742_428_800L
    private const val VENDOR_MAX_LANDSCAPE_WIDTH = 1920
    private const val VENDOR_MAX_LANDSCAPE_HEIGHT = 1080
    private const val VENDOR_MAX_PORTRAIT_WIDTH = 1080
    private const val VENDOR_MAX_PORTRAIT_HEIGHT = 1920
    private const val VENDOR_DISPLAY_ALIGNMENT = 8

    fun usesDirectSurfaceCodec(
        platform: String,
        nativeCodecProperty: String?,
        buildDateUtcSeconds: Long = -1L,
    ): Boolean {
        if (platform == "6318" && buildDateUtcSeconds >= 0L) {
            return buildDateUtcSeconds > PLATFORM_6318_NATIVE_CODEC_CUTOFF_SECONDS
        }
        val defaultValue = if (platform in SYSTEM_DECODE_PLATFORMS) 0 else 1
        return (nativeCodecProperty?.toIntOrNull() ?: defaultValue) == 1
    }

    fun mapCoordinate(value: Float, viewSize: Int, displaySize: Int): Int {
        if (viewSize <= 0 || displaySize <= 0) return 0
        return (value * displaySize / viewSize).toInt().coerceIn(0, displaySize)
    }

    /**
     * Mirrors CarLink 2.0 `h.c#b(int, int)`: scale the window into 1920x1080 (landscape) or
     * 1080x1920 (portrait), then align both edges down to 8 pixels. The vendor algorithm also
     * scales small windows up, so a 768x880 window still gets a 1080x1232 CarPlay canvas.
     */
    fun negotiateDisplaySize(viewportWidth: Int, viewportHeight: Int): Viewport {
        if (viewportWidth <= 0 || viewportHeight <= 0) return Viewport(0, 0)
        val portrait = viewportWidth <= viewportHeight
        val maximumWidth = if (portrait) VENDOR_MAX_PORTRAIT_WIDTH else VENDOR_MAX_LANDSCAPE_WIDTH
        val maximumHeight = if (portrait) VENDOR_MAX_PORTRAIT_HEIGHT else VENDOR_MAX_LANDSCAPE_HEIGHT
        val scale = minOf(
            maximumWidth.toFloat() / viewportWidth,
            maximumHeight.toFloat() / viewportHeight,
        )
        val width = ((viewportWidth * scale) + 0.5f).toInt()
            .coerceAtLeast(VENDOR_DISPLAY_ALIGNMENT)
            .let { it - (it % VENDOR_DISPLAY_ALIGNMENT) }
        val height = ((viewportHeight * scale) + 0.5f).toInt()
            .coerceAtLeast(VENDOR_DISPLAY_ALIGNMENT)
            .let { it - (it % VENDOR_DISPLAY_ALIGNMENT) }
        return Viewport(width, height)
    }

    /** Uses the visible crop reported by MediaCodec rather than its padded stride dimensions. */
    fun decodedVideoSize(
        width: Int,
        height: Int,
        cropLeft: Int = -1,
        cropTop: Int = -1,
        cropRight: Int = -1,
        cropBottom: Int = -1,
    ): Viewport {
        val cropWidth = if (cropLeft >= 0 && cropRight >= cropLeft) cropRight - cropLeft + 1 else 0
        val cropHeight = if (cropTop >= 0 && cropBottom >= cropTop) cropBottom - cropTop + 1 else 0
        return Viewport(
            width = cropWidth.takeIf { it > 0 } ?: width.coerceAtLeast(0),
            height = cropHeight.takeIf { it > 0 } ?: height.coerceAtLeast(0),
        )
    }

    /** Fits the fixed CarPlay canvas inside any head-unit window without distorting it. */
    fun fitViewport(
        availableWidth: Int,
        availableHeight: Int,
        contentWidth: Int,
        contentHeight: Int,
    ): Viewport {
        if (availableWidth <= 0 || availableHeight <= 0 || contentWidth <= 0 || contentHeight <= 0) {
            return Viewport(0, 0)
        }
        return if (availableWidth.toLong() * contentHeight <=
            availableHeight.toLong() * contentWidth
        ) {
            Viewport(
                width = availableWidth,
                height = ((availableWidth.toLong() * contentHeight + contentWidth / 2) / contentWidth).toInt(),
            )
        } else {
            Viewport(
                width = ((availableHeight.toLong() * contentWidth + contentHeight / 2) / contentHeight).toInt(),
                height = availableHeight,
            )
        }
    }
}
