package android.os;

import android.opengl.EGL14;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.UsbScanner;
import f.k;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f110b;

    public /* synthetic */ b(int i2) {
        this.f110b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CarLinkService carLinkServiceF;
        h.c cVar;
        h.c cVar2;
        switch (this.f110b) {
            case 0:
                EGL14.eglGetDisplay(0);
                return;
            case 1:
                Trace.lambda$static$0();
                return;
            case 2:
                ArrayList arrayList = CarLinkService.n0;
                n.b.a("HDL", "============>>> handle Carplay TimeOut");
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                carLink.j().f899s.postValue(0);
                CarLink carLink2 = CarLink.f562i;
                if (carLink2 != null) {
                    carLink2.j().f901u.postValue(3);
                    return;
                } else {
                    t.b.B("me");
                    throw null;
                }
            case 3:
                ArrayList arrayList2 = CarLinkService.n0;
                k.f825y.l();
                return;
            case 4:
                ArrayList arrayList3 = CarLinkService.n0;
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink3.f564d || (carLinkServiceF = carLink3.f()) == null || (cVar = carLinkServiceF.A) == null) {
                    return;
                }
                cVar.p(false);
                return;
            case 5:
                ArrayList arrayList4 = CarLinkService.n0;
                k.f825y.l();
                return;
            case 6:
                CarLink carLink4 = CarLink.f562i;
                if (carLink4 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink4.t()) {
                    CarLink carLink5 = CarLink.f562i;
                    if (carLink5 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    CarLinkService carLinkServiceF2 = carLink5.f();
                    if (carLinkServiceF2 == null || (cVar2 = carLinkServiceF2.A) == null) {
                        return;
                    }
                    cVar2.m();
                    return;
                }
                return;
            case 7:
                StringBuilder sb = new StringBuilder("MainActivity  checkUsbDevice ============>>> CarLink.me.isPowerOn() : ");
                CarLink carLink6 = CarLink.f562i;
                if (carLink6 == null) {
                    t.b.B("me");
                    throw null;
                }
                sb.append(carLink6.v());
                sb.append("  CarLink.me.linkState()::");
                CarLink carLink7 = CarLink.f562i;
                if (carLink7 == null) {
                    t.b.B("me");
                    throw null;
                }
                sb.append(carLink7.B());
                n.b.a("HDL", sb.toString());
                CarLink carLink8 = CarLink.f562i;
                if (carLink8 == null) {
                    t.b.B("me");
                    throw null;
                }
                CarLinkService carLinkServiceF3 = carLink8.f();
                if (carLinkServiceF3 != null) {
                    carLinkServiceF3.d(500L);
                    return;
                }
                return;
            default:
                UsbScanner usbScanner = UsbScanner.f635j;
                n.b.a("Usb", "==========>>> handleDevdetach Cut  auto");
                CarLink carLink9 = CarLink.f562i;
                if (carLink9 == null) {
                    t.b.B("me");
                    throw null;
                }
                carLink9.j().f901u.postValue(3);
                k.f825y.e(0L);
                return;
        }
    }
}
