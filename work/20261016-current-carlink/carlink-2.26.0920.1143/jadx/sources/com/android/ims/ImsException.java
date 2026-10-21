package com.android.ims;

/* JADX INFO: loaded from: classes2.dex */
public class ImsException extends Exception {
    private int mCode;

    public ImsException() {
    }

    public int getCode() {
        return this.mCode;
    }

    public ImsException(String str, int i2) {
        super(str + "(" + i2 + ")");
        this.mCode = i2;
    }

    public ImsException(String str, Throwable th, int i2) {
        super(str, th);
        this.mCode = i2;
    }
}
