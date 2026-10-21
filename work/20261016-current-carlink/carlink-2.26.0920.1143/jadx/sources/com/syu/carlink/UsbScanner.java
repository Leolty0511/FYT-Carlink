package com.syu.carlink;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.os.Handler;
import android.util.Log;
import e.a0;
import e.b0;
import e.y;
import f.k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class UsbScanner extends BroadcastReceiver {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final UsbScanner f635j = new UsbScanner();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public UsbManager f636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f637b;
    public Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f638d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public UsbDevice f640f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a0 f643i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final android.os.b f639e = new android.os.b(8);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final android.net.b f641g = new android.net.b(this, 9);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f642h = {3, 5, 6, 7, 8, 9, 10, 11, 13, 14, 224, 254};

    /* JADX WARN: Code duplicated, block: B:11:0x001f  */
    public static int e(UsbDevice usbDevice) {
        int i2;
        t.b.h(usbDevice, UsbManager.EXTRA_DEVICE);
        if (e.b.e(usbDevice)) {
            i2 = 0;
        } else if (e.b.d(usbDevice)) {
            i2 = 2;
        } else if (e.b.f(usbDevice)) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        StringBuilder sb = new StringBuilder();
        String str = String.format("USB id: %04X, product id: %04X, ", Arrays.copyOf(new Object[]{Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId())}, 2));
        t.b.g(str, "format(format, *args)");
        sb.append(str);
        sb.append("type: ");
        sb.append(i2);
        n.b.a("Usb", sb.toString());
        return i2;
    }

    public static boolean g(UsbDeviceConnection usbDeviceConnection, int i2, String str) {
        byte[] bytes = str.getBytes(f0.a.f870a);
        t.b.g(bytes, "this as java.lang.String).getBytes(charset)");
        return usbDeviceConnection.controlTransfer(64, 52, 0, i2, bytes, bytes.length, 500) == str.length();
    }

    public static boolean h(UsbDeviceConnection usbDeviceConnection) {
        n.b.a("Usb", "switchAccessory 00");
        byte[] bArr = new byte[2];
        int i2 = usbDeviceConnection.controlTransfer(192, 51, 0, 0, bArr, 2, 500) == 2 ? bArr[0] + (bArr[1] << 8) : -1;
        if (i2 <= 0) {
            String str = String.format("Incorrect accessory protocol %d", Arrays.copyOf(new Object[]{Integer.valueOf(i2)}, 1));
            t.b.g(str, "format(format, *args)");
            n.b.a("Usb", str);
            return false;
        }
        if (!g(usbDeviceConnection, 0, "Android")) {
            n.b.a("Usb", "Unable to send manufacturer name");
            return false;
        }
        if (!g(usbDeviceConnection, 1, "Android Auto")) {
            n.b.a("Usb", "Unable to send model name");
            return false;
        }
        if (!g(usbDeviceConnection, 2, "Android Auto")) {
            n.b.a("Usb", "Unable to send description");
            return false;
        }
        if (!g(usbDeviceConnection, 3, "1.0")) {
            n.b.a("Usb", "Unable to send version");
            return false;
        }
        if (!g(usbDeviceConnection, 4, "http://www.android.com/auto")) {
            n.b.a("Usb", "Unable to send URI");
            return false;
        }
        if (!g(usbDeviceConnection, 5, "0000000012345678")) {
            n.b.a("Usb", "Unable to send serial number");
            return false;
        }
        if (usbDeviceConnection.controlTransfer(64, 53, 0, 0, null, 0, 500) == 0) {
            return true;
        }
        n.b.a("Usb", "Unable to start accessory mode");
        return false;
    }

    public final int a() {
        int i2;
        StringBuilder sb = new StringBuilder("==========>>> checkUsbLinkType  size: ");
        UsbManager usbManager = this.f636a;
        UsbDevice value = null;
        if (usbManager == null) {
            t.b.B("usbManager");
            throw null;
        }
        HashMap<String, UsbDevice> deviceList = usbManager.getDeviceList();
        sb.append(deviceList != null ? Integer.valueOf(deviceList.size()) : null);
        n.b.a("Usb", sb.toString());
        UsbManager usbManager2 = this.f636a;
        if (usbManager2 == null) {
            t.b.B("usbManager");
            throw null;
        }
        HashMap<String, UsbDevice> deviceList2 = usbManager2.getDeviceList();
        int i3 = -1;
        if (deviceList2 != null) {
            int i4 = -1;
            for (Map.Entry<String, UsbDevice> entry : deviceList2.entrySet()) {
                StringBuilder sb2 = new StringBuilder("Usb Device: ");
                String str = String.format(" Check  USB id: %04X, product id: %04X, ", Arrays.copyOf(new Object[]{Integer.valueOf(entry.getValue().getVendorId()), Integer.valueOf(entry.getValue().getProductId())}, 2));
                t.b.g(str, "format(format, *args)");
                sb2.append(str);
                sb2.append(" \n");
                sb2.append(entry.getValue());
                n.b.a("Usb", sb2.toString());
                UsbDevice value2 = entry.getValue();
                t.b.g(value2, "device.value");
                if (!e.b.e(value2)) {
                    UsbDevice value3 = entry.getValue();
                    t.b.g(value3, "device.value");
                    if (e.b.d(value3)) {
                        c().post(new android.accessibilityservice.a(this, entry, 6));
                        return 2;
                    }
                    UsbDevice value4 = entry.getValue();
                    t.b.g(value4, "device.value");
                    if (e.b.f(value4)) {
                        i4 = 2;
                        i3 = 1;
                    } else {
                        UsbDevice value5 = entry.getValue();
                        t.b.g(value5, "device.value");
                        if (f(value5, b())) {
                            i3 = 2;
                            i4 = 0;
                        }
                    }
                    if (i3 > 0) {
                        value = entry.getValue();
                        break;
                    }
                }
            }
            i2 = i3;
            i3 = i4;
        } else {
            i2 = -1;
        }
        if (i3 <= 0) {
            if (i3 == 0) {
                k.f825y.d();
                k.f825y.e(2000L);
            }
            return i2;
        }
        t.b.e(value);
        this.f643i = new a0(this, value, i3);
        c().post(this.f643i);
        return i2;
    }

    public final Context b() {
        Context context = this.f637b;
        if (context != null) {
            return context;
        }
        t.b.B("context");
        throw null;
    }

    public final Handler c() {
        Handler handler = this.c;
        if (handler != null) {
            return handler;
        }
        t.b.B("mHandler");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:13:0x0020  */
    /* JADX WARN: Code duplicated, block: B:15:0x0024  */
    /* JADX WARN: Code duplicated, block: B:17:0x002a  */
    /* JADX WARN: Code duplicated, block: B:18:0x002c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0030  */
    /* JADX WARN: Code duplicated, block: B:22:0x0034  */
    /* JADX WARN: Code duplicated, block: B:24:0x003a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0042  */
    /* JADX WARN: Code duplicated, block: B:42:0x008a  */
    public final void d(UsbDevice usbDevice, Context context) {
        CarLink carLink;
        int i2;
        CarLink carLink2;
        if (e.b.f(usbDevice)) {
            CarLink carLink3 = CarLink.f562i;
            if (carLink3 == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink3.e()) {
                i2 = 2;
            } else if (e.b.d(usbDevice)) {
                carLink2 = CarLink.f562i;
                if (carLink2 != null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink2.C() != 1) {
                    i2 = 1;
                } else {
                    carLink = CarLink.f562i;
                    if (carLink != null) {
                        t.b.B("me");
                        throw null;
                    }
                    if (carLink.d()) {
                        i2 = -1;
                    } else {
                        i2 = -1;
                    }
                }
            } else {
                carLink = CarLink.f562i;
                if (carLink != null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink.d()) {
                    i2 = -1;
                } else {
                    i2 = -1;
                }
            }
        } else if (e.b.d(usbDevice)) {
            carLink = CarLink.f562i;
            if (carLink != null) {
                t.b.B("me");
                throw null;
            }
            if (carLink.d() || !f(usbDevice, context)) {
                i2 = -1;
            } else {
                i2 = 0;
            }
        } else {
            carLink2 = CarLink.f562i;
            if (carLink2 != null) {
                t.b.B("me");
                throw null;
            }
            if (carLink2.C() != 1) {
                i2 = 1;
            } else {
                carLink = CarLink.f562i;
                if (carLink != null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink.d()) {
                    i2 = -1;
                } else {
                    i2 = -1;
                }
            }
        }
        Log.d("Usb", "Link Mode : " + i2);
        if (i2 <= 0) {
            if (i2 == 0) {
                k.f825y.d();
                k.f825y.e(2000L);
                return;
            }
            return;
        }
        a0 a0Var = this.f643i;
        if (a0Var != null) {
            c().removeCallbacks(a0Var);
        }
        this.f643i = new a0(this, usbDevice, i2);
        c().postDelayed(this.f643i, i2 == 1 ? 200L : 0L);
    }

    public final boolean f(UsbDevice usbDevice, Context context) {
        boolean z2;
        t.b.h(context, "context");
        if (usbDevice.getInterfaceCount() == 1) {
            n.b.a("Usb", "------------->> check device isMarkedDevice, dev: \n" + usbDevice);
            String str = String.format("USB id: %04X, product id: %04X", Arrays.copyOf(new Object[]{Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId())}, 2));
            t.b.g(str, "format(format, *args)");
            n.b.a("Usb", " device:".concat(str));
            UsbInterface usbInterface = usbDevice.getInterface(0);
            t.b.g(usbInterface, "usbDevice.getInterface(0)");
            z2 = ("MTP".equals(usbInterface.getName()) || UsbManager.USB_FUNCTION_MTP.equals(usbInterface.getName()) || !t.c.H(this.f642h, usbInterface.getInterfaceClass())) ? false : true;
            n.b.a("Usb", " isMarkedDevice result: " + z2);
        } else if (usbDevice.getInterfaceCount() > 1) {
            int interfaceCount = usbDevice.getInterfaceCount();
            boolean zI = true;
            int interfaceClass = -1;
            for (int i2 = 0; i2 < interfaceCount; i2++) {
                UsbInterface usbInterface2 = usbDevice.getInterface(i2);
                t.b.g(usbInterface2, "usbDevice.getInterface(index)");
                if (interfaceClass == -1) {
                    interfaceClass = usbInterface2.getInterfaceClass();
                } else if (interfaceClass >= 0) {
                    zI = interfaceClass == usbInterface2.getInterfaceClass();
                }
                if (zI) {
                    zI = t.c.I(new Integer[]{3, 8}, Integer.valueOf(interfaceClass));
                }
                if (!zI) {
                    break;
                }
            }
            z2 = zI;
        } else {
            z2 = true;
        }
        if (z2) {
            return false;
        }
        if (usbDevice.getInterfaceCount() == 0) {
            return true;
        }
        String str2 = String.format("USB id: %04X, product id: %04X, interfaceCount: %d", Arrays.copyOf(new Object[]{Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId()), Integer.valueOf(usbDevice.getInterfaceCount())}, 3));
        t.b.g(str2, "format(format, *args)");
        n.b.a("Usb", "------------->> processDevice  ".concat(str2));
        UsbInterface usbInterface3 = usbDevice.getInterface(0);
        Object systemService = context.getSystemService(Context.USB_SERVICE);
        t.b.f(systemService, "null cannot be cast to non-null type android.hardware.usb.UsbManager");
        UsbDeviceConnection usbDeviceConnectionOpenDevice = ((UsbManager) systemService).openDevice(usbDevice);
        if (usbDeviceConnectionOpenDevice == null) {
            return false;
        }
        try {
            try {
                if (!usbDeviceConnectionOpenDevice.claimInterface(usbInterface3, true)) {
                    return false;
                }
                boolean zH = h(usbDeviceConnectionOpenDevice);
                n.b.a("Usb", "------------->> processDevice result: " + zH);
                if (!zH) {
                    usbDeviceConnectionOpenDevice.claimInterface(usbInterface3, false);
                }
                return zH;
            } catch (Exception e2) {
                n.b.a("Usb", "USB Device processDevice failed: " + e2.getMessage());
                return false;
            } finally {
                usbDeviceConnectionOpenDevice.close();
            }
            usbDeviceConnectionOpenDevice.close();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action;
        UsbDevice usbDevice;
        UsbDevice usbDevice2;
        String str;
        t.b.h(context, "context");
        t.b.h(intent, "intent");
        n.b.a("Usb", "onReceive   " + intent.getAction() + "  \nMcuOn: " + e.b.b().j().f885d.getValue() + "  \nlinkedType : " + e.b.b().j().f899s.getValue() + "  \nlinkState: " + e.b.b().B());
        if (e.b.b().v() && (action = intent.getAction()) != null) {
            int i2 = 0;
            switch (action.hashCode()) {
                case -2114103349:
                    if (!action.equals(UsbManager.ACTION_USB_DEVICE_ATTACHED)) {
                    }
                    n.b.a("Usb", "onReceive  ATTACHE usbDevice: CarLink.me.isWiredAutoConnection(): " + e.b.b().y() + "  CarLink.me.carlinkService()?.isUIShowing : " + e.b.b().f564d);
                    if (((!e.b.b().J() && e.b.b().y()) || e.b.b().f564d) && (usbDevice2 = (UsbDevice) intent.getParcelableExtra(UsbManager.EXTRA_DEVICE)) != null && !b0.a(usbDevice2)) {
                        String str2 = String.format(" Check  USB id: %04X, product id: %04X, ", Arrays.copyOf(new Object[]{Integer.valueOf(usbDevice2.getVendorId()), Integer.valueOf(usbDevice2.getProductId())}, 2));
                        t.b.g(str2, "format(format, *args)");
                        Log.d("Usb", str2);
                        if (!e.b.e(usbDevice2)) {
                            if (e.b.b().p() || e.b.b().l()) {
                                String str3 = String.format("USB id: %04X, product id: %04X", Arrays.copyOf(new Object[]{Integer.valueOf(usbDevice2.getVendorId()), Integer.valueOf(usbDevice2.getProductId())}, 2));
                                t.b.g(str3, "format(format, *args)");
                                n.b.a("Usb", "attach while link tearing down, delay recheck: ".concat(str3));
                                this.f640f = usbDevice2;
                                Handler handlerC = c();
                                android.net.b bVar = this.f641g;
                                handlerC.removeCallbacks(bVar);
                                c().postDelayed(bVar, 1500L);
                            } else if (e.b.b().B() != 4 || e.b.d(usbDevice2)) {
                                d(usbDevice2, context);
                            }
                            break;
                        }
                    }
                    break;
                case -1608292967:
                    if (action.equals(UsbManager.ACTION_USB_DEVICE_DETACHED) && (usbDevice = (UsbDevice) intent.getParcelableExtra(UsbManager.EXTRA_DEVICE)) != null && !b0.a(usbDevice)) {
                        String str4 = String.format(" Check  USB id: %04X, product id: %04X, ", Arrays.copyOf(new Object[]{Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId())}, 2));
                        t.b.g(str4, "format(format, *args)");
                        n.b.a("Usb", "=====>> onReceive  DETACH usbDevice:".concat(str4));
                        a0 a0Var = this.f643i;
                        android.os.b bVar2 = this.f639e;
                        if (a0Var != null) {
                            if (!e.b.b().p() && !e.b.b().l()) {
                                c().removeCallbacks(bVar2);
                                if (e(usbDevice) > 0) {
                                    c().postDelayed(bVar2, 3000L);
                                }
                            }
                            if (!a0Var.f750d) {
                                a0Var.f751e.getClass();
                                UsbDevice usbDevice3 = a0Var.f749b;
                                if (usbDevice3 != null && t.b.a(usbDevice3.getDeviceName(), usbDevice.getDeviceName()) && usbDevice3.getVendorId() == usbDevice.getVendorId() && usbDevice3.getProductId() == usbDevice.getProductId()) {
                                    c().removeCallbacks(a0Var);
                                    this.f643i = null;
                                }
                            }
                        }
                        int iE = e(usbDevice);
                        if (iE >= 0) {
                            if (iE == 2 && e.b.d(usbDevice)) {
                                n.b.a("Usb", "==========>>> Cut  Android Auto");
                                k.f825y.e(1000L);
                                s.a aVar = com.syu.carlink.base.a.c;
                                e.b.a().b(new g.a(iE, 7, 0, null, null, 24));
                            } else if (iE == 1) {
                                n.b.a("Usb", "==========>>> Cut  Carplayy");
                                c().removeCallbacks(bVar2);
                                if (e.b.b().B() != 3) {
                                    c().postDelayed(new y(iE, i2), 1000L);
                                } else {
                                    s.a aVar2 = com.syu.carlink.base.a.c;
                                    e.b.a().b(new g.a(iE, 7, 0, null, null, 24));
                                }
                            }
                        }
                    }
                    break;
                case -1434975898:
                    if (!action.equals("com.google.android.projection.sink.transport.usb.ACTION_USB_DEVICE_PERMISSION")) {
                    }
                    n.b.a("Usb", "onReceive  ATTACHE usbDevice: CarLink.me.isWiredAutoConnection(): " + e.b.b().y() + "  CarLink.me.carlinkService()?.isUIShowing : " + e.b.b().f564d);
                    if (!e.b.b().J()) {
                    }
                    break;
                case 1099555123:
                    str = UsbManager.ACTION_USB_ACCESSORY_ATTACHED;
                    action.equals(str);
                    break;
                case 1605365505:
                    str = UsbManager.ACTION_USB_ACCESSORY_DETACHED;
                    action.equals(str);
                    break;
            }
        }
    }
}
