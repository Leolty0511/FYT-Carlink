package com.google.android.projection.protocol;

/* JADX INFO: loaded from: classes3.dex */
interface AudioSourceCallbacks extends NativeCallback {
    void ackCallback(int i2, int i3);

    int microphoneRequestCallback(boolean z2, boolean z3, boolean z4, int i2);
}
