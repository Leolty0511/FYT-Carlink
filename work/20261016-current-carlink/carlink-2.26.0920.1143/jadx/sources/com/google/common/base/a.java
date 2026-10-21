package com.google.common.base;

import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class a {
    public static /* bridge */ /* synthetic */ boolean D(Object obj) {
        return obj instanceof OptionalLong;
    }

    public static /* bridge */ /* synthetic */ Object c(java.util.Optional optional) {
        return optional.orElse(null);
    }

    public static /* bridge */ /* synthetic */ OptionalInt f(Object obj) {
        return (OptionalInt) obj;
    }

    public static /* bridge */ /* synthetic */ OptionalLong g(Object obj) {
        return (OptionalLong) obj;
    }

    public static /* bridge */ /* synthetic */ void v(BiConsumer biConsumer, Object obj, Object obj2) {
        biConsumer.accept(obj, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean y(Object obj) {
        return obj instanceof OptionalInt;
    }
}
