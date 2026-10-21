package com.android.internal.util;

/* JADX INFO: loaded from: classes3.dex */
public class FunctionalUtils {

    @FunctionalInterface
    public interface ThrowingConsumer<T> {
        void accept(T t2);
    }

    @FunctionalInterface
    public interface ThrowingRunnable {
        void run();
    }

    @FunctionalInterface
    public interface ThrowingSupplier<T> {
        T get();
    }

    private FunctionalUtils() {
    }
}
