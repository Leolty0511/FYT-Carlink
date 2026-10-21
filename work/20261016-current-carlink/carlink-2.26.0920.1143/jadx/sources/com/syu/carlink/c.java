package com.syu.carlink;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements g.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CarLinkService f672b;

    public /* synthetic */ c(CarLinkService carLinkService, int i2) {
        this.f671a = i2;
        this.f672b = carLinkService;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0052  */
    @Override // g.c
    public final void a(g.a aVar) {
        boolean z2;
        boolean z3;
        int i2 = aVar.c;
        int i3 = aVar.f880b;
        int i4 = this.f671a;
        final CarLinkService carLinkService = this.f672b;
        switch (i4) {
            case 0:
                if (i3 == 7 && i2 == 1 && aVar.f879a == 1) {
                    if ((e.b.b().J() || !e.b.b().y()) && !e.b.b().f564d) {
                        return;
                    }
                    h.c cVar = carLinkService.A;
                    if (cVar != null) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        if (jElapsedRealtime - cVar.m >= 9000) {
                            cVar.m = jElapsedRealtime;
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    if (z2 && e.b.b().B() == 3) {
                        e.b.b();
                        boolean zH = CarLink.H();
                        h.c cVar2 = carLinkService.A;
                        int iF = cVar2 != null ? cVar2.f(227, 0) : 129;
                        if (iF < 128) {
                            iF = 129;
                        }
                        if (!zH || iF != 129) {
                            s.a aVar2 = com.syu.carlink.base.a.c;
                            e.b.a().b(new g.a(1, 0, 9, null, null, 24));
                            return;
                        } else {
                            e.b.b();
                            if (CarLink.F()) {
                                carLinkService.h(10, true);
                            }
                            carLinkService.x(new z.a() { // from class: com.syu.carlink.CarLinkService$wiredCarplayLinkHandle$1$onHandle$1
                                @Override // z.a
                                public final Boolean invoke() {
                                    CarLink carLink = CarLink.f562i;
                                    if (carLink != null) {
                                        return Boolean.valueOf(carLink.B() == 3);
                                    }
                                    t.b.B("me");
                                    throw null;
                                }
                            }, new z.a() { // from class: com.syu.carlink.CarLinkService$wiredCarplayLinkHandle$1$onHandle$2
                                {
                                    super(0);
                                }

                                /* JADX WARN: Multi-variable type inference failed */
                                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                                public final void m63invoke() {
                                    CarLink carLink = CarLink.f562i;
                                    if (carLink == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    Integer num = (Integer) carLink.j().I.getValue();
                                    CarLinkService carLinkService2 = carLinkService;
                                    if (num != null && num.intValue() == 1) {
                                        o.e.b(carLinkService2.l(), 2, 3, new int[0], null, 24);
                                    }
                                    h.c cVar3 = carLinkService2.A;
                                    if (cVar3 != null) {
                                        cVar3.h(0);
                                    }
                                    CarLink carLink2 = CarLink.f562i;
                                    if (carLink2 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    carLink2.j().f900t.postValue(0);
                                    Handler handler = carLinkService2.f581f;
                                    android.os.b bVar = carLinkService2.L;
                                    handler.removeCallbacks(bVar);
                                    handler.postDelayed(bVar, carLinkService2.f595o);
                                    n.b.a("HDL", "LinkStart LinkManager ============>>> linkMode(0)!!");
                                }

                                @Override // z.a
                                public /* bridge */ /* synthetic */ Object invoke() {
                                    m63invoke();
                                    return s.c.f1105a;
                                }
                            });
                            return;
                        }
                    }
                    return;
                }
                return;
            default:
                n.b.a("HDL", "MainActivity handleLinkState  state: " + i2 + "  state.type : " + i3 + ' ');
                if (i3 == 4) {
                    int i5 = 8;
                    switch (i2) {
                        case 10:
                            o.e.b(carLinkService.l(), 0, 133, new int[]{3}, null, 24);
                            return;
                        case 11:
                            carLinkService.f581f.removeCallbacks(carLinkService.L);
                            CarLink carLink = CarLink.f562i;
                            if (carLink == null) {
                                t.b.B("me");
                                throw null;
                            }
                            l.b bVar = carLinkService.C;
                            if (bVar != null) {
                                String strB = carLink.b();
                                Set<BluetoothDevice> bondedDevices = bVar.f1055b.getBondedDevices();
                                t.b.g(bondedDevices, "bondedDevs");
                                BluetoothDevice bluetoothDevice = null;
                                for (BluetoothDevice bluetoothDevice2 : bondedDevices) {
                                    if (t.b.a(bluetoothDevice2.getAddress(), strB) && l.b.b(bluetoothDevice2.getUuids())) {
                                        bluetoothDevice = bluetoothDevice2;
                                    }
                                }
                                l.a aVar3 = bVar.f1054a;
                                if (aVar3 != null) {
                                    aVar3.f1051b.post(new android.accessibilityservice.a(aVar3, aVar3.f1053e, i5));
                                }
                                bVar.f1054a = null;
                                t.b.e(bluetoothDevice);
                                l.a aVar4 = new l.a(bVar, bluetoothDevice, bVar.c);
                                bVar.f1054a = aVar4;
                                aVar4.start();
                                return;
                            }
                            return;
                        case 12:
                            carLinkService.f581f.removeCallbacks(carLinkService.L);
                            l.b bVar2 = carLinkService.C;
                            if (bVar2 != null) {
                                l.a aVar5 = bVar2.f1054a;
                                if (aVar5 != null) {
                                    aVar5.f1051b.post(new android.accessibilityservice.a(aVar5, aVar5.f1053e, i5));
                                }
                                bVar2.f1054a = null;
                                return;
                            }
                            return;
                        case 13:
                        default:
                            return;
                        case 14:
                            carLinkService.f581f.removeCallbacks(carLinkService.L);
                            carLinkService.b(true);
                            return;
                        case 15:
                            CarLink carLink2 = CarLink.f562i;
                            if (carLink2 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink2.p() && carLink2.f564d) {
                                CarLink carLink3 = CarLink.f562i;
                                if (carLink3 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink3.t()) {
                                    CarLink carLink4 = CarLink.f562i;
                                    if (carLink4 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    if (carLink4.a() != 10) {
                                        carLinkService.h(10, carLink2.f564d);
                                    }
                                }
                            }
                            carLinkService.f581f.postDelayed(new android.os.b(6), 100L);
                            return;
                        case 16:
                            n.b.a("HDL", "----- ActionEvent.ACTION_WIFI_AP_OPEN");
                            l.e eVar = l.e.f1066d;
                            l.e eVarC = e.b.c(carLinkService);
                            if (CarLink.f562i == null) {
                                t.b.B("me");
                                throw null;
                            }
                            Boolean bool = Boolean.FALSE;
                            StringBuilder sb = new StringBuilder("openAp ---->   wifiManager : ");
                            WifiManager wifiManager = eVarC.f1067a;
                            sb.append(wifiManager);
                            Log.e("HDL", sb.toString());
                            if (eVarC.d()) {
                                return;
                            }
                            eVarC.c = (WifiConfiguration) p.a.d(WifiManager.class.getName(), wifiManager, "getWifiApConfiguration", null, new Object[0]);
                            eVarC.a(bool);
                            eVarC.f(bool, null);
                            return;
                        case 17:
                            n.b.a("HDL", "----- ActionEvent.ACTION_WIFI_AP_CLOSE");
                            l.e eVar2 = l.e.f1066d;
                            l.e eVarC2 = e.b.c(carLinkService);
                            WifiManager wifiManager2 = eVarC2.f1067a;
                            Log.e("HDL", "====================>>>> AP stopTethering  2222");
                            try {
                                if (eVarC2.d()) {
                                    try {
                                        try {
                                            wifiManager2.getClass().getDeclaredMethod("stopSoftAp", new Class[0]).invoke(wifiManager2, new Object[0]);
                                        } catch (Exception e2) {
                                            Log.e("HDL", "Failed to disable AP mode 2222 ", e2);
                                        }
                                    } catch (NoSuchMethodException unused) {
                                        Object systemService = eVarC2.f1068b.getSystemService(Context.CONNECTIVITY_SERVICE);
                                        t.b.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                                        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
                                        connectivityManager.getClass().getDeclaredMethod("stopTethering", Integer.TYPE).invoke(connectivityManager, 0);
                                    } catch (Exception e3) {
                                        Log.e("HDL", "Failed to stopSoftAp 2222 ", e3);
                                        e3.printStackTrace();
                                    }
                                    break;
                                }
                                return;
                            } catch (Exception unused2) {
                                return;
                            }
                    }
                }
                return;
        }
    }
}
