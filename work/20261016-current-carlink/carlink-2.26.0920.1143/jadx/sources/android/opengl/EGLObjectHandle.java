package android.opengl;

import com.android.internal.logging.nano.MetricsProto;

/* JADX INFO: loaded from: classes.dex */
public abstract class EGLObjectHandle {
    private final long mHandle;

    @Deprecated
    public EGLObjectHandle(int i2) {
        this.mHandle = i2;
    }

    @Deprecated
    public int getHandle() {
        long j2 = this.mHandle;
        if ((4294967295L & j2) == j2) {
            return (int) j2;
        }
        throw new UnsupportedOperationException();
    }

    public long getNativeHandle() {
        return this.mHandle;
    }

    public int hashCode() {
        long j2 = this.mHandle;
        return MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE + ((int) (j2 ^ (j2 >>> 32)));
    }

    public EGLObjectHandle(long j2) {
        this.mHandle = j2;
    }
}
