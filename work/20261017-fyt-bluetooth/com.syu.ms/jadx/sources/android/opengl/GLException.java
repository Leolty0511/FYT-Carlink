package android.opengl;

/* JADX INFO: loaded from: classes.dex */
public class GLException extends RuntimeException {
    private final int mError;

    public GLException(int i2) {
        super(getErrorString(i2));
        this.mError = i2;
    }

    private static String getErrorString(int i2) {
        String strGluErrorString = GLU.gluErrorString(i2);
        if (strGluErrorString != null) {
            return strGluErrorString;
        }
        return "Unknown error 0x" + Integer.toHexString(i2);
    }

    public int getError() {
        return this.mError;
    }

    public GLException(int i2, String str) {
        super(str);
        this.mError = i2;
    }
}
