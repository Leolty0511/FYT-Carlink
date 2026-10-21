package g;

import android.net.ProxyProperties;
import android.net.wifi.WifiEnterpriseConfig;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import o1.s0;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static g f2254a = new g.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f2255b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f2256c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static List<Integer> f2257d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static List<Integer> f2258e;

    static {
        ArrayList arrayList = new ArrayList();
        f2257d = arrayList;
        arrayList.add(42);
        f2257d.add(44);
        f2257d.add(60);
        f2257d.add(63);
        f2257d.add(46);
        f2257d.add(47);
        f2257d.add(48);
        ArrayList arrayList2 = new ArrayList();
        f2258e = arrayList2;
        arrayList2.add(44);
        f2258e.add(46);
        f2258e.add(47);
        f2258e.add(50);
        f2258e.add(60);
        f2258e.add(65);
        f2258e.add(67);
    }

    public static int a() {
        return f2255b;
    }

    public static String b() {
        int i2 = f2255b;
        if (i2 == 1) {
            return "MST786";
        }
        if (i2 != 3) {
            return i2 != 4 ? WifiEnterpriseConfig.EMPTY_VALUE : "SOFIA";
        }
        return "RKPX3";
    }

    public static String c() {
        switch (f2256c) {
            case 1:
                return "_32_";
            case 2:
            case 5:
            case 7:
            case 9:
            case 24:
            default:
                return "_00_";
            case 3:
                return "_50_";
            case 4:
                return "_60_";
            case 6:
                return "_61_";
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                return "_90_";
            case 17:
                return "_25_";
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                return "_90_";
            case 25:
            case 26:
            case 27:
                return "_25_";
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                return "_90_";
        }
    }

    public static String d(String str) {
        if (TextUtils.isEmpty(str) || str.contains("_00_")) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (str.contains("_32_")) {
            return "5002";
        }
        if (str.contains("_50_")) {
            return "5005";
        }
        if (str.contains("_60_")) {
            return "5006";
        }
        if (str.contains("_61_")) {
            return "5008";
        }
        if (str.contains("_90_")) {
            return "5009";
        }
        if (str.contains("_90_")) {
            return "5011";
        }
        if (str.contains("_90_")) {
            return "6021";
        }
        if (str.contains("_90_")) {
            return "6023";
        }
        if (str.contains("_90_")) {
            return "6022";
        }
        if (str.contains("_90_")) {
            return "6011";
        }
        if (str.contains("_90_")) {
            return "6012";
        }
        if (str.contains("_90_")) {
            return "6013";
        }
        if (str.contains("_90_")) {
            return "6121";
        }
        if (str.contains("_90_")) {
            return "6122";
        }
        if (str.contains("_90_")) {
            return "6111";
        }
        if (str.contains("_90_")) {
            return "6112";
        }
        if (str.contains("_90_")) {
            return "800";
        }
        if (str.contains("_90_")) {
            return "801";
        }
        if (str.contains("_25_")) {
            return "6025";
        }
        if (str.contains("_25_")) {
            return "6015";
        }
        if (str.contains("_25_")) {
            return "802";
        }
        if (str.contains("_25_")) {
            return "803";
        }
        if (str.contains("_90_")) {
            return "804";
        }
        if (str.contains("_90_")) {
            return "805";
        }
        if (str.contains("_90_")) {
            return "6112S";
        }
        if (str.contains("_90_")) {
            return "6121S";
        }
        if (str.contains("_90_")) {
            return "6111S";
        }
        if (str.contains("_90_")) {
            return "6122S";
        }
        if (str.contains("_90_")) {
            return "800S";
        }
        if (str.contains("_90_")) {
            return "801S";
        }
        if (str.contains("_90_")) {
            return "804S";
        }
        if (str.contains("_90_")) {
            return "805S";
        }
        if (str.contains("_00_")) {
            return "6322";
        }
        return str.contains("_00_") ? "6521" : ProxyProperties.LOCAL_EXCL_LIST;
    }

    public static int e() {
        return f2256c;
    }

    public static String f() {
        switch (f2256c) {
            case 0:
                return ProxyProperties.LOCAL_EXCL_LIST;
            case 1:
                return "5002";
            case 2:
            case 5:
            case 24:
            case 38:
            default:
                return WifiEnterpriseConfig.EMPTY_VALUE;
            case 3:
                return "5005";
            case 4:
                return "5006";
            case 6:
                return "5008";
            case 7:
                return "6006";
            case 8:
                return "5009";
            case 9:
                return "2009";
            case 10:
                return "5011";
            case 11:
                return "6021";
            case 12:
                return "6023";
            case 13:
                return "6013";
            case 14:
                return "6011";
            case 15:
                return "6012";
            case 16:
                return "6022";
            case 17:
                return "6025";
            case 18:
                return "6121";
            case 19:
                return "6122";
            case 20:
                return "6111";
            case 21:
                return "6112";
            case 22:
                return "800";
            case 23:
                return "801";
            case 25:
                return "6015";
            case 26:
                return "802";
            case 27:
                return "803";
            case 28:
                return "804";
            case 29:
                return "805";
            case 30:
                return "6112S";
            case 31:
                return "6121S";
            case 32:
                return "6111S";
            case 33:
                return "6122S";
            case 34:
                return "800S";
            case 35:
                return "801S";
            case 36:
                return "804S";
            case 37:
                return "805S";
            case 39:
                return "6322";
            case 40:
                return "6521";
        }
    }

    public static int g() {
        switch (e()) {
            case 8:
            case 11:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 40:
                return 1;
            case 9:
            case 39:
                return 3;
            case 10:
            case 12:
            case 13:
            case 38:
                return 2;
            case 24:
            default:
                return 0;
        }
    }

    public static boolean h() {
        return k() || j(63) || j(66) || j(71) || j(59);
    }

    public static boolean i(int i2) {
        return f2257d.contains(Integer.valueOf(i2));
    }

    public static boolean j(int i2) {
        return f2256c == i2;
    }

    public static boolean k() {
        return !s0.l("ro.syu.mcu_memory", false) && f2258e.contains(Integer.valueOf(f2256c));
    }

    public static boolean l() {
        boolean zL = s0.l("ro.syu.mcu_memory", false);
        if (zL) {
            return !zL;
        }
        int i2 = f2256c;
        if (i2 == 44 || i2 == 50 || i2 == 70 || i2 == 71) {
            return true;
        }
        switch (i2) {
            case 46:
            case 47:
            case 48:
                return true;
            default:
                switch (i2) {
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                        return true;
                    default:
                        switch (i2) {
                            case 63:
                            case 64:
                            case 65:
                            case 66:
                            case 67:
                                return true;
                            default:
                                return false;
                        }
                }
        }
    }

    public static boolean m() {
        return j(61) || j(59) || f.r();
    }

    public static void n(int i2) {
        f2255b = i2;
    }

    public static void o(int i2) {
        f2256c = i2;
    }

    public static int p() {
        int i2 = f2256c;
        if (i2 != 44 && i2 != 46) {
            if (i2 != 58) {
                if (i2 != 60) {
                    if (i2 != 63 && i2 != 64) {
                        return i2;
                    }
                }
            }
            return 48;
        }
        return 42;
    }
}
