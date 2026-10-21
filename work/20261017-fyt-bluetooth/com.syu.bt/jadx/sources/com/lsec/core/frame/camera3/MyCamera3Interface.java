package com.lsec.core.frame.camera3;

import android.media.ImageReader;

/* JADX INFO: loaded from: classes.dex */
public interface MyCamera3Interface {
    void onImageDoubleCameraAvailable(ImageReader imageReader);

    void onImageDoubleCameraAvailableExtra(ImageReader imageReader);

    void onOpenedDoubleCamera();
}
