package com.google.android.projection.sink.embedded.bluetooth;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class e implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f393b;

    public /* synthetic */ e(Object obj, int i2) {
        this.f392a = i2;
        this.f393b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f392a;
        Object obj = this.f393b;
        switch (i2) {
            case 0:
                return ((RfCommConnection.BluetoothConnection) obj).lambda$readMessage$0();
            default:
                return ((BluetoothExplorer) obj).lambda$startRfcommServer$0();
        }
    }
}
