package com.google.common.collect;

import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class r implements BiConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f479a;

    public /* synthetic */ r(int i2) {
        this.f479a = i2;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f479a) {
            case 0:
                ((CollectCollectors.EnumSetAccumulator) obj).add((Enum) obj2);
                break;
            case 1:
                ((TopKSelector) obj).offer(obj2);
                break;
            case 2:
                ((MoreCollectors.ToOptionalState) obj).add(obj2);
                break;
            case 3:
                MoreCollectors.lambda$static$0((MoreCollectors.ToOptionalState) obj, obj2);
                break;
            case 4:
                ((ImmutableRangeSet.Builder) obj).add((Range) obj2);
                break;
            case 5:
                ((ImmutableList.Builder) obj).add(obj2);
                break;
            case 6:
                ((ImmutableSet.Builder) obj).add(obj2);
                break;
            default:
                ((ImmutableSortedSet.Builder) obj).add(obj2);
                break;
        }
    }
}
