package com.syu.carlink.utils;

import android.hardware.Camera;

/* JADX INFO: loaded from: classes4.dex */
public enum ScreenDensityCalculator$DeviceType {
    LANDSCAPE(Camera.Parameters.SCENE_MODE_LANDSCAPE),
    PORTRAIT(Camera.Parameters.SCENE_MODE_PORTRAIT);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f738b;

    ScreenDensityCalculator$DeviceType(String str) {
        this.f738b = str;
    }

    public final String getTitle() {
        return this.f738b;
    }
}
