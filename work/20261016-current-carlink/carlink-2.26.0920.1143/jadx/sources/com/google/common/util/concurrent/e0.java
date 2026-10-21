package com.google.common.util.concurrent;

import com.google.common.base.Supplier;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e0 implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f530b;

    public /* synthetic */ e0(int i2) {
        this.f530b = i2;
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final Object get() {
        switch (this.f530b) {
            case 0:
                return new Striped.WeakSafeReadWriteLock();
            case 1:
                return new Striped.PaddedLock();
            case 2:
                return new ReentrantReadWriteLock();
            default:
                return Striped.lambda$lazyWeakLock$0();
        }
    }
}
