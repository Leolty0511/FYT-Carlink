package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@FunctionalInterface
@GwtCompatible
public interface AsyncFunction<I, O> {
    ListenableFuture<O> apply(@ParametricNullness I i2);
}
