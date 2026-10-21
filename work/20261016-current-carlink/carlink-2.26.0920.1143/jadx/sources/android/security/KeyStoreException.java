package android.security;

/* JADX INFO: loaded from: classes.dex */
public class KeyStoreException extends Exception {
    private final int mErrorCode;

    public KeyStoreException(int i2, String str) {
        super(str);
        this.mErrorCode = i2;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }
}
