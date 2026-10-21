package android.opengl;

/* JADX INFO: loaded from: classes.dex */
public class EGLConfig extends EGLObjectHandle {
    private EGLConfig(int i2) {
        super(i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EGLConfig) && getHandle() == ((EGLConfig) obj).getHandle();
    }
}
