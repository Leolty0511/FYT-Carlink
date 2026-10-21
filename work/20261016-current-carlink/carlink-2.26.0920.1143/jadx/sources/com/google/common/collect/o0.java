package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class o0 {
    public static void a(Multimap multimap, BiConsumer biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        multimap.entries().forEach(new l0(biConsumer, 2));
    }
}
