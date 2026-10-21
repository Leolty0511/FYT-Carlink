package com.syu.carlink;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.hardware.usb.UsbManager;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemProperties;
import android.provider.MediaStore;
import android.util.Log;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import com.google.android.projection.sink.settings.Settings;
import e.m;
import f.k;
import f0.h;
import java.util.Calendar;
import java.util.HashMap;
import z.l;

/* JADX INFO: loaded from: classes4.dex */
public final class CarLink extends Application implements ViewModelStoreOwner {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static CarLink f562i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f565e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p.b f568h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s.a f563b = kotlin.a.c(new z.a() { // from class: com.syu.carlink.CarLink$appModelStore$2
        @Override // z.a
        public final ViewModelStore invoke() {
            return new ViewModelStore();
        }
    });
    public final s.a c = kotlin.a.c(new z.a() { // from class: com.syu.carlink.CarLink$appModel$2
        {
            super(0);
        }

        @Override // z.a
        public final g.b invoke() {
            return (g.b) new ViewModelProvider(this.f569b).get(g.b.class);
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final s.a f566f = kotlin.a.c(new z.a() { // from class: com.syu.carlink.CarLink$systemDecodeOs$2
        @Override // z.a
        public final Boolean invoke() {
            return Boolean.valueOf(t.c.I(new String[]{"6318", "6523", "6316", "6315"}, SystemProperties.get("sys.fyt.platform", "")));
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final s.a f567g = kotlin.a.c(new z.a() { // from class: com.syu.carlink.CarLink$defSurfaceCodec$2
        {
            super(0);
        }

        @Override // z.a
        public final Boolean invoke() {
            if (t.b.a(SystemProperties.get("sys.fyt.platform", ""), "6318")) {
                long j2 = SystemProperties.getLong("ro.build.date.utc", -1L) * ((long) 1000);
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(j2);
                Calendar calendar2 = Calendar.getInstance();
                calendar2.set(2025, 2, 20, 0, 0, 0);
                SystemProperties.set("persist.lsec.cp.nativecodec", calendar.compareTo(calendar2) <= 0 ? WifiEnterpriseConfig.ENGINE_DISABLE : WifiEnterpriseConfig.ENGINE_ENABLE);
            }
            int iIntValue = !((Boolean) this.f570b.f566f.getValue()).booleanValue() ? 1 : 0;
            Class cls = Integer.TYPE;
            t.b.e(cls);
            Integer num = (Integer) p.a.d("android.os.SystemProperties", null, "getInt", new Class[]{String.class, cls}, "persist.lsec.cp.nativecodec", Integer.valueOf(iIntValue));
            if (num != null) {
                iIntValue = num.intValue();
            }
            return Boolean.valueOf(iIntValue == 1);
        }
    });

    public static boolean F() {
        return h.K(t.b.q("ro.board.platform"), "8830") || m() || t.b.p(0, "persist.lsec.cp.nomix") != 0;
    }

    public static boolean G() {
        String strQ = t.b.q("ro.board.platform");
        return (h.K(strQ, "7731") && !t.b.a(t.b.q("ro.fyt.platform"), "815")) || h.K(strQ, "8830");
    }

    public static boolean H() {
        Class cls = Integer.TYPE;
        t.b.e(cls);
        Integer num = (Integer) p.a.d("android.os.SystemProperties", null, "getInt", new Class[]{String.class, cls}, "sys.fyt.carplay", 0);
        return (num != null ? num.intValue() : 0) == 1;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001c  */
    public static boolean I() {
        boolean z2;
        t.b.q("ro.board.platform");
        String str = SystemProperties.get("ro.fyt.platform", "");
        if (str != null) {
            z2 = str.length() == 0;
        }
        if (z2) {
            SystemProperties.get("sys.fyt.platform", "");
        }
        return t.b.o("com.syu.carlink.wireless", true);
    }

    public static boolean i() {
        Object objE = p.a.e("android.os.SystemProperties", null, "get", "ro.fyt.platform", "");
        t.b.g(objE, "invoke(\"android.os.Syste…erties\", \"get\", key, def)");
        return G() || t.b.a("6312", (String) objE);
    }

    public static boolean m() {
        Class cls = Integer.TYPE;
        t.b.e(cls);
        Integer num = (Integer) p.a.d("android.os.SystemProperties", null, "getInt", new Class[]{String.class, cls}, "persist.lsec.cp.audiooff", 0);
        return (num != null ? num.intValue() : 0) == 1;
    }

    public static boolean w() {
        Class cls = Boolean.TYPE;
        t.b.e(cls);
        Boolean bool = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls}, "sys.carlink.show_carplay_msg", Boolean.FALSE);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean A() {
        return t.b.a(j().f906z.getValue(), Boolean.TRUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int B() {
        Integer num = (Integer) j().f901u.getValue();
        if (num == null) {
            num = 3;
        }
        return num.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int C() {
        Integer num = (Integer) j().f899s.getValue();
        if (num == null) {
            num = 0;
        }
        return num.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String D() {
        String str = (String) j().f892k.getValue();
        return str == null ? "" : str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String E() {
        String str = (String) j().f891j.getValue();
        return str == null ? "" : str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean J() {
        String[] strArr = {"com.syu.hicar", "net.easyconn", "com.zjinnova.zlink"};
        String str = (String) j().f897q.getValue();
        if (str == null) {
            str = "";
        }
        return t.c.I(strArr, str);
    }

    public final int a() {
        Integer num;
        CarLinkService carLinkServiceF = f();
        if (carLinkServiceF == null || (num = carLinkServiceF.f585h) == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String b() {
        String str = (String) j().m.getValue();
        return str == null ? "" : str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int c() {
        Integer num = (Integer) j().f894n.getValue();
        if (num == null) {
            num = 0;
        }
        return num.intValue();
    }

    public final boolean d() {
        return v() && C() != 1 && B() == 3 && !g();
    }

    public final boolean e() {
        return v() && C() != 2 && B() == 3 && !g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CarLinkService f() {
        return (CarLinkService) j().G.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean g() {
        Integer num = (Integer) j().J.getValue();
        if (num != null && num.intValue() == 1) {
            return true;
        }
        Integer num2 = (Integer) j().J.getValue();
        return num2 != null && num2.intValue() == 2;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        return (ViewModelStore) this.f563b.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int h() {
        Integer num = (Integer) j().f883a.getValue();
        if (num == null) {
            num = 1;
        }
        return num.intValue();
    }

    public final g.b j() {
        return (g.b) this.c.getValue();
    }

    public final p.b k() {
        p.b bVar = this.f568h;
        if (bVar != null) {
            return bVar;
        }
        t.b.B("sharedUtils");
        throw null;
    }

    public final boolean l() {
        return j().b();
    }

    public final boolean n() {
        return t.b.a(j().f890i.getValue(), Boolean.TRUE);
    }

    public final boolean o() {
        return t.b.a(j().f902v.getValue(), Boolean.TRUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v18, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    @Override // android.app.Application
    public final void onCreate() {
        int iIntValue;
        super.onCreate();
        f562i = this;
        if (n.a.f1077f == null) {
            n.a.f1077f = new n.a(this);
        }
        m.f777a = t.b.p(m.f777a, "syu.carlink.fps_def");
        this.f568h = new p.b(this);
        boolean z2 = false;
        j().E.postValue(Integer.valueOf(((SharedPreferences) k().f1102b).getInt(MediaStore.Video.VideoColumns.RESOLUTION, t.b.p(0, "sys.carlink.canvas_size"))));
        j().E.observeForever(new e.a(new l() { // from class: com.syu.carlink.CarLink.onCreate.1
            @Override // z.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Integer) obj);
                return s.c.f1105a;
            }

            public final void invoke(Integer num) {
                p.b bVarK = CarLink.this.k();
                t.b.g(num, MediaStore.Video.VideoColumns.RESOLUTION);
                ((SharedPreferences) bVarK.f1102b).edit().putInt(MediaStore.Video.VideoColumns.RESOLUTION, num.intValue()).commit();
            }
        }, false ? 1 : 0));
        j().F.postValue(Boolean.valueOf(((SharedPreferences) k().f1102b).getBoolean("smart_display_zoom_support", t.b.o("sys.carlink.sdz_support", true))));
        j().F.observeForever(new e.a(new l() { // from class: com.syu.carlink.CarLink.onCreate.2
            @Override // z.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Boolean) obj);
                return s.c.f1105a;
            }

            public final void invoke(Boolean bool) {
                p.b bVarK = CarLink.this.k();
                t.b.g(bool, "zoomSupport");
                ((SharedPreferences) bVarK.f1102b).edit().putBoolean("smart_display_zoom_support", bool.booleanValue()).commit();
            }
        }, 1));
        n.b.f1083b = true;
        n.b.c = 6;
        String[] strArr = {"HDL", "Usb", "BluetoothUtils"};
        for (int i2 = 0; i2 < 3; i2++) {
            String str = strArr[i2];
            HashMap map = n.b.f1082a;
            Boolean bool = (Boolean) map.get(str);
            if (bool == null || !bool.booleanValue()) {
                map.put(str, Boolean.TRUE);
            }
        }
        if (k.f825y == null) {
            k.f825y = new k(this);
        }
        Intent intent = new Intent(CarLinkService.class.getName());
        intent.setPackage(getPackageName());
        startService(intent);
        UsbScanner usbScanner = UsbScanner.f635j;
        usbScanner.getClass();
        Context applicationContext = getApplicationContext();
        t.b.g(applicationContext, "context.applicationContext");
        usbScanner.f637b = applicationContext;
        HandlerThread handlerThread = new HandlerThread("usb-handler");
        handlerThread.start();
        usbScanner.c = new Handler(handlerThread.getLooper());
        Object systemService = usbScanner.b().getSystemService(Context.USB_SERVICE);
        t.b.f(systemService, "null cannot be cast to non-null type android.hardware.usb.UsbManager");
        usbScanner.f636a = (UsbManager) systemService;
        ?? I = i();
        Class cls = Integer.TYPE;
        t.b.e(cls);
        Integer num = (Integer) p.a.d("android.os.SystemProperties", null, "getInt", new Class[]{String.class, cls}, "persist.lsec.carlink.apband", Integer.valueOf((int) I));
        ?? r1 = I;
        if (num != null) {
            iIntValue = num.intValue();
        }
        if (r1 == 0) {
            r1 = iIntValue;
            z2 = true;
        }
        r1 = iIntValue;
        k.f825y.f829f.writeKeyValue(Settings.WIFI_SUPPORT_BAND_5G, Boolean.valueOf(z2));
        Log.e("HDL", "offWifi() ===== true");
    }

    public final boolean p() {
        return j().c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean q() {
        Boolean bool = (Boolean) j().f884b.getValue();
        if (bool == null) {
            bool = Boolean.TRUE;
        }
        return bool.booleanValue();
    }

    public final boolean r(String str) {
        if (str.length() == 0) {
            return false;
        }
        try {
            getPackageManager().getInstallerPackageName(str);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean s() {
        Integer num = (Integer) j().f898r.getValue();
        return num == null || num.intValue() != 1;
    }

    public final boolean t() {
        return t.b.a(j().A.getValue(), Boolean.TRUE);
    }

    public final boolean u() {
        return t.b.a(j().f889h.getValue(), Boolean.TRUE);
    }

    public final boolean v() {
        return t.b.a(j().c.getValue(), Boolean.TRUE);
    }

    public final boolean x() {
        return t.b.a(j().f888g.getValue(), Boolean.TRUE);
    }

    public final boolean y() {
        return t.b.a(j().C.getValue(), Boolean.TRUE);
    }

    public final boolean z() {
        return t.b.a(j().D.getValue(), Boolean.TRUE);
    }
}
