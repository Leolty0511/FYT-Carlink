package com.google.common.math;

import java.util.function.ObjLongConsumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements ObjLongConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f513a;

    public /* synthetic */ a(int i2) {
        this.f513a = i2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
    @Override // java.util.function.ObjLongConsumer
    public final void accept(Object obj, long j2) {
        switch (this.f513a) {
        }
        ((StatsAccumulator) obj).add(j2);
    }
}
