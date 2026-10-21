package com.google.common.util.concurrent;

import com.google.common.base.Function;
import java.lang.reflect.Constructor;
import java.time.Duration;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f559b;

    public /* synthetic */ y(int i2) {
        this.f559b = i2;
    }

    @Override // com.google.common.base.Function, java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f559b) {
            case 0:
                return FuturesGetChecked.lambda$static$0((Constructor) obj);
            case 1:
                return ClosingFuture.access$000((ClosingFuture) obj);
            default:
                return Duration.ofMillis(((Long) obj).longValue());
        }
    }
}
