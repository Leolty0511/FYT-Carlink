package com.google.common.math;

import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements BiConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f514a;

    public /* synthetic */ b(int i2) {
        this.f514a = i2;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f514a) {
            case 0:
                ((StatsAccumulator) obj).addAll((StatsAccumulator) obj2);
                break;
            case 1:
                Stats.lambda$toStats$0((StatsAccumulator) obj, (Number) obj2);
                break;
            case 2:
                ((StatsAccumulator) obj).addAll((StatsAccumulator) obj2);
                break;
            case 3:
                ((StatsAccumulator) obj).addAll((StatsAccumulator) obj2);
                break;
            case 4:
                ((StatsAccumulator) obj).addAll((StatsAccumulator) obj2);
                break;
            case 5:
                ((StatsAccumulator) obj).addAll((StatsAccumulator) obj2);
                break;
            default:
                ((StatsAccumulator) obj).addAll((StatsAccumulator) obj2);
                break;
        }
    }
}
