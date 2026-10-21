package android.net;

import android.graphics.drawable.Drawable;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.media.AudioManager;
import android.print.PrintManager;
import android.service.wallpaper.WallpaperService;
import android.util.Log;
import android.widget.ImageView;
import androidx.activity.ComponentActivity;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedDispatcher;
import androidx.constraintlayout.helper.widget.Carousel;
import com.android.internal.os.FuseAppLoop;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.UsbScanner;
import com.syu.carlink.carplay.CarplayView;
import com.syu.carlink.fragment.CarplayFragment;
import com.syu.carlink.fragment.SettingsFragment;
import h.c;
import java.io.FileInputStream;
import java.util.Collection;
import java.util.HashMap;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f91b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b(Object obj, int i2) {
        this.f91b = i2;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Collection<UsbDevice> collectionValues;
        CarLinkService carLinkServiceF;
        c cVar;
        c cVar2;
        AudioManager audioManager;
        int i2 = this.f91b;
        int iRequestAudioFocus = -1;
        boolean z2 = false;
        Object obj = this.c;
        switch (i2) {
            case 0:
                ((NetworkFactory) obj).lambda$reevaluateAllRequests$0();
                return;
            case 1:
                ((PrintManager.PrintServiceRecommendationsChangeListener) obj).onPrintServiceRecommendationsChanged();
                return;
            case 2:
                ((PrintManager.PrintServicesChangeListener) obj).onPrintServicesChanged();
                return;
            case 3:
                ((WallpaperService.Engine) obj).notifyColorsChanged();
                return;
            case 4:
                ((ComponentActivity) obj).invalidateMenu();
                return;
            case 5:
                ComponentDialog.m40onBackPressedDispatcher$lambda1((ComponentDialog) obj);
                return;
            case 6:
                ((OnBackPressedDispatcher) obj).onBackPressed();
                return;
            case 7:
                ((Carousel) obj).lambda$updateItems$0();
                return;
            case 8:
                ((FuseAppLoop) obj).lambda$new$0();
                return;
            case 9:
                UsbScanner usbScanner = (UsbScanner) obj;
                UsbScanner usbScanner2 = UsbScanner.f635j;
                t.b.h(usbScanner, "this$0");
                UsbDevice usbDevice = usbScanner.f640f;
                if (usbDevice == null) {
                    return;
                }
                usbScanner.f640f = null;
                StringBuilder sb = new StringBuilder("recheckAttach  linkState: ");
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                sb.append(carLink.B());
                n.b.a("Usb", sb.toString());
                CarLink carLink2 = CarLink.f562i;
                if (carLink2 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink2.B() != 3) {
                    n.b.a("Usb", "recheckAttach  link still active, drop");
                    return;
                }
                UsbManager usbManager = usbScanner.f636a;
                if (usbManager == null) {
                    t.b.B("usbManager");
                    throw null;
                }
                HashMap<String, UsbDevice> deviceList = usbManager.getDeviceList();
                if (deviceList != null && (collectionValues = deviceList.values()) != null && !collectionValues.isEmpty()) {
                    for (UsbDevice usbDevice2 : collectionValues) {
                        if (t.b.a(usbDevice2.getDeviceName(), usbDevice.getDeviceName()) && usbDevice2.getVendorId() == usbDevice.getVendorId() && usbDevice2.getProductId() == usbDevice.getProductId()) {
                            z2 = true;
                        }
                    }
                }
                if (z2) {
                    usbScanner.d(usbDevice, usbScanner.b());
                    return;
                } else {
                    n.b.a("Usb", "recheckAttach  device already gone, drop");
                    return;
                }
            case 10:
                h.b bVar = (h.b) obj;
                t.b.h(bVar, "this$0");
                CarLinkService carLinkServiceF2 = e.b.b().f();
                if (carLinkServiceF2 != null && (audioManager = carLinkServiceF2.B) != null) {
                    iRequestAudioFocus = audioManager.requestAudioFocus(bVar, 3, 1);
                }
                bVar.f912a = iRequestAudioFocus;
                n.b.a("HDL", "===========================>>>>  onAudioFocusChange  hashAudioFocus:" + bVar.f912a + "  isShowing: " + e.b.b().f564d);
                if (iRequestAudioFocus == 1) {
                    e.b.b();
                    boolean zF = CarLink.F();
                    n.b.a("HDL", "============>>>>02  onAudioFocusChange CARPLAY_C2S_AUDIO_CTRL 3 noMix: " + zF + "  isMediaAudio: " + e.b.b().t());
                    if (zF) {
                        CarLinkService carLinkServiceF3 = e.b.b().f();
                        if (carLinkServiceF3 == null || (cVar2 = carLinkServiceF3.A) == null) {
                            return;
                        }
                        cVar2.j(true);
                        return;
                    }
                    if (e.b.b().t() || (carLinkServiceF = e.b.b().f()) == null || (cVar = carLinkServiceF.A) == null) {
                        return;
                    }
                    cVar.j(true);
                    return;
                }
                return;
            case 11:
                com.syu.carlink.carplay.a aVar = (com.syu.carlink.carplay.a) obj;
                t.b.h(aVar, "this$0");
                int i3 = aVar.f680d;
                if (i3 < 0 || aVar.c < i3) {
                    return;
                }
                com.syu.carlink.carplay.a.a(0, aVar.f681e);
                com.syu.carlink.carplay.a.a(1, aVar.f682f);
                com.syu.carlink.carplay.a.a(2, aVar.f683g);
                com.syu.carlink.carplay.a.b(3, aVar.f685i);
                com.syu.carlink.carplay.a.b(5, aVar.f680d, aVar.c);
                com.syu.carlink.carplay.a.b(6, aVar.f686j);
                com.syu.carlink.carplay.a.b(7, aVar.f687k);
                com.syu.carlink.carplay.a.a(11, aVar.f684h);
                return;
            case 12:
                CarplayFragment carplayFragment = (CarplayFragment) obj;
                int i4 = CarplayFragment.m;
                t.b.h(carplayFragment, "this$0");
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 == null) {
                    t.b.B("me");
                    throw null;
                }
                CarLinkService carLinkServiceF4 = carLink3.f();
                if (carLinkServiceF4 != null) {
                    CarplayView carplayView = carplayFragment.f710g;
                    int width = carplayView != null ? carplayView.getWidth() : 0;
                    CarplayView carplayView2 = carplayFragment.f710g;
                    int height = carplayView2 != null ? carplayView2.getHeight() : 0;
                    c cVar3 = carLinkServiceF4.A;
                    int i5 = cVar3 != null ? cVar3.f915d : 0;
                    int i6 = cVar3 != null ? cVar3.f916e : 0;
                    if (width <= 0 || height <= 0) {
                        return;
                    }
                    if (i5 == width && i6 == height) {
                        return;
                    }
                    if (i5 > 0 && i6 > 0) {
                        float f2 = width / height;
                        if (Math.abs((i5 / i6) - f2) / f2 > 0.02f) {
                            StringBuilder sbT = android.accessibilityservice.c.t("Carplay onResume aspect mismatch, negotiated: ", i5, " x ", i6, ", actual: ");
                            sbT.append(width);
                            sbT.append(" x ");
                            sbT.append(height);
                            n.b.a("HDL", sbT.toString());
                            c cVar4 = carLinkServiceF4.A;
                            t.b.e(cVar4);
                            carLinkServiceF4.k(cVar4.b(width, height));
                        }
                    }
                    c cVar5 = carLinkServiceF4.A;
                    t.b.e(cVar5);
                    int[] iArrC = cVar5.c(i5, i6, width, height);
                    if (iArrC[0] == width && iArrC[1] == height) {
                        return;
                    }
                    n.b.a("HDL", "Carplay onResume updateSurfaceViewLayout(" + width + ", " + height + ')');
                    carplayFragment.b(width, height, true);
                    return;
                }
                return;
            case 13:
                ImageView imageView = (ImageView) obj;
                int i7 = SettingsFragment.f722e;
                t.b.h(imageView, "$this_run");
                imageView.setImageDrawable(Drawable.createFromStream(new FileInputStream("/sdcard/carlink/logo/car_log.png"), null));
                return;
            case 14:
                com.syu.carlink.ui.a aVar2 = (com.syu.carlink.ui.a) obj;
                t.b.h(aVar2, "this$0");
                int i8 = aVar2.f731f - 1;
                aVar2.f731f = i8;
                aVar2.b(i8);
                return;
            default:
                e eVar = (e) obj;
                t.b.h(eVar, "this$0");
                Log.e("remote", " bind <<===>> " + eVar.f1095d + "  " + e.f1093i + "  " + eVar.f1096e);
                if (e.f1093i && eVar.f1096e == null) {
                    eVar.a();
                    return;
                }
                return;
        }
    }
}
