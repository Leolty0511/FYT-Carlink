package com.syu.carlink.carplay;

import com.syu.carlink.CarLink;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class CarplayView$defSurfaceCodec$2 extends Lambda implements z.a {
    public static final CarplayView$defSurfaceCodec$2 INSTANCE = new CarplayView$defSurfaceCodec$2();

    public CarplayView$defSurfaceCodec$2() {
        super(0);
    }

    @Override // z.a
    public final Boolean invoke() {
        CarLink carLink = CarLink.f562i;
        if (carLink != null) {
            return Boolean.valueOf(((Boolean) carLink.f567g.getValue()).booleanValue());
        }
        t.b.B("me");
        throw null;
    }
}
