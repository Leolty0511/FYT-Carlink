package com.android.internal.widget;

/* JADX INFO: loaded from: classes3.dex */
public class ScrollBarUtils {
    public static int getThumbLength(int i2, int i3, int i4, int i5) {
        int i6 = i3 * 2;
        int iRound = Math.round((i2 * i4) / i5);
        return iRound < i6 ? i6 : iRound;
    }

    public static int getThumbOffset(int i2, int i3, int i4, int i5, int i6) {
        int i7 = i2 - i3;
        int iRound = Math.round((i7 * i6) / (i5 - i4));
        return iRound > i7 ? i7 : iRound;
    }
}
