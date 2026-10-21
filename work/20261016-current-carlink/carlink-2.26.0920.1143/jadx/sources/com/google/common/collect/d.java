package com.google.common.collect;

import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f434b;
    public final /* synthetic */ Object c;

    public /* synthetic */ d(Object obj, int i2) {
        this.f434b = i2;
        this.c = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f434b) {
            case 0:
                break;
            default:
                break;
        }
        return Maps.immutableEntry(this.c, obj);
    }
}
