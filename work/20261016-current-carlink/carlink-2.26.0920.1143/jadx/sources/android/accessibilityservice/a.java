package android.accessibilityservice;

import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.graphics.Typeface;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.os.Handler;
import android.os.PowerManager;
import android.view.View;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.projection.protocol.Transport;
import com.google.android.projection.sink.embedded.transport.net.WiFiAccessPoint;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.MainActivity;
import com.syu.carlink.UsbScanner;
import f.k;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3b;
    public final /* synthetic */ Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4d;

    public /* synthetic */ a(Object obj, Object obj2, int i2) {
        this.f3b = i2;
        this.c = obj;
        this.f4d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        boolean zA;
        StringBuilder sb;
        int i2 = this.f3b;
        Object obj = this.f4d;
        Object obj2 = this.c;
        switch (i2) {
            case 0:
                ((AccessibilityButtonController) obj2).lambda$dispatchAccessibilityButtonClicked$0((AccessibilityButtonController.AccessibilityButtonCallback) obj);
                return;
            case 1:
                ((PowerManager.WakeLock) obj2).lambda$wrap$0((Runnable) obj);
                return;
            case 2:
                ((ViewTransition) obj2).lambda$applyTransition$0((View[]) obj);
                return;
            case 3:
                ((ResourcesCompat.FontCallback) obj2).lambda$callbackSuccessAsync$0((Typeface) obj);
                return;
            case 4:
                ((WiFiAccessPoint) obj2).lambda$initialize$2((BroadcastReceiver) obj);
                return;
            case 5:
                MainActivity mainActivity = (MainActivity) obj2;
                Transport transport = (Transport) obj;
                t.b.h(mainActivity, "this$0");
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink.f564d) {
                    mainActivity.m(mainActivity.e());
                }
                k kVar = k.f825y;
                CarLinkService carLinkServiceF = kVar.f();
                if (carLinkServiceF != null) {
                    kVar.f844v = 0;
                    Handler handler = carLinkServiceF.f581f;
                    f.b bVar = kVar.f839q;
                    handler.removeCallbacks(bVar);
                    handler.removeCallbacks(kVar.f841s);
                    handler.postDelayed(bVar, 500L);
                }
                mainActivity.e().onConnected(transport);
                return;
            case 6:
                UsbScanner usbScanner = (UsbScanner) obj2;
                Map.Entry entry = (Map.Entry) obj;
                UsbScanner usbScanner2 = UsbScanner.f635j;
                t.b.h(usbScanner, "this$0");
                t.b.h(entry, "$device");
                Object value = entry.getValue();
                t.b.g(value, "device.value");
                UsbDevice usbDevice = (UsbDevice) value;
                UsbManager usbManager = usbScanner.f636a;
                if (usbManager == null) {
                    t.b.B("usbManager");
                    throw null;
                }
                UsbDeviceConnection usbDeviceConnectionOpenDevice = usbManager.openDevice(usbDevice);
                if (usbDeviceConnectionOpenDevice != null) {
                    try {
                        try {
                            zA = t.b.a(p.a.e(UsbDeviceConnection.class.getName(), usbDeviceConnectionOpenDevice, "resetDevice", new Object[0]), Boolean.TRUE);
                            try {
                                usbDeviceConnectionOpenDevice.close();
                            } catch (Exception e2) {
                                e = e2;
                                sb = new StringBuilder("close connection failed: ");
                                sb.append(e.getMessage());
                                n.b.a("Usb", sb.toString());
                            }
                            break;
                        } catch (Exception e3) {
                            n.b.a("Usb", "USB Device resetDevice failed: " + e3.getMessage());
                            try {
                                usbDeviceConnectionOpenDevice.close();
                                zA = false;
                            } catch (Exception e4) {
                                e = e4;
                                sb = new StringBuilder("close connection failed: ");
                                zA = false;
                                sb.append(e.getMessage());
                                n.b.a("Usb", sb.toString());
                            }
                        }
                        n.b.a("Usb", "USB Device resetDevice result: " + zA);
                    } catch (Throwable th) {
                        try {
                            usbDeviceConnectionOpenDevice.close();
                            break;
                        } catch (Exception e5) {
                            n.b.a("Usb", "close connection failed: " + e5.getMessage());
                        }
                        throw th;
                    }
                } else {
                    zA = false;
                }
                if (zA) {
                    return;
                }
                t.b.j(1);
                try {
                    Thread.sleep(600L);
                    break;
                } catch (InterruptedException e6) {
                    e6.printStackTrace();
                }
                t.b.j(0);
                n.b.a("Usb", "==========>>> reset Usb power");
                return;
            case 7:
                byte[] bArr = (byte[]) obj2;
                l.a aVar = (l.a) obj;
                int i3 = l.a.f1050f;
                t.b.h(bArr, "$byteArray");
                t.b.h(aVar, "this$0");
                BluetoothSocket bluetoothSocket = aVar.f1052d;
                try {
                    n.b.a("BluetoothUtils", "=======>>> sendMessage()  ".concat(new String(bArr, f0.a.f870a)));
                    bluetoothSocket.getOutputStream().write(bArr);
                    bluetoothSocket.getOutputStream().flush();
                    return;
                } catch (Exception unused) {
                    aVar.f1051b.post(new a(aVar, aVar.f1053e, 8));
                    return;
                }
            default:
                l.a aVar2 = (l.a) obj2;
                int i4 = l.a.f1050f;
                t.b.h(aVar2, "this$0");
                t.b.h((l.b) obj, "this$1");
                aVar2.c = false;
                aVar2.f1052d.close();
                aVar2.join();
                n.b.a("BluetoothUtils", "=======>>> btSocketDisconnected()");
                l.b.a("SS");
                return;
        }
    }
}
