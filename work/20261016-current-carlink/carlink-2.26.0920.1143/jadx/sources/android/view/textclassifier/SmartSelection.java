package android.view.textclassifier;

/* JADX INFO: loaded from: classes2.dex */
final class SmartSelection {
    static final int HINT_FLAG_EMAIL = 2;
    static final int HINT_FLAG_URL = 1;
    private final long mCtx;

    public static final class ClassificationResult {
        final String mCollection;
        final float mScore;

        public ClassificationResult(String str, float f2) {
            this.mCollection = str;
            this.mScore = f2;
        }
    }

    static {
        System.loadLibrary("textclassifier");
    }

    public SmartSelection(int i2) {
        this.mCtx = nativeNew(i2);
    }

    public static String getLanguage(int i2) {
        return nativeGetLanguage(i2);
    }

    public static int getVersion(int i2) {
        return nativeGetVersion(i2);
    }

    private static native ClassificationResult[] nativeClassifyText(long j2, String str, int i2, int i3, int i4);

    private static native void nativeClose(long j2);

    private static native String nativeGetLanguage(int i2);

    private static native int nativeGetVersion(int i2);

    private static native long nativeNew(int i2);

    private static native int[] nativeSuggest(long j2, String str, int i2, int i3);

    public ClassificationResult[] classifyText(String str, int i2, int i3, int i4) {
        return nativeClassifyText(this.mCtx, str, i2, i3, i4);
    }

    public void close() {
        nativeClose(this.mCtx);
    }

    public int[] suggest(String str, int i2, int i3) {
        return nativeSuggest(this.mCtx, str, i2, i3);
    }
}
