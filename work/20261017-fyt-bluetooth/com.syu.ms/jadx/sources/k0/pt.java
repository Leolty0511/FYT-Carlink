package k0;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.ProxyProperties;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.os.SystemProperties;
import android.util.Log;
import app.App;
import com.syu.jni.ControlNative;
import com.syu.jni.LsecIfly;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class pt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f9360a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f9361b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f9362c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f9363d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f9364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f9365f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f9366g;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (pt.f9361b != y0.f.f18037c) {
                y0.h.u0(pt.f9361b);
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17320f;
            z.k.s(227, 85, 170, 4, 69, 1, i2, i2 ^ 235);
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            pt.a(72, 2, pt.f9364e == u0.b.f17347o ? 0 : 255);
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            pt.a(82, 0, u0.b.f17366w);
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = (pt.f9365f == 0 && o1.u.S(u0.b.J1)) ? 0 : 1;
            if (pt.f9365f == 1 && o1.u.S("com.syu.radio")) {
                i2 = 0;
            }
            if (pt.f9365f == 2 && o1.u.S("com.syu.video")) {
                i2 = 0;
            }
            pt.a(84, 0, i2);
        }
    }

    public static void a(int i2, int i3, int i4) {
        z.k.s(227, 85, 170, 4, i2, i3, i4, ((i2 ^ 174) ^ i3) ^ i4);
    }

    public static void b(int i2, int i3, String str) {
        Log.d("ver", " ** 00 **  BackStrMsg  " + i2 + " " + i3 + " " + str);
        char[] charArray = str.toCharArray();
        int length = str.length();
        int i4 = length + 3;
        int i5 = length + 7;
        int[] iArr = new int[i5];
        iArr[0] = -29;
        iArr[1] = 85;
        iArr[2] = -86;
        iArr[3] = i4;
        iArr[4] = i2;
        iArr[5] = i3;
        int i6 = (i2 ^ (i4 ^ 170)) ^ i3;
        for (int i7 = 0; i7 < length; i7++) {
            int i8 = i7 + 6;
            iArr[i8] = charArray[i7];
            i6 ^= iArr[i8];
        }
        iArr[length + 6] = i6;
        z.k.s(iArr);
        Log.d("ver", " ** 11 **  BackStrMsg cmds " + i5);
    }

    public static WifiConfiguration c(String str) {
        for (WifiConfiguration wifiConfiguration : a.f.x().getConfiguredNetworks()) {
            if (wifiConfiguration.SSID.equals("\"" + str + "\"")) {
                return wifiConfiguration;
            }
        }
        return null;
    }

    public static void d(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(270532608);
        App.c().startActivity(intent);
    }

    public static boolean e(Context context, String str) {
        List<PackageInfo> installedPackages;
        if (str != null && !str.isEmpty() && (installedPackages = context.getPackageManager().getInstalledPackages(0)) != null && !installedPackages.isEmpty()) {
            for (int i2 = 0; i2 < installedPackages.size(); i2++) {
                if (str.equals(installedPackages.get(i2).packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void f(String str, String str2) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.allowedAuthAlgorithms.clear();
        wifiConfiguration.allowedGroupCiphers.clear();
        wifiConfiguration.allowedKeyManagement.clear();
        wifiConfiguration.allowedPairwiseCiphers.clear();
        wifiConfiguration.allowedProtocols.clear();
        wifiConfiguration.SSID = "\"" + str + "\"";
        WifiConfiguration wifiConfigurationC = c(str);
        if (wifiConfigurationC != null) {
            a.f.x().removeNetwork(wifiConfigurationC.networkId);
        }
        char c2 = str2.equals(ProxyProperties.LOCAL_EXCL_LIST) ? (char) 1 : (char) 3;
        if (c2 == 1) {
            wifiConfiguration.allowedKeyManagement.set(0);
        } else if (c2 == 2) {
            wifiConfiguration.hiddenSSID = true;
            wifiConfiguration.wepKeys[0] = "\"" + str2 + "\"";
            wifiConfiguration.allowedAuthAlgorithms.set(1);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedGroupCiphers.set(0);
            wifiConfiguration.allowedGroupCiphers.set(1);
            wifiConfiguration.allowedKeyManagement.set(0);
            wifiConfiguration.wepTxKeyIndex = 0;
        } else if (c2 == 3) {
            wifiConfiguration.preSharedKey = "\"" + str2 + "\"";
            wifiConfiguration.hiddenSSID = true;
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedPairwiseCiphers.set(2);
            wifiConfiguration.status = 2;
        }
        Log.i("QQL", "keys: " + wifiConfiguration.wepKeys[0] + "  SharedKey:" + wifiConfiguration.preSharedKey + "enable: " + a.f.x().enableNetwork(a.f.x().addNetwork(wifiConfiguration), true));
    }

    public static boolean g(String str, String str2) {
        try {
            File file = new File(str2);
            if (!file.exists() && !file.mkdirs()) {
                return false;
            }
            Log.d(ContentResolver.SCHEME_FILE, " *000* copyFolder oldPath = " + str + " newPath = " + str2);
            File file2 = new File(str);
            if (file2.isDirectory() || !file2.exists() || !file2.isFile() || !file2.canRead()) {
                for (String str3 : file2.list()) {
                    String str4 = File.separator;
                    File file3 = str.endsWith(str4) ? new File(str + str3) : new File(str + str4 + str3);
                    if (file3.isDirectory()) {
                        g(str + "/" + str3, str2 + "/" + str3);
                    } else {
                        if (!file3.exists()) {
                            Log.e("--Method--", "copyFolder:  oldFile not exist.");
                            return false;
                        }
                        if (!file3.isFile()) {
                            Log.e("--Method--", "copyFolder:  oldFile not file.");
                            return false;
                        }
                        if (!file3.canRead()) {
                            Log.e("--Method--", "copyFolder:  oldFile cannot read.");
                            return false;
                        }
                        kt.O = true;
                        FileInputStream fileInputStream = new FileInputStream(file3);
                        FileOutputStream fileOutputStream = new FileOutputStream(str2 + "/" + file3.getName());
                        Log.d(ContentResolver.SCHEME_FILE, " *222* copyFolder  new File = " + str2 + "/" + file3.getName());
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i2 = fileInputStream.read(bArr);
                            if (i2 == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i2);
                        }
                        fileInputStream.close();
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    }
                }
                return true;
            }
            FileInputStream fileInputStream2 = new FileInputStream(file2);
            FileOutputStream fileOutputStream2 = new FileOutputStream(str2 + "/" + file2.getName());
            Log.d(ContentResolver.SCHEME_FILE, " *111* copyFolder  new File = " + str2 + "/" + file2.getName());
            byte[] bArr2 = new byte[1024];
            while (true) {
                int i3 = fileInputStream2.read(bArr2);
                if (i3 == -1) {
                    fileInputStream2.close();
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    return true;
                }
                fileOutputStream2.write(bArr2, 0, i3);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void h(File file) {
        if (file.isFile()) {
            file.delete();
            return;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                file.delete();
                return;
            }
            for (File file2 : fileArrListFiles) {
                h(file2);
            }
            file.delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public static long i(File file) throws Throwable {
        long j2 = 0;
        j2 = 0;
        j2 = 0;
        if (file.exists()) {
            ?? r1 = 0;
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    long jAvailable = fileInputStream2.available();
                    try {
                        fileInputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    j2 = jAvailable;
                    r1 = jAvailable;
                } catch (IOException e3) {
                    e = e3;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    try {
                        fileInputStream.close();
                        r1 = fileInputStream;
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                } catch (Throwable th) {
                    th = th;
                    r1 = fileInputStream2;
                    try {
                        r1.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                    throw th;
                }
            } catch (IOException e6) {
                e = e6;
            }
        } else {
            Log.e("xx5", "File not exists!");
        }
        return j2;
    }

    public static long j(File file) {
        long j2 = 0;
        if (file == null) {
            return 0L;
        }
        if (!file.isDirectory() && file.exists() && file.isFile()) {
            return i(file);
        }
        File[] fileArrListFiles = file.listFiles();
        for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
            j2 += fileArrListFiles[i2].isDirectory() ? j(fileArrListFiles[i2]) : i(fileArrListFiles[i2]);
        }
        return j2;
    }

    public static long k(File file) {
        long jK = 0;
        if (!file.exists()) {
            return 0L;
        }
        if (!file.isDirectory() && file.exists() && file.isFile()) {
            return 1L;
        }
        File[] fileArrListFiles = file.listFiles();
        for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
            jK = fileArrListFiles[i2].isDirectory() ? jK + k(fileArrListFiles[i2]) : jK + 1;
        }
        return jK;
    }

    public static String l() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String m() {
        try {
            byte[] bArrFyt_get_ui_time = ControlNative.getInstance().fyt_get_ui_time();
            return String.valueOf(bArrFyt_get_ui_time[5] + 1900) + "-" + String.format("%02d", Byte.valueOf(bArrFyt_get_ui_time[4])) + "-" + String.format("%02d", Byte.valueOf(bArrFyt_get_ui_time[3])) + " " + String.format("%02d", Byte.valueOf(bArrFyt_get_ui_time[2])) + ":" + String.format("%02d", Byte.valueOf(bArrFyt_get_ui_time[1])) + ":" + String.format("%02d", Byte.valueOf(bArrFyt_get_ui_time[0]));
        } catch (Exception e2) {
            e2.printStackTrace();
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
    }

    public static void n() {
        int size;
        int i2;
        try {
            List<ScanResult> scanResults = a.f.x().getScanResults();
            a.f.x().getConnectionInfo();
            size = scanResults.size();
            try {
                i2 = 0;
                for (ScanResult scanResult : scanResults) {
                    try {
                        int i3 = scanResult.level + 100;
                        if (i2 < i3) {
                            i2 = i3;
                        }
                        Log.d("wifi", "levelMax = " + i2 + "   scanResult.level = " + scanResult.level + "  level= " + i3);
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                    }
                }
                if (i2 > 100) {
                    i2 = 100;
                }
            } catch (Exception e3) {
                e = e3;
                i2 = 0;
            }
        } catch (Exception e4) {
            e = e4;
            size = 0;
            i2 = 0;
        }
        z.k.s(227, 85, 170, 5, 69, 4, size, i2, (size ^ 238) ^ i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:183:0x03be  */
    public static void o(byte[] bArr, int i2, int i3) {
        int i4;
        byte b2;
        a.f.p().x(" *** HJ_AutoTest ** ", bArr, i2, i3);
        int i5 = i2 + 1;
        int i6 = 0;
        if (bArr[i5] == 66 && f9362c == 255) {
            h0.b.R();
            f9362c = 0;
        } else {
            f9362c = 255;
        }
        byte b3 = bArr[i5];
        int i7 = 2;
        if (b3 == 72) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            if (b4 == 1) {
                z.k.s(227, 80, b5);
                z.k.s(227, 81, b6);
            }
            if (b4 == 2) {
                f9364e = b5;
                o1.j.b(o1.l.a(), new c(), 500L);
                return;
            }
            if (b4 == 3) {
                if (b5 < 0 || b5 > 4) {
                    return;
                }
                z.k.s(227, 64, 10, b5);
                return;
            }
            if (b4 == 4) {
                if (b5 < 0 || b5 > 7) {
                    return;
                }
                z.k.s(227, 64, 6, b5);
                return;
            }
            if (b4 == 5 && b5 >= 0 && b5 <= 7) {
                z.k.s(227, 64, 6, b5);
                return;
            }
            return;
        }
        if (b3 == 87) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            if (b7 == 0) {
                if (b8 == 0) {
                    if (u0.b.f17366w == 0) {
                        u0.d.Q(u0.b.T2);
                        return;
                    } else {
                        u0.d.Q(u0.b.U2);
                        return;
                    }
                }
                if (b8 == 1) {
                    u0.d.Q(30);
                    return;
                } else if (b8 == 2) {
                    u0.d.Q(60);
                    return;
                } else {
                    if (b8 != 3) {
                        return;
                    }
                    u0.d.Q(100);
                    return;
                }
            }
            return;
        }
        if (b3 == 89) {
            byte b9 = bArr[i2 + 2];
            byte b10 = bArr[i2 + 3];
            if (b9 == 0) {
                if (b10 == 1 || b10 == 2) {
                    a(89, 0, LsecIfly.testMicFunc(b10 + 2));
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == 96) {
            a(96, 0, f9360a);
            return;
        }
        if (b3 == 97) {
            byte b11 = bArr[i2 + 2];
            byte b12 = bArr[i2 + 3];
            if (b11 == 0) {
                File file = new File("/mnt/sdcard/amapauto9");
                int iK = (int) k(file);
                int iJ = (int) ((j(file) * 10) >> 30);
                int i8 = iK >> 8;
                int i9 = iK & 255;
                z.k.s(227, 85, 170, 6, 97, 0, i8, i9, iJ, ((i8 ^ 205) ^ i9) ^ iJ);
                Log.d("xx5", "xxxxx5555 " + (iK >> 16) + "  " + i9 + "  ");
                return;
            }
            return;
        }
        switch (b3) {
            case 65:
                byte b13 = bArr[i2 + 2];
                byte b14 = bArr[i2 + 3];
                int i10 = i2 + 4;
                byte b15 = bArr.length > i10 ? bArr[i10] : (byte) 0;
                int i11 = i2 + 5;
                byte b16 = bArr.length > i11 ? bArr[i11] : (byte) 0;
                switch (b13) {
                    case 0:
                    case 1:
                        switch (b14) {
                            case 0:
                                if (!l().equals("com.syu.radio.MainActivity")) {
                                    Intent intent = new Intent();
                                    intent.setClassName("com.syu.radio", "com.syu.radio.MainActivity");
                                    intent.addCategory(Intent.CATEGORY_DEFAULT);
                                    intent.setFlags(268435456);
                                    App.c().startActivity(intent);
                                }
                                i4 = 0;
                                i6 = 1;
                                break;
                            case 1:
                            case 2:
                                if (!l().equals("com.syu.carinfo.wc.crown.Wc_420_crown_CarCD")) {
                                    Intent intent2 = new Intent();
                                    intent2.setClassName("com.syu.canbus", "com.syu.carinfo.wc.crown.Wc_420_crown_CarCD");
                                    intent2.addCategory(Intent.CATEGORY_DEFAULT);
                                    intent2.setFlags(268435456);
                                    App.c().startActivity(intent2);
                                }
                                i4 = 0;
                                i6 = 1;
                                break;
                            case 3:
                            case 6:
                            case 8:
                            case 9:
                            case 15:
                                i4 = 1;
                                i6 = 1;
                                break;
                            case 4:
                                o1.u.j();
                                i4 = 0;
                                i6 = 1;
                                break;
                            case 5:
                                o1.u.Z0();
                                i4 = 0;
                                i6 = 1;
                                break;
                            case 7:
                                o1.u.s();
                                i4 = 0;
                                i6 = 1;
                                break;
                            case 10:
                            case 12:
                            case 14:
                            case 17:
                            default:
                                i4 = 0;
                                break;
                            case 11:
                                if (e(App.c(), "com.baidu.carlifevehicle")) {
                                    if (!l().equals("com.baidu.carlifevehicle.CarlifeActivity")) {
                                        Intent intent3 = new Intent();
                                        intent3.setClassName("com.baidu.carlifevehicle", "com.baidu.carlifevehicle.CarlifeActivity");
                                        intent3.addCategory(Intent.CATEGORY_DEFAULT);
                                        intent3.setFlags(268435456);
                                        App.c().startActivity(intent3);
                                    }
                                } else if (!l().equals("net.easyconn.WelcomeActivity")) {
                                    Intent intent4 = new Intent();
                                    intent4.setClassName("net.easyconn", "net.easyconn.WelcomeActivity");
                                    intent4.addCategory(Intent.CATEGORY_DEFAULT);
                                    intent4.setFlags(268435456);
                                    App.c().startActivity(intent4);
                                }
                                i4 = 0;
                                i6 = 1;
                                break;
                            case 13:
                                o1.u.a1();
                                i4 = 0;
                                i6 = 1;
                                break;
                            case 16:
                                o1.u.t0();
                                i4 = 0;
                                i6 = 1;
                                break;
                            case 18:
                                a.f.p().w("Main AutoTest 0x41 0x12 APP_ID_TV");
                                u0.b.f17311c.c(6);
                                i4 = 0;
                                i6 = 1;
                                break;
                        }
                        if (i6 != 0) {
                            a(65, 1, b14);
                        }
                        i6 = i4;
                        break;
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        i6 = 1;
                        break;
                }
                if (i6 != 0) {
                    d("media://media?data=" + ((int) b13) + "," + ((int) b14) + "," + ((int) b15) + "," + ((int) b16));
                }
                break;
            case 66:
                a.f.p().x(" ** BT ** ", bArr, i2, i3);
                byte b17 = bArr[i2 + 2];
                byte b18 = bArr[i2 + 3];
                String str = null;
                if (b17 == 2 && b18 == 2) {
                    d("media://media?data=1,6,0,0");
                    z.k.s(227, 85, 170, 4, 66, 2, 2, 236);
                } else {
                    switch (b17) {
                        case 1:
                        case 2:
                        case 3:
                        case 5:
                        case 7:
                        case 8:
                        case 9:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                            i6 = 1;
                            break;
                        case 4:
                            str = ProxyProperties.LOCAL_EXCL_LIST;
                            while (i7 <= 5) {
                                str = str + ((char) bArr[i2 + i7]);
                                i7++;
                            }
                            i6 = 1;
                            break;
                        case 6:
                            str = ProxyProperties.LOCAL_EXCL_LIST;
                            while (i7 <= 12) {
                                str = str + ((char) bArr[i2 + i7]);
                                i7++;
                            }
                            i6 = 1;
                            break;
                        case 10:
                            str = ProxyProperties.LOCAL_EXCL_LIST;
                            while (i7 <= 11) {
                                str = str + ((char) bArr[i2 + i7]);
                                i7++;
                            }
                            i6 = 1;
                            break;
                    }
                    if (i6 != 0) {
                        d("bt://bt?data=" + ((int) b17) + "," + ((int) b18) + "," + str);
                    }
                }
                break;
            case 67:
                byte b19 = bArr[i2 + 2];
                byte b20 = bArr[i2 + 3];
                byte b21 = bArr[i2 + 4];
                byte b22 = bArr[i2 + 5];
                byte b23 = bArr[i2 + 6];
                byte b24 = bArr[i2 + 7];
                byte b25 = bArr[i2 + 8];
                byte b26 = bArr[i2 + 9];
                if (b19 == 1) {
                    int[] iArr = new int[57];
                    iArr[0] = 227;
                    iArr[1] = 85;
                    iArr[2] = 170;
                    iArr[3] = 53;
                    iArr[4] = 67;
                    iArr[5] = 1;
                    if (u0.b.R1 > 0) {
                        if (u0.b.O1.length() >= 12) {
                            iArr[6] = u0.b.O1.charAt(0);
                            iArr[7] = u0.b.O1.charAt(1);
                            iArr[8] = u0.b.O1.charAt(2);
                            iArr[9] = u0.b.O1.charAt(3);
                            iArr[10] = u0.b.O1.charAt(4);
                            iArr[11] = u0.b.O1.charAt(5);
                            int iCharAt = ((((u0.b.O1.charAt(6) - '0') * 10) + (u0.b.O1.charAt(7) - '0')) + 8) % 24;
                            iArr[12] = (iCharAt / 10) + 48;
                            iArr[13] = (iCharAt % 10) + 48;
                            iArr[14] = u0.b.O1.charAt(8);
                            iArr[15] = u0.b.O1.charAt(9);
                            iArr[16] = u0.b.O1.charAt(10);
                            iArr[17] = u0.b.O1.charAt(11);
                        } else {
                            iArr[6] = 32;
                            iArr[7] = 32;
                            iArr[8] = 32;
                            iArr[9] = 32;
                            iArr[10] = 32;
                            iArr[11] = 32;
                            iArr[12] = 32;
                            iArr[13] = 32;
                            iArr[14] = 32;
                            iArr[15] = 32;
                            iArr[16] = 32;
                            iArr[17] = 32;
                        }
                        iArr[18] = 1;
                        if (u0.b.M1.length() >= 8) {
                            iArr[19] = 48;
                            iArr[20] = 48;
                            iArr[21] = u0.b.M1.charAt(0);
                            iArr[22] = u0.b.M1.charAt(1);
                            iArr[23] = 46;
                            iArr[24] = u0.b.M1.charAt(3);
                            iArr[25] = u0.b.M1.charAt(4);
                            iArr[26] = u0.b.M1.charAt(6);
                            iArr[27] = u0.b.M1.charAt(7);
                        } else {
                            iArr[19] = 32;
                            iArr[20] = 32;
                            iArr[21] = 32;
                            iArr[22] = 32;
                            iArr[23] = 32;
                            iArr[24] = 32;
                            iArr[25] = 32;
                            iArr[26] = 32;
                            iArr[27] = 32;
                        }
                        iArr[28] = 78;
                        if (u0.b.N1.length() >= 9) {
                            iArr[29] = 48;
                            iArr[30] = 48;
                            iArr[31] = u0.b.N1.charAt(0);
                            iArr[32] = u0.b.N1.charAt(1);
                            iArr[33] = u0.b.N1.charAt(2);
                            iArr[34] = 46;
                            iArr[35] = u0.b.N1.charAt(4);
                            iArr[36] = u0.b.N1.charAt(5);
                            iArr[37] = u0.b.N1.charAt(7);
                            iArr[38] = u0.b.N1.charAt(8);
                        } else {
                            iArr[29] = 32;
                            iArr[30] = 32;
                            iArr[31] = 32;
                            iArr[32] = 32;
                            iArr[33] = 32;
                            iArr[34] = 32;
                            iArr[35] = 32;
                            iArr[36] = 32;
                            iArr[37] = 32;
                            iArr[38] = 32;
                        }
                        iArr[39] = 69;
                        iArr[40] = 48;
                        iArr[41] = 48;
                        iArr[42] = 46;
                        iArr[43] = 48;
                        iArr[44] = 48;
                        int i12 = u0.b.Q1;
                        if (i12 > 0) {
                            iArr[45] = (i12 % 10000) / 1000;
                            iArr[46] = (i12 % 1000) / 100;
                            iArr[47] = 46;
                            iArr[48] = (i12 % 100) / 10;
                            iArr[49] = i12 % 10;
                        } else {
                            iArr[45] = 48;
                            iArr[46] = 48;
                            iArr[47] = 46;
                            iArr[48] = 48;
                            iArr[49] = 48;
                        }
                        int i13 = u0.b.R1;
                        if (i13 > 0) {
                            iArr[50] = i13 / 10000;
                            iArr[51] = (i13 % 10000) / 1000;
                            iArr[52] = (i13 % 1000) / 100;
                            iArr[53] = (i13 % 100) / 10;
                            iArr[54] = i13 % 10;
                        } else {
                            iArr[50] = 48;
                            iArr[51] = 48;
                            iArr[52] = 48;
                            iArr[53] = 48;
                            iArr[54] = 48;
                        }
                        iArr[55] = u0.b.Y1;
                    } else {
                        for (int i14 = 6; i14 < 56; i14++) {
                            iArr[i14] = 0;
                        }
                    }
                    while (i7 < 56) {
                        i6 ^= iArr[i7];
                        i7++;
                    }
                    iArr[56] = i6;
                    z.k.s(iArr);
                } else if (b19 == 2) {
                    int[] iArr2 = new int[31];
                    iArr2[0] = 227;
                    iArr2[1] = 85;
                    iArr2[2] = 170;
                    iArr2[3] = 27;
                    iArr2[4] = 67;
                    iArr2[5] = 2;
                    int[] iArr3 = new int[24];
                    int i15 = 0;
                    for (int i16 = 0; i16 < 20 && i15 < 12; i16++) {
                        int[] iArr4 = u0.b.T1;
                        int i17 = i16 * 2;
                        if (iArr4[i17] > 0) {
                            int i18 = i17 + 1;
                            if (iArr4[i18] > 0) {
                                int i19 = i15 * 2;
                                iArr3[i19] = iArr4[i17];
                                iArr3[i19 + 1] = iArr4[i18];
                                i15++;
                            }
                        }
                    }
                    for (int i20 = 0; i20 < 12; i20++) {
                        if (u0.b.R1 > 0) {
                            int i21 = i20 * 2;
                            iArr2[i21 + 6] = i20 + 1;
                            iArr2[i21 + 7] = iArr3[i21 + 1];
                        } else {
                            int i22 = i20 * 2;
                            iArr2[i22 + 6] = 0;
                            iArr2[i22 + 7] = 0;
                        }
                    }
                    int i23 = 0;
                    while (i7 < 30) {
                        i23 ^= iArr2[i7];
                        i7++;
                    }
                    iArr2[30] = i23;
                    a.f.p().y(" Gps Star  sGpsStarNo = " + u0.b.Y1 + ":", iArr2, 0, 31);
                    z.k.s(iArr2);
                } else if (b19 == 3 && b20 != 0 && b20 == 1) {
                    o1.u.t0();
                    a(67, 3, 1);
                }
                break;
            case 68:
                byte b27 = bArr[i2 + 2];
                byte b28 = bArr[i2 + 3];
                byte b29 = bArr[i2 + 4];
                byte b30 = bArr[i2 + 5];
                byte b31 = bArr[i2 + 6];
                byte b32 = bArr[i2 + 7];
                if (b27 == 1 || b27 == 2) {
                    if (b27 == 1) {
                        if (b29 == 14) {
                            b2 = 10;
                        } else if (b29 == 29) {
                            b2 = 20;
                        } else {
                            b2 = b29;
                        }
                    } else if (b27 != 2) {
                        b2 = b29;
                    } else if (b29 == 20) {
                        b2 = 8;
                    } else if (b29 == 40) {
                        b2 = 16;
                    } else {
                        b2 = b29;
                    }
                    z.k.s(227, 85, 170, 5, 68, b27, b28, b2, ((b27 ^ 235) ^ b28) ^ b2);
                    break;
                } else if (b27 == 3) {
                    if (b28 == 1) {
                        y0.h.u0(-3);
                    } else if (b28 == 0) {
                        y0.h.u0(-4);
                    }
                    if (b28 == 1 || b28 == 0) {
                        Log.d("auto", "  00 *** autotest Mute postDelayed 1000 B1  " + y0.f.f18055i);
                        a(68, 3, y0.f.f18055i);
                    } else {
                        a(68, 3, 255);
                    }
                    break;
                } else if (b27 == 4) {
                    if (b28 <= 36) {
                        f9361b = b28;
                        try {
                            y0.h.u0(b28);
                            a(68, 4, b28);
                            break;
                        } catch (Exception unused) {
                        }
                        o1.m.a().postDelayed(new a(), 1000L);
                    } else {
                        a(68, 4, 255);
                    }
                    break;
                } else if (b27 == 6) {
                    z.k.s(227, 85, 170, 8, 68, 6, 14, 14, 14, 20, 20, 238);
                    break;
                }
                break;
            case 69:
                byte b33 = bArr[i2 + 2];
                byte b34 = bArr[i2 + 3];
                if (b33 == 1) {
                    if (b34 == 1) {
                        u0.d.U1(1);
                    } else if (b34 == 2) {
                        u0.d.U1(0);
                    }
                    o1.m.a().postDelayed(new b(), 500L);
                    break;
                } else if (b33 == 2) {
                    if (b34 == 1) {
                        y0.h.u0(-5);
                    } else if (b34 == 2) {
                        y0.h.u0(-1);
                    } else if (b34 == 3) {
                        y0.h.u0(-2);
                    }
                    a(69, 2, b34);
                    break;
                } else if (b33 == 3) {
                    if (b34 == 0) {
                        if (!a.f.x().isWifiEnabled()) {
                            a.f.x().setWifiEnabled(true);
                        }
                    } else if (a.f.x().isWifiEnabled()) {
                        a.f.x().setWifiEnabled(false);
                    }
                    a(69, 3, 1);
                    break;
                } else if (b33 == 4) {
                    if (b34 == 0) {
                        n();
                    }
                    break;
                } else if (b33 == 6) {
                    byte[] bArr2 = new byte[9];
                    byte[] bArr3 = new byte[8];
                    System.arraycopy(bArr, i2 + 4, bArr2, 0, 9);
                    System.arraycopy(bArr, i2 + 13, bArr3, 0, 8);
                    try {
                        f(new String(bArr2, "ascii"), new String(bArr3, "ascii"));
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                    }
                    a(69, 6, 1);
                    break;
                } else if (b33 == 7) {
                    if (a.f.x().getConnectionInfo() != null) {
                        a(69, 7, 1);
                    } else {
                        a(69, 7, 0);
                    }
                    break;
                }
                break;
            case 70:
                byte b35 = bArr[i2 + 2];
                byte b36 = bArr[i2 + 3];
                byte b37 = bArr[i2 + 4];
                byte b38 = bArr[i2 + 5];
                byte b39 = bArr[i2 + 6];
                byte b40 = bArr[i2 + 7];
                if (b35 != 1) {
                    if (b35 == 2) {
                        a(70, 2, y0.f.f18037c);
                    } else if (b35 != 3) {
                        if (b35 != 4) {
                            if (b35 == 5) {
                                d("media://media?data=70,5");
                            } else if (b35 == 9 && b36 == 1) {
                                int iJ2 = u0.b.f17347o == 1 ? o1.q0.J() : 0;
                                int i24 = u0.b.f17347o;
                                z.k.s(227, 85, 170, 5, 70, 9, i24, iJ2, (i24 ^ 224) ^ iJ2);
                            }
                        } else if (b36 == 0) {
                            int i25 = w0.d.f17796h;
                            if (i25 > 65536) {
                                i25 = (i25 - 65536) + 3;
                            }
                            int i26 = w0.d.f17797i;
                            z.k.s(227, 85, 170, 6, 70, 4, i25, i26 & 255, i26 >> 8, ((i25 ^ 238) ^ (i26 & 255)) ^ (i26 >> 8));
                        }
                    } else if (b36 == 0) {
                        int i27 = u0.b.O;
                        if (i27 == 16) {
                            i6 = 2;
                        } else if (i27 != 18) {
                            if (i27 == 21) {
                                i6 = 4;
                            } else if (i27 == 23) {
                                i6 = 7;
                            } else if (i27 == 40) {
                                i6 = 15;
                            } else if (i27 != 25) {
                                i6 = i27 != 26 ? -1 : 9;
                            } else {
                                i6 = 6;
                            }
                        }
                        a(70, 3, i6);
                    }
                    break;
                } else if (b36 == 1) {
                    b(70, 1, u0.b.F1);
                    break;
                } else if (b36 == 2) {
                    b(70, 1, SystemProperties.get("persist.fyt.hardwareversion"));
                    break;
                } else if (b36 == 3) {
                    b(70, 1, "android8.1.0");
                    break;
                } else if (b36 == 5) {
                    b(70, 1, h0.c.f2458w);
                    break;
                } else if (b36 == 6) {
                    b(70, 1, "APP 1024x768 " + m());
                    break;
                } else if (b36 == 8) {
                    b(70, 1, SystemProperties.get("persist.fyt.softwareversion"));
                    break;
                }
                break;
            default:
                switch (b3) {
                    case 80:
                        if (bArr[i2 + 2] == 0) {
                            a(80, 0, 0);
                            z.k.s(1, 170, 144);
                            if (u0.b.f17366w == 0) {
                                u0.d.Q(u0.b.T2);
                            } else {
                                u0.d.Q(u0.b.U2);
                            }
                            h0.c.f2427c.L2(13, 0);
                        }
                        break;
                    case 81:
                        if (bArr[i2 + 2] == 0) {
                            o1.u.a1();
                            a(81, 0, 0);
                        }
                        break;
                    case 82:
                        f9366g = bArr[i2 + 3];
                        o1.j.b(o1.l.a(), new d(), 500L);
                        break;
                    case 83:
                        byte b41 = bArr[i2 + 2];
                        if ((bArr[i2 + 3] & 255) == 0) {
                            if (e(App.c(), "com.baidu.carlifevehicle")) {
                                if (!l().equals("com.baidu.carlifevehicle.CarlifeActivity")) {
                                    Intent intent5 = new Intent();
                                    intent5.setClassName("com.baidu.carlifevehicle", "com.baidu.carlifevehicle.CarlifeActivity");
                                    intent5.addCategory(Intent.CATEGORY_DEFAULT);
                                    intent5.setFlags(268435456);
                                    App.c().startActivity(intent5);
                                }
                            } else if (!l().equals("net.easyconn.WelcomeActivity")) {
                                Intent intent6 = new Intent();
                                intent6.setClassName("net.easyconn", "net.easyconn.WelcomeActivity");
                                intent6.addCategory(Intent.CATEGORY_DEFAULT);
                                intent6.setFlags(268435456);
                                App.c().startActivity(intent6);
                            }
                        }
                        break;
                    case 84:
                        byte b42 = bArr[i2 + 2];
                        f9365f = bArr[i2 + 3];
                        o1.j.b(o1.l.a(), new e(), 1000L);
                        break;
                }
                break;
        }
    }
}
