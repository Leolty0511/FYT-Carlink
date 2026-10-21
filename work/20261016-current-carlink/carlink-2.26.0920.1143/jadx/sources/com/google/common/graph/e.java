package com.google.common.graph;

import com.google.common.base.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f499b;
    public final /* synthetic */ Object c;

    public /* synthetic */ e(Object obj, int i2) {
        this.f499b = i2;
        this.c = obj;
    }

    @Override // com.google.common.base.Function, java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f499b) {
            case 0:
                return DirectedGraphConnections.lambda$incidentEdgeIterator$0(this.c, obj);
            case 1:
                return EndpointPair.ordered(this.c, obj);
            case 2:
                return DirectedGraphConnections.lambda$incidentEdgeIterator$2(this.c, (DirectedGraphConnections.NodeConnection) obj);
            default:
                return EndpointPair.unordered(this.c, obj);
        }
    }
}
