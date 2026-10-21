package e;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.MainActivity;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes4.dex */
public final class l implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ UsbManager f773b;
    public final /* synthetic */ CarLinkService c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UsbDevice f775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Ref$IntRef f776f;

    public l(UsbManager usbManager, CarLinkService carLinkService, boolean z2, UsbDevice usbDevice, Ref$IntRef ref$IntRef) {
        this.f773b = usbManager;
        this.c = carLinkService;
        this.f774d = z2;
        this.f775e = usbDevice;
        this.f776f = ref$IntRef;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z2;
        Collection<UsbDevice> collectionValues = this.f773b.getDeviceList().values();
        t.b.g(collectionValues, "usbManager.deviceList.values");
        boolean zIsEmpty = collectionValues.isEmpty();
        UsbDevice usbDevice = this.f775e;
        if (!zIsEmpty) {
            Iterator<T> it = collectionValues.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                UsbDevice usbDevice2 = (UsbDevice) it.next();
                if (usbDevice2.getVendorId() == usbDevice.getVendorId() && usbDevice2.getProductId() == usbDevice.getProductId()) {
                    z2 = true;
                    break;
                }
            }
        } else {
            z2 = false;
            break;
        }
        if (!z2) {
            n.b.a("HDL", " usbToAndroidAuto dev gone during wait, cancel dispatch");
            CarLink carLink = CarLink.f562i;
            if (carLink != null) {
                carLink.j().f901u.postValue(3);
                return;
            } else {
                t.b.B("me");
                throw null;
            }
        }
        CarLinkService carLinkService = this.c;
        g gVar = carLinkService.D;
        Ref$IntRef ref$IntRef = this.f776f;
        if (gVar == null) {
            int i2 = ref$IntRef.element;
            ref$IntRef.element = i2 + 1;
            if (i2 >= carLinkService.f605y) {
                n.b.a("HDL", " usbToAndroidAuto uiCallback timeout, give up");
                return;
            }
            n.b.a("HDL", " usbToAndroidAuto uiCallback not ready, retry " + ref$IntRef.element + '/' + carLinkService.f605y);
            carLinkService.f581f.postDelayed(this, carLinkService.f604x);
            return;
        }
        StringBuilder sb = new StringBuilder(" usbToAndroidAuto dispatch on: ");
        final boolean z3 = this.f774d;
        sb.append(z3);
        sb.append("   dev: ");
        String str = String.format(" id: %04X, product id: %04X, ", Arrays.copyOf(new Object[]{Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId())}, 2));
        t.b.g(str, "format(format, *args)");
        sb.append(str);
        sb.append(" waited: ");
        sb.append(((long) ref$IntRef.element) * carLinkService.f604x);
        sb.append("ms");
        n.b.a("HDL", sb.toString());
        t.b.h(usbDevice, "dev");
        ((MainActivity) gVar).i().postDelayed(new Runnable() { // from class: e.o
            @Override // java.lang.Runnable
            public final void run() {
                f.k kVar = f.k.f825y;
                kVar.getClass();
                if (CarLink.f562i.v()) {
                    n.b.a("HDL", "wiredAutoStart ===================>> old mLaunchMode : " + kVar.f831h);
                    if (kVar.f831h >= 0) {
                        n.b.a("HDL", "wiredAutoStart stale mLaunchMode: " + kVar.f831h + ", reset for new attach");
                        kVar.f831h = -1;
                    }
                    kVar.f().f581f.postDelayed(new i(kVar, z3), 200L);
                }
            }
        }, 100L);
    }
}
