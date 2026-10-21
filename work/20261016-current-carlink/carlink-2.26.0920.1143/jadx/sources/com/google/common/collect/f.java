package com.google.common.collect;

import java.util.function.BiConsumer;
import java.util.function.ObjIntConsumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f implements BiConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f439b;

    public /* synthetic */ f(Object obj, int i2) {
        this.f438a = i2;
        this.f439b = obj;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f438a) {
            case 0:
                AbstractMapBasedMultiset.lambda$forEachEntry$0((ObjIntConsumer) this.f439b, obj, (Count) obj2);
                break;
            default:
                ((CollectCollectors.EnumMapAccumulator) this.f439b).put((Enum) obj, obj2);
                break;
        }
    }
}
