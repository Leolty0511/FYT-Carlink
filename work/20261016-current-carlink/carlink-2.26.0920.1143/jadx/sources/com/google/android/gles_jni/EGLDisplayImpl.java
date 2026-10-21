package com.google.android.gles_jni;

import com.android.internal.logging.nano.MetricsProto;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: loaded from: classes3.dex */
public class EGLDisplayImpl extends EGLDisplay {
    long mEGLDisplay;

    public EGLDisplayImpl(long j2) {
        this.mEGLDisplay = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mEGLDisplay == ((EGLDisplayImpl) obj).mEGLDisplay;
    }

    public int hashCode() {
        long j2 = this.mEGLDisplay;
        return MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE + ((int) (j2 ^ (j2 >>> 32)));
    }
}
