package com.syu.carlink;

import android.bluetooth.BluetoothDevice;
import android.location.GpsStatus;
import android.location.LocationManager;
import android.location.OnNmeaMessageListener;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.ParcelUuid;
import android.os.SystemProperties;
import com.android.internal.content.NativeLibraryHelper;
import e.u;
import f.k;
import f0.g;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f644b;
    public final /* synthetic */ CarLinkService c;

    public /* synthetic */ a(CarLinkService carLinkService, int i2) {
        this.f644b = i2;
        this.c = carLinkService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() throws IOException {
        AudioManager audioManager;
        h.c cVar;
        h.c cVar2;
        switch (this.f644b) {
            case 0:
                ArrayList arrayList = CarLinkService.n0;
                CarLinkService carLinkService = this.c;
                t.b.h(carLinkService, "this$0");
                Object objE = p.a.e("android.os.SystemProperties", null, "get", "persist.lsec.cp.logo_md5", "");
                t.b.g(objE, "invoke(\"android.os.Syste…erties\", \"get\", key, def)");
                String str = (String) objE;
                if (new File("/sdcard/carlink/logo/car_log.png").exists() && t.b.a(str, t.b.v(new FileInputStream("/sdcard/carlink/logo/car_log.png")))) {
                    return;
                }
                if (!new File("/sdcard/carlink/logo").exists() && !new File("/sdcard/carlink/logo").exists()) {
                    new File("/sdcard/carlink/logo").mkdirs();
                }
                String strConcat = (Build.VERSION.SDK_INT >= 31 ? "/odm" : "/oem").concat("/oem/carlink_logo.png");
                if (!new File(strConcat).exists()) {
                    InputStream inputStreamOpenRawResource = carLinkService.getResources().openRawResource(u.icon_carlink);
                    t.b.g(inputStreamOpenRawResource, "resources.openRawResource(R.drawable.icon_carlink)");
                    t.b.l(inputStreamOpenRawResource);
                    return;
                }
                t.b.h(strConcat, "src");
                String strV = t.b.v(new FileInputStream(strConcat));
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(strConcat));
                FileOutputStream fileOutputStream = new FileOutputStream("/sdcard/carlink/logo/car_log.png");
                n.b.a("HDL", "copyFile  srcMd5: ".concat(strV));
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i2 = bufferedInputStream.read(bArr);
                        if (!(i2 > 0)) {
                            fileOutputStream.flush();
                            try {
                                fileOutputStream.close();
                                break;
                            } catch (Exception unused) {
                            }
                            t.b.i(bufferedInputStream, null);
                            String strV2 = t.b.v(new FileInputStream("/sdcard/carlink/logo/car_log.png"));
                            n.b.a("HDL", "copyFile  dstMd5: ".concat(strV2));
                            if (t.b.a(strV, strV2)) {
                                SystemProperties.set("persist.lsec.cp.logo_md5", strV);
                                return;
                            }
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i2);
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        t.b.i(bufferedInputStream, th);
                        throw th2;
                    }
                }
                break;
            case 1:
                ArrayList arrayList2 = CarLinkService.n0;
                CarLinkService carLinkService2 = this.c;
                t.b.h(carLinkService2, "this$0");
                Integer num = carLinkService2.f587i;
                t.b.e(num);
                carLinkService2.h(num.intValue(), carLinkService2.f587i != null);
                return;
            case 2:
                ArrayList arrayList3 = CarLinkService.n0;
                CarLinkService carLinkService3 = this.c;
                t.b.h(carLinkService3, "this$0");
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink.p()) {
                    carLinkService3.b(false);
                }
                carLinkService3.e();
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                try {
                    o.e eVarL = carLinkService3.l();
                    o.e.f1093i = false;
                    if (eVarL.f1098g) {
                        eVarL.f1094b.unbindService(eVarL);
                        return;
                    }
                    return;
                } catch (Exception unused2) {
                    return;
                }
            case 3:
                ArrayList arrayList4 = CarLinkService.n0;
                CarLinkService carLinkService4 = this.c;
                t.b.h(carLinkService4, "this$0");
                StringBuilder sb = new StringBuilder("===================>>  exitUi exit appid: ");
                CarLink carLink2 = CarLink.f562i;
                if (carLink2 == null) {
                    t.b.B("me");
                    throw null;
                }
                sb.append(carLink2.a());
                sb.append("  State: ");
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 == null) {
                    t.b.B("me");
                    throw null;
                }
                sb.append(carLink3.B());
                n.b.a("HDL", sb.toString());
                CarLink carLink4 = CarLink.f562i;
                if (carLink4 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink4.j().c()) {
                    h.c cVar3 = carLinkService4.A;
                    if (cVar3 != null) {
                        h.c.i(cVar3);
                    }
                    s.a aVar = com.syu.carlink.base.a.c;
                    e.b.a().b(new g.a(1, 0, 2, null, null, 24));
                    return;
                }
                CarLink carLink5 = CarLink.f562i;
                if (carLink5 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink5.l()) {
                    s.a aVar2 = com.syu.carlink.base.a.c;
                    e.b.a().b(new g.a(2, 0, 2, null, null, 24));
                    return;
                }
                return;
            case 4:
                ArrayList arrayList5 = CarLinkService.n0;
                final CarLinkService carLinkService5 = this.c;
                t.b.h(carLinkService5, "this$0");
                if (e.b.b().e()) {
                    if ((e.b.b().J() || !e.b.b().z()) && !e.b.b().f564d) {
                        return;
                    }
                    e.b.b();
                    if (CarLink.F()) {
                        carLinkService5.h(10, true);
                    }
                    CarLink carLinkB = e.b.b();
                    carLinkService5.m = (carLinkB.c() == 0 || carLinkB.c() == 6 || carLinkB.c() == 1) ? false : true;
                    carLinkService5.x(new z.a() { // from class: com.syu.carlink.CarLinkService$linkWireless$1$2
                        @Override // z.a
                        public final Boolean invoke() {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 != null) {
                                return Boolean.valueOf(carLink6.e());
                            }
                            t.b.B("me");
                            throw null;
                        }
                    }, new z.a() { // from class: com.syu.carlink.CarLinkService$linkWireless$1$3
                        {
                            super(0);
                        }

                        @Override // z.a
                        public /* bridge */ /* synthetic */ Object invoke() {
                            m62invoke();
                            return s.c.f1105a;
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                        public final void m62invoke() {
                            n.b.a("HDL", "CP Wireless LinkStart  00 =======>>>>  handle.linkMode(1)");
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            Integer num2 = (Integer) carLink6.j().I.getValue();
                            CarLinkService carLinkService6 = carLinkService5;
                            if (num2 != null && num2.intValue() == 1) {
                                o.e.b(carLinkService6.l(), 2, 3, new int[0], null, 24);
                            }
                            h.c cVar4 = carLinkService6.A;
                            if (cVar4 != null) {
                                cVar4.h(1);
                            }
                            CarLink carLink7 = CarLink.f562i;
                            if (carLink7 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            carLink7.j().f900t.postValue(1);
                            Handler handler = carLinkService6.f581f;
                            android.os.b bVar = carLinkService6.L;
                            handler.removeCallbacks(bVar);
                            handler.postDelayed(bVar, carLinkService6.f595o);
                        }
                    });
                    return;
                }
                return;
            case 5:
                CarLinkService carLinkService6 = this.c;
                ArrayList arrayList6 = CarLinkService.n0;
                t.b.h(carLinkService6, "this$0");
                int iB = e.b.b().B();
                n.b.a("HDL", "MainActivity handlePhoneState ============>>>lastType : " + carLinkService6.G + "  linkType:" + e.b.b().C() + "  state : " + iB);
                int iC = e.b.b().C();
                if ((iC == 1 && iB == 5) || (iC == 0 && carLinkService6.G == 1 && iB == 3)) {
                    if (iB != 3) {
                        UsbScanner usbScanner = UsbScanner.f635j;
                        usbScanner.c().removeCallbacks(usbScanner.f639e);
                    }
                    StringBuilder sb2 = new StringBuilder("=== > BT C_LINK_CUT ============>>> 0 lastPhoneState : ");
                    CarLinkService carLinkServiceF = e.b.b().f();
                    sb2.append(carLinkServiceF != null ? Integer.valueOf(carLinkServiceF.f594n) : null);
                    sb2.append("   bt state : ");
                    sb2.append(e.b.b().c());
                    n.b.a("HDL", sb2.toString());
                    if (iB == 3) {
                        carLinkService6.b(false);
                        h.c cVar4 = carLinkService6.A;
                        if (cVar4 != null) {
                            StringBuilder sb3 = new StringBuilder("===========================>>>>  releaseAudioFocus  type:: ");
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            sb3.append(carLink6.C());
                            n.b.a("HDL", sb3.toString());
                            if (cVar4.f925o) {
                                cVar4.f925o = false;
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                CarLinkService carLinkServiceF2 = carLink7.f();
                                h.b bVar = cVar4.f931u;
                                if (carLinkServiceF2 != null && (audioManager = carLinkServiceF2.B) != null) {
                                    audioManager.abandonAudioFocus(bVar);
                                }
                                bVar.f912a = -1;
                            }
                        }
                        h.c cVar5 = carLinkService6.A;
                        if (cVar5 != null) {
                            cVar5.k();
                        }
                        h.c cVar6 = carLinkService6.A;
                        if (cVar6 != null) {
                            cVar6.l();
                        }
                    } else if (iB == 5) {
                        carLinkService6.b(true);
                    }
                }
                if (iB == 3) {
                    carLinkService6.f581f.removeCallbacks(carLinkService6.J);
                    carLinkService6.f581f.postDelayed(carLinkService6.J, 200L);
                    carLinkService6.e();
                }
                o.e eVarL2 = carLinkService6.l();
                int[] iArr = new int[2];
                Integer num2 = (Integer) e.b.b().j().f900t.getValue();
                if (num2 == null) {
                    num2 = -1;
                }
                iArr[0] = num2.intValue();
                iArr[1] = iB;
                o.e.b(eVarL2, 0, 182, iArr, null, 24);
                int i3 = 4;
                if (iB != 3 && iB != 4) {
                    if (iB == 5) {
                        if (iC == 1) {
                            String strValueOf = String.valueOf(1);
                            t.b.h(strValueOf, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf);
                            if (Build.VERSION.SDK_INT >= 24) {
                                ((LocationManager) carLinkService6.F.getValue()).addNmeaListener((OnNmeaMessageListener) carLinkService6.H);
                            } else {
                                ((LocationManager) carLinkService6.F.getValue()).addNmeaListener((GpsStatus.NmeaListener) carLinkService6.I);
                            }
                            carLinkService6.f581f.removeCallbacks(carLinkService6.J);
                            carLinkService6.f581f.postDelayed(carLinkService6.J, 200L);
                        }
                        if (e.b.b().f564d) {
                            return;
                        }
                        carLinkService6.f581f.postDelayed(new android.os.b(i3), 200L);
                        carLinkService6.f581f.removeCallbacks(carLinkService6.m0);
                        carLinkService6.f581f.postDelayed(carLinkService6.m0, 300L);
                        return;
                    }
                    if (iB != 6) {
                        return;
                    }
                }
                if (iC == 1) {
                    if (iB == 3) {
                        if (Build.VERSION.SDK_INT >= 24) {
                            ((LocationManager) carLinkService6.F.getValue()).removeNmeaListener((OnNmeaMessageListener) carLinkService6.H);
                            return;
                        } else {
                            ((LocationManager) carLinkService6.F.getValue()).removeNmeaListener((GpsStatus.NmeaListener) carLinkService6.I);
                            return;
                        }
                    }
                    if (iB != 4) {
                        return;
                    }
                    h.c cVar7 = carLinkService6.A;
                    if (cVar7 != null) {
                        n.b.a("HDL", "==============>>>>  cleanDelay");
                        cVar7.m = 0L;
                        cVar7.f924n = 0L;
                    }
                    carLinkService6.r();
                    return;
                }
                return;
            case 6:
                ArrayList arrayList7 = CarLinkService.n0;
                CarLinkService carLinkService7 = this.c;
                t.b.h(carLinkService7, "this$0");
                if (carLinkService7.f579e) {
                    carLinkService7.f579e = false;
                }
                CarLink carLinkB2 = e.b.b();
                if (e.b.b().v() && e.b.b().c() != 0 && e.b.b().B() == 3) {
                    if ((e.b.b().J() || !e.b.b().z()) && !carLinkB2.f564d) {
                        return;
                    }
                    StringBuilder sb4 = new StringBuilder("syncBluetoothInfo ===>>> localMac: ");
                    sb4.append(carLinkB2.D());
                    sb4.append("   localBtName: ");
                    sb4.append(carLinkB2.E());
                    sb4.append("   linkState: ");
                    sb4.append(e.b.b().B());
                    sb4.append("  ");
                    sb4.append(!k.f825y.h());
                    n.b.a("HDL", sb4.toString());
                    if (k.f825y.h()) {
                        if (e.b.b().B() == 3) {
                            carLinkService7.f581f.postDelayed(new a(carLinkService7, 9), 20L);
                            return;
                        }
                        return;
                    }
                    if (!carLinkB2.q()) {
                        if (carLinkB2.D().length() == 0) {
                            return;
                        }
                        if ((carLinkB2.E().length() == 0) || (cVar = carLinkService7.A) == null) {
                            return;
                        }
                        cVar.n(226, new String[]{carLinkB2.E(), carLinkB2.D()}, new int[0]);
                        return;
                    }
                    n.b.a("HDL", "syncBluetoothInfo ===>>> bluetoothMac(): ".concat(carLinkB2.b()));
                    if (carLinkB2.b().length() == 0) {
                        return;
                    }
                    if (carLinkService7.C == null) {
                        carLinkService7.C = new l.b();
                    }
                    h.c cVar8 = carLinkService7.A;
                    if (cVar8 != null) {
                        cVar8.n(226, new String[]{carLinkB2.E(), carLinkB2.D()}, new int[0]);
                    }
                    l.b bVar2 = carLinkService7.C;
                    if (bVar2 != null) {
                        String strB = carLinkB2.b();
                        Set<BluetoothDevice> bondedDevices = bVar2.f1055b.getBondedDevices();
                        n.b.a("HDL", "syncBluetoothInfo inner Bt ===>>> bondedDevs size: " + bondedDevices.size());
                        for (BluetoothDevice bluetoothDevice : bondedDevices) {
                            n.b.a("HDL", "connect carplay Service ==>>> mac: " + bluetoothDevice.getAddress() + " -- " + strB + "  checkUuid(it.uuids): " + l.b.b(bluetoothDevice.getUuids()));
                            if (t.b.a(bluetoothDevice.getAddress(), strB) && l.b.b(bluetoothDevice.getUuids())) {
                                n.b.a("BluetoothUtils", "=======>>> btConnected()");
                                l.b.a("IB");
                                ParcelUuid[] uuids = bluetoothDevice.getUuids();
                                t.b.g(uuids, "uuids");
                                if (!(uuids.length == 0)) {
                                    l.b.a("US");
                                    for (ParcelUuid parcelUuid : uuids) {
                                        n.b.a("BluetoothUtils", "=======>>> uuid2Service()  uuid: " + parcelUuid.getUuid());
                                        String string = parcelUuid.getUuid().toString();
                                        t.b.g(string, "it.uuid.toString()");
                                        String upperCase = g.J(string, NativeLibraryHelper.CLEAR_ABI_OVERRIDE, "").toUpperCase();
                                        t.b.g(upperCase, "this as java.lang.String).toUpperCase()");
                                        l.b.a("UU".concat(upperCase));
                                    }
                                    l.b.a("UE");
                                }
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            case 7:
                ArrayList arrayList8 = CarLinkService.n0;
                CarLinkService carLinkService8 = this.c;
                t.b.h(carLinkService8, "this$0");
                CarLink carLink8 = CarLink.f562i;
                if (carLink8 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink8.t() && (cVar2 = carLinkService8.A) != null) {
                    cVar2.m();
                }
                carLinkService8.t(carLinkService8.A);
                return;
            case 8:
                ArrayList arrayList9 = CarLinkService.n0;
                CarLinkService carLinkService9 = this.c;
                t.b.h(carLinkService9, "this$0");
                carLinkService9.d(100L);
                return;
            case 9:
                ArrayList arrayList10 = CarLinkService.n0;
                CarLinkService carLinkService10 = this.c;
                t.b.h(carLinkService10, "this$0");
                if (carLinkService10.D != null) {
                    n.b.a("Auto", "----------------act onBluetoothConnected");
                    k.f825y.m(2);
                }
                if (k.f825y.h()) {
                    carLinkService10.j(false);
                    return;
                }
                return;
            default:
                CarLinkService carLinkService11 = this.c;
                t.b.h(carLinkService11, "$it");
                h.c cVar9 = carLinkService11.A;
                if (cVar9 != null) {
                    cVar9.q();
                    return;
                }
                return;
        }
    }
}
