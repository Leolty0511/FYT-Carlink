package com.google.common.collect;

import java.util.Collection;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f490b;
    public final /* synthetic */ Object c;

    public /* synthetic */ w(Object obj, int i2) {
        this.f490b = i2;
        this.c = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f490b) {
            case 0:
                ((CollectSpliterators.FlatMapSpliterator) this.c).lambda$tryAdvance$0(obj);
                break;
            case 1:
                ((CollectSpliterators.FlatMapSpliteratorOfPrimitive) this.c).lambda$tryAdvance$0(obj);
                break;
            case 2:
                ((Collection) this.c).add(obj);
                break;
            default:
                Multiset.Entry entry = (Multiset.Entry) obj;
                ((ObjIntConsumer) this.c).accept(entry.getElement(), entry.getCount());
                break;
        }
    }
}
