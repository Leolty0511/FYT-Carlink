package com.google.common.collect;

import java.util.Comparator;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f435b;
    public final /* synthetic */ Object c;

    public /* synthetic */ e(Object obj, int i2) {
        this.f435b = i2;
        this.c = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f435b) {
            case 0:
                return ((AbstractMapBasedMultimap.AsMap) this.c).wrapEntry((Map.Entry) obj);
            case 1:
                return ((Maps.NavigableAsMapView) this.c).lambda$entrySpliterator$0(obj);
            case 2:
                return StandardTable.lambda$cellSpliterator$0((Map.Entry) this.c, (Map.Entry) obj);
            case 3:
                return ((StandardTable.Row) this.c).wrapEntry((Map.Entry) obj);
            default:
                return ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$4((Comparator) this.c, (Multiset) obj);
        }
    }
}
