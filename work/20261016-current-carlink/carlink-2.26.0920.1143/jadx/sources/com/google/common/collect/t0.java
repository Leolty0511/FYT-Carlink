package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class t0 {
    public static void a(Multiset multiset, Consumer consumer) {
        Preconditions.checkNotNull(consumer);
        multiset.entrySet().forEach(new q0(consumer, 1));
    }

    public static void b(Multiset multiset, ObjIntConsumer objIntConsumer) {
        Preconditions.checkNotNull(objIntConsumer);
        multiset.entrySet().forEach(new w(objIntConsumer, 3));
    }

    public static Spliterator c(Multiset multiset) {
        return Multisets.spliteratorImpl(multiset);
    }

    public static /* synthetic */ void d(Consumer consumer, Multiset.Entry entry) {
        Object element = entry.getElement();
        int count = entry.getCount();
        for (int i2 = 0; i2 < count; i2++) {
            consumer.accept(element);
        }
    }
}
