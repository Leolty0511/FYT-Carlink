package com.google.common.collect;

import java.util.function.BinaryOperator;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l implements BinaryOperator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f457a;

    public /* synthetic */ l(int i2) {
        this.f457a = i2;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f457a) {
            case 0:
                return CollectCollectors.lambda$toMultiset$6((Multiset) obj, (Multiset) obj2);
            case 1:
                return CollectCollectors.lambda$flatteningToMultimap$27((Multimap) obj, (Multimap) obj2);
            case 2:
                return CollectCollectors.lambda$toImmutableEnumMap$12(obj, obj2);
            case 3:
                return CollectCollectors.lambda$toImmutableMultiset$3((Multiset) obj, (Multiset) obj2);
            case 4:
                return ((CollectCollectors.EnumMapAccumulator) obj).combine((CollectCollectors.EnumMapAccumulator) obj2);
            case 5:
                return ((CollectCollectors.EnumSetAccumulator) obj).combine((CollectCollectors.EnumSetAccumulator) obj2);
            case 6:
                return ((CollectCollectors.EnumMapAccumulator) obj).combine((CollectCollectors.EnumMapAccumulator) obj2);
            case 7:
                return CollectCollectors.lambda$toMultimap$25((Multimap) obj, (Multimap) obj2);
            case 8:
                return ((TopKSelector) obj).combine((TopKSelector) obj2);
            case 9:
                return ((MoreCollectors.ToOptionalState) obj).combine((MoreCollectors.ToOptionalState) obj2);
            case 10:
                return ((MoreCollectors.ToOptionalState) obj).combine((MoreCollectors.ToOptionalState) obj2);
            case 11:
                return TableCollectors.lambda$toTable$5(obj, obj2);
            case 12:
                return ((ImmutableBiMap.Builder) obj).combine((ImmutableMap.Builder) obj2);
            case 13:
                return ((ImmutableRangeSet.Builder) obj).combine((ImmutableRangeSet.Builder) obj2);
            case 14:
                return ((ImmutableList.Builder) obj).combine((ImmutableList.Builder) obj2);
            case 15:
                return ((ImmutableSet.Builder) obj).combine((ImmutableSet.Builder) obj2);
            case 16:
                return ((ImmutableSetMultimap.Builder) obj).combine((ImmutableMultimap.Builder) obj2);
            case 17:
                return ((ImmutableRangeMap.Builder) obj).combine((ImmutableRangeMap.Builder) obj2);
            case 18:
                return ((ImmutableMap.Builder) obj).combine((ImmutableMap.Builder) obj2);
            case 19:
                return ((ImmutableSortedMap.Builder) obj).combine((ImmutableMap.Builder) obj2);
            case 20:
                return ((ImmutableListMultimap.Builder) obj).combine((ImmutableMultimap.Builder) obj2);
            case 21:
                return ((ImmutableSortedSet.Builder) obj).combine((ImmutableSet.Builder) obj2);
            case 22:
                return ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$3((Multiset) obj, (Multiset) obj2);
            default:
                return ((ImmutableTable.Builder) obj).combine((ImmutableTable.Builder) obj2);
        }
    }
}
