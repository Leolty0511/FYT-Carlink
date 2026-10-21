package android.opengl;

/* JADX INFO: loaded from: classes.dex */
public class EGLConfig extends EGLObjectHandle {
    private EGLConfig(long j2) {
        super(j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EGLConfig) && getNativeHandle() == ((EGLConfig) obj).getNativeHandle();
    }
}
