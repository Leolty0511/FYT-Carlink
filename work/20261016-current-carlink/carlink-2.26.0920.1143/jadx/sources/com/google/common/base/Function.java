package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes3.dex */
@FunctionalInterface
@GwtCompatible
@ElementTypesAreNonnullByDefault
public interface Function<F, T> extends java.util.function.Function<F, T> {
    @Override // java.util.function.Function
    @ParametricNullness
    T apply(@ParametricNullness F f2);

    boolean equals(Object obj);
}
