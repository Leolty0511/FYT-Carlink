package com.google.common.collect;

import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f452b;
    public final /* synthetic */ BaseStream[] c;

    public /* synthetic */ j1(BaseStream[] baseStreamArr, int i2) {
        this.f452b = i2;
        this.c = baseStreamArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f452b;
        BaseStream[] baseStreamArr = this.c;
        switch (i2) {
            case 0:
                Streams.closeAll((LongStream[]) baseStreamArr);
                break;
            case 1:
                Streams.closeAll((Stream[]) baseStreamArr);
                break;
            case 2:
                Streams.closeAll((DoubleStream[]) baseStreamArr);
                break;
            default:
                Streams.closeAll((IntStream[]) baseStreamArr);
                break;
        }
    }
}
