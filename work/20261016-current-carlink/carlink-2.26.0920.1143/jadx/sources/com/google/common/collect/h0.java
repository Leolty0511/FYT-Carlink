package com.google.common.collect;

import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h0 implements ToIntFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f448a;

    public /* synthetic */ h0(int i2) {
        this.f448a = i2;
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        switch (this.f448a) {
            case 0:
                return ImmutableMultiset.lambda$toImmutableMultiset$0(obj);
            default:
                return ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$0(obj);
        }
    }
}
