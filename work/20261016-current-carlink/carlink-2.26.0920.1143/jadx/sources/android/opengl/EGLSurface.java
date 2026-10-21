package android.opengl;

/* JADX INFO: loaded from: classes.dex */
public class EGLSurface extends EGLObjectHandle {
    private EGLSurface(long j2) {
        super(j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EGLSurface) && getNativeHandle() == ((EGLSurface) obj).getNativeHandle();
    }
}
