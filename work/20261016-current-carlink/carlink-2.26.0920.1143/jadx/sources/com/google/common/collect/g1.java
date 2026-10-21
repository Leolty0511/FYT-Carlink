package com.google.common.collect;

import java.util.stream.Stream;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f445b;
    public final /* synthetic */ Stream c;

    public /* synthetic */ g1(Stream stream, int i2) {
        this.f445b = i2;
        this.c = stream;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f445b;
        Stream stream = this.c;
        switch (i2) {
            case 0:
                stream.close();
                break;
            case 1:
                stream.close();
                break;
            case 2:
                stream.close();
                break;
            default:
                stream.close();
                break;
        }
    }
}
