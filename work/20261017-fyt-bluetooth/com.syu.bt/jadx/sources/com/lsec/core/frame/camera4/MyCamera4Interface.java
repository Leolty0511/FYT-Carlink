package com.lsec.core.frame.camera4;

import android.media.ImageReader;

/* JADX INFO: loaded from: classes.dex */
public interface MyCamera4Interface {
    void onImage4Available(ImageReader imageReader);

    void onImage4AvailableExtra(ImageReader imageReader);

    void onOpened4();
}
