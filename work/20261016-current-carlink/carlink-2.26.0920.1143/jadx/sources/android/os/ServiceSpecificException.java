package android.os;

/* JADX INFO: loaded from: classes.dex */
public class ServiceSpecificException extends RuntimeException {
    public final int errorCode;

    public ServiceSpecificException(int i2, String str) {
        super(str);
        this.errorCode = i2;
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(" (code ");
        return android.accessibilityservice.c.m(sb, this.errorCode, ")");
    }

    public ServiceSpecificException(int i2) {
        this.errorCode = i2;
    }
}
