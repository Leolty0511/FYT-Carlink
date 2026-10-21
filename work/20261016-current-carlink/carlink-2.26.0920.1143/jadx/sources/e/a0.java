package e;

import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Handler;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.UsbScanner;
import java.util.Arrays;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes4.dex */
public final class a0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UsbDevice f749b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f750d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UsbScanner f751e;

    public a0(UsbScanner usbScanner, UsbDevice usbDevice, int i2) {
        f.k kVar;
        CarLinkService carLinkServiceF;
        this.f751e = usbScanner;
        this.f749b = usbDevice;
        this.c = i2;
        if (i2 != 1 || (carLinkServiceF = (kVar = f.k.f825y).f()) == null) {
            return;
        }
        kVar.f844v = 0;
        Handler handler = carLinkServiceF.f581f;
        f.b bVar = kVar.f839q;
        handler.removeCallbacks(bVar);
        handler.removeCallbacks(kVar.f841s);
        handler.postDelayed(bVar, 500L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        UsbDevice usbDevice = this.f749b;
        String str = String.format(" id: %04X, product id: %04X, ", Arrays.copyOf(new Object[]{Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId())}, 2));
        t.b.g(str, "format(format, *args)");
        n.b.a("Usb", "CheckUsb  run dev: ".concat(str));
        int i3 = this.c;
        boolean z2 = i3 == 1;
        if (i3 == 0 || i3 == 1) {
            i2 = 2;
        } else {
            i2 = i3 != 2 ? 0 : 1;
        }
        UsbScanner usbScanner = this.f751e;
        if (i2 > 0) {
            usbScanner.c().removeCallbacks(usbScanner.f639e);
        }
        if (i2 == 1) {
            n.b.a("Usb", "==========>>> Linked  Carplay");
            usbScanner.c().removeCallbacks(usbScanner.f639e);
            s.a aVar = com.syu.carlink.base.a.c;
            b.a().b(new g.a(i2, 7, 1, null, null, 24));
        } else if (i2 == 2) {
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink.C() != 1) {
                n.b.a("Usb", "==========>>> Linked  Android Auto");
                s.a aVar2 = com.syu.carlink.base.a.c;
                b.a().b(new g.a(i2, 7, 1, null, null, 24));
                CarLink carLink2 = CarLink.f562i;
                if (carLink2 == null) {
                    t.b.B("me");
                    throw null;
                }
                CarLinkService carLinkServiceF = carLink2.f();
                if (carLinkServiceF != null) {
                    carLinkServiceF.j(false);
                    Ref$IntRef ref$IntRef = new Ref$IntRef();
                    Object systemService = carLinkServiceF.getSystemService(Context.USB_SERVICE);
                    t.b.f(systemService, "null cannot be cast to non-null type android.hardware.usb.UsbManager");
                    carLinkServiceF.f581f.postDelayed(new l((UsbManager) systemService, carLinkServiceF, z2, usbDevice, ref$IntRef), 200L);
                }
            }
        }
        this.f750d = true;
    }
}
