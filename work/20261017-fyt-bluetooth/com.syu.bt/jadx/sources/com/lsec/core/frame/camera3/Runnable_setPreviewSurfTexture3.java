package com.lsec.core.frame.camera3;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import com.lsec.core.frame.camera.MyCameraUtil;
import com.lsec.core.log.LogUtils;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_setPreviewSurfTexture3 implements Runnable {
    public boolean bRunning = true;
    Surface surface;
    SurfaceTexture surfaceTexture;
    TextureView texture;

    Runnable_setPreviewSurfTexture3(SurfaceTexture surface) {
        this.surfaceTexture = surface;
    }

    Runnable_setPreviewSurfTexture3(TextureView texture) {
        this.texture = texture;
    }

    Runnable_setPreviewSurfTexture3(Surface surface) {
        this.surface = surface;
    }

    public void stopRun() {
        this.bRunning = false;
    }

    @Override // java.lang.Runnable
    public void run() {
        LogUtils.e("camera2", "Runnable_setPreviewSurfTexture3  Camera ID: " + MyCameraUtil.getDoubleCameraId());
        if (!MyCamera3.getInstance().bShutDown) {
            if (this.texture != null) {
                MyCamera3.getInstance().start(new StringBuilder().append(MyCameraUtil.getDoubleCameraId()).toString(), this.texture);
            } else if (this.surface != null) {
                MyCamera3.getInstance().start(new StringBuilder().append(MyCameraUtil.getDoubleCameraId()).toString(), this.surface);
            } else {
                MyCamera3.getInstance().start(new StringBuilder().append(MyCameraUtil.getDoubleCameraId()).toString(), this.surfaceTexture);
            }
        }
    }
}
