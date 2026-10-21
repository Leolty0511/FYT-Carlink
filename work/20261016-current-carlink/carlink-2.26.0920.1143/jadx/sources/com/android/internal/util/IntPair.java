package com.android.internal.util;

/* JADX INFO: loaded from: classes3.dex */
public class IntPair {
    private IntPair() {
    }

    public static int first(long j2) {
        return (int) (j2 >> 32);
    }

    public static long of(int i2, int i3) {
        return (((long) i3) & 4294967295L) | (((long) i2) << 32);
    }

    public static int second(long j2) {
        return (int) j2;
    }
}
