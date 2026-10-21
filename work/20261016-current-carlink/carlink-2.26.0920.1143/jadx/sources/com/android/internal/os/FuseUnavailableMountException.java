package com.android.internal.os;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes2.dex */
public class FuseUnavailableMountException extends Exception {
    public FuseUnavailableMountException(int i2) {
        super(c.e("AppFuse mount point ", i2, " is unavailable"));
    }
}
