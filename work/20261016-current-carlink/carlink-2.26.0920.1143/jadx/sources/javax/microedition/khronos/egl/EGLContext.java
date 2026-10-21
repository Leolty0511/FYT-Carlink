package javax.microedition.khronos.egl;

import com.google.android.gles_jni.EGLImpl;
import q.b;
import r.f;

/* JADX INFO: loaded from: classes4.dex */
public abstract class EGLContext {
    private static final b EGL_INSTANCE = new EGLImpl();

    public static b getEGL() {
        return EGL_INSTANCE;
    }

    public abstract f getGL();
}
