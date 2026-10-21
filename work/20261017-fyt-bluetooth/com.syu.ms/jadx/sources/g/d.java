package g;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.hardware.Camera;
import android.media.AudioTrack;
import android.media.MediaPlayer;
import android.media.videoeditor.MediaArtistNativeHelper;
import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.SystemProperties;
import android.os.UEventObserver;
import android.provider.Settings;
import android.security.KeyChain;
import android.text.TextUtils;
import android.util.Log;
import app.App;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import n0.j4;
import o1.n0;
import o1.q0;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
public class d implements g.g {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static boolean f2221t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f2222u = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2223a = "ChipSofia";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2224b = MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2225c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2226d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f2227e = new RunnableC0045d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Runnable f2228f = new e();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f2229g = new f();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final UEventObserver f2230h = new g();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f2231i = new h();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f2232j = new i();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f2233k = new j();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f2234l = new k();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2235m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2236n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2237o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f2238p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Runnable f2239q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public MediaPlayer f2240r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public AudioTrack f2241s;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            int i2;
            boolean z2;
            if (SystemProperties.getInt("boot.car.reverse", 0) == 1) {
                d.this.f2237o = true;
                return;
            }
            if (d.this.f2237o) {
                d.this.f2237o = false;
                q0.H(0);
            }
            if (u0.b.f17347o != 0) {
                i2 = 1;
            } else {
                i2 = (u0.b.o4 == 0 || u0.b.f17320f == 0) ? 0 : u0.b.o4;
            }
            if (d.this.f2236n != i2) {
                d.this.f2236n = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (i2 >= 0 && i2 < 11 && (d.this.f2235m != i2 || z2)) {
                d.this.f2235m = i2;
                o1.j.e(o1.l.a(), d.this.f2239q);
                o1.j.b(o1.l.a(), d.this.f2239q, 0L);
            }
            if (i2 != 0) {
                u0.d.I3(69, u0.b.r4);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q0.O(d.this.f2235m);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.e() == 9 && u0.b.f17372z != 0) {
                o1.m.a().postDelayed(u0.d.f17416p, u0.b.v3 + ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT);
            }
            n0.b();
        }
    }

    /* JADX INFO: renamed from: g.d$d, reason: collision with other inner class name */
    public class RunnableC0045d implements Runnable {
        public RunnableC0045d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.f2225c) {
                a.f.p().s("检测开关 = " + u0.b.f17310b1);
            }
            if (u0.b.f17310b1 == 1 && u0.b.f17306a0 == 1 && u0.b.f17320f == 1) {
                if (d.this.f2225c) {
                    a.f.p().s("usb 模式 = " + d.this.A());
                }
                if (new File("/sys/bus/usb/devices/1-1").exists()) {
                    a.f.p().s("/sys/bus/usb/devices/1-1 ------- 存在");
                } else if (j4.f16464b != 75) {
                    u0.d.C3(8);
                    a.f.p().s("/sys/bus/usb/devices/1-1 不存在");
                }
            }
        }
    }

    public class e implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d.I(0);
            }
        }

        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.n4 == 0) {
                a.f.p().s("休眠");
                Log.d("ms", "sSleepWakeup 89 53 sleep sleep");
                a.i.D();
                a.i.Z("audio.hw.allow_close", "1");
                d.this.C();
                q0.A(0);
                d.I(1);
                if (q0.t() == 0 || u0.b.J0 == 1 || !SystemProperties.getBoolean("sys.fyt.dvr", false)) {
                    d.this.y(1);
                    boolean unused = d.f2221t = true;
                }
            } else {
                a.f.p().s("休眠唤醒");
                a.i.Z("audio.hw.allow_close", "0");
                d.this.C();
                d.this.F();
                q0.A(1);
                o1.l.a().postDelayed(new a(), 2000L);
                if (d.f2221t || q0.t() == 0) {
                    d.this.y(0);
                    boolean unused2 = d.f2221t = false;
                }
            }
            try {
                ToolsJni.cmd_19_airplane_mode(Settings.Global.getInt(App.c().getContentResolver(), "airplane_mode_on"));
            } catch (Exception unused3) {
            }
            if (d.this.f2226d) {
                d.this.f2226d = false;
            } else {
                o1.l.a().postDelayed(d.this.f2227e, d.this.f2224b);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (w0.d.f17789a != 3) {
                return;
            }
            if (u0.b.D == 1) {
                d.this.E(0);
            } else {
                d.this.E(1);
            }
        }
    }

    public class g extends UEventObserver {
        public g() {
        }

        @Override // android.os.UEventObserver
        public void onUEvent(UEventObserver.UEvent uEvent) {
            String strB;
            String string = uEvent.toString();
            if (string == null) {
                return;
            }
            if (string.contains("AIRPLANEMODE")) {
                d.this.y(1);
                boolean unused = d.f2221t = true;
                return;
            }
            if (string.contains("FYT_T132_RESET=COMPLETE")) {
                u0.d.J3(45, new int[]{4}, null, new String[]{"FYT_T132_RESET=COMPLETE BSP 要求重刷参数"});
                e1.a.f1657b.f();
                return;
            }
            if (string.contains("FYT_I2C4=BUSY")) {
                y0.h.P();
                return;
            }
            if (!string.contains("car-reverse") || (strB = d.this.B(uEvent.toString(), "GPIO_STATE")) == null || a.b.f16e0 == 0) {
                return;
            }
            if (strB.equals(Camera.Parameters.FLASH_MODE_ON)) {
                if (SystemProperties.getInt("boot.car.reverse", 0) == 1) {
                    g.f.a(d.this.f2231i);
                    Log.d(d.this.f2223a, "camera it is using,return");
                    return;
                } else {
                    d.this.H();
                    u0.d.C(1);
                    return;
                }
            }
            if (strB.equals("over")) {
                g.f.v(d.this.f2231i);
                if (SystemProperties.get("sys.car.reverse", "0").equals("2")) {
                    u0.d.C(0);
                }
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SystemProperties.getInt("boot.car.reverse", 0) != 1) {
                if (!"2".equals(SystemProperties.get("sys.car.reverse", "0"))) {
                    d.this.H();
                }
                u0.d.C(1);
                g.f.v(d.this.f2231i);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.b.f16e0 != 0) {
                d.this.H();
                e1.a.f1657b.f();
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q0.I(d1.d.f1573f);
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 != 0) {
                int i2 = u0.b.D;
            }
        }
    }

    public static void I(int i2) {
        if (n1.b.f16645m) {
            return;
        }
        try {
            FileWriter fileWriter = new FileWriter("/sys/kernel/debug/intel_otg/mode", false);
            if (i2 == 0) {
                fileWriter.write(KeyChain.EXTRA_HOST);
                a.f.p().s("setMode = host");
            } else if (i2 == 1) {
                if (SystemProperties.getInt("ro.build.version.sdk", 0) == 23) {
                    fileWriter.write(Camera.Parameters.EFFECT_NONE);
                } else {
                    fileWriter.write(Camera.Parameters.EFFECT_NONE);
                    a.f.p().s("setMode = none");
                }
            }
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public final String A() {
        try {
            FileReader fileReader = new FileReader("/sys/kernel/debug/intel_otg/mode");
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            String line = bufferedReader.readLine();
            if (line == null) {
                line = ProxyProperties.LOCAL_EXCL_LIST;
            }
            bufferedReader.close();
            fileReader.close();
            return line;
        } catch (IOException e2) {
            e2.printStackTrace();
            return A();
        }
    }

    public final String B(String str, String str2) {
        String str3;
        if (str.length() <= 0 || str.equals(ProxyProperties.LOCAL_EXCL_LIST)) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        char[] charArray = str.toCharArray();
        if (str.contains(str2)) {
            str3 = ProxyProperties.LOCAL_EXCL_LIST;
            for (int iIndexOf = str.indexOf(str2) + str2.length(); iIndexOf < charArray.length && charArray[iIndexOf] != ','; iIndexOf++) {
                if (charArray[iIndexOf] != '=') {
                    str3 = str3 + charArray[iIndexOf];
                }
            }
        } else {
            str3 = ProxyProperties.LOCAL_EXCL_LIST;
        }
        return str3.replace(" ", ProxyProperties.LOCAL_EXCL_LIST);
    }

    public final void C() {
        D();
        int minBufferSize = ((AudioTrack.getMinBufferSize(48000, 12, 2) + 255) >> 8) << 8;
        if (minBufferSize < 4096) {
            minBufferSize = 4096;
        }
        AudioTrack audioTrack = new AudioTrack(5, 48000, 12, 2, minBufferSize, 0);
        this.f2241s = audioTrack;
        byte[] bArr = new byte[minBufferSize];
        audioTrack.write(bArr, 0, minBufferSize);
        if (this.f2241s.getPlayState() != 3) {
            this.f2241s.play();
        }
        this.f2241s.write(bArr, 0, minBufferSize);
    }

    public final void D() {
        G();
        try {
            Uri uri = Uri.parse("android.resource://" + App.c().getApplicationContext().getPackageName() + "/" + R.raw.test);
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f2240r = mediaPlayer;
            mediaPlayer.setDataSource(App.c(), uri);
            this.f2240r.setAudioStreamType(5);
            this.f2240r.prepare();
            this.f2240r.start();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void E(int i2) {
        if (f2222u != i2) {
            f2222u = i2;
            if (i2 == 0) {
                u0.b.H3 = 2;
                y0.h.Y(32, true);
                a.i.Z("audio.hw.allow_close", "1");
                D();
                G();
                return;
            }
            u0.b.H3 = 2;
            y0.h.Y(32, true);
            a.i.a0(100L);
            a.i.Z("audio.hw.allow_close", "0");
            D();
            G();
        }
    }

    public final void F() {
        G();
        AudioTrack audioTrack = this.f2241s;
        if (audioTrack != null) {
            audioTrack.stop();
            this.f2241s.flush();
            this.f2241s.release();
            this.f2241s = null;
        }
    }

    public final void G() {
        MediaPlayer mediaPlayer = this.f2240r;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f2240r.reset();
            this.f2240r.release();
            this.f2240r = null;
        }
    }

    public final void H() {
        SystemProperties.set("sys.car.reverse", "2");
    }

    @Override // g.g
    public void a() {
        u0.c.f17381h.d(this.f2228f);
        u0.c.f17379f.d(this.f2238p);
        u0.c.f17386m.d(this.f2234l);
        d1.e.f1579a.d(this.f2233k);
        u0.c.f17376c.d(this.f2238p);
        u0.c.f17383j.d(this.f2238p);
        a.d.f45a.d(this.f2232j);
        u0.c.f17374a.d(this.f2229g);
        w0.e.f17820f.d(this.f2229g);
    }

    @Override // g.g
    public void b() {
        u0.b.T3 = true;
        q0.f16953b = 50;
        y0.f.V = 0;
        u0.b.E3 = false;
        z();
        this.f2230h.startObserving("GPIO_NAME=car-reverse GPIO_STATE=on");
        this.f2230h.startObserving("GPIO_NAME=car-reverse GPIO_STATE=over");
        this.f2230h.startObserving("FYT_IOCTRL_3G=AIRPLANEMODE");
        this.f2230h.startObserving("FYT_T132_RESET=COMPLETE");
        this.f2230h.startObserving("FYT_I2C4=BUSY");
        this.f2235m = -1;
        u0.c.f17381h.a(this.f2228f, 1);
        u0.c.f17379f.a(this.f2238p, 0);
        u0.c.f17386m.a(this.f2234l, 1);
        d1.e.f1579a.a(this.f2233k, 1);
        u0.c.f17376c.a(this.f2238p, 0);
        u0.c.f17383j.a(this.f2238p, 1);
        a.d.f45a.a(this.f2232j, 1);
        u0.c.f17374a.a(this.f2229g, 1);
        w0.e.f17820f.a(this.f2229g, 1);
        u0.b.H3 = 2;
        y0.h.Y(32, true);
        a.i.a0(100L);
        a.i.Z("audio.hw.allow_close", "0");
        C();
        u0.c.A.a(new c(), 0);
    }

    public void y(int i2) {
        Settings.Global.putInt(App.c().getContentResolver(), "airplane_mode_on", i2 != 0 ? 1 : 0);
        Intent intent = new Intent(Intent.ACTION_AIRPLANE_MODE_CHANGED);
        intent.putExtra("state", i2 != 0);
        App.c().sendBroadcast(intent);
    }

    public final void z() {
        boolean z2 = TextUtils.isEmpty(SystemProperties.get("ro.fixed.wifi", ProxyProperties.LOCAL_EXCL_LIST)) ? "true".equals(SystemProperties.get("persist.modem.disable", "false")) : "1".equals(SystemProperties.get("ro.fixed.wifi", ProxyProperties.LOCAL_EXCL_LIST));
        u0.d.m0("com.mirrtalk.app", !z2);
        u0.d.m0("com.syu.unicar", !z2);
    }
}
