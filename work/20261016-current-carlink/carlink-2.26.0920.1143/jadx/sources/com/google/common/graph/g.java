package com.google.common.graph;

import com.google.common.base.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f500b;
    public final /* synthetic */ Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f501d;

    public /* synthetic */ g(Object obj, Object obj2, int i2) {
        this.f500b = i2;
        this.f501d = obj;
        this.c = obj2;
    }

    @Override // com.google.common.base.Function, java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f500b) {
            case 0:
                return ImmutableNetwork.lambda$adjacentNodeFn$2((Network) this.f501d, this.c, obj);
            default:
                return ImmutableValueGraph.lambda$connectionsOf$0((ValueGraph) this.f501d, this.c, obj);
        }
    }
}
