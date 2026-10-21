package com.google.common.math;

import java.util.function.ObjDoubleConsumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e implements ObjDoubleConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f515a;

    public /* synthetic */ e(int i2) {
        this.f515a = i2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
    @Override // java.util.function.ObjDoubleConsumer
    public final void accept(Object obj, double d2) {
        switch (this.f515a) {
        }
        ((StatsAccumulator) obj).add(d2);
    }
}
