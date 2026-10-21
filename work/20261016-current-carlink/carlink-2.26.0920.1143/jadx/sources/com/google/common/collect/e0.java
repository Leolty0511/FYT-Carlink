package com.google.common.collect;

import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e0 implements IntFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImmutableList f437b;

    public /* synthetic */ e0(ImmutableList immutableList, int i2) {
        this.f436a = i2;
        this.f437b = immutableList;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
    @Override // java.util.function.IntFunction
    public final Object apply(int i2) {
        switch (this.f436a) {
        }
        return this.f437b.get(i2);
    }
}
