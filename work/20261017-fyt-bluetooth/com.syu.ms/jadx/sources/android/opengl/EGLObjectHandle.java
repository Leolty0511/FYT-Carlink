package android.opengl;

/* JADX INFO: loaded from: classes.dex */
public abstract class EGLObjectHandle {
    private final int mHandle;

    public EGLObjectHandle(int i2) {
        this.mHandle = i2;
    }

    public int getHandle() {
        return this.mHandle;
    }

    public int hashCode() {
        return getHandle();
    }
}
