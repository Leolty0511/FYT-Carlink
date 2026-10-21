package com.android.internal.util;

/* JADX INFO: loaded from: classes3.dex */
public class RingBufferIndices {
    private final int mCapacity;
    private int mSize;
    private int mStart;

    public RingBufferIndices(int i2) {
        this.mCapacity = i2;
    }

    public int add() {
        int i2 = this.mSize;
        int i3 = this.mCapacity;
        if (i2 < i3) {
            this.mSize = i2 + 1;
            return i2;
        }
        int i4 = this.mStart;
        int i5 = i4 + 1;
        this.mStart = i5;
        if (i5 == i3) {
            this.mStart = 0;
        }
        return i4;
    }

    public void clear() {
        this.mStart = 0;
        this.mSize = 0;
    }

    public int indexOf(int i2) {
        int i3 = this.mStart + i2;
        int i4 = this.mCapacity;
        return i3 >= i4 ? i3 - i4 : i3;
    }

    public int size() {
        return this.mSize;
    }
}
