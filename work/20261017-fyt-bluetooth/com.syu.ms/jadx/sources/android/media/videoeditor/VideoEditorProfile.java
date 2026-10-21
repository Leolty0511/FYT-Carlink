package android.media.videoeditor;

/* JADX INFO: loaded from: classes.dex */
public class VideoEditorProfile {
    public int maxInputVideoFrameHeight;
    public int maxInputVideoFrameWidth;
    public int maxOutputVideoFrameHeight;
    public int maxOutputVideoFrameWidth;

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    private VideoEditorProfile(int i2, int i3, int i4, int i5) {
        this.maxInputVideoFrameWidth = i2;
        this.maxInputVideoFrameHeight = i3;
        this.maxOutputVideoFrameWidth = i4;
        this.maxOutputVideoFrameHeight = i5;
    }

    public static VideoEditorProfile get() {
        return native_get_videoeditor_profile();
    }

    public static int getExportLevel(int i2) {
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            return native_get_videoeditor_export_level(i2);
        }
        throw new IllegalArgumentException("Unsupported video codec" + i2);
    }

    public static int getExportProfile(int i2) {
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            return native_get_videoeditor_export_profile(i2);
        }
        throw new IllegalArgumentException("Unsupported video codec" + i2);
    }

    private static final native int native_get_videoeditor_export_level(int i2);

    private static final native int native_get_videoeditor_export_profile(int i2);

    private static final native VideoEditorProfile native_get_videoeditor_profile();

    private static final native void native_init();
}
