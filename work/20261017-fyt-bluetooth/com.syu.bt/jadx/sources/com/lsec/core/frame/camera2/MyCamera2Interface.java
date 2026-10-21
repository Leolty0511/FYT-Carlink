package com.lsec.core.frame.camera2;

import android.media.ImageReader;

/* JADX INFO: loaded from: classes.dex */
public interface MyCamera2Interface {
    void onImageAvailable(ImageReader imageReader);

    void onImageAvailableExtra(ImageReader imageReader);

    void onOpened();
}
