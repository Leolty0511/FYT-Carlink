package com.lsec.core.frame.camera5;

import android.graphics.SurfaceTexture;
import android.view.TextureView;
import com.lsec.core.frame.camera.MyCameraUtil;
import com.lsec.core.log.LogUtils;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_setPreviewSurfTexture5 implements Runnable {
    public boolean bRunning = true;
    SurfaceTexture surface;
    TextureView texture;

    Runnable_setPreviewSurfTexture5(SurfaceTexture surface) {
        this.surface = surface;
    }

    Runnable_setPreviewSurfTexture5(TextureView texture) {
        this.texture = texture;
    }

    public void stopRun() {
        this.bRunning = false;
    }

    @Override // java.lang.Runnable
    public void run() {
        LogUtils.e("camera2", "Runnable_setPreviewSurfTexture5  Camera ID: " + MyCameraUtil.getCamera5Id());
        if (!MyCamera5.getInstance().bShutDown) {
            if (this.texture != null) {
                MyCamera5.getInstance().start(new StringBuilder().append(MyCameraUtil.getCamera5Id()).toString(), this.texture);
            } else {
                MyCamera5.getInstance().start(new StringBuilder().append(MyCameraUtil.getCamera5Id()).toString(), this.surface);
            }
        }
    }
}
