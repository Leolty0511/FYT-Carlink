package com.android.internal.util;

import android.hardware.HardwareBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class FastMath {
    public static int round(float f2) {
        return (int) ((((long) (f2 * 1.6777216E7f)) + HardwareBuffer.USAGE_SENSOR_DIRECT_DATA) >> 24);
    }
}
