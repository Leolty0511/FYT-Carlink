package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Optional;
import java.util.TreeMap;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f432b;

    public /* synthetic */ c(int i2) {
        this.f432b = i2;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f432b) {
            case 0:
                return AbstractMapBasedMultimap.lambda$entrySpliterator$1((Map.Entry) obj);
            case 1:
                return CollectCollectors.lambda$toImmutableMultiset$4((Multiset) obj);
            case 2:
                return ((CollectCollectors.EnumMapAccumulator) obj).toImmutableMap();
            case 3:
                return ((CollectCollectors.EnumSetAccumulator) obj).toImmutableSet();
            case 4:
                return ((CollectCollectors.EnumMapAccumulator) obj).toImmutableMap();
            case 5:
                return ((TopKSelector) obj).topK();
            case 6:
                return ((MoreCollectors.ToOptionalState) obj).getOptional();
            case 7:
                return MoreCollectors.lambda$static$1((MoreCollectors.ToOptionalState) obj);
            case 8:
                return MutableClassToInstanceMap.access$100((Map.Entry) obj);
            case 9:
                return StandardTable.lambda$cellSpliterator$1((Map.Entry) obj);
            case 10:
                return ((TableCollectors.ImmutableTableCollectorState) obj).toTable();
            case 11:
                return ((Collection) obj).spliterator();
            case 12:
                return ((Table.Cell) obj).getValue();
            case 13:
                return ImmutableSortedMap.copyOfSorted((TreeMap) obj);
            case 14:
                return ImmutableListMultimap.copyOf((Multimap) obj);
            case 15:
                return ImmutableMap.copyOf((Map) obj);
            case 16:
                return ((ImmutableBiMap.Builder) obj).build();
            case 17:
                return ((ImmutableRangeSet.Builder) obj).build();
            case 18:
                return ((ImmutableList.Builder) obj).build();
            case 19:
                return ((ImmutableSet.Builder) obj).build();
            case 20:
                return ImmutableSetMultimap.copyOf((Multimap) obj);
            case 21:
                return ((ImmutableSetMultimap.Builder) obj).build();
            case 22:
                return ((ImmutableRangeMap.Builder) obj).build();
            case 23:
                return ((ImmutableMap.Builder) obj).build();
            case 24:
                return ((ImmutableSortedMap.Builder) obj).build();
            case 25:
                return ((ImmutableListMultimap.Builder) obj).build();
            case 26:
                return ((ImmutableSortedSet.Builder) obj).build();
            case 27:
                return com.google.common.base.a.c((Optional) obj);
            case 28:
                return com.google.common.base.a.c((Optional) obj);
            default:
                return Maps.unmodifiableEntry((Map.Entry) obj);
        }
    }
}
