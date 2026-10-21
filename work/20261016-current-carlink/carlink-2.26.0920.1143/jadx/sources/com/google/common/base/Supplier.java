package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes3.dex */
@FunctionalInterface
@GwtCompatible
@ElementTypesAreNonnullByDefault
public interface Supplier<T> extends java.util.function.Supplier<T> {
    @Override // java.util.function.Supplier
    @ParametricNullness
    T get();
}
