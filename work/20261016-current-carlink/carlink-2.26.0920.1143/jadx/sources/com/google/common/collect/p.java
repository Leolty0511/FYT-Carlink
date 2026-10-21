package com.google.common.collect;

import java.util.LinkedHashMap;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f473b;

    public /* synthetic */ p(int i2) {
        this.f473b = i2;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f473b) {
            case 0:
                return CollectCollectors.lambda$toImmutableEnumMap$13();
            case 1:
                return CollectCollectors.lambda$toImmutableEnumSetGeneric$1();
            case 2:
                return new MoreCollectors.ToOptionalState();
            case 3:
                return new MoreCollectors.ToOptionalState();
            case 4:
                return TableCollectors.lambda$toImmutableTable$1();
            case 5:
                return new LinkedHashMap();
            case 6:
                return LinkedHashMultiset.create();
            case 7:
                return new ImmutableBiMap.Builder();
            case 8:
                return ImmutableList.builder();
            case 9:
                return ImmutableRangeSet.builder();
            case 10:
                return ImmutableSet.builder();
            case 11:
                return ImmutableSetMultimap.builder();
            case 12:
                return ImmutableRangeMap.builder();
            case 13:
                return new ImmutableMap.Builder();
            case 14:
                return ImmutableListMultimap.builder();
            case 15:
                return OptionalDouble.empty();
            case 16:
                return OptionalInt.empty();
            case 17:
                return OptionalLong.empty();
            default:
                return new ImmutableTable.Builder();
        }
    }
}
