package f;

import android.hardware.usb.UsbDevice;
import android.util.Log;
import com.google.android.projection.sink.ui.AutoWirelessListener;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements AutoWirelessListener.IAutoWirelessListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f814a;

    public d(k kVar) {
        this.f814a = kVar;
    }

    @Override // com.google.android.projection.sink.ui.AutoWirelessListener.IAutoWirelessListener
    public final void onHandleConnectStatus(String str) {
        Log.w("Auto", "============>> onHandleConnectStatus msg: " + str);
        if ("STATUS_UNSOLICITED_MESSAGE".equals(str)) {
            return;
        }
        if (!"STATUS_SUCCESS".equals(str)) {
            "STATUS_WIFI_CONNECT_TIMEOUT".equals(str);
            return;
        }
        k kVar = this.f814a;
        kVar.b();
        kVar.f844v = 0;
        if (CarLink.f562i.f565e) {
            return;
        }
        kVar.e(100L);
    }

    @Override // com.google.android.projection.sink.ui.AutoWirelessListener.IAutoWirelessListener
    public final void onStateChange(boolean z2) {
        CarLinkService carLinkServiceF;
        if (CarLink.f562i.p()) {
            return;
        }
        UsbDevice usbDeviceG = k.f825y.g();
        n.b.a("HDL", " Wireless AAuto BT -------->>  onStateChange : " + z2 + " CarLink.me.linkState(): " + CarLink.f562i.B());
        if (usbDeviceG != null || !z2) {
            if (z2 || CarLink.f562i.l()) {
                return;
            }
            n.b.a("Auto", "============>> onHandleConnectStatus wifi connect timeout");
            return;
        }
        if (((CarLink.f562i.J() || !CarLink.f562i.z()) && !CarLink.f562i.f564d) || CarLink.f562i.B() != 3) {
            return;
        }
        k kVar = this.f814a;
        kVar.f844v = 0;
        if (kVar.o()) {
            if (!CarLink.f562i.f564d && (carLinkServiceF = kVar.f()) != null) {
                carLinkServiceF.j(false);
            }
            kVar.d();
        }
    }
}
