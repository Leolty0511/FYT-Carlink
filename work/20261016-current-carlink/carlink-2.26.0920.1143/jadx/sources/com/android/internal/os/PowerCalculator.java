package com.android.internal.os;

import android.os.BatteryStats;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PowerCalculator {
    public abstract void calculateApp(BatterySipper batterySipper, BatteryStats.Uid uid, long j2, long j3, int i2);

    public void calculateRemaining(BatterySipper batterySipper, BatteryStats batteryStats, long j2, long j3, int i2) {
    }

    public void reset() {
    }
}
