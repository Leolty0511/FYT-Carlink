package l;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import f0.h;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public final class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static e f1066d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WifiManager f1067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f1068b;
    public WifiConfiguration c;

    static {
        t.b.b(1);
    }

    public e(CarLinkService carLinkService) {
        Object systemService = carLinkService.getApplicationContext().getSystemService("wifi");
        t.b.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
        this.f1067a = (WifiManager) systemService;
        Context applicationContext = carLinkService.getApplicationContext();
        t.b.g(applicationContext, "context.applicationContext");
        this.f1068b = applicationContext;
    }

    public static int b(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null) {
            return 0;
        }
        Object objB = p.a.b(wifiConfiguration, "apBand");
        t.b.g(objB, "getField(configuration, \"apBand\")");
        return ((Number) objB).intValue();
    }

    public final void a(Boolean bool) {
        boolean zBooleanValue;
        if (CarLink.f562i == null) {
            t.b.B("me");
            throw null;
        }
        Object objE = p.a.e("android.os.SystemProperties", null, "get", "ro.board.platform", "");
        t.b.g(objE, "invoke(\"android.os.Syste…erties\", \"get\", key, def)");
        if (h.K((String) objE, "pioneer5_ad")) {
            return;
        }
        WifiManager wifiManager = this.f1067a;
        if (!wifiManager.isWifiEnabled() || bool == null || (zBooleanValue = bool.booleanValue()) == wifiManager.isWifiEnabled() || zBooleanValue) {
            return;
        }
        wifiManager.setWifiEnabled(false);
    }

    public final boolean c() {
        WifiManager wifiManager = this.f1067a;
        String str = (String) p.a.e(WifiManager.class.getName(), wifiManager, "getCountryCode", new Object[0]);
        Boolean bool = (Boolean) p.a.e(WifiManager.class.getName(), wifiManager, "isDualBandSupported", new Object[0]);
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        if (!zBooleanValue) {
            Boolean bool2 = (Boolean) p.a.e(WifiManager.class.getName(), wifiManager, "is5GHzBandSupported", new Object[0]);
            zBooleanValue = bool2 != null ? bool2.booleanValue() : false;
        }
        return zBooleanValue && str != null;
    }

    public final boolean d() {
        int i2 = Build.VERSION.SDK_INT;
        WifiManager wifiManager = this.f1067a;
        if (i2 < 24) {
            Integer num = (Integer) p.a.e(WifiManager.class.getName(), wifiManager, "getWifiApState", new Object[0]);
            Log.e("HDL", "6.0 GET WIFI AP STATE result : " + num);
            return num != null && num.intValue() == 13;
        }
        Boolean bool = (Boolean) p.a.d(WifiManager.class.getName(), wifiManager, "isWifiApEnabled", null, new Object[0]);
        Log.e("HDL", "8.0 GET WIFI AP STATE result : " + bool);
        t.b.g(bool, "{\n            val state …          state\n        }");
        return bool.booleanValue();
    }

    public final void e(WifiConfiguration wifiConfiguration) {
        WifiManager wifiManager = this.f1067a;
        try {
            Object objInvoke = wifiManager.getClass().getDeclaredMethod("setWifiApConfiguration", WifiConfiguration.class).invoke(wifiManager, wifiConfiguration);
            if (objInvoke instanceof Boolean) {
            }
            Object objInvoke2 = wifiManager.getClass().getDeclaredMethod("getWifiApConfiguration", new Class[0]).invoke(wifiManager, new Object[0]);
            n.b.a("HDL", "updateWifiConfiguration config: " + (objInvoke2 instanceof WifiConfiguration ? (WifiConfiguration) objInvoke2 : null));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void f(Boolean bool, p pVar) {
        Log.e("HDL", " === >> wifiApEnable STATE enable : true wifiOn: " + bool);
        int i2 = Build.VERSION.SDK_INT;
        WifiManager wifiManager = this.f1067a;
        if (i2 < 24) {
            WifiConfiguration wifiConfiguration = this.c;
            if (wifiConfiguration != null) {
                e(wifiConfiguration);
            }
            Boolean bool2 = (Boolean) p.a.d(WifiManager.class.getName(), wifiManager, "setWifiApEnabled", new Class[]{WifiConfiguration.class, Boolean.TYPE}, this.c, Boolean.TRUE);
            if (pVar != null) {
                t.b.g(bool2, "ret");
                pVar.invoke(bool2, this.c);
            }
            n.b.a("HDL", "=============>>> setWifiApEnabled  " + bool2);
            return;
        }
        if (!d()) {
            Boolean bool3 = (Boolean) p.a.d(WifiManager.class.getName(), wifiManager, "startSoftAp", new Class[]{WifiConfiguration.class}, this.c);
            if (pVar != null) {
                t.b.g(bool3, "ret");
                pVar.invoke(bool3, this.c);
            }
        } else if (pVar != null) {
            pVar.invoke(Boolean.TRUE, this.c);
        }
        Context context = this.f1068b;
        Settings.Global.putInt(context.getContentResolver(), "soft_ap_timeout_enabled", 1);
        Object systemService = context.getSystemService(Context.CONNECTIVITY_SERVICE);
        t.b.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ((ConnectivityManager) systemService).startTethering(0, true, new d(pVar, this), new Handler(Looper.getMainLooper()));
    }
}
