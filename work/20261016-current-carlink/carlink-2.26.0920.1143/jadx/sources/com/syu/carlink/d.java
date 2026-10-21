package com.syu.carlink;

import android.app.job.JobInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.projection.sink.embedded.transport.net.WiFiAccessPoint;
import f.k;
import java.util.BitSet;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements g.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CarLinkService f703a;

    public d(CarLinkService carLinkService) {
        this.f703a = carLinkService;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0210  */
    /* JADX WARN: Code duplicated, block: B:125:0x0245  */
    /* JADX WARN: Code duplicated, block: B:13:0x001e  */
    /* JADX WARN: Code duplicated, block: B:15:0x0022  */
    /* JADX WARN: Code duplicated, block: B:17:0x0026 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x009d  */
    @Override // g.c
    public final void a(g.a aVar) {
        CarLink carLink;
        boolean z2;
        boolean z3;
        WifiConfiguration wifiConfiguration;
        BitSet bitSet;
        boolean z4;
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink2.J()) {
            carLink = CarLink.f562i;
            if (carLink != null) {
                t.b.B("me");
                throw null;
            }
            if (!carLink.f564d) {
                return;
            }
        } else {
            CarLink carLink3 = CarLink.f562i;
            if (carLink3 == null) {
                t.b.B("me");
                throw null;
            }
            if (!carLink3.z()) {
                carLink = CarLink.f562i;
                if (carLink != null) {
                    t.b.B("me");
                    throw null;
                }
                if (!carLink.f564d) {
                    return;
                }
            }
        }
        CarLink carLink4 = CarLink.f562i;
        if (carLink4 == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink4.e()) {
            boolean z5 = true;
            if (aVar.f879a == 1 && aVar.f880b == 3) {
                int i2 = 0;
                boolean z6 = aVar.c == 1;
                final CarLinkService carLinkService = this.f703a;
                carLinkService.getClass();
                if (!z6) {
                    return;
                }
                StringBuilder sb = new StringBuilder(" handleWireless : ");
                CarLink carLink5 = CarLink.f562i;
                if (carLink5 == null) {
                    t.b.B("me");
                    throw null;
                }
                sb.append(carLink5.f564d);
                sb.append("  state: ");
                sb.append(z6);
                n.b.a("HDL", sb.toString());
                h.c cVar = carLinkService.A;
                if (cVar != null) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    n.b.a("HDL", "==============>>>>  lastWirelessedTime: " + cVar.f924n);
                    if (jElapsedRealtime - cVar.f924n >= JobInfo.MIN_BACKOFF_MILLIS) {
                        cVar.f924n = jElapsedRealtime;
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                } else {
                    z2 = false;
                }
                if (!z2) {
                    return;
                }
                l.e eVar = l.e.f1066d;
                final l.e eVarC = e.b.c(carLinkService);
                if (CarLink.f562i == null) {
                    t.b.B("me");
                    throw null;
                }
                Boolean bool = Boolean.FALSE;
                p pVar = new p() { // from class: com.syu.carlink.CarLinkService$handleWireless$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // z.p
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke(((Boolean) obj).booleanValue(), (WifiConfiguration) obj2);
                        return s.c.f1105a;
                    }

                    public final void invoke(boolean z7, WifiConfiguration wifiConfiguration2) {
                        if (wifiConfiguration2 == null || !z7) {
                            return;
                        }
                        StringBuilder sb2 = new StringBuilder("Config result ssid: ");
                        sb2.append(wifiConfiguration2.SSID);
                        sb2.append(" password: ");
                        sb2.append(wifiConfiguration2.preSharedKey);
                        sb2.append(" band : ");
                        eVarC.getClass();
                        sb2.append(l.e.b(wifiConfiguration2));
                        sb2.append(" channel: ");
                        Object objB = p.a.b(wifiConfiguration2, "apChannel");
                        t.b.g(objB, "getField(configuration, \"apChannel\")");
                        sb2.append(((Number) objB).intValue());
                        sb2.append(" secu: ");
                        BitSet bitSet2 = wifiConfiguration2.allowedKeyManagement;
                        sb2.append(bitSet2 != null ? Boolean.valueOf(bitSet2.get(4)) : null);
                        n.b.a("HDL", sb2.toString());
                        String str = wifiConfiguration2.SSID;
                        String str2 = wifiConfiguration2.preSharedKey;
                        int i3 = l.e.b(wifiConfiguration2) == 1 ? 1 : 0;
                        int i4 = wifiConfiguration2.allowedKeyManagement.get(4) ? 2 : 0;
                        Object objB2 = p.a.b(wifiConfiguration2, "apChannel");
                        t.b.g(objB2, "getField(configuration, \"apChannel\")");
                        int iIntValue = ((Number) objB2).intValue();
                        CarLink carLink6 = CarLink.f562i;
                        if (carLink6 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink6.e()) {
                            if (CarLink.f562i == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (CarLink.I()) {
                                if (CarLink.f562i == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!CarLink.H()) {
                                    s.a aVar2 = com.syu.carlink.base.a.c;
                                    e.b.a().b(new g.a(1, 0, 9, null, null, 24));
                                    return;
                                }
                                CarLinkService carLinkService2 = carLinkService;
                                h.c cVar2 = carLinkService2.A;
                                if (cVar2 != null) {
                                    t.b.g(str, "ssid");
                                    t.b.g(str2, "password");
                                    cVar2.n(225, new String[]{str, str2}, new int[]{iIntValue, i4, i3});
                                }
                                Handler handler = carLinkService2.f581f;
                                a aVar3 = carLinkService2.f593l0;
                                handler.removeCallbacks(aVar3);
                                handler.postDelayed(aVar3, 800L);
                            }
                        }
                    }
                };
                StringBuilder sb2 = new StringBuilder("开启是否成功:createWiFiAp  wifiManager : ");
                WifiManager wifiManager = eVarC.f1067a;
                sb2.append(wifiManager);
                sb2.append(" wifiOn: ");
                sb2.append(bool);
                sb2.append(' ');
                Log.e("HDL", sb2.toString());
                eVarC.c = (WifiConfiguration) p.a.d(WifiManager.class.getName(), wifiManager, "getWifiApConfiguration", null, new Object[0]);
                boolean zD = eVarC.d();
                WifiConfiguration wifiConfiguration2 = eVarC.c;
                boolean z7 = (wifiConfiguration2 == null || (bitSet = wifiConfiguration2.allowedKeyManagement) == null || !bitSet.get(0)) ? false : true;
                if (zD && z7) {
                    WiFiAccessPoint wiFiAccessPoint = k.f825y.m;
                    if (wiFiAccessPoint != null) {
                        wiFiAccessPoint.teardown();
                    }
                    try {
                        Thread.sleep(800L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    z3 = false;
                } else {
                    z3 = zD;
                }
                Log.d("HDL", " createWiFiAp  wifiManager : " + wifiManager + " apstate : " + z3);
                try {
                    if (CarLink.f562i == null) {
                        t.b.B("me");
                        throw null;
                    }
                    boolean z8 = t.b.p(CarLink.i() ? 1 : 0, "persist.lsec.carlink.apband") == 0;
                    t.b.p(-1, "syu.wifi.apChannel");
                    n.b.a("HDL", "=====>>>>>  last band  " + l.e.b(eVarC.c) + "  to band5G: " + z8 + "  is5GhzBandSupported(): " + eVarC.c() + " apstate: " + z3);
                    if (z3) {
                        n.b.a("HDL", "last " + eVarC.c + " to band5G: " + z8 + "  is5GhzBandSupported(): " + eVarC.c());
                        WifiConfiguration wifiConfiguration3 = eVarC.c;
                        if (wifiConfiguration3 == null) {
                            z5 = false;
                        } else if (l.e.b(wifiConfiguration3) == 1 && !z8) {
                            p.a.f(wifiConfiguration3, 0);
                        } else if (l.e.b(wifiConfiguration3) == 0 && z8 && eVarC.c()) {
                            p.a.f(wifiConfiguration3, 1);
                        } else {
                            z5 = false;
                        }
                    } else {
                        WifiConfiguration wifiConfiguration4 = eVarC.c;
                        if (wifiConfiguration4 != null) {
                            if (wifiConfiguration4.allowedKeyManagement.get(0)) {
                                wifiConfiguration4.allowedKeyManagement.clear();
                                wifiConfiguration4.allowedKeyManagement.set(4);
                            }
                            wifiConfiguration4.allowedPairwiseCiphers.clear();
                            wifiConfiguration4.allowedGroupCiphers.clear();
                            wifiConfiguration4.allowedPairwiseCiphers.set(2);
                            wifiConfiguration4.allowedGroupCiphers.set(3);
                            WifiConfiguration wifiConfiguration5 = eVarC.c;
                            if (z8 && eVarC.c()) {
                                i2 = 1;
                            }
                            p.a.f(wifiConfiguration5, Integer.valueOf(i2));
                        }
                    }
                    if (z5 && (wifiConfiguration = eVarC.c) != null) {
                        eVarC.e(wifiConfiguration);
                    }
                    eVarC.a(bool);
                    if (z3) {
                        pVar.invoke(Boolean.TRUE, eVarC.c);
                    } else {
                        eVarC.f(bool, pVar);
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }
    }
}
