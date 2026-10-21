package com.android.internal.util;

import android.app.m;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class ExponentiallyBucketedHistogram {
    private final int[] mData;

    public ExponentiallyBucketedHistogram(int i2) {
        this.mData = new int[Preconditions.checkArgumentInRange(i2, 1, 31, "numBuckets")];
    }

    public void add(int i2) {
        if (i2 <= 0) {
            int[] iArr = this.mData;
            iArr[0] = iArr[0] + 1;
        } else {
            int[] iArr2 = this.mData;
            int iMin = Math.min(iArr2.length - 1, 32 - Integer.numberOfLeadingZeros(i2));
            iArr2[iMin] = iArr2[iMin] + 1;
        }
    }

    public void log(String str, CharSequence charSequence) {
        StringBuilder sb = new StringBuilder(charSequence);
        sb.append('[');
        for (int i2 = 0; i2 < this.mData.length; i2++) {
            if (i2 != 0) {
                sb.append(", ");
            }
            if (i2 < this.mData.length - 1) {
                sb.append("<");
                sb.append(1 << i2);
            } else {
                sb.append(">=");
                sb.append(1 << (i2 - 1));
            }
            sb.append(": ");
            sb.append(this.mData[i2]);
        }
        m.x(sb, "]", str);
    }

    public void reset() {
        Arrays.fill(this.mData, 0);
    }
}
