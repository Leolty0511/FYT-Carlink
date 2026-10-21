package com.google.common.graph;

import com.google.common.base.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f497b;
    public final /* synthetic */ Network c;

    public /* synthetic */ b(Network network, int i2) {
        this.f497b = i2;
        this.c = network;
    }

    @Override // com.google.common.base.Function, java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f497b) {
            case 0:
                return this.c.incidentNodes(obj);
            case 1:
                return ImmutableNetwork.lambda$sourceNodeFn$0(this.c, obj);
            default:
                return ImmutableNetwork.lambda$targetNodeFn$1(this.c, obj);
        }
    }
}
