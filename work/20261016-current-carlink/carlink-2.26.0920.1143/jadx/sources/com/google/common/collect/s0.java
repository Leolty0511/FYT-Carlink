package com.google.common.collect;

import com.google.common.base.Function;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f482b;

    public /* synthetic */ s0(int i2) {
        this.f482b = i2;
    }

    @Override // com.google.common.base.Function, java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f482b) {
            case 0:
                return Multimaps.access$100((Collection) obj);
            case 1:
                return ((Iterable) obj).iterator();
            case 2:
                return ((Iterable) obj).iterator();
            default:
                return TreeBasedTable.lambda$createColumnKeyIterator$0((Map) obj);
        }
    }
}
