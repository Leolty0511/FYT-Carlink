package com.google.android.gles_jni;

import com.android.internal.logging.nano.MetricsProto;
import javax.microedition.khronos.egl.EGLContext;
import r.f;

/* JADX INFO: loaded from: classes3.dex */
public class EGLContextImpl extends EGLContext {
    long mEGLContext;
    private GLImpl mGLContext = new GLImpl();

    public EGLContextImpl(long j2) {
        this.mEGLContext = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mEGLContext == ((EGLContextImpl) obj).mEGLContext;
    }

    @Override // javax.microedition.khronos.egl.EGLContext
    public f getGL() {
        return this.mGLContext;
    }

    public int hashCode() {
        long j2 = this.mEGLContext;
        return MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE + ((int) (j2 ^ (j2 >>> 32)));
    }
}
