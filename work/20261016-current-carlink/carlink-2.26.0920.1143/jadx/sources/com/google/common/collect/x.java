package com.google.common.collect;

import java.util.Spliterator;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x implements CollectSpliterators.FlatMapSpliterator.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f491a;

    public /* synthetic */ x(int i2) {
        this.f491a = i2;
    }

    @Override // com.google.common.collect.CollectSpliterators.FlatMapSpliterator.Factory
    public final Spliterator newFlatMapSpliterator(Spliterator spliterator, Spliterator spliterator2, Function function, int i2, long j2) {
        switch (this.f491a) {
            case 0:
                return new CollectSpliterators.FlatMapSpliteratorOfDouble((Spliterator.OfDouble) spliterator, spliterator2, function, i2, j2);
            case 1:
                return new CollectSpliterators.FlatMapSpliteratorOfInt((Spliterator.OfInt) spliterator, spliterator2, function, i2, j2);
            case 2:
                return new CollectSpliterators.FlatMapSpliteratorOfLong((Spliterator.OfLong) spliterator, spliterator2, function, i2, j2);
            default:
                return new CollectSpliterators.FlatMapSpliteratorOfObject(spliterator, spliterator2, function, i2, j2);
        }
    }
}
