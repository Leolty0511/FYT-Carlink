package com.android.internal.util;

/* JADX INFO: loaded from: classes3.dex */
public final class VirtualRefBasePtr {
    private long mNativePtr;

    public VirtualRefBasePtr(long j2) {
        this.mNativePtr = j2;
        nIncStrong(j2);
    }

    private static native void nDecStrong(long j2);

    private static native void nIncStrong(long j2);

    public void finalize() throws Throwable {
        try {
            release();
        } finally {
            super.finalize();
        }
    }

    public long get() {
        return this.mNativePtr;
    }

    public void release() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            nDecStrong(j2);
            this.mNativePtr = 0L;
        }
    }
}
