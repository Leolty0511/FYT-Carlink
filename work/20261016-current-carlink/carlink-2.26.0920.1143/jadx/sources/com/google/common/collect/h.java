package com.google.common.collect;

import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h implements IntFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f447b;

    public /* synthetic */ h(Object obj, int i2) {
        this.f446a = i2;
        this.f447b = obj;
    }

    @Override // java.util.function.IntFunction
    public final Object apply(int i2) {
        switch (this.f446a) {
            case 0:
                return ((ArrayTable.ArrayMap) this.f447b).getEntry(i2);
            case 1:
                return ((CompactHashMap.EntrySetView) this.f447b).lambda$spliterator$0(i2);
            case 2:
                return ((ImmutableSet.Indexed) this.f447b).get(i2);
            case 3:
                return ((ImmutableSortedMap.C1EntrySet.AnonymousClass1) this.f447b).get(i2);
            default:
                return ((IndexedImmutableSet) this.f447b).get(i2);
        }
    }
}
