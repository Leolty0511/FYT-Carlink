package com.lsec.core.frame.camera5;

import android.view.SurfaceHolder;
import com.lsec.core.frame.camera.MyCameraUtil;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_setPreviewSurfHolder5 implements Runnable {
    public boolean bRunning = true;
    SurfaceHolder holder;

    Runnable_setPreviewSurfHolder5(SurfaceHolder holder) {
        this.holder = holder;
    }

    public void stopRun() {
        this.bRunning = false;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!MyCamera5.getInstance().bShutDown) {
            MyCamera5.getInstance().start(new StringBuilder().append(MyCameraUtil.getCamera5Id()).toString(), this.holder);
        }
    }
}
