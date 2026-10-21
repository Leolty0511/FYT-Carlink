package f;

import android.hardware.usb.UsbDevice;
import android.view.ViewTreeObserver;
import com.google.android.projection.sink.R;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class f0 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ UsbDevice f821b;
    public final /* synthetic */ AutoFragment c;

    public f0(AutoFragment autoFragment, UsbDevice usbDevice) {
        this.c = autoFragment;
        this.f821b = usbDevice;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        AutoFragment autoFragment = this.c;
        autoFragment.getView().findViewById(R.id.surface).getViewTreeObserver().removeOnGlobalLayoutListener(this);
        autoFragment.f(this.f821b);
    }
}
