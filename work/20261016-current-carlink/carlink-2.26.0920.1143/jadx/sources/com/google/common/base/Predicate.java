package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes3.dex */
@FunctionalInterface
@GwtCompatible
@ElementTypesAreNonnullByDefault
public interface Predicate<T> extends java.util.function.Predicate<T> {
    boolean apply(@ParametricNullness T t2);

    boolean equals(Object obj);

    @Override // java.util.function.Predicate
    boolean test(@ParametricNullness T t2);
}
