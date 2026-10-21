package com.android.internal.util;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes3.dex */
public class BitwiseOutputStream {
    private byte[] mBuf;
    private int mEnd;
    private int mPos = 0;

    public static class AccessException extends Exception {
        public AccessException(String str) {
            super(c.j("BitwiseOutputStream access failed: ", str));
        }
    }

    public BitwiseOutputStream(int i2) {
        this.mBuf = new byte[i2];
        this.mEnd = i2 << 3;
    }

    private void possExpand(int i2) {
        int i3 = this.mPos;
        int i4 = i3 + i2;
        int i5 = this.mEnd;
        if (i4 < i5) {
            return;
        }
        int i6 = (i3 + i2) >>> 2;
        byte[] bArr = new byte[i6];
        System.arraycopy(this.mBuf, 0, bArr, 0, i5 >>> 3);
        this.mBuf = bArr;
        this.mEnd = i6 << 3;
    }

    public void skip(int i2) {
        possExpand(i2);
        this.mPos += i2;
    }

    public byte[] toByteArray() {
        int i2 = this.mPos;
        int i3 = (i2 >>> 3) + ((i2 & 7) > 0 ? 1 : 0);
        byte[] bArr = new byte[i3];
        System.arraycopy(this.mBuf, 0, bArr, 0, i3);
        return bArr;
    }

    public void write(int i2, int i3) throws AccessException {
        if (i2 < 0 || i2 > 8) {
            throw new AccessException(c.e("illegal write (", i2, " bits)"));
        }
        possExpand(i2);
        int i4 = this.mPos;
        int i5 = i4 >>> 3;
        int i6 = (16 - (i4 & 7)) - i2;
        int i7 = (i3 & ((-1) >>> (32 - i2))) << i6;
        this.mPos = i4 + i2;
        byte[] bArr = this.mBuf;
        bArr[i5] = (byte) (bArr[i5] | (i7 >>> 8));
        if (i6 < 8) {
            int i8 = i5 + 1;
            bArr[i8] = (byte) ((i7 & 255) | bArr[i8]);
        }
    }

    public void writeByteArray(int i2, byte[] bArr) throws AccessException {
        for (int i3 = 0; i3 < bArr.length; i3++) {
            int iMin = Math.min(8, i2 - (i3 << 3));
            if (iMin > 0) {
                write(iMin, (byte) (bArr[i3] >>> (8 - iMin)));
            }
        }
    }
}
