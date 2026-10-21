package com.google.common.collect;

import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k implements BiConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f454b;
    public final /* synthetic */ Object c;

    public /* synthetic */ k(Object obj, Object obj2, int i2) {
        this.f453a = i2;
        this.f454b = obj;
        this.c = obj2;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f453a) {
            case 0:
                CollectCollectors.lambda$toMultiset$5((Function) this.f454b, (ToIntFunction) this.c, (Multiset) obj, obj2);
                break;
            case 1:
                CollectCollectors.lambda$toImmutableMultiset$2((Function) this.f454b, (ToIntFunction) this.c, (Multiset) obj, obj2);
                break;
            case 2:
                ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$2((Function) this.f454b, (ToIntFunction) this.c, (Multiset) obj, obj2);
                break;
            default:
                ((Maps.TransformedEntriesMap) this.f454b).lambda$forEach$0((BiConsumer) this.c, obj, obj2);
                break;
        }
    }
}
