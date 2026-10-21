package android.opengl;

import a0.a;
import android.os.Looper;
import android.util.Log;
import com.google.android.gles_jni.EGLImpl;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class ManagedEGLContext {
    public static final String TAG = "ManagedEGLContext";
    public static final ArrayList<ManagedEGLContext> sActive = new ArrayList<>();
    public final javax.microedition.khronos.egl.EGLContext mContext;

    public ManagedEGLContext(javax.microedition.khronos.egl.EGLContext eGLContext) {
        this.mContext = eGLContext;
        ArrayList<ManagedEGLContext> arrayList = sActive;
        synchronized (arrayList) {
            arrayList.add(this);
        }
    }

    public static boolean doTerminate() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("Called on wrong thread");
        }
        ArrayList<ManagedEGLContext> arrayList = sActive;
        synchronized (arrayList) {
            if (arrayList.size() <= 0) {
                return false;
            }
            javax.microedition.khronos.egl.EGLDisplay eGLDisplayEglGetDisplay = ((a) javax.microedition.khronos.egl.EGLContext.getEGL()).eglGetDisplay(a.f87a);
            if (eGLDisplayEglGetDisplay == a.f88b) {
                Log.w(TAG, "doTerminate failed: no display");
                return false;
            }
            if (EGLImpl.getInitCount(eGLDisplayEglGetDisplay) == arrayList.size()) {
                ArrayList arrayList2 = new ArrayList(arrayList);
                arrayList.clear();
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    ((ManagedEGLContext) arrayList2.get(i2)).execTerminate();
                }
                return true;
            }
            Log.w(TAG, "doTerminate failed: EGL count is " + EGLImpl.getInitCount(eGLDisplayEglGetDisplay) + " but managed count is " + arrayList.size());
            return false;
        }
    }

    public void execTerminate() {
        onTerminate(this.mContext);
    }

    public javax.microedition.khronos.egl.EGLContext getContext() {
        return this.mContext;
    }

    public abstract void onTerminate(javax.microedition.khronos.egl.EGLContext eGLContext);

    public void terminate() {
        execTerminate();
    }
}
