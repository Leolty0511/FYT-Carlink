package com.google.common.collect;

import java.util.function.BiConsumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o implements BiConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function f470b;
    public final /* synthetic */ Function c;

    public /* synthetic */ o(Function function, Function function2, int i2) {
        this.f469a = i2;
        this.f470b = function;
        this.c = function2;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f469a) {
            case 0:
                CollectCollectors.lambda$flatteningToMultimap$26(this.f470b, this.c, (Multimap) obj, obj2);
                break;
            case 1:
                CollectCollectors.lambda$toImmutableEnumMap$14(this.f470b, this.c, (CollectCollectors.EnumMapAccumulator) obj, obj2);
                break;
            case 2:
                CollectCollectors.lambda$toImmutableBiMap$11(this.f470b, this.c, (ImmutableBiMap.Builder) obj, obj2);
                break;
            case 3:
                CollectCollectors.lambda$toImmutableSetMultimap$21(this.f470b, this.c, (ImmutableSetMultimap.Builder) obj, obj2);
                break;
            case 4:
                CollectCollectors.lambda$toImmutableRangeMap$17(this.f470b, this.c, (ImmutableRangeMap.Builder) obj, obj2);
                break;
            case 5:
                CollectCollectors.lambda$toImmutableMap$7(this.f470b, this.c, (ImmutableMap.Builder) obj, obj2);
                break;
            case 6:
                CollectCollectors.lambda$toImmutableEnumMap$16(this.f470b, this.c, (CollectCollectors.EnumMapAccumulator) obj, obj2);
                break;
            case 7:
                CollectCollectors.lambda$toImmutableSortedMap$9(this.f470b, this.c, (ImmutableSortedMap.Builder) obj, obj2);
                break;
            case 8:
                CollectCollectors.lambda$toImmutableListMultimap$18(this.f470b, this.c, (ImmutableListMultimap.Builder) obj, obj2);
                break;
            default:
                CollectCollectors.lambda$toMultimap$24(this.f470b, this.c, (Multimap) obj, obj2);
                break;
        }
    }
}
