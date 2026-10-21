package h;

import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        c cVar;
        n.b.a("HDL", " CarplayView videoPlay start ============>>>");
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        CarLinkService carLinkServiceF = carLink.f();
        if (carLinkServiceF == null || (cVar = carLinkServiceF.A) == null) {
            return;
        }
        cVar.p(true);
    }
}
