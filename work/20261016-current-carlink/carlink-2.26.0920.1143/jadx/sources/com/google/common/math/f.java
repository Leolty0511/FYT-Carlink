package com.google.common.math;

import java.util.function.ObjIntConsumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f implements ObjIntConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f516a;

    public /* synthetic */ f(int i2) {
        this.f516a = i2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
    @Override // java.util.function.ObjIntConsumer
    public final void accept(Object obj, int i2) {
        switch (this.f516a) {
        }
        ((StatsAccumulator) obj).add(i2);
    }
}
