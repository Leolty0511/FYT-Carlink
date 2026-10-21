package com.android.internal.view;

import android.view.SurfaceHolder;

/* JADX INFO: loaded from: classes3.dex */
public class SurfaceCallbackHelper {
    int mFinishDrawingCollected = 0;
    int mFinishDrawingExpected = 0;
    private Runnable mFinishDrawingRunnable = new Runnable() { // from class: com.android.internal.view.SurfaceCallbackHelper.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (SurfaceCallbackHelper.this) {
                SurfaceCallbackHelper surfaceCallbackHelper = SurfaceCallbackHelper.this;
                int i2 = surfaceCallbackHelper.mFinishDrawingCollected + 1;
                surfaceCallbackHelper.mFinishDrawingCollected = i2;
                if (i2 < surfaceCallbackHelper.mFinishDrawingExpected) {
                    return;
                }
                surfaceCallbackHelper.mRunnable.run();
            }
        }
    };
    Runnable mRunnable;

    public SurfaceCallbackHelper(Runnable runnable) {
        this.mRunnable = runnable;
    }

    public void dispatchSurfaceRedrawNeededAsync(SurfaceHolder surfaceHolder, SurfaceHolder.Callback[] callbackArr) {
        int i2;
        if (callbackArr == null || callbackArr.length == 0) {
            this.mRunnable.run();
            return;
        }
        synchronized (this) {
            this.mFinishDrawingExpected = callbackArr.length;
            this.mFinishDrawingCollected = 0;
        }
        for (SurfaceHolder.Callback callback : callbackArr) {
            if (callback instanceof SurfaceHolder.Callback2) {
                ((SurfaceHolder.Callback2) callback).surfaceRedrawNeededAsync(surfaceHolder, this.mFinishDrawingRunnable);
            } else {
                this.mFinishDrawingRunnable.run();
            }
        }
    }
}
