package com.lsec.core.frame.camera4;

import android.view.SurfaceHolder;
import com.lsec.core.frame.camera.MyCameraUtil;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_setPreviewSurfHolder4 implements Runnable {
    public boolean bRunning = true;
    SurfaceHolder holder;

    Runnable_setPreviewSurfHolder4(SurfaceHolder holder) {
        this.holder = holder;
    }

    public void stopRun() {
        this.bRunning = false;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!MyCamera4.getInstance().bShutDown) {
            MyCamera4.getInstance().start(new StringBuilder().append(MyCameraUtil.getCamera4Id()).toString(), this.holder);
        }
    }
}
