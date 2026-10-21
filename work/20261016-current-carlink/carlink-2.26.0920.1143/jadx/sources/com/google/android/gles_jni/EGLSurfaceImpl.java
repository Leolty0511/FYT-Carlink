package com.google.android.gles_jni;

import com.android.internal.logging.nano.MetricsProto;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes3.dex */
public class EGLSurfaceImpl extends EGLSurface {
    long mEGLSurface;

    public EGLSurfaceImpl() {
        this.mEGLSurface = 0L;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mEGLSurface == ((EGLSurfaceImpl) obj).mEGLSurface;
    }

    public int hashCode() {
        long j2 = this.mEGLSurface;
        return MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE + ((int) (j2 ^ (j2 >>> 32)));
    }

    public EGLSurfaceImpl(long j2) {
        this.mEGLSurface = j2;
    }
}
