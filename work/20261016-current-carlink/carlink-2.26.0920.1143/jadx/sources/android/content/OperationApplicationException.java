package android.content;

/* JADX INFO: loaded from: classes.dex */
public class OperationApplicationException extends Exception {
    private final int mNumSuccessfulYieldPoints;

    public OperationApplicationException() {
        this.mNumSuccessfulYieldPoints = 0;
    }

    public int getNumSuccessfulYieldPoints() {
        return this.mNumSuccessfulYieldPoints;
    }

    public OperationApplicationException(String str) {
        super(str);
        this.mNumSuccessfulYieldPoints = 0;
    }

    public OperationApplicationException(String str, Throwable th) {
        super(str, th);
        this.mNumSuccessfulYieldPoints = 0;
    }

    public OperationApplicationException(Throwable th) {
        super(th);
        this.mNumSuccessfulYieldPoints = 0;
    }

    public OperationApplicationException(int i2) {
        this.mNumSuccessfulYieldPoints = i2;
    }

    public OperationApplicationException(String str, int i2) {
        super(str);
        this.mNumSuccessfulYieldPoints = i2;
    }
}
