package com.lsec.core.frame.camera4;

import android.graphics.SurfaceTexture;
import android.view.TextureView;
import com.lsec.core.frame.camera.MyCameraUtil;
import com.lsec.core.log.LogUtils;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_setPreviewSurfTexture4 implements Runnable {
    public boolean bRunning = true;
    SurfaceTexture surface;
    TextureView texture;

    Runnable_setPreviewSurfTexture4(SurfaceTexture surface) {
        this.surface = surface;
    }

    Runnable_setPreviewSurfTexture4(TextureView texture) {
        this.texture = texture;
    }

    public void stopRun() {
        this.bRunning = false;
    }

    @Override // java.lang.Runnable
    public void run() {
        LogUtils.e("camera2", "Runnable_setPreviewSurfTexture4  Camera ID: " + MyCameraUtil.getCamera4Id());
        if (!MyCamera4.getInstance().bShutDown) {
            if (this.texture != null) {
                MyCamera4.getInstance().start(new StringBuilder().append(MyCameraUtil.getCamera4Id()).toString(), this.texture);
            } else {
                MyCamera4.getInstance().start(new StringBuilder().append(MyCameraUtil.getCamera4Id()).toString(), this.surface);
            }
        }
    }
}
