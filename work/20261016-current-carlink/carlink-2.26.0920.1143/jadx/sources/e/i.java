package e;

import android.hardware.usb.UsbDevice;
import android.view.SurfaceView;
import android.view.View;
import com.google.android.projection.sink.R;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.auto.AutoFragment;
import f.f0;

/* JADX INFO: loaded from: classes4.dex */
public final class i implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f765b = 0;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f766d;

    public i(CarLinkService carLinkService) {
        this.f766d = carLinkService;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z2;
        h.c cVar;
        int i2 = this.f765b;
        Object obj = this.f766d;
        switch (i2) {
            case 0:
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                if (t.b.a(carLink.j().B.getValue(), Boolean.TRUE)) {
                    CarLink carLink2 = CarLink.f562i;
                    if (carLink2 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    if (carLink2.p()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                } else {
                    z2 = false;
                }
                if (this.c == z2) {
                    return;
                }
                this.c = z2;
                if (!z2 || (cVar = ((CarLinkService) obj).A) == null) {
                    return;
                }
                cVar.n(231, null, new int[]{2});
                return;
            default:
                if (CarLink.f562i.B() == 3) {
                    n.b.a("Auto", "wiredAutoStart link disconnected, skip stale attach");
                    return;
                }
                if (this.c) {
                    ((f.k) obj).f831h = 1;
                }
                AutoFragment autoFragment = ((f.k) obj).f830g;
                View view = autoFragment.getView();
                UsbDevice usbDeviceG = f.k.f825y.g();
                if (view == null) {
                    autoFragment.f656o = true;
                    autoFragment.f(usbDeviceG);
                } else {
                    SurfaceView surfaceView = (SurfaceView) autoFragment.getView().findViewById(R.id.surface);
                    if (surfaceView != null) {
                        if (surfaceView.getWidth() <= 0 || surfaceView.getHeight() <= 0) {
                            surfaceView.getViewTreeObserver().addOnGlobalLayoutListener(new f0(autoFragment, usbDeviceG));
                        } else {
                            n.b.a("Auto", "----------------fmt startMode");
                            f.k.f825y.m(1);
                        }
                    }
                }
                CarLink.f562i.j().f900t.postValue(2);
                return;
        }
    }

    public i(f.k kVar, boolean z2) {
        this.f766d = kVar;
        this.c = z2;
    }
}
