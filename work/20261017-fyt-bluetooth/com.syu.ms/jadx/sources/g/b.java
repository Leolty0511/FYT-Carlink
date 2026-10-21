package g;

import android.hardware.Camera;
import android.media.AudioTrack;
import android.media.MediaPlayer;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.SystemProperties;
import android.os.UEventObserver;
import android.util.Log;
import app.App;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import e1.q;
import o1.q0;

/* JADX INFO: loaded from: classes.dex */
public class b implements g.g {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f2199n = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2200a = "ChipPX5";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f2201b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f2202c = new RunnableC0044b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f2203d = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2204e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2205f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2206g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f2207h = new d();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Runnable f2208i = new e();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final UEventObserver f2209j = new f();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f2210k = new g();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public MediaPlayer f2211l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public AudioTrack f2212m;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.n4 == 0) {
                if (u0.b.J0 == 1 || !SystemProperties.getBoolean("sys.fyt.dvr", false)) {
                    b.this.r(1);
                    boolean unused = b.f2199n = true;
                    return;
                }
                return;
            }
            if (b.f2199n) {
                b.this.r(0);
                boolean unused2 = b.f2199n = false;
            }
            u0.b.H3 = 2;
            y0.h.Y(32, true);
            a.i.a0(100L);
            b.this.t();
            b.this.v();
        }
    }

    /* JADX INFO: renamed from: g.b$b, reason: collision with other inner class name */
    public class RunnableC0044b implements Runnable {
        public RunnableC0044b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.b.f16e0 != 0) {
                b.this.x();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            int i2;
            boolean z2;
            if (ToolsJni.cmd_32_get_boot_reverse_status() == 1) {
                b.this.f2206g = true;
                return;
            }
            if (b.this.f2206g) {
                b.this.f2206g = false;
            }
            if (u0.b.f17347o != 0) {
                i2 = 1;
            } else {
                i2 = (u0.b.o4 == 0 || u0.b.f17320f == 0) ? 0 : u0.b.o4;
            }
            if (b.this.f2205f != i2) {
                b.this.f2205f = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (i2 >= 0 && i2 < 11 && (b.this.f2204e != i2 || z2)) {
                b.this.f2204e = i2;
                o1.j.e(o1.l.a(), b.this.f2208i);
                o1.j.b(o1.l.a(), b.this.f2208i, 0L);
            }
            if (i2 != 0) {
                Log.d("LG", "11DataMain.sSignalOn = " + u0.b.r4);
                u0.d.I3(69, u0.b.r4);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q0.O(b.this.f2204e);
        }
    }

    public class f extends UEventObserver {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e1.a.f1657b.f();
            }
        }

        public f() {
        }

        @Override // android.os.UEventObserver
        public void onUEvent(UEventObserver.UEvent uEvent) {
            String string = uEvent.toString();
            if (string == null) {
                return;
            }
            if (!string.contains("car-reverse")) {
                if (string.contains("Gsensor=wakeup")) {
                    a.f.p().s("Gsensor=wakeup Gsensor=wakeup Gsensor=wakeup");
                    u0.d.n0(1);
                    s0.d.c(1);
                    return;
                } else if (string.contains("dcam-err")) {
                    a.f.p().s("dcam-err dcam-err dcam-err ");
                    return;
                } else {
                    if (string.contains("FYT_TW9992_RESET=COMPLETE")) {
                        u0.d.J3(45, new int[]{4}, null, new String[]{"FYT_TW9992_RESET=COMPLETE BSP 要求重刷参数"});
                        a.f.p().s("9992复位成功 重刷参数 ");
                        o1.k.a().postDelayed(new a(), 100L);
                        return;
                    }
                    return;
                }
            }
            String strS = b.this.s(uEvent.toString(), "GPIO_STATE");
            if (strS == null || a.b.f16e0 == 0) {
                return;
            }
            if (strS.equals(Camera.Parameters.FLASH_MODE_ON)) {
                a.f.p().s("开始倒车");
                if (ToolsJni.cmd_32_get_boot_reverse_status() == 1) {
                    Log.d(b.this.f2200a, "camera it is using,return");
                    return;
                } else {
                    b.this.x();
                    u0.d.C(1);
                    return;
                }
            }
            if (strS.equals("over")) {
                g.f.v(b.this.f2210k);
                a.f.p().s("结束倒车");
                if (SystemProperties.get("sys.car.reverse", "0").equals("2")) {
                    u0.d.C(0);
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ToolsJni.cmd_32_get_boot_reverse_status() == 1 || q.f1823n) {
                return;
            }
            u0.d.C(1);
            g.f.v(b.this.f2210k);
        }
    }

    @Override // g.g
    public void a() {
        u0.c.f17379f.d(this.f2207h);
        d1.e.f1579a.d(this.f2203d);
        u0.c.f17376c.d(this.f2207h);
        u0.c.f17383j.d(this.f2207h);
        a.d.f45a.d(this.f2202c);
        u0.c.f17381h.d(this.f2201b);
    }

    @Override // g.g
    public void b() {
        q0.f16953b = 50;
        y0.f.V = 1;
        u0.b.E3 = false;
        try {
            this.f2209j.startObserving("GPIO_NAME=car-reverse GPIO_STATE=on");
            this.f2209j.startObserving("GPIO_NAME=car-reverse GPIO_STATE=over");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        u0.b.H3 = 2;
        y0.h.Y(32, true);
        a.i.a0(100L);
        t();
        this.f2204e = -1;
        u0.c.f17379f.a(this.f2207h, 0);
        d1.e.f1579a.a(this.f2203d, 1);
        u0.c.f17376c.a(this.f2207h, 0);
        u0.c.f17383j.a(this.f2207h, 1);
        a.d.f45a.a(this.f2202c, 1);
        u0.c.f17381h.a(this.f2201b, 1);
    }

    public void r(int i2) {
    }

    public final String s(String str, String str2) {
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

    public final void t() {
        u();
        int minBufferSize = ((AudioTrack.getMinBufferSize(48000, 12, 2) + 255) >> 8) << 8;
        if (minBufferSize < 4096) {
            minBufferSize = 4096;
        }
        AudioTrack audioTrack = new AudioTrack(5, 48000, 12, 2, minBufferSize, 0);
        this.f2212m = audioTrack;
        byte[] bArr = new byte[minBufferSize];
        audioTrack.write(bArr, 0, minBufferSize);
        if (this.f2212m.getPlayState() != 3) {
            this.f2212m.play();
        }
        this.f2212m.write(bArr, 0, minBufferSize);
    }

    public final void u() {
        w();
        try {
            Uri uri = Uri.parse("android.resource://" + App.c().getApplicationContext().getPackageName() + "/" + R.raw.test);
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f2211l = mediaPlayer;
            mediaPlayer.setDataSource(App.c(), uri);
            this.f2211l.setAudioStreamType(5);
            this.f2211l.prepare();
            this.f2211l.start();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void v() {
        w();
        AudioTrack audioTrack = this.f2212m;
        if (audioTrack != null) {
            audioTrack.stop();
            this.f2212m.flush();
            this.f2212m.release();
            this.f2212m = null;
        }
    }

    public final void w() {
        MediaPlayer mediaPlayer = this.f2211l;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f2211l.reset();
            this.f2211l.release();
            this.f2211l = null;
        }
    }

    public final void x() {
        SystemProperties.set("sys.car.reverse", "2");
    }
}
