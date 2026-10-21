package android.media;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MediaFormat {
    public static final String KEY_AAC_PROFILE = "aac-profile";
    public static final String KEY_BIT_RATE = "bitrate";
    public static final String KEY_CHANNEL_COUNT = "channel-count";
    public static final String KEY_CHANNEL_MASK = "channel-mask";
    public static final String KEY_COLOR_FORMAT = "color-format";
    public static final String KEY_DURATION = "durationUs";
    public static final String KEY_FLAC_COMPRESSION_LEVEL = "flac-compression-level";
    public static final String KEY_FRAME_RATE = "frame-rate";
    public static final String KEY_HEIGHT = "height";
    public static final String KEY_IS_ADTS = "is-adts";
    public static final String KEY_IS_AUTOSELECT = "is-autoselect";
    public static final String KEY_IS_DEFAULT = "is-default";
    public static final String KEY_IS_FORCED_SUBTITLE = "is-forced-subtitle";
    public static final String KEY_I_FRAME_INTERVAL = "i-frame-interval";
    public static final String KEY_LANGUAGE = "language";
    public static final String KEY_MAX_HEIGHT = "max-height";
    public static final String KEY_MAX_INPUT_SIZE = "max-input-size";
    public static final String KEY_MAX_WIDTH = "max-width";
    public static final String KEY_MIME = "mime";
    public static final String KEY_PUSH_BLANK_BUFFERS_ON_STOP = "push-blank-buffers-on-shutdown";
    public static final String KEY_REPEAT_PREVIOUS_FRAME_AFTER = "repeat-previous-frame-after";
    public static final String KEY_SAMPLE_RATE = "sample-rate";
    public static final String KEY_SLICE_HEIGHT = "slice-height";
    public static final String KEY_STRIDE = "stride";
    public static final String KEY_WIDTH = "width";
    private Map<String, Object> mMap;

    public MediaFormat(Map<String, Object> map) {
        this.mMap = map;
    }

    public static final MediaFormat createAudioFormat(String str, int i2, int i3) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(KEY_MIME, str);
        mediaFormat.setInteger(KEY_SAMPLE_RATE, i2);
        mediaFormat.setInteger(KEY_CHANNEL_COUNT, i3);
        return mediaFormat;
    }

    public static final MediaFormat createSubtitleFormat(String str, String str2) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(KEY_MIME, str);
        mediaFormat.setString("language", str2);
        return mediaFormat;
    }

    public static final MediaFormat createVideoFormat(String str, int i2, int i3) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(KEY_MIME, str);
        mediaFormat.setInteger("width", i2);
        mediaFormat.setInteger("height", i3);
        return mediaFormat;
    }

    public final boolean containsKey(String str) {
        return this.mMap.containsKey(str);
    }

    public final ByteBuffer getByteBuffer(String str) {
        return (ByteBuffer) this.mMap.get(str);
    }

    public final float getFloat(String str) {
        return ((Float) this.mMap.get(str)).floatValue();
    }

    public final int getInteger(String str) {
        return ((Integer) this.mMap.get(str)).intValue();
    }

    public final long getLong(String str) {
        return ((Long) this.mMap.get(str)).longValue();
    }

    public Map<String, Object> getMap() {
        return this.mMap;
    }

    public final String getString(String str) {
        return (String) this.mMap.get(str);
    }

    public final void setByteBuffer(String str, ByteBuffer byteBuffer) {
        this.mMap.put(str, byteBuffer);
    }

    public final void setFloat(String str, float f2) {
        this.mMap.put(str, new Float(f2));
    }

    public final void setInteger(String str, int i2) {
        this.mMap.put(str, new Integer(i2));
    }

    public final void setLong(String str, long j2) {
        this.mMap.put(str, new Long(j2));
    }

    public final void setString(String str, String str2) {
        this.mMap.put(str, str2);
    }

    public String toString() {
        return this.mMap.toString();
    }

    public final int getInteger(String str, int i2) {
        try {
            return getInteger(str);
        } catch (ClassCastException | NullPointerException unused) {
            return i2;
        }
    }

    public MediaFormat() {
        this.mMap = new HashMap();
    }
}
