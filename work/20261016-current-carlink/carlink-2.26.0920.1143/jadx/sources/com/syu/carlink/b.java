package com.syu.carlink;

import android.content.ContextWrapper;
import h.i;
import z.l;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f668b;
    public final /* synthetic */ ContextWrapper c;

    public /* synthetic */ b(ContextWrapper contextWrapper, int i2) {
        this.f668b = i2;
        this.c = contextWrapper;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Integer num;
        h.c cVar;
        int i2 = this.f668b;
        ContextWrapper contextWrapper = this.c;
        switch (i2) {
            case 0:
                StringBuilder sb = new StringBuilder("===================>>  initHandler  ");
                final CarLinkService carLinkService = (CarLinkService) contextWrapper;
                sb.append(carLinkService.f597q);
                sb.append(' ');
                sb.append(carLinkService.f598r);
                sb.append(' ');
                n.b.a("HDL", sb.toString());
                if (carLinkService.f597q == 0 || carLinkService.f598r == 0 || (num = (Integer) CarLinkService.m().j().f898r.getValue()) == null) {
                    return;
                }
                carLinkService.q(carLinkService.f597q, carLinkService.f598r, num.intValue(), new l() { // from class: com.syu.carlink.CarLinkService$initHandler$1$run$1$1
                    {
                        super(1);
                    }

                    @Override // z.l
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke(((Boolean) obj).booleanValue());
                        return s.c.f1105a;
                    }

                    public final void invoke(boolean z2) {
                        CarLinkService carLinkService2 = carLinkService;
                        carLinkService2.e();
                        carLinkService2.d(200L);
                    }
                });
                return;
            case 1:
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                boolean zA = t.b.a(carLink.j().f905y.getValue(), Boolean.TRUE);
                if (!zA && (cVar = ((CarLinkService) contextWrapper).A) != null) {
                    cVar.k();
                }
                if (CarLink.f562i == null) {
                    t.b.B("me");
                    throw null;
                }
                if (CarLink.F()) {
                    return;
                }
                o.e.b(((CarLinkService) contextWrapper).l(), 0, 157, new int[]{zA ? 1 : 0}, null, 24);
                return;
            case 2:
                i iVar = ((CarLinkService) contextWrapper).f606z;
                if (iVar != null) {
                    iVar.c();
                    return;
                }
                return;
            case 3:
                CarLinkService carLinkService2 = (CarLinkService) contextWrapper;
                z.a aVar = carLinkService2.f599s;
                if (aVar == null) {
                    return;
                }
                z.a aVar2 = carLinkService2.f600t;
                if (((aVar2 == null || ((Boolean) aVar2.invoke()).booleanValue()) ? false : true) == true) {
                    n.b.a("HDL", "ui wait abort =====>> link condition changed, drop pending link");
                    carLinkService2.c();
                    return;
                }
                CarLink carLink2 = CarLink.f562i;
                if (carLink2 == null) {
                    t.b.B("me");
                    throw null;
                }
                Object[] objArr = carLink2.f564d && CarLinkService.a(carLinkService2);
                int i3 = objArr == true ? carLinkService2.f602v + 1 : 0;
                carLinkService2.f602v = i3;
                int i4 = carLinkService2.f603w + 1;
                carLinkService2.f603w = i4;
                long j2 = carLinkService2.f604x;
                if (objArr == true && i3 >= carLinkService2.f601u) {
                    n.b.a("HDL", "ui ready =====>> start link after " + (((long) carLinkService2.f603w) * j2) + "ms");
                    carLinkService2.c();
                    carLinkService2.g();
                    aVar.invoke();
                    return;
                }
                if (i4 < carLinkService2.f605y) {
                    carLinkService2.p().postDelayed(this, j2);
                    return;
                }
                StringBuilder sb2 = new StringBuilder("wait ui timeout =====>> fallback link with cached size, uiShowing: ");
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 == null) {
                    t.b.B("me");
                    throw null;
                }
                sb2.append(carLink3.f564d);
                sb2.append(" viewportReady: ");
                sb2.append(CarLinkService.a(carLinkService2));
                n.b.a("HDL", sb2.toString());
                carLinkService2.c();
                carLinkService2.g();
                aVar.invoke();
                return;
            default:
                CarLink carLink4 = CarLink.f562i;
                if (carLink4 == null) {
                    t.b.B("me");
                    throw null;
                }
                MainActivity mainActivity = (MainActivity) contextWrapper;
                carLink4.j().H.observe(mainActivity, mainActivity.f632p);
                return;
        }
    }
}
