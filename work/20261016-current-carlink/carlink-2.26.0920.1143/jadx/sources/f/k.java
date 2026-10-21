package f;

import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.protocol.Transport;
import com.google.android.projection.sink.GalIntegration;
import com.google.android.projection.sink.audio.AudioFocusManager;
import com.google.android.projection.sink.embedded.bluetooth.BluetoothExplorer;
import com.google.android.projection.sink.embedded.transport.net.WiFiAccessPoint;
import com.google.android.projection.sink.settings.Settings;
import com.google.android.projection.sink.ui.AutoWirelessListener;
import com.google.android.projection.transport.TransportFactory;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableScheduledFuture;
import com.google.common.util.concurrent.ListeningScheduledExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.MainActivity;
import com.syu.carlink.UsbScanner;
import com.syu.carlink.auto.AutoFragment;
import com.syu.ipc.IRemoteModule;
import com.syu.ipc.IRemoteToolkit;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public final class k implements TransportFactory.Callback, g.e {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static k f825y;
    public TransportFactory c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public e f827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TransportFactory.FactoryHandle f828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Settings f829f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f833j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final h f835l;
    public final WiFiAccessPoint m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final IRemoteToolkit f838p;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AutoFragment f830g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f831h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f832i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public g f834k = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public BluetoothExplorer f836n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f837o = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final b f839q = new b(this, 0);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final b f840r = new b(this, 1);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final b f841s = new b(this, 2);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final b f842t = new b(this, 3);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f843u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f844v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final c f845w = new c(this);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ListenableScheduledFuture f846x = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e.b f826b = new e.b();

    static {
        new HashMap().put(4100, 25374);
        f825y = null;
    }

    public k(Context context) {
        this.f833j = null;
        this.f835l = null;
        this.m = null;
        this.f838p = null;
        this.f833j = context.getApplicationContext();
        this.f829f = new Settings(context);
        TransportFactory.FactoryHandle factoryHandle = this.f828e;
        if (factoryHandle != null) {
            try {
                factoryHandle.interrupt();
            } catch (Exception e2) {
                Log.w("Auto", "Failed to interrupt previous attempt to establish Transport", e2);
            }
            this.f828e = null;
        }
        Log.i("Auto", "Stoping in TCP server mode on port " + this.f829f.getListenTcpPort());
        Log.e("Auto", "*****************************  shutdownTransportFactory");
        TransportFactory transportFactory = this.c;
        if (transportFactory != null) {
            transportFactory.shutdown();
            e eVar = this.f827d;
            if (eVar != null) {
                eVar.invalidateSocket();
            }
        }
        this.c = null;
        Log.i("Auto", ">>>>>>>>>>>>>>>>setupTransportFactory<<<<<<<<<<<<<<<");
        this.f827d = new e(this);
        this.c = TransportFactory.builder().setContext(context).setServerSocketProvider(this.f827d).build();
        this.f835l = new h();
        this.m = new WiFiAccessPoint(this.f833j, this.f829f);
        AutoWirelessListener.instance.setListener(new d(this));
        IBinder iBinder = (IBinder) p.a.e("android.os.ServiceManager", null, "getService", Context.SYU_SERVICE);
        if (iBinder != null) {
            try {
                this.f838p = IRemoteToolkit.Stub.asInterface(iBinder);
            } catch (Exception unused) {
            }
            IRemoteToolkit iRemoteToolkit = this.f838p;
            if (iRemoteToolkit != null) {
                try {
                    IRemoteModule remoteModule = iRemoteToolkit.getRemoteModule(0);
                    if (remoteModule != null) {
                        i iVar = new i();
                        remoteModule.register(iVar, 0, 0);
                        remoteModule.register(iVar, 8, 0);
                    }
                } catch (RemoteException e3) {
                    e3.printStackTrace();
                }
            }
        }
    }

    @Override // g.e
    public final void a(int i2) {
        CarLinkService carLinkServiceF = f();
        if (carLinkServiceF == null) {
            return;
        }
        if (i2 == 4097) {
            j(87);
            return;
        }
        if (i2 == 4098) {
            j(88);
            return;
        }
        if (i2 == 4099) {
            j(5);
            return;
        }
        if (i2 == 4101) {
            j(84);
            return;
        }
        if (i2 == 4102) {
            j(126);
            return;
        }
        if (i2 == 4103) {
            j(127);
            return;
        }
        if (i2 == 4104) {
            j(85);
            return;
        }
        if (i2 == 4105) {
            j(21);
            return;
        }
        if (i2 == 4106) {
            j(22);
            return;
        }
        if (i2 == 4107) {
            j(23);
            return;
        }
        if (i2 == 4108) {
            if (CarLink.f562i.c() != 4) {
                j(88);
                return;
            } else {
                carLinkServiceF.f592l.getClass();
                t.b.h(null, "ints");
                throw null;
            }
        }
        if (i2 == 4109) {
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink.c() != 4 && carLink.c() != 5 && carLink.c() != 3) {
                j(87);
                return;
            } else {
                carLinkServiceF.f592l.getClass();
                t.b.h(null, "ints");
                throw null;
            }
        }
        if (i2 == 4110) {
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink2.c() != 4) {
                j(87);
                return;
            } else {
                carLinkServiceF.f592l.getClass();
                t.b.h(null, "ints");
                throw null;
            }
        }
        if (i2 != 4111) {
            if (i2 == 4112) {
                j(4);
                return;
            }
            return;
        }
        CarLink carLink3 = CarLink.f562i;
        if (carLink3 == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink3.c() != 4 && carLink3.c() != 5 && carLink3.c() != 3) {
            j(88);
        } else {
            carLinkServiceF.f592l.getClass();
            t.b.h(null, "ints");
            throw null;
        }
    }

    public final void b() {
        CarLinkService carLinkServiceF = f();
        if (carLinkServiceF == null) {
            return;
        }
        carLinkServiceF.f581f.removeCallbacks(this.f845w);
        this.f843u = 0;
    }

    public final void c() {
        AudioFocusManager audioFocusManager;
        AutoFragment autoFragment = this.f830g;
        if (autoFragment == null || (audioFocusManager = autoFragment.f648f) == null) {
            return;
        }
        audioFocusManager.disablePhoneFocus();
    }

    public final void d() {
        CarLinkService carLinkServiceF = f();
        if (carLinkServiceF == null) {
            return;
        }
        Handler handler = carLinkServiceF.f581f;
        handler.removeCallbacks(this.f839q);
        handler.removeCallbacks(this.f841s);
        handler.post(this.f840r);
    }

    public final void e(long j2) {
        CarLinkService carLinkServiceF = f();
        if (carLinkServiceF == null) {
            return;
        }
        Handler handler = carLinkServiceF.f581f;
        handler.removeCallbacks(this.f839q);
        b bVar = this.f841s;
        handler.removeCallbacks(bVar);
        handler.postDelayed(bVar, j2);
    }

    public final CarLinkService f() {
        return CarLink.f562i.f();
    }

    public final UsbDevice g() {
        for (UsbDevice usbDevice : ((UsbManager) this.f833j.getSystemService(Context.USB_SERVICE)).getDeviceList().values()) {
            if (usbDevice == null || usbDevice.getDeviceClass() != 0) {
                UsbScanner.f635j.getClass();
                if (UsbScanner.e(usbDevice) == 2) {
                    return usbDevice;
                }
            } else {
                UsbScanner usbScanner = UsbScanner.f635j;
                if (e.b.d(usbDevice)) {
                    Log.d("Auto", String.format("getUsbDevice Device id: %04X, product id: %04X, ", Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId())));
                    n.b.a("Usb", String.format("return  usb attached Device id: %04X, product id: %04X, ", Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId())));
                    return usbDevice;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean h() {
        StringBuilder sb = new StringBuilder("===================>> bluetoothExplorer.getConnectedDevices().size(): ");
        BluetoothExplorer bluetoothExplorer = this.f836n;
        sb.append(bluetoothExplorer == null ? 0 : bluetoothExplorer.getConnectedDevices().size());
        n.b.a("HDL", sb.toString());
        if (((Integer) CarLink.f562i.j().f894n.getValue()).intValue() != 2) {
            return false;
        }
        String str = (String) CarLink.f562i.j().m.getValue();
        BluetoothExplorer bluetoothExplorer2 = this.f836n;
        return bluetoothExplorer2 != null && bluetoothExplorer2.supportWireless(str);
    }

    public final void i() {
        BluetoothClass bluetoothClass;
        if (this.f837o) {
            return;
        }
        this.f837o = true;
        ListenableScheduledFuture listenableScheduledFuture = this.f846x;
        if (listenableScheduledFuture != null) {
            listenableScheduledFuture.cancel(true);
        }
        try {
            this.f828e.interrupt();
            this.f827d.invalidateSocket();
            this.c.shutdownTcpDelegate();
        } catch (Exception unused) {
        } catch (Throwable th) {
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            throw th;
        }
        try {
            Thread.sleep(100L);
        } catch (InterruptedException e3) {
            e3.printStackTrace();
        }
        b();
        BluetoothExplorer bluetoothExplorer = this.f836n;
        if (bluetoothExplorer != null) {
            Set<BluetoothDevice> connectedDevices = bluetoothExplorer.getConnectedDevices();
            n.b.a("HDL", "reset ===================>> BluetoothDevices : " + connectedDevices.size());
            Iterator<BluetoothDevice> it = connectedDevices.iterator();
            BluetoothDevice next = null;
            while (it.hasNext() && ((bluetoothClass = (next = it.next()).getBluetoothClass()) == null || bluetoothClass.getMajorDeviceClass() != 512)) {
            }
            if (next != null) {
                this.f836n.reset(next);
            }
        }
    }

    public final void j(int i2) {
        n.b.a("HDL", " AAuto to Phone -------->>  keycode : " + i2);
        long jUptimeMillis = SystemClock.uptimeMillis();
        k(i2, 0, jUptimeMillis, jUptimeMillis);
        CarLinkService carLinkServiceF = f();
        if (carLinkServiceF == null) {
            return;
        }
        carLinkServiceF.f581f.postDelayed(new a(this, i2, jUptimeMillis), 80L);
    }

    public final void k(int i2, int i3, long j2, long j3) {
        GalIntegration galIntegration;
        KeyEvent keyEvent = new KeyEvent(j3, j2, i3, i2, 0, 0, -1, 0, 72, 257);
        AutoFragment autoFragment = this.f830g;
        if (autoFragment == null || (galIntegration = autoFragment.f647e) == null || galIntegration.mainDisplayInputSource == null) {
            return;
        }
        android.app.m.p("AA ------ handleKeyEvent keycode: ", i2, "Auto");
        if (i2 != 3) {
            if (i2 == 4) {
                autoFragment.f647e.mainDisplayInputSource.sendKeyEvent(new KeyEvent(keyEvent.getAction(), Protos.KeyCode.KEYCODE_NAVIGATION.getNumber()));
                return;
            }
            if (i2 != 5 && i2 != 6) {
                if (i2 != 8) {
                    if (i2 != 9) {
                        if (i2 == 66) {
                            autoFragment.f647e.mainDisplayInputSource.sendKeyEvent(new KeyEvent(keyEvent.getAction(), 23));
                            return;
                        }
                        if (i2 != 219 && i2 != 231 && i2 != 84 && i2 != 85 && i2 != 87 && i2 != 88) {
                            if (i2 != 102) {
                                if (i2 != 103) {
                                    if (i2 != 126 && i2 != 127) {
                                        switch (i2) {
                                            case 19:
                                            case 20:
                                            case 21:
                                            case 22:
                                            case 23:
                                                break;
                                            case 24:
                                                if (keyEvent.getAction() == 1) {
                                                    autoFragment.f647e.mainDisplayInputSource.sendRelativeEvent(Protos.KeyCode.KEYCODE_DPAD_UP_LEFT.getNumber(), 1);
                                                }
                                                break;
                                            case 25:
                                                if (keyEvent.getAction() == 1) {
                                                    autoFragment.f647e.mainDisplayInputSource.sendRelativeEvent(Protos.KeyCode.KEYCODE_DPAD_DOWN_RIGHT.getNumber(), 1);
                                                }
                                                break;
                                            default:
                                                Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "Got keycode: " + i2);
                                                break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (keyEvent.getAction() == 1) {
                        autoFragment.f647e.mainDisplayInputSource.sendRelativeEvent(Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber(), 1);
                        return;
                    }
                    return;
                }
                if (keyEvent.getAction() == 1) {
                    autoFragment.f647e.mainDisplayInputSource.sendRelativeEvent(Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber(), -1);
                    return;
                }
                return;
            }
        }
        autoFragment.f647e.mainDisplayInputSource.sendKeyEvent(keyEvent);
    }

    public final void l() {
        n.b.a("HDL", "===================>> Auto startRfcommServer start bluetoothExplorer: " + this.f836n + " isBtPowerOn: " + CarLink.f562i.n());
        if (this.f836n == null) {
            this.f836n = new BluetoothExplorer(this.f833j, this.f829f, this.f835l);
        }
        if (CarLink.f562i.n()) {
            this.f836n.setEnable(true);
            n.b.a("HDL", "===================>> bluetoothExplorer.startRfcommServer()");
            this.f836n.startRfcommServer();
        }
        n.b.a("HDL", "===================>> Auto startRfcommServer end");
    }

    public final void m(int i2) {
        UsbDevice usbDeviceG = g();
        if (i2 == 0) {
            throw null;
        }
        if (i2 == 1) {
            AutoFragment autoFragment = this.f830g;
            if (autoFragment != null) {
                autoFragment.f(usbDeviceG);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (h()) {
                o();
                d();
                return;
            }
            return;
        }
        if (i2 != 3) {
            throw new RuntimeException(android.accessibilityservice.c.d("Unhandled case: ", i2));
        }
        if (this.f830g == null) {
            return;
        }
        this.f826b.getClass();
        throw new RuntimeException("Local mode not supported in this build.");
    }

    public final void n() {
        BluetoothExplorer bluetoothExplorer = this.f836n;
        if (bluetoothExplorer != null) {
            bluetoothExplorer.removeWifiStartRequest();
        }
        CarLinkService carLinkServiceF = f();
        if (carLinkServiceF == null) {
            return;
        }
        carLinkServiceF.f581f.removeCallbacks(this.f842t);
        b();
    }

    public final boolean o() {
        BluetoothClass bluetoothClass;
        if (!CarLink.f562i.d()) {
            return false;
        }
        n.b.a("HDL", "wirelessAutostart ===================>> old mLaunchMode : " + this.f831h);
        if (this.f831h >= 0) {
            return false;
        }
        this.f831h = 2;
        Set<BluetoothDevice> connectedDevices = this.f836n.getConnectedDevices();
        n.b.a("HDL", "wirelessAutostart ===================>> BluetoothDevices : " + connectedDevices.size());
        Iterator<BluetoothDevice> it = connectedDevices.iterator();
        BluetoothDevice next = null;
        while (it.hasNext() && ((bluetoothClass = (next = it.next()).getBluetoothClass()) == null || bluetoothClass.getMajorDeviceClass() != 512)) {
        }
        if (next != null) {
            WiFiAccessPoint wiFiAccessPoint = this.m;
            wiFiAccessPoint.teardown();
            ListeningScheduledExecutorService listeningScheduledExecutorServiceListeningDecorator = MoreExecutors.listeningDecorator(Executors.newSingleThreadScheduledExecutor());
            Futures.addCallback(wiFiAccessPoint.initialize(listeningScheduledExecutorServiceListeningDecorator), new f(this, listeningScheduledExecutorServiceListeningDecorator, new j(this, next)), listeningScheduledExecutorServiceListeningDecorator);
            Settings settings = this.f829f;
            TransportFactory.FactoryHandle factoryHandle = this.f828e;
            if (factoryHandle != null) {
                try {
                    factoryHandle.interrupt();
                } catch (Exception e2) {
                    Log.w("Auto", "Failed to interrupt previous attempt to establish Transport", e2);
                }
            }
            try {
                this.f828e = this.c.open(null, this);
            } catch (IOException e3) {
                Log.e("Auto", "Failed to start TCP server on port " + settings.getListenTcpPort(), e3);
            }
            Log.i("Auto", "Starting in TCP server mode on port " + settings.getListenTcpPort());
            CarLinkService carLinkServiceF = f();
            if (carLinkServiceF != null) {
                this.f843u = 0;
                carLinkServiceF.f581f.postDelayed(this.f845w, 1500L);
            }
        }
        CarLink.f562i.j().f900t.postValue(3);
        return next != null;
    }

    @Override // com.google.android.projection.transport.TransportFactory.Callback
    public final void onConnected(Transport transport) {
        StringBuilder sb = new StringBuilder("onConnected transport : ");
        sb.append(transport);
        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        AutoFragment autoFragment = this.f830g;
        sb.append(autoFragment == null ? false : autoFragment.isResumed());
        sb.append(" LinkState: ");
        sb.append(CarLink.f562i.B());
        Log.w("Auto", sb.toString());
        CarLink carLink = CarLink.f562i;
        if (!carLink.f564d) {
            this.f830g.g();
            return;
        }
        g gVar = this.f834k;
        if (gVar != null) {
            MainActivity mainActivity = (MainActivity) gVar;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink.f565e) {
                mainActivity.runOnUiThread(new android.accessibilityservice.a(mainActivity, transport, 5));
            } else {
                if (transport != null) {
                    transport.stopTransport(Transport.StopReason.HU_BYEBYE);
                }
                f825y.i();
            }
        }
        AutoFragment autoFragment2 = this.f830g;
        if (autoFragment2 != null) {
            autoFragment2.h();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.projection.transport.TransportFactory.Callback
    public final void onDisconnected() {
        if (this.f831h >= 0) {
            this.f831h = -1;
        }
        g gVar = this.f834k;
        if (gVar != null) {
            MainActivity mainActivity = (MainActivity) gVar;
            mainActivity.runOnUiThread(new com.syu.carlink.e(mainActivity, 7));
        }
        CarLink.f562i.j().f900t.postValue(-1);
        i();
        Log.w("Auto", "=================>>> transport onDisconnected");
        if (((Integer) CarLink.f562i.j().f901u.getValue()).intValue() != 3) {
            e(1000L);
        }
    }
}
