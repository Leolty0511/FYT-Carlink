package e;

import android.hardware.usb.UsbDevice;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f755a = t.b.t(21325, 6790, 5824, 1027, 13407);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f756b = t.b.t(24609, 29987, 1500, 24597, 57360, 8496);

    public static boolean a(UsbDevice usbDevice) {
        t.b.h(usbDevice, "usbDevice");
        if (f755a.contains(Integer.valueOf(usbDevice.getVendorId()))) {
            if (f756b.contains(Integer.valueOf(usbDevice.getProductId()))) {
                return true;
            }
        }
        return false;
    }
}
