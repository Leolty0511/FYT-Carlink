package com.lsec.core.frame.camera2;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import com.lsec.core.frame.camera.MyCameraUtil;
import com.lsec.core.log.LogUtils;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_setPreviewSurfTexture2 implements Runnable {
    public boolean bRunning = true;
    Surface surface;
    SurfaceTexture surfaceTexture;
    TextureView texture;

    Runnable_setPreviewSurfTexture2(SurfaceTexture surface) {
        this.surfaceTexture = surface;
    }

    Runnable_setPreviewSurfTexture2(TextureView texture) {
        this.texture = texture;
    }

    Runnable_setPreviewSurfTexture2(Surface surface) {
        this.surface = surface;
    }

    public void stopRun() {
        this.bRunning = false;
    }

    @Override // java.lang.Runnable
    public void run() {
        LogUtils.e("HJT", "Runnable_setPreviewSurfTexture2  Camera ID: " + MyCameraUtil.getCameraId());
        if (!MyCamera2.getInstance().bShutDown) {
            if (this.texture != null) {
                MyCamera2.getInstance().start(new StringBuilder().append(MyCameraUtil.getCameraId()).toString(), this.texture);
            } else if (this.surface != null) {
                MyCamera2.getInstance().start(new StringBuilder().append(MyCameraUtil.getCameraId()).toString(), this.surface);
            } else {
                MyCamera2.getInstance().start(new StringBuilder().append(MyCameraUtil.getCameraId()).toString(), this.surfaceTexture);
            }
        }
    }
}
