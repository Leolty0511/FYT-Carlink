package com.google.common.graph;

import com.google.common.base.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f498b;
    public final /* synthetic */ Object c;

    public /* synthetic */ c(Object obj, int i2) {
        this.f498b = i2;
        this.c = obj;
    }

    @Override // com.google.common.base.Function, java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f498b) {
            case 0:
                return ((AbstractNetwork.AnonymousClass1.C00401) this.c).lambda$iterator$0(obj);
            case 1:
                return ((Graphs.TransposedGraph.AnonymousClass1) this.c).lambda$iterator$0((EndpointPair) obj);
            default:
                return AbstractValueGraph.lambda$edgeValueMap$0((ValueGraph) this.c, (EndpointPair) obj);
        }
    }
}
