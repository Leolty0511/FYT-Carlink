package javax.microedition.khronos.egl;

import a0.b;
import b0.f;
import com.google.android.gles_jni.EGLImpl;

/* JADX INFO: loaded from: classes.dex */
public abstract class EGLContext {
    private static final b EGL_INSTANCE = new EGLImpl();

    public static b getEGL() {
        return EGL_INSTANCE;
    }

    public abstract f getGL();
}
