package android.opengl;

/* JADX INFO: loaded from: classes.dex */
public class EGLDisplay extends EGLObjectHandle {
    private EGLDisplay(long j2) {
        super(j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EGLDisplay) && getNativeHandle() == ((EGLDisplay) obj).getNativeHandle();
    }
}
