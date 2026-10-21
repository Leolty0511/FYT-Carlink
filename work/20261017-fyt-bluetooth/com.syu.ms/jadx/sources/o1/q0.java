package o1;

import android.Manifest;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.media.videoeditor.MediaArtistNativeHelper;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.source.Util;
import android.util.Log;
import app.App;
import chip.Chip;
import com.syu.jni.ControlNative;
import com.syu.jni.JniToolkit;
import com.syu.jni.SyuJniNative;
import com.syu.jni.ToolsJni;
import com.syu.jni.TouchNative;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class q0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f16955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f16956e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f16957f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static PowerManager.WakeLock f16967p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f16969r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Runnable f16952a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f16953b = 500;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k0 f16954c = new k0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Runnable f16958g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Runnable f16959h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Runnable f16960i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Runnable f16961j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static boolean f16962k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f16963l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f16964m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f16965n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static Runnable f16966o = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f16968q = -1;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            ControlNative.getInstance().fyt_gpio_write(114, 1);
            a.i.a0(500L);
            y0.h.P();
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public synchronized void run() {
            int i2;
            if (q0.f16955d == 0) {
                q0.f16957f = 0;
                int i3 = q0.f16956e;
                q0.f16955d = i3;
                if (i3 != 0) {
                    b0.j("set videoPort to " + q0.f16955d + " mirror: " + u0.b.f17356r + " time:" + SystemClock.uptimeMillis());
                    if (q0.v()) {
                        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
                        if (g.a.f2181j == u0.b.f17371y0 && (((i2 = g.a.f2181j) == 8 || i2 == 1) && (u0.b.f17373z0 != 0 || u0.b.A0 != 0 || u0.b.B0 != 0 || u0.b.C0 != 0))) {
                            bArr[0] = 86;
                            bArr[1] = 68;
                            bArr[2] = 80;
                            bArr[3] = 83;
                            int i4 = u0.b.f17373z0;
                            bArr[4] = (byte) (i4 & 255);
                            bArr[5] = (byte) ((i4 >> 8) & 255);
                            int i5 = u0.b.A0;
                            bArr[6] = (byte) (i5 & 255);
                            bArr[7] = (byte) ((i5 >> 8) & 255);
                            int i6 = u0.b.B0;
                            bArr[8] = (byte) (i6 & 255);
                            bArr[9] = (byte) ((i6 >> 8) & 255);
                            int i7 = u0.b.C0;
                            bArr[10] = (byte) (i7 & 255);
                            bArr[11] = (byte) ((i7 >> 8) & 255);
                            u0.b.f17371y0 = 0;
                            u0.b.f17373z0 = 0;
                            u0.b.A0 = 0;
                            u0.b.B0 = 0;
                            u0.b.C0 = 0;
                        }
                        if (u0.b.Y3) {
                            ControlNative.getInstance().fytSetVideoPosition(bArr, 12);
                        }
                    }
                    ControlNative.getInstance().fyt_vehicle_write(new byte[]{11, (byte) u0.b.f17356r}, 2);
                    ControlNative.getInstance().fyt_vehicle_write(new byte[]{1, (byte) q0.f16955d}, 2);
                    if (q0.f16955d == 20 && u0.b.o4 == 4) {
                        q0.I(d1.d.f1573f);
                    }
                    if (y0.f.f18031a == 2) {
                        y0.f.f18034b.a(u0.b.D);
                    }
                    q0.f16954c.b();
                }
            } else {
                q0.f16955d = 0;
                b0.j("set videoPort to 0 time:" + SystemClock.uptimeMillis());
                ControlNative.getInstance().fyt_vehicle_write(new byte[]{1, 0}, 2);
                if (y0.f.f18031a == 2) {
                    y0.f.f18034b.a(u0.b.D);
                }
                q0.f16954c.b();
                if (q0.f16956e != 0) {
                    k.a().postDelayed(q0.f16958g, q0.f16953b);
                } else {
                    q0.f16957f = 0;
                }
            }
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public synchronized void run() {
            if (q0.f16955d == 0) {
                q0.f16957f = 0;
                int i2 = q0.f16956e;
                q0.f16955d = i2;
                if (i2 != 0) {
                    b0.j("打开视频 " + q0.f16955d + " mirror: " + u0.b.f17356r + " time:" + SystemClock.uptimeMillis());
                    if (g.e.a() == 4) {
                        a.i.Z("sys_graphic.cam_dvp.mirror", (u0.b.f17356r == 0 || q0.f16955d != 1) ? "false" : "true");
                    }
                    e1.a.f1657b.c(q0.f16955d);
                    e1.a.f1657b.i(q0.f16955d);
                    e1.a.f1658c = true;
                    j.e(l.a(), q0.f16961j);
                    j.b(l.a(), q0.f16961j, 200L);
                    q0.f16954c.b();
                }
            } else {
                q0.f16955d = 0;
                b0.j("关闭视频 0 time:" + SystemClock.uptimeMillis());
                e1.a.f1657b.a();
                e1.a.f1657b.i(0);
                q0.f16954c.b();
                e1.a.f1658c = false;
                if (q0.f16956e != 0) {
                    u0.d.I3(68, 0, 0);
                    a.f.p().s("通知UI释放CAMERA");
                    Log.d("video", "通知UI释放CAMERA");
                    k.a().postDelayed(q0.f16959h, 500L);
                } else {
                    q0.f16957f = 0;
                }
            }
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public synchronized void run() {
            if (q0.f16955d == 0) {
                q0.f16957f = 0;
                int i2 = q0.f16956e;
                q0.f16955d = i2;
                if (i2 != 0) {
                    b0.j("打开视频 " + q0.f16955d + " mirror: " + u0.b.f17356r + " time:" + SystemClock.uptimeMillis());
                    if (g.e.a() == 5 || g.e.a() == 7) {
                        a.i.Z("sys.fyt.cvbs.mirror", (u0.b.f17356r == 0 || q0.f16955d != 1) ? "0" : "1");
                    }
                    e1.a.f1657b.c(q0.f16955d);
                    e1.a.f1657b.i(q0.f16955d);
                    e1.a.f1658c = true;
                    j.e(l.a(), q0.f16961j);
                    j.b(l.a(), q0.f16961j, 300L);
                    q0.f16954c.b();
                }
            } else {
                q0.f16955d = 0;
                b0.j("关闭视频 0 time:" + SystemClock.uptimeMillis());
                Log.d("video", "关闭视频 0 time:" + SystemClock.uptimeMillis());
                e1.a.f1657b.a();
                e1.a.f1657b.i(0);
                q0.f16954c.b();
                e1.a.f1658c = false;
                if (q0.f16956e != 0) {
                    Log.d("video", "通知UI释放CAMERA,等待UI释放camera");
                    u0.d.I3(68, 0, 0);
                    boolean unused = q0.f16962k;
                    k.a().postDelayed(q0.f16960i, 888L);
                } else {
                    q0.f16957f = 0;
                }
            }
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            u0.d.I3(68, q0.f16955d, 1);
            u0.d.I3(69, u0.b.r4);
            u0.b.l4 = q0.f16955d;
            a.f.p().s("通知UI打开CAMERA = " + q0.f16955d + " time = " + SystemClock.uptimeMillis());
            e1.a.f1657b.e();
        }
    }

    public class f implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f == 1) {
                if (u0.b.w3 < 0) {
                    u0.b.w3 = 0;
                }
                if (u0.b.w3 == 0) {
                    u0.d.i(1);
                }
                u0.b.w3--;
            }
        }
    }

    public static void A(int i2) {
        if (g.e.a() == 4) {
            int i3 = i2 != 0 ? 3 : 0;
            Intent intent = new Intent("com.android.settings.location.MODE_CHANGING");
            intent.putExtra("NEW_MODE", i3);
            App.c().sendBroadcast(intent, Manifest.permission.WRITE_SECURE_SETTINGS);
            Settings.Secure.putInt(App.c().getContentResolver(), Settings.Secure.LOCATION_MODE, i3);
            a.f.p().s("openGps " + i2);
            Log.d("ms", "openGps " + i2);
        }
    }

    public static int B() {
        return JniToolkit.openQst();
    }

    public static void C() {
        if (g.e.a() == 1) {
            ControlNative.getInstance().fyt_gpio_setup(114, 0, 1);
            ControlNative.getInstance().fyt_gpio_write(114, 0);
            k.a().postDelayed(f16952a, 800L);
            return;
        }
        if (g.e.a() == 3) {
            ControlNative.getInstance().fytReset8288();
            a.i.a0(500L);
            y0.h.P();
        } else if (g.e.a() == 4 || g.e.a() == 6) {
            ToolsJni.cmd_24_reset_8288a();
            a.i.a0(500L);
            y0.h.P();
        } else if (g.f.f(7)) {
            z.k.s(1, 1, 160);
            a.i.a0(500L);
            y0.h.P();
        }
    }

    public static void D(int i2) {
        if (g.e.a() == 3) {
            ControlNative.getInstance().fytResetGps(i2);
        } else {
            g.e.a();
        }
    }

    public static void E() {
        ControlNative.getInstance().fyt_vehicle_write(new byte[]{35, (byte) u0.b.f17356r}, 2);
    }

    public static void F(int i2) {
        if (g.f.f(4)) {
            ToolsJni.cmd_14_set_backcar_type(i2);
        }
    }

    public static void G(int i2) {
        if (g.f.n(12) || f16968q == i2) {
            return;
        }
        f16968q = i2;
        if (g.f.f(4)) {
            if (i2 != 0) {
                ToolsJni.cmd_16_set_led_colors(ToolsJni.cmd_17_get_led_colors(), 0);
                return;
            } else {
                ToolsJni.cmd_16_set_led_colors(0, 0);
                return;
            }
        }
        if (g.f.f(3)) {
            if (i2 != 0) {
                ControlNative.getInstance().fytSetLedColor(ControlNative.getInstance().fyt_multicolour_light_read());
            } else {
                ControlNative.getInstance().fytSetLedColor(0);
            }
        }
    }

    public static void H(int i2) {
        if (g.e.a() == 4 && SystemProperties.getInt("boot.car.reverse", 0) != 1) {
            Bundle bundle = new Bundle();
            bundle.putInt("param0", i2);
            SyuJniNative.getInstance().syu_jni_command(11, bundle, null);
        }
    }

    public static void I(int i2) {
        if (g.e.a() != 3) {
            return;
        }
        ControlNative.getInstance().fyt_vehicle_write(new byte[]{20, (byte) (i2 + 21)}, 2);
    }

    public static int J() {
        int i2;
        int iA = g.e.a();
        if (iA == 1) {
            int iE = g.e.e();
            if (iE == 1) {
                return ControlNative.getInstance().fyt_get8288_signal();
            }
            if (iE == 3 && (i2 = d1.d.f1578k) > 0) {
                return Util.isDisplayReady(i2, 3) ? 1 : 0;
            }
        } else {
            if (iA == 3) {
                byte[] bArrFyt_vehicle_read = ControlNative.getInstance().fyt_vehicle_read();
                if (bArrFyt_vehicle_read == null || bArrFyt_vehicle_read.length < 1) {
                    return 0;
                }
                return bArrFyt_vehicle_read[0];
            }
            if (g.f.f(4)) {
                return u0.b.r4;
            }
        }
        return 0;
    }

    public static void K() {
        if (g.e.a() != 1) {
            return;
        }
        ControlNative.getInstance().fyt_update_clear();
    }

    public static int L() {
        if (g.e.a() != 1) {
            return 0;
        }
        return ControlNative.getInstance().fyt_update_get();
    }

    public static byte[] M() {
        if (g.e.a() != 3) {
            return null;
        }
        return ControlNative.getInstance().fyt_vehicle_read();
    }

    public static void N() {
        if (g.e.a() != 3) {
            return;
        }
        ControlNative.getInstance().fyt_vehicle_write(new byte[]{1, 5}, 2);
    }

    public static void O(int i2) {
        Runnable runnable;
        if (g.f.f(3)) {
            Runnable runnable2 = f16958g;
            if (g.e.a() == 4 || g.e.a() == 6) {
                runnable = f16959h;
            } else {
                runnable = (g.e.a() == 5 || g.e.a() == 7) ? f16960i : runnable2;
            }
            f16956e = i2;
            if (f16957f == 0) {
                synchronized (runnable2) {
                    if (f16957f == 0) {
                        f16957f = 1;
                        k0 k0Var = f16954c;
                        if (k0Var.c(f16953b)) {
                            k.a().post(runnable);
                        } else {
                            k.a().postDelayed(runnable, f16953b - k0Var.a());
                        }
                    }
                }
            }
        }
    }

    public static int P() {
        if (g.e.a() == 1) {
            return ControlNative.getInstance().fyt_lightoff_timeout_listen();
        }
        a.i.a0(86400000L);
        return 0;
    }

    public static void a(int i2) {
        if (g.e.a() == 1 || g.e.a() == 3 || !g.f.f(4)) {
            return;
        }
        ToolsJni.cmd_29_acc_state_to_bsp(i2);
    }

    public static void b(int i2) {
        if (i2 != 0) {
            u.l("com.glsx.boot.ACCON");
            u.l("com.fyt.boot.ACCON");
        } else {
            u.l("com.glsx.boot.ACCOFF");
            u.l("com.fyt.boot.ACCOFF");
        }
    }

    public static void h(int i2) {
        if (g.f.f(4)) {
            ToolsJni.cmd_50_fm_ant_en(i2);
        }
    }

    public static void i(int i2) {
        if (g.e.a() != 6) {
            return;
        }
        Bundle bundle = new Bundle();
        int i3 = 0;
        if (i2 == 0) {
            i3 = 48000;
        } else if (i2 == 1) {
            i3 = MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_44100;
        }
        if (i3 != 0) {
            bundle.putInt("param0", i3);
            SyuJniNative.getInstance().syu_jni_command(35, bundle, null);
        }
    }

    public static void j(int i2) {
        int iA = g.e.a();
        if (iA == 1) {
            if (ControlNative.getInstance().fyt_car_image_get_on() != i2) {
                ControlNative.getInstance().fyt_car_image_set_on(i2);
            }
        } else if (iA == 3) {
            ControlNative.getInstance().fyt_vehicle_write(new byte[]{11, (byte) i2}, 2);
        } else if (g.f.f(4)) {
            ToolsJni.cmd_1_backcarMirror(i2);
        }
    }

    public static int k() {
        if (g.e.a() == 4) {
            if (f16969r == 0 && (SystemProperties.getInt("boot.car.reverse", 0) == 1 || a.b.f16e0 == 0)) {
                return 0;
            }
            f16969r = 1;
        } else if (g.f.f(5)) {
            f16969r = 1;
        }
        return 1;
    }

    public static boolean l() {
        if (g.e.a() == 3) {
            return "1".equals(SystemProperties.get("sys.canSleep"));
        }
        if (g.e.a() == 4) {
            return "1".equals(SystemProperties.get("sys.canSleep")) && "1".equals(SystemProperties.get("sys.boot_completed"));
        }
        return "1".equals(SystemProperties.get("sys.boot_completed"));
    }

    public static void m(int i2) {
        if (u0.b.f17363u0 != 0) {
            if (g.e.a() != 3) {
                if (g.f.f(4)) {
                    Log.e("Qin", "======================>> closeDoor  value: " + i2);
                    ToolsJni.cmd_5_turnoff_lcdc(i2);
                    return;
                }
                return;
            }
            if (r() == 255) {
                ControlNative.getInstance().fytTurnOffLcdc(i2);
                return;
            }
            if (i2 != 0) {
                if (r() != 0) {
                    ControlNative.getInstance().fytTurnOffLcdc(i2);
                    if (r() != 0) {
                        m(1);
                        return;
                    }
                    return;
                }
                return;
            }
            if (r() == 0) {
                ControlNative.getInstance().fytTurnOffLcdc(i2);
                if (r() == 0) {
                    m(0);
                }
            }
        }
    }

    public static float n(int i2) {
        if (i2 <= 0) {
            i2 = Runtime.getRuntime().availableProcessors();
        }
        float fMax = 0.0f;
        for (int i3 = 0; i3 < i2; i3++) {
            fMax = Math.max(fMax, q(i3));
        }
        return fMax;
    }

    public static int o() {
        if (f16963l == -1) {
            if (new File("/proc/gtsql_config").exists()) {
                f16963l = 1;
            } else {
                f16963l = 0;
            }
        }
        return f16963l;
    }

    public static float p() {
        g.g gVar = g.e.f2254a;
        if (gVar instanceof Chip) {
            return ((Chip) gVar).l();
        }
        return 0.0f;
    }

    public static float q(int i2) {
        int iA = g.e.a();
        if (iA == 4) {
            return s("/sys/class/thermal/thermal_zone" + (i2 + 1) + "/temp");
        }
        if (iA == 6) {
            return s(String.format(Locale.US, "/sys/rockchip_thermal/temp", new Object[0]));
        }
        if (iA == 12) {
            return s("/sys/devices/virtual/mstar/msys/TEMP_R");
        }
        if (!g.f.f(5)) {
            return -1.0f;
        }
        return s("/sys/class/thermal/thermal_zone" + i2 + "/temp");
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static int r() throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        Exception e2;
        int i2 = 255;
        if (g.e.a() == 3) {
            try {
                try {
                    fileInputStream = new FileInputStream("/sys/fytver/TurnOffLcdc");
                    try {
                        try {
                            byte[] bArr = {2, 2};
                            if (fileInputStream.read(bArr, 0, 2) == 2) {
                                i2 = bArr[0] - 48;
                            }
                            fileInputStream.close();
                        } catch (Exception e3) {
                            e2 = e3;
                            e2.printStackTrace();
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return i2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            } catch (Exception e6) {
                fileInputStream = null;
                e2 = e6;
            } catch (Throwable th3) {
                fileInputStream = null;
                th = th3;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0030  */
    public static float s(String str) throws Throwable {
        BufferedReader bufferedReader;
        int i2;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream2));
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        i2 = -1;
                    } else if (line.contains(":")) {
                        String[] strArrSplit = line.split(":");
                        if (strArrSplit == null || strArrSplit.length <= 1) {
                            i2 = -1;
                        } else {
                            i2 = Integer.parseInt(strArrSplit[1]);
                        }
                    } else {
                        i2 = Integer.parseInt(line.trim());
                    }
                    try {
                        fileInputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                } catch (Exception unused) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    i2 = -1;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    if (bufferedReader == null) {
                        throw th;
                    }
                    try {
                        bufferedReader.close();
                        throw th;
                    } catch (IOException e7) {
                        e7.printStackTrace();
                        throw th;
                    }
                }
            } catch (Exception unused2) {
                bufferedReader = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Exception unused3) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
        if (i2 != -1) {
            return i2;
        }
        return -1.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
    
        r1 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int t() {
        /*
            java.lang.String r0 = "gsm.sim.state"
            java.lang.String r0 = android.os.SystemProperties.get(r0)
            int r1 = g.e.a()
            r2 = 1
            r3 = 0
            r4 = 4
            if (r1 == r4) goto L10
            goto L50
        L10:
            java.lang.String r1 = "ro.fixed.wifi"
            java.lang.String r4 = ""
            java.lang.String r5 = android.os.SystemProperties.get(r1, r4)
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 != 0) goto L2b
            java.lang.String r1 = android.os.SystemProperties.get(r1, r4)
            java.lang.String r4 = "1"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L3d
            goto L3b
        L2b:
            java.lang.String r1 = "persist.modem.disable"
            java.lang.String r4 = "false"
            java.lang.String r1 = android.os.SystemProperties.get(r1, r4)
            java.lang.String r4 = "true"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L3d
        L3b:
            r1 = r2
            goto L3e
        L3d:
            r1 = r3
        L3e:
            if (r1 == 0) goto L41
            goto L50
        L41:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L50
            java.lang.String r1 = "ABSENT"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L50
            goto L51
        L50:
            r2 = r3
        L51:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: o1.q0.t():int");
    }

    public static int u() {
        if (o() == 0) {
            return 0;
        }
        int i2 = TouchNative.me().native_get_control(1) != 0 ? 0 : 1;
        if (SystemProperties.getInt("sys.need.cali", 0) != i2) {
            SystemProperties.set("sys.need.cali", ProxyProperties.LOCAL_EXCL_LIST + i2);
        }
        return i2;
    }

    public static boolean v() {
        if (g.e.a() == 3 || g.e.a() == 4) {
            if (g.e.e() == 9) {
                if (!SystemProperties.get("ro.sf.hwrotation", "0").equals("0") && !SystemProperties.get("ro.sf.hwrotation", "0").equals("180")) {
                    return false;
                }
            } else if (!SystemProperties.get("ro.sf.hwrotation", "0").equals("90") && !SystemProperties.get("ro.sf.hwrotation", "0").equals("270") && !SystemProperties.get("ro.fyt.screen_port", "0").equals("1")) {
                return false;
            }
        } else if (g.e.j(5)) {
            if (!SystemProperties.getBoolean("ro.build.portrait_screen", false)) {
                return false;
            }
        } else if (!g.f.f(7) || App.c().getResources().getConfiguration().orientation != 1) {
            return false;
        }
        return true;
    }

    @SuppressLint({"InvalidWakeLockTag"})
    public static void w(int i2) {
        if (g.f.f(4)) {
            if (i2 == 0) {
                PowerManager.WakeLock wakeLock = f16967p;
                if (wakeLock != null) {
                    wakeLock.release();
                    f16967p = null;
                    int i3 = u0.b.n4;
                    return;
                }
                return;
            }
            z.i.p();
            if (f16967p == null) {
                PowerManager.WakeLock wakeLockNewWakeLock = a.f.r().newWakeLock(268435482, "com.syu.ms");
                f16967p = wakeLockNewWakeLock;
                wakeLockNewWakeLock.acquire();
                if (g.e.a() == 4) {
                    g.d.I(0);
                }
            }
        }
    }

    public static void x() {
        if (f16965n) {
            return;
        }
        f16965n = true;
        j0.f16915j.c(f16966o);
    }

    public static void y(int i2) {
        if (g.e.a() == 4 && u0.b.n4 == 0) {
            i2 = 0;
        }
        Log.e("soundMute", "  >>>>>>>>>>>>>>>>>>>>>>   muteAmp  sMuteAmp: " + f16964m + "    value: " + i2);
        Log.e("mute", "  >>>>>>>>>>>>>>>>>>>>>>   muteAmp  sMuteAmp: " + f16964m + "    value: " + i2);
        if (f16964m != i2) {
            f16964m = i2;
            if (g.e.a() == 3) {
                ControlNative.getInstance().fytMuteAMP(f16964m);
                return;
            }
            if (g.e.a() == 4) {
                ToolsJni.cmd_6_mute_amp(f16964m);
                return;
            }
            if (g.e.a() == 5) {
                ToolsJni.cmd_6_mute_amp(f16964m != 1 ? 1 : 0);
                return;
            }
            ToolsJni.cmd_6_mute_amp(f16964m);
            z0.d.f18290d.d(f16964m == 1);
            f0.a aVarY2 = f0.c.X2().Y2();
            if (aVarY2 != null) {
                aVarY2.f(f16964m == 1);
            }
        }
    }

    public static void z(int i2, int i3) {
        Log.d("video", "UI控制camera = " + i2 + " useCamera = " + i3);
        Log.d("video", "DataMain.mVideoOnChannel = " + u0.b.l4 + " 是否有UI等待打开camera = " + u0.b.m4);
    }
}
