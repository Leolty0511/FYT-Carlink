package com.android.internal.util;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes3.dex */
public class BitwiseInputStream {
    private byte[] mBuf;
    private int mEnd;
    private int mPos = 0;

    public static class AccessException extends Exception {
        public AccessException(String str) {
            super(c.j("BitwiseInputStream access failed: ", str));
        }
    }

    public BitwiseInputStream(byte[] bArr) {
        this.mBuf = bArr;
        this.mEnd = bArr.length << 3;
    }

    public int available() {
        return this.mEnd - this.mPos;
    }

    public int read(int i2) throws AccessException {
        int i3 = this.mPos;
        int i4 = i3 >>> 3;
        int i5 = (16 - (i3 & 7)) - i2;
        if (i2 >= 0 && i2 <= 8 && i3 + i2 <= this.mEnd) {
            byte[] bArr = this.mBuf;
            int i6 = (bArr[i4] & 255) << 8;
            if (i5 < 8) {
                i6 |= bArr[i4 + 1] & 255;
            }
            int i7 = (i6 >>> i5) & ((-1) >>> (32 - i2));
            this.mPos = i3 + i2;
            return i7;
        }
        throw new AccessException("illegal read (pos " + this.mPos + ", end " + this.mEnd + ", bits " + i2 + ")");
    }

    public byte[] readByteArray(int i2) {
        int i3 = (i2 >>> 3) + ((i2 & 7) > 0 ? 1 : 0);
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int iMin = Math.min(8, i2 - (i4 << 3));
            bArr[i4] = (byte) (read(iMin) << (8 - iMin));
        }
        return bArr;
    }

    public void skip(int i2) throws AccessException {
        int i3 = this.mPos;
        if (i3 + i2 <= this.mEnd) {
            this.mPos = i3 + i2;
            return;
        }
        throw new AccessException("illegal skip (pos " + this.mPos + ", end " + this.mEnd + ", bits " + i2 + ")");
    }
}
