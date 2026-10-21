package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.Predicate;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f487b;
    public final /* synthetic */ Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f488d;

    public /* synthetic */ v(Object obj, Object obj2, int i2) {
        this.f487b = i2;
        this.c = obj;
        this.f488d = obj2;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f487b) {
            case 0:
                ((CollectSpliterators.FlatMapSpliterator) this.c).lambda$forEachRemaining$1((Consumer) this.f488d, obj);
                break;
            case 1:
                ((CollectSpliterators.FlatMapSpliteratorOfPrimitive) this.c).lambda$forEachRemaining$1(this.f488d, obj);
                break;
            case 2:
                ((Collections2.FilteredCollection) this.c).lambda$forEach$0((Consumer) this.f488d, obj);
                break;
            case 3:
                ((Collections2.TransformedCollection) this.c).lambda$forEach$0((Consumer) this.f488d, obj);
                break;
            case 4:
                Iterables.AnonymousClass4.lambda$forEach$0((Predicate) this.c, (Consumer) this.f488d, obj);
                break;
            case 5:
                Iterables.AnonymousClass5.lambda$forEach$0((Consumer) this.f488d, (Function) this.c, obj);
                break;
            case 6:
                ((Maps.AsMapView) this.c).lambda$forEach$0((BiConsumer) this.f488d, obj);
                break;
            default:
                ((Maps.NavigableAsMapView) this.c).lambda$forEach$1((BiConsumer) this.f488d, obj);
                break;
        }
    }

    public /* synthetic */ v(Consumer consumer, Function function) {
        this.f487b = 5;
        this.f488d = consumer;
        this.c = function;
    }
}
