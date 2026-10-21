package e;

import android.hardware.usb.UsbDevice;
import android.location.OnNmeaMessageListener;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements OnNmeaMessageListener, u.f, i0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ b f752a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ b f753b = new b();
    public static final b c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ b f754d = new b();

    public static com.syu.carlink.base.a a() {
        return (com.syu.carlink.base.a) com.syu.carlink.base.a.c.getValue();
    }

    public static CarLink b() {
        CarLink carLink = CarLink.f562i;
        if (carLink != null) {
            return carLink;
        }
        t.b.B("me");
        throw null;
    }

    public static l.e c(CarLinkService carLinkService) {
        t.b.h(carLinkService, "context");
        if (l.e.f1066d == null) {
            l.e.f1066d = new l.e(carLinkService);
        }
        l.e eVar = l.e.f1066d;
        t.b.e(eVar);
        return eVar;
    }

    public static boolean d(UsbDevice usbDevice) {
        t.b.h(usbDevice, "usbDevice");
        return z.f788a.contains(Integer.valueOf(usbDevice.getVendorId())) && z.f789b.contains(Integer.valueOf(usbDevice.getProductId()));
    }

    public static boolean e(UsbDevice usbDevice) {
        t.b.h(usbDevice, "usbDevice");
        Class cls = Integer.TYPE;
        t.b.e(cls);
        Integer num = (Integer) p.a.d("android.os.SystemProperties", null, "getInt", new Class[]{String.class, cls}, "ro.lsec.barebox", 0);
        return (num != null ? num.intValue() : 0) == 1 || b0.a(usbDevice);
    }

    public static boolean f(UsbDevice usbDevice) {
        t.b.h(usbDevice, "usbDevice");
        return c0.f758a.contains(Integer.valueOf(usbDevice.getVendorId())) && c0.f759b.contains(Integer.valueOf(usbDevice.getProductId()));
    }

    @Override // android.location.OnNmeaMessageListener
    public void onNmeaMessage(String str, long j2) {
        h.c cVar;
        if (str != null) {
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF = carLink.f();
            if (carLinkServiceF == null || (cVar = carLinkServiceF.A) == null) {
                return;
            }
            cVar.n(228, new String[]{str}, new int[0]);
        }
    }
}
