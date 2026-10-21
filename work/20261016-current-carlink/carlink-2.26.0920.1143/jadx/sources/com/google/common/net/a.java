package com.google.common.net;

import com.google.common.base.Function;
import com.google.common.collect.ImmutableMultiset;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f517b;

    public /* synthetic */ a(int i2) {
        this.f517b = i2;
    }

    @Override // com.google.common.base.Function, java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f517b) {
            case 0:
                return ImmutableMultiset.copyOf((Collection) obj);
            default:
                return MediaType.lambda$computeToString$0((String) obj);
        }
    }
}
