package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f477b;

    public /* synthetic */ q(int i2) {
        this.f477b = i2;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f477b) {
            case 0:
                Preconditions.checkNotNull(obj);
                break;
            default:
                Preconditions.checkNotNull(obj);
                break;
        }
    }
}
