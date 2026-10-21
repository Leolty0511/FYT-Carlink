package f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class e0 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f818a;

    public e0(AutoFragment autoFragment) {
        this.f818a = autoFragment;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        UsbDevice usbDevice;
        if (UsbManager.ACTION_USB_DEVICE_ATTACHED.equals(intent.getAction()) && (usbDevice = (UsbDevice) intent.getParcelableExtra(UsbManager.EXTRA_DEVICE)) != null && usbDevice.getDeviceClass() == 0) {
            int i2 = AutoFragment.P;
            AutoFragment autoFragment = this.f818a;
            autoFragment.getClass();
            autoFragment.f(usbDevice);
        }
    }
}
