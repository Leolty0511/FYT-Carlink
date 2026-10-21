package com.android.internal.os;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class KernelWakelockStats extends HashMap<String, Entry> {
    int kernelWakelockVersion;

    public static class Entry {
        public int mCount;
        public long mTotalTime;
        public int mVersion;

        public Entry(int i2, long j2, int i3) {
            this.mCount = i2;
            this.mTotalTime = j2;
            this.mVersion = i3;
        }
    }
}
