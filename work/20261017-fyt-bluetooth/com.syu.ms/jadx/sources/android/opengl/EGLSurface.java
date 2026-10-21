package android.opengl;

/* JADX INFO: loaded from: classes.dex */
public class EGLSurface extends EGLObjectHandle {
    private EGLSurface(int i2) {
        super(i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EGLSurface) && getHandle() == ((EGLSurface) obj).getHandle();
    }
}
