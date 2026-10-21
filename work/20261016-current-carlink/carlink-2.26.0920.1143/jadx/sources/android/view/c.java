package android.view;

import android.graphics.Canvas;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class c {
    public static Canvas a(SurfaceHolder surfaceHolder) {
        throw new IllegalStateException("This SurfaceHolder doesn't support lockHardwareCanvas");
    }
}
