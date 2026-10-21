package chip;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.hardware.Camera;
import android.location.LocationManager;
import android.media.MediaPlayer;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UEventObserver;
import android.provider.Settings;
import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import app.App;
import base.Configure;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import k0.nt;
import k0.ot;
import k0.qt;
import module.sound.AudioDevice;
import module.sound.C2313;
import module.sound.C32107;
import module.sound.C32107S;
import module.sound.C3702;
import module.sound.C7729;
import module.sound.C8288;
import o1.h0;
import o1.n0;
import o1.o0;
import o1.q0;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
public class Chip extends UEventObserver implements g.g, o1.s {

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f591d0 = 300;
    public int[] C;
    public Looper J;
    public Handler K;
    public MediaPlayer Y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public h0 f592a;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f606l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Integer f594b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f596c = "/dev/i2c-0";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f598d = "/dev/i2c-4";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f599e = "/dev/ttyS1";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f600f = "/dev/ttyS0";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f601g = "/dev/ttyS1";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f602h = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f603i = "/dev/ttyS2";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f604j = "/dev/ttyS1";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f605k = "2850";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f607m = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f608n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public HashMap<String, b.c> f609o = new HashMap<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public HashMap<String, i1.b0> f610p = new HashMap<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f611q = 68;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f612r = 64;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Handler f613s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Looper f614t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f615u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public o1.y f616v = new o1.y();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f617w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f618x = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public e0 f619y = new e0();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public f1.o f620z = null;
    public int A = 0;
    public boolean B = false;
    public int D = -1;
    public boolean E = false;
    public final Runnable F = new k();
    public final Runnable G = new v();
    public final Runnable H = new w();
    public final Runnable I = new x();
    public AtomicBoolean L = new AtomicBoolean(false);
    public final Runnable M = new y();
    public Runnable N = new z();
    public Runnable O = new a0();
    public Runnable P = new b0();
    public Runnable Q = new c0();
    public final Runnable R = new a();
    public final Runnable S = new b();
    public final Runnable T = new c();
    public final Runnable U = new e();
    public final Runnable V = new f();
    public final Runnable W = new g();
    public final Runnable X = new h();
    public d0 Z = null;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Runnable f593a0 = new m();

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final o1.p f595b0 = new n();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final Runnable f597c0 = new o();

    public enum UEventKey {
        REVERSING("GPIO_STATE");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f623a;

        UEventKey(String str) {
            this.f623a = str;
        }
    }

    public enum UEventName {
        REVERSING("car-reverse"),
        DCAMERR("dcam=err"),
        TW9992RESET("FYT_TW9992_RESET=COMPLETE"),
        TW9992RESET2("FYT_TW9992_RESET=COMPLETE2"),
        TW9992RESET0("FYT_TW9992_RESET=COMPLETE0"),
        ENTERSLEEP("Gsensor=wakeup"),
        ENTERRADIO("RADIOTAENTER"),
        EXITRADIO("RADIOTAEXIT"),
        ROTATIONANHLE0("SENSOR_STATE=0"),
        ROTATIONANHLE1("SENSOR_STATE=1"),
        ROTATIONANHLE2("SENSOR_STATE=2"),
        ROTATIONANHLE3("SENSOR_STATE=3"),
        LT9611C_INTERRUPT("REPORT_EVENT=lt6911 IIC_STATE=enable"),
        EV6202RESET("EV6202_NAME=rst EV6202_STATE=end");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f639a;

        UEventName(String str) {
            this.f639a = str;
        }

        public String b() {
            return this.f639a;
        }
    }

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f640a = false;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("chip", "initImage  DataMain.sSleepWakeup: " + u0.b.n4 + " DataMain.sMcuOn : " + u0.b.f17320f);
            boolean z2 = u0.b.n4 != 0;
            if (z2 != this.f640a) {
                if (f1.o.g().m() && z2) {
                    f1.o.g().k();
                    u0.c.f17383j.a(Chip.this.Q, 1);
                    this.f640a = z2;
                } else {
                    if (f1.o.g().m()) {
                        f1.o.g().r();
                        this.f640a = z2;
                        return;
                    }
                    e1.l lVar = e1.a.f1657b;
                    if (lVar == null || !(lVar instanceof e1.c)) {
                        return;
                    }
                    e1.c cVar = (e1.c) lVar;
                    this.f640a = z2;
                    if (z2) {
                        cVar.b();
                    } else {
                        cVar.d();
                    }
                }
            }
        }
    }

    public class a0 implements Runnable {

        public class a implements Runnable {

            /* JADX INFO: renamed from: chip.Chip$a0$a$a, reason: collision with other inner class name */
            public class RunnableC0016a implements Runnable {
                public RunnableC0016a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    y0.h.Y(1, (a.b.f16e0 == 1 && u0.b.n4 == 1 && u0.b.f17323g == 1) ? false : true);
                }
            }

            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Chip chip2 = Chip.this;
                if (chip2.f607m) {
                    chip2.L();
                }
                o1.l.a().postDelayed(new RunnableC0016a(), InputMethodManager.INPUT_METHOD_NOT_RESPONDING_TIMEOUT);
            }
        }

        public a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.b.f16e0 == 1 && u0.b.n4 == 1 && u0.b.f17323g == 1) {
                Chip.this.K.postDelayed(new a(), 2000L);
            } else {
                y0.h.Y(1, true);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PowerManager powerManagerR = a.f.r();
            o1.l.a().removeCallbacks(this);
            if (u0.b.f17323g != 1) {
                Log.e("Boot", "001 screen on manager.isInteractive() : " + powerManagerR.isInteractive());
                u0.d.k3(powerManagerR.isInteractive() ? 1 : 0);
            }
            Log.e("Boot", "001 DataApp.sBootAnimOver : " + a.b.f16e0 + "  DataMain.sScreenOn : " + u0.b.f17323g);
            if (u0.b.f17323g != 1) {
                o1.l.a().postDelayed(this, 200L);
            }
        }
    }

    public class b0 implements Runnable {
        public b0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.b.f16e0 != 1) {
                return;
            }
            Handler handler = Chip.this.K;
            if (handler != null) {
                handler.removeCallbacks(this);
            }
            Log.e("chip", "    =======>>>  reversingTakeOver =  " + Chip.this.L + "     state:   " + ToolsJni.cmd_32_get_boot_reverse_status());
            if (Chip.this.L.get()) {
                return;
            }
            if (ToolsJni.cmd_32_get_boot_reverse_status() == 0 && u0.b.k4 == 0) {
                if (s0.o("sys.car.reverse", "0").equals("2")) {
                    Chip.this.K();
                } else {
                    s0.F("sys.car.reverse", "2");
                }
            }
            Handler handler2 = Chip.this.K;
            if (handler2 != null) {
                handler2.postDelayed(this, 200L);
            }
        }
    }

    public class c implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.e("wake", "==============================>>>>   1111111");
                if (u0.b.n4 == 1) {
                    Chip.this.g(0);
                    Chip.this.H(true);
                }
            }
        }

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.n4 == 0) {
                String str = SystemProperties.get("persist.sys.syu.thirdplayer", ProxyProperties.LOCAL_EXCL_LIST);
                if (!str.isEmpty() && !a.i.u(str)) {
                    SystemProperties.set("persist.sys.syu.thirdplayer", ProxyProperties.LOCAL_EXCL_LIST);
                }
                boolean z2 = u0.b.J0 == 1;
                Log.e("wake", "==============================>>>>   1111111     sleepAirplane:" + z2);
                if (z2 && !Chip.this.e()) {
                    Chip.this.g(1);
                }
                Chip.this.H(false);
                return;
            }
            o1.l.a().removeCallbacks(Chip.this.S);
            if (u0.b.f17323g != 1) {
                o1.l.a().postDelayed(Chip.this.S, 100L);
            }
            Log.e("wake", "==============================>>>>   1111111     time:" + SystemClock.elapsedRealtime());
            if (!Chip.this.e()) {
                Chip.this.H(true);
                return;
            }
            int i2 = SystemClock.elapsedRealtime() < 120000 ? 10000 : 0;
            if (i2 <= 0) {
                Log.e("wake", "==============================>>>>   222222");
                Chip.this.g(0);
                Chip.this.H(true);
            } else {
                Handler handler = Chip.this.K;
                if (handler != null) {
                    handler.postDelayed(new a(), i2);
                }
            }
        }
    }

    public class c0 implements Runnable {
        public c0() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            int iU;
            Log.e("chip", "   ==========>>>    startCheck    00  reversingTakeOver :  " + Chip.this.L + "    DataMain.sHostBackcar =  " + u0.b.f17347o);
            Log.e("chip", "   ==========>>>    startCheck    00   DataMain.sVideoId : " + u0.b.o4 + " DataMain.sMcuOn: " + u0.b.f17320f + " DataMain.sWhat: " + u0.b.p4);
            if (Chip.this.L.get()) {
                boolean zO = false;
                boolean z2 = u0.b.f17347o != 0;
                if (f1.o.g().m()) {
                    if (u0.b.p4 == 0 && u0.b.o4 != u0.b.p4) {
                        u0.b.p4 = u0.b.o4;
                    }
                    f1.o.g().F(u0.b.p4, u0.b.o4);
                    if (u0.b.p4 != 0) {
                        u0.b.p4 = 0;
                    }
                    return;
                }
                if (z2) {
                    iU = 1;
                } else {
                    iU = (u0.b.o4 == 0 || u0.b.f17320f == 0) ? 0 : u0.b.o4;
                }
                Log.e("chip", "   ==========>>>    startCheck    00   videoId : " + iU);
                if (e1.a.f1657b instanceof e1.c) {
                    Log.e("chip", "   ==========>>>    startCheck    00 ");
                    e1.c cVar = (e1.c) e1.a.f1657b;
                    if (iU == 1) {
                        Log.e("chip", "   ==========>>>  sync back Car videoChannel    1 ");
                        iU = cVar.u();
                        u0.d.S3(iU, 1);
                    }
                    if (iU != 0) {
                        if (iU != cVar.f1663e || iU == cVar.u()) {
                            int i2 = cVar.f1663e;
                            if (i2 != 0 && i2 != cVar.u()) {
                                cVar.a();
                                a.i.a0(20L);
                            }
                            String str = (u0.b.f17356r == 0 || iU != cVar.u()) ? "0" : "1";
                            s0.F("sys.fyt.cvbs.mirror", str);
                            s0.F("persist.lsec.cvbs.mirror", str);
                            a.i.a0(20L);
                            cVar.c(iU);
                        }
                        cVar.A();
                    } else {
                        e1.l lVar = e1.a.f1657b;
                        if (lVar != null) {
                            zO = ((e1.c) lVar).o();
                        }
                        Log.e("chip", "   ==========>>>  sync back Car reversing : " + zO);
                        if (zO) {
                            cVar.a();
                            cVar.c(cVar.u());
                            cVar.A();
                        } else {
                            cVar.B();
                            cVar.a();
                        }
                    }
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.b();
        }
    }

    public interface d0 {
        void a();
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class e0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f652a;

        public e0() {
        }

        public void a(int i2) {
            this.f652a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f652a;
            Chip chip2 = Chip.this;
            if (i2 != chip2.f615u) {
                chip2.f615u = i2;
                Log.e("chip", "========== ReversingFlagSync run: ");
                Chip.this.f616v.c();
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.c.f17383j.a(Chip.this.Q, 1);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            q1.a.f("/sys/fytver/bl_en", "1");
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.u.k();
        }
    }

    public class k implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f659a = false;

        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = Chip.this.f615u != 0;
            if (this.f659a != z2) {
                this.f659a = z2;
                Log.e("chip", "========== postReversing: ");
                Chip.this.P(this.f659a);
            }
        }
    }

    public class l implements MediaPlayer.OnCompletionListener {
        public l() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            Chip.this.O();
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Chip chip2 = Chip.this;
            int i2 = chip2.f617w;
            int i3 = nt.f8633a;
            if (i2 != i3) {
                chip2.f617w = i3;
                chip2.f592a.q(211, i3);
                Chip.this.f592a.e(211);
                int[] iArr = {s0.c(Chip.this.f617w, 3), s0.c(Chip.this.f617w, 2), s0.c(Chip.this.f617w, 1), s0.c(Chip.this.f617w, 0)};
                Log.e("MCU", "write Canbus mem Data: " + o1.b0.e(iArr, 0, 4) + " len : 4");
                ToolsJni.cmd_149_write_data(s0.r(iArr), 15);
            }
        }
    }

    public class n implements o1.p {
        public n() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = new byte[146];
                if (bArr.length == 145) {
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    byte b2 = 0;
                    for (byte b3 : bArr) {
                        b2 = (byte) (b2 + b3);
                    }
                    bArr2[145] = b2;
                }
                Log.e("MCU", "write steer mem Data: " + o1.b0.d(bArr2, 0, 146) + " len : 146");
                Chip.this.f592a.r(212, s0.e(bArr2));
                Chip.this.f592a.e(212);
                ToolsJni.cmd_149_write_data(bArr2, 19);
            } catch (Exception unused) {
            }
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f != 0) {
                Chip.this.D();
            }
        }
    }

    public class p implements o1.p {
        public p() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                byte bByteValue = ((Integer) obj).byteValue();
                ToolsJni.cmd_149_write_data(new byte[]{bByteValue}, 14);
                if (g.e.p() == 48 || g.e.j(65) || g.e.j(66) || g.e.j(71) || g.e.j(67) || g.e.j(70) || s0.o("ro.fyt.realplatform", ProxyProperties.LOCAL_EXCL_LIST).equalsIgnoreCase("813CM")) {
                    ToolsJni.cmd_251_Normal_Io_Set(10, bByteValue & 1);
                    ToolsJni.cmd_251_Normal_Io_Set(11, (bByteValue >> 1) & 1);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class q implements o1.p {
        public q() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                ToolsJni.cmd_149_write_data(new byte[]{((Integer) obj).byteValue()}, 13);
            } catch (Exception unused) {
            }
        }
    }

    public class r implements o1.p {
        public r() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                int[] iArr = (int[]) obj;
                ToolsJni.cmd_149_write_data(new byte[]{(byte) iArr[1], (byte) iArr[2]}, iArr[0] == 0 ? 165 : 167);
            } catch (Exception unused) {
            }
        }
    }

    public class s implements o1.p {
        public s() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                ToolsJni.cmd_149_write_data(new byte[]{(byte) ((Integer) obj).intValue()}, 172);
            } catch (Exception unused) {
            }
        }
    }

    public class t implements o1.p {
        public t() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                byte[] bArr = new byte[1];
                bArr[0] = (byte) (((Boolean) obj).booleanValue() ? 146 : 147);
                ToolsJni.cmd_149_write_data(bArr, 173);
            } catch (Exception unused) {
            }
        }
    }

    public class u implements o1.p {
        public u() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                int[] iArr = (int[]) obj;
                int i2 = 1;
                if (s0.h(iArr, 1) && iArr[0] == 0) {
                    byte[] bArr = new byte[1];
                    if (iArr[1] != 1) {
                        i2 = 0;
                    }
                    bArr[0] = (byte) i2;
                    ToolsJni.cmd_149_write_data(bArr, 174);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class v implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f671a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f672b = -1;

        public v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = (u0.b.f17320f == 1 && u0.b.n4 == 1) ? 1 : 0;
            if (this.f672b != i2) {
                this.f672b = i2;
                if (i2 == 1) {
                    if (this.f671a > 0) {
                        ToolsJni.cmd_251_Normal_Io_Set(9, 1);
                        this.f671a = -1;
                        return;
                    }
                    return;
                }
                int i3 = y0.f.H;
                if (i3 == 1) {
                    this.f671a = i3;
                    ToolsJni.cmd_251_Normal_Io_Set(9, 0);
                }
            }
        }
    }

    public class w implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f674a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f675b = -1;

        public w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = (u0.b.f17320f == 1 && u0.b.n4 == 1) ? 1 : 0;
            if (this.f675b != i2) {
                this.f675b = i2;
                if (i2 == 1) {
                    if (this.f674a > 0) {
                        q0.h(1);
                        this.f674a = -1;
                        return;
                    }
                    return;
                }
                int i3 = w0.d.C;
                if (i3 == 1) {
                    this.f674a = i3;
                    q0.h(0);
                }
            }
        }
    }

    public class x implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f677a = 0;

        public x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Chip chip2 = Chip.this;
            if (chip2.A > 0 && this.f677a == 1) {
                chip2.B = false;
                chip2.A = 0;
                s0.F("sys.syu.radio.ta", "false");
            }
            this.f677a = u0.b.D;
        }
    }

    public class y implements Runnable {
        public y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = w0.d.f17789a;
            if (i2 == 1 || i2 == 0) {
                y0.f.f18090z0[1] = 0;
                return;
            }
            boolean z2 = SystemProperties.getInt("persist.fyt.externalfm", 0) != 1;
            Chip.this.S(z2);
            if (!z2) {
                y0.f.f18090z0[1] = 0;
                return;
            }
            y0.f.f18090z0[1] = 6;
            AudioDevice audioDeviceW = AudioDevice.W();
            if (audioDeviceW == null) {
                return;
            }
            if ((audioDeviceW instanceof C32107) || (audioDeviceW instanceof C32107S)) {
                audioDeviceW.L0(1, C32107.CHANNEL.MUSIC.f15215a);
                return;
            }
            if (audioDeviceW instanceof module.sound.a) {
                audioDeviceW.L0(1, 15);
                return;
            }
            if (audioDeviceW instanceof C3702) {
                audioDeviceW.L0(1, C3702.CHANNEL.E2.f15432a);
                return;
            }
            if (audioDeviceW instanceof C2313) {
                audioDeviceW.L0(1, C2313.CHANNEL.IN1.f15181a);
            } else if (audioDeviceW instanceof C8288) {
                audioDeviceW.L0(1, C8288.CHANNLE.GUSB.f16054a);
            } else if (audioDeviceW instanceof C7729) {
                audioDeviceW.L0(1, C7729.CHANNEL.IN5.f15571a);
            }
        }
    }

    public class z implements Runnable {
        public z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17351p0 == 1) {
                q1.a.a("/cache/radio/.rdsmsg");
                int i2 = u0.b.I3;
                u0.b.H3 = i2;
                y0.h.Y(32, i2 > 0);
            }
        }
    }

    public Chip() {
        this.f606l = ProxyProperties.LOCAL_EXCL_LIST;
        this.C = new int[]{85, 90};
        this.J = null;
        this.K = null;
        this.C = new int[]{85, 90};
        try {
            startObserving("GPIO_NAME=car-reverse GPIO_STATE=on");
            startObserving("GPIO_NAME=car-reverse GPIO_STATE=over");
            startObserving("Gsensor=wakeup");
            startObserving("FYT_TW9992_RESET=COMPLETE");
            startObserving("TA-NAME=fmta-event TA_STATE=RADIOTAEXIT");
            startObserving("TA-NAME=fmta-event TA_STATE=RADIOTAENTER");
            startObserving("SENSOR_NAME=lsec-orientation SENSOR_STATE=0");
            startObserving("SENSOR_NAME=lsec-orientation SENSOR_STATE=1");
            startObserving("SENSOR_NAME=lsec-orientation SENSOR_STATE=2");
            startObserving("SENSOR_NAME=lsec-orientation SENSOR_STATE=3");
            startObserving("REPORT_EVENT=lt6911 IIC_STATE=enable");
            startObserving(UEventName.EV6202RESET.f639a);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f606l = s0.o("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
        V();
        this.f592a = new h0(getClass().getSimpleName());
        HandlerThread handlerThread = new HandlerThread("image_check_thread");
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        this.J = looper;
        this.K = new Handler(looper);
        u0.i iVarL3 = u0.i.l3();
        if (iVarL3 != null) {
            iVarL3.E3(!g.e.j(61) && Configure.Property.BACKLIGHT_LINKAGE.b(true));
            iVarL3.c3();
        }
        i();
    }

    public final String A(String str, String str2) {
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

    public int[] B() {
        return this.C;
    }

    public String C() {
        return this.f605k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void D() {
        boolean z2;
        u0.i iVarL3 = u0.i.l3();
        ToolsJni.cmd_148_read_data(2, 170);
        if (u0.b.f17305a) {
            z2 = true;
        } else {
            m1.c.i(1017);
            byte[] bArrCmd_148_read_data = ToolsJni.cmd_148_read_data(3, 1037);
            if (bArrCmd_148_read_data != null) {
                z2 = 170 == (bArrCmd_148_read_data[0] & 255) && s0.x(bArrCmd_148_read_data[1] & 255, bArrCmd_148_read_data[2] & 255) == 162;
                Log.e("MCU", "mem Data: " + o1.b0.d(bArrCmd_148_read_data, 0, bArrCmd_148_read_data.length) + " len : " + bArrCmd_148_read_data.length + " hasLocalMemory: " + z2);
            } else {
                Log.e("MCU", "No Mem Data!!");
                z2 = false;
            }
        }
        if (z2) {
            byte[] bArrCmd_148_read_data2 = ToolsJni.cmd_148_read_data(1, 14);
            if (bArrCmd_148_read_data2 != null && bArrCmd_148_read_data2.length > 0) {
                if (g.e.p() == 48 || g.e.j(65) || g.e.j(66) || g.e.j(71) || g.e.j(67) || g.e.j(70) || s0.o("ro.fyt.realplatform", ProxyProperties.LOCAL_EXCL_LIST).equalsIgnoreCase("813CM")) {
                    u0.d.e(bArrCmd_148_read_data2[0]);
                } else {
                    u0.b.f17331i1 = bArrCmd_148_read_data2[0];
                }
            }
            byte[] bArrCmd_148_read_data3 = ToolsJni.cmd_148_read_data(1, 13);
            if (bArrCmd_148_read_data3 != null && bArrCmd_148_read_data3.length > 0) {
                u0.b.f17328h1 = bArrCmd_148_read_data3[0];
            }
        }
        iVarL3.f17448a0.a(new p());
        iVarL3.Z.a(new q());
        if (!u0.b.f17305a) {
            if (z2) {
                byte[] bArrCmd_148_read_data4 = ToolsJni.cmd_148_read_data(2, 165);
                iVarL3.L3(0, bArrCmd_148_read_data4[0] & 255, bArrCmd_148_read_data4[1] & 255);
                byte[] bArrCmd_148_read_data5 = ToolsJni.cmd_148_read_data(2, 167);
                iVarL3.L3(1, bArrCmd_148_read_data5[0] & 255, bArrCmd_148_read_data5[1] & 255);
                u0.d.w3(ToolsJni.cmd_148_read_data(1, 172)[0] & 255);
                iVarL3.G3((ToolsJni.cmd_148_read_data(1, 173)[0] & 255) == 146);
            } else {
                iVarL3.L3(0, 19, 0);
                iVarL3.L3(0, 7, 0);
            }
        }
        iVarL3.K2(136, new r());
        iVarL3.K2(88, new s());
        iVarL3.K2(189, new t());
        if (g.e.j(70)) {
            iVarL3.K2(196, new u());
            if (z2) {
                byte[] bArrCmd_148_read_data6 = ToolsJni.cmd_148_read_data(1, 174);
                if (bArrCmd_148_read_data6 != null && bArrCmd_148_read_data6.length > 0) {
                    iVarL3.D3(bArrCmd_148_read_data6[0] & 1);
                }
            } else {
                iVarL3.D3(Configure.Property.S869_AMBIENT_ARM_SWITCH.b(true) ? 1 : 0);
            }
        }
        ot.f9019a.a(this.f593a0, 0);
        if (g.e.h() && z2) {
            byte[] bArrCmd_148_read_data7 = ToolsJni.cmd_148_read_data(4, 15);
            if (bArrCmd_148_read_data7 != null) {
                Log.e("MCU", "canbus mem Data: " + o1.b0.d(bArrCmd_148_read_data7, 0, bArrCmd_148_read_data7.length) + " len : " + bArrCmd_148_read_data7.length);
            }
            int iZ = (bArrCmd_148_read_data7 == null || bArrCmd_148_read_data7.length != 4) ? 0 : s0.z(bArrCmd_148_read_data7[0], bArrCmd_148_read_data7[1], bArrCmd_148_read_data7[2], bArrCmd_148_read_data7[3]);
            if (iZ == 0) {
                iZ = this.f592a.h(211, 0);
            }
            qt.J(iZ);
        }
        if (z2) {
            u0.c.Q.a(this.f595b0);
            byte[] bArrCmd_148_read_data8 = ToolsJni.cmd_148_read_data(146, 19);
            int[] iArrI = this.f592a.i(212);
            int length = iArrI == null ? 0 : iArrI.length;
            if (length == 146) {
                byte b2 = 0;
                for (int i2 = 0; i2 < 145; i2++) {
                    b2 = (byte) (b2 + bArrCmd_148_read_data8[i2]);
                }
                if ((b2 & 255) != (bArrCmd_148_read_data8[145] & 255)) {
                    bArrCmd_148_read_data8 = s0.r(iArrI);
                    ToolsJni.cmd_149_write_data(bArrCmd_148_read_data8, 19);
                }
            }
            if (bArrCmd_148_read_data8 != null) {
                Log.e("MCU", "read steer mem Data: " + o1.b0.d(bArrCmd_148_read_data8, 0, bArrCmd_148_read_data8.length) + " len : " + bArrCmd_148_read_data8.length);
            }
            if (bArrCmd_148_read_data8 != null && bArrCmd_148_read_data8.length == 146) {
                if (length != 146) {
                    this.f592a.r(212, s0.e(bArrCmd_148_read_data8));
                    this.f592a.e(212);
                }
                int[] iArr = new int[146];
                iArr[0] = 49;
                System.arraycopy(s0.e(bArrCmd_148_read_data8), 0, iArr, 1, 145);
                if (!g.e.j(48) && iArr[145] != 0) {
                    iArr[145] = 0;
                }
                z.k.s(iArr);
                Log.e("MCU", "send to mcu steer mem Data: " + o1.b0.e(iArr, 0, 146) + " len : 146");
            }
        }
        if (!u0.b.f17305a && !z2) {
            ToolsJni.cmd_149_write_data(new byte[]{-86, (byte) s0.c(162, 1), (byte) s0.c(162, 0)}, 1037);
            qt.J(this.f617w);
        }
        Log.e("MCU", String.format("812 DataMain.sHandbrakeEnable: %d; DataSound.sBeep: %d; DataSound.sAmp: %d", Integer.valueOf(u0.b.f17341m), Integer.valueOf(y0.f.f18073r), Integer.valueOf(y0.f.H)));
        int i3 = u0.b.f17341m;
        if (i3 >= 0) {
            u0.d.z0(i3);
        }
        int i4 = y0.f.f18073r;
        if (i4 >= 0) {
            y0.h.r(i4);
        }
        int i5 = y0.f.H;
        if (i5 >= 0) {
            y0.h.k(i5);
        }
        if (w0.d.C >= 0) {
            w0.d.f17790b.C(w0.d.C);
        }
        if (u0.b.f17305a || !m1.c.k(206)) {
            return;
        }
        byte[] bArrCmd_148_read_data9 = ToolsJni.cmd_148_read_data(1, 169);
        if (s0.f(bArrCmd_148_read_data9, 0)) {
            Log.e("MCU", "Read MCU_OPTIONS Data = " + o1.b0.d(bArrCmd_148_read_data9, 0, bArrCmd_148_read_data9.length) + " hasLocalMemory: " + z2);
            int iD = !z2 ? Configure.Property.SLEEP_WHEN_ACC_OFF.d(1) : bArrCmd_148_read_data9[0] & 255 & 1;
            Log.e("MCU", "Fixed MCU_OPTIONS Data = " + iD);
            if (u0.b.X != iD) {
                u0.d.W1(iD);
            }
        }
    }

    public boolean E(String str) {
        return false;
    }

    public boolean F() {
        return this.f606l.equals("817") || this.f606l.equals("602");
    }

    public void G() {
        HandlerThread handlerThread = new HandlerThread("Extra_Work_Thread");
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        this.f614t = looper;
        this.f613s = new Handler(looper);
    }

    public void H(boolean z2) {
        if (s0.l("sys.fyt.systemobd", false)) {
            if (z2) {
                BluetoothAdapter.getDefaultAdapter().enable();
            } else {
                BluetoothAdapter.getDefaultAdapter().disable();
            }
        }
    }

    public boolean I() {
        return this.f608n;
    }

    public void J(boolean z2) {
        if (Build.VERSION.SDK_INT < 19) {
            Settings.Secure.setLocationProviderEnabled(a.f.g(), LocationManager.GPS_PROVIDER, z2);
        } else {
            Settings.Secure.putInt(a.f.g(), Settings.Secure.LOCATION_MODE, z2 ? 2 : 0);
        }
    }

    public void K() {
        this.L.set(true);
        u0.c.f17376c.a(this.R, 1);
        o1.y yVar = u0.c.f17381h;
        yVar.a(this.R, 1);
        if (F()) {
            u0.c.f17383j.a(this.Q, 1);
        }
        yVar.a(this.T, 1);
        this.f616v.a(this.F, 1);
    }

    public void L() {
        Log.e("wake", "==============================>>>>   playNotificationSound2 ：  " + SystemClock.elapsedRealtime());
        try {
            Uri uri = Uri.parse("android.resource://" + App.c().getApplicationContext().getPackageName() + "/" + R.raw.audio_null);
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.Y = mediaPlayer;
            mediaPlayer.setDataSource(App.c(), uri);
            this.Y.setAudioStreamType(3);
            this.Y.setOnCompletionListener(new l());
            this.Y.prepare();
            this.Y.start();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean M() {
        return false;
    }

    public void N() {
        d0 d0Var = this.Z;
        if (d0Var != null) {
            d0Var.a();
        }
        h0.f fVar = h0.c.f2425b;
        if (fVar != null) {
            fVar.reset();
        }
        if (!g.e.l() || g.e.j(48) || g.e.j(58)) {
            return;
        }
        int[] iArrQ = s0.q(145, 255);
        iArrQ[144] = 0;
        Log.e("MCU", "reStartFactorySetting write mem Data: " + o1.b0.e(iArrQ, 0, iArrQ.length) + " len : " + iArrQ.length);
        ToolsJni.cmd_149_write_data(s0.r(iArrQ), 19);
    }

    public final void O() {
        MediaPlayer mediaPlayer = this.Y;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.Y.reset();
            this.Y.release();
            this.Y = null;
        }
    }

    public void P(boolean z2) {
        Log.e("chip", "reserving   to Enable : " + z2 + "   tatkOver: " + s0.o("sys.car.reverse", "0"));
        if (!z2) {
            if ("2".equals(s0.o("sys.car.reverse", "0")) && !f1.o.g().q(false)) {
                e1.l lVar = e1.a.f1657b;
                if (lVar instanceof e1.c) {
                    ((e1.c) lVar).x(false);
                    return;
                }
                return;
            }
            return;
        }
        int iCmd_32_get_boot_reverse_status = ToolsJni.cmd_32_get_boot_reverse_status();
        Log.e("chip", "reserving  to Enable : " + z2 + "   status: " + iCmd_32_get_boot_reverse_status);
        if (iCmd_32_get_boot_reverse_status == 1) {
            return;
        }
        if (!"2".equals(s0.o("sys.car.reverse", "0"))) {
            s0.F("sys.car.reverse", "2");
        }
        if (f1.o.g().q(true)) {
            return;
        }
        e1.l lVar2 = e1.a.f1657b;
        if (lVar2 instanceof e1.c) {
            ((e1.c) lVar2).x(true);
        }
    }

    public void Q(boolean z2) {
        this.f608n = z2;
    }

    @Override // o1.s
    public void R(boolean z2) {
        if (z2) {
            return;
        }
        s0.F("sys.syu.radio.ta", "false");
    }

    public void S(boolean z2) {
        a.c.f39a = null;
    }

    public void T(d0 d0Var) {
        this.Z = d0Var;
    }

    public void U(boolean z2) {
        if (!z2) {
            m1.c.i(210);
        }
        this.f618x = z2;
    }

    public void V() {
    }

    @Override // g.g
    public void a() {
        o1.y yVar = u0.c.f17376c;
        yVar.d(this.H);
        o1.y yVar2 = u0.c.f17381h;
        yVar2.d(this.H);
        w0.e.f17820f.d(this.M);
        u0.c.f17379f.d(this.Q);
        yVar.d(this.R);
        yVar2.d(this.R);
        u0.c.f17383j.d(this.Q);
        yVar2.d(this.T);
        u0.c.M.d(this.N);
        o1.y yVar3 = a.d.f45a;
        yVar3.d(this.P);
        yVar3.d(this.O);
        yVar2.d(this.O);
        u0.c.f17378e.d(this.O);
        boolean zQ = o1.u.Q();
        a.b.f13d.i(zQ ? a.b.f22j : a.b.f28p);
        if (zQ) {
            u0.c.f17374a.d(this.I);
        }
    }

    @Override // g.g
    public void b() {
        if (m1.c.k(198)) {
            u0.c.f17376c.a(this.H, 0);
            u0.c.f17381h.a(this.H, 1);
        }
        u0.c.M.a(this.N, 1);
        u0.c.A.a(new d(), 0);
        w0.e.f17820f.a(this.M, 1);
        o1.y yVar = a.d.f45a;
        yVar.a(this.P, 1);
        u0.c.f17381h.a(this.O, 0);
        u0.c.f17378e.a(this.O, 0);
        yVar.a(this.O, 1);
        boolean zQ = o1.u.Q();
        a.b.f13d.a(zQ ? a.b.f22j : a.b.f28p, this);
        if (zQ) {
            u0.c.f17374a.a(this.I, 0);
        }
    }

    public boolean e() {
        return Settings.Global.getInt(App.c().getContentResolver(), "airplane_mode_on", 0) == 1;
    }

    public void g(int i2) {
        Log.e("wake", "==============================>>>>   airPlaneMode value：" + i2 + "  " + SystemClock.elapsedRealtime());
        Settings.Global.putInt(App.c().getContentResolver(), "airplane_mode_on", i2 != 0 ? 1 : 0);
        Intent intent = new Intent(Intent.ACTION_AIRPLANE_MODE_CHANGED);
        intent.setFlags(536870912);
        intent.putExtra("state", i2 != 0);
        App.c().sendBroadcast(intent);
        Log.e("wake", "==============================>>>>   end airPlaneMode value：" + i2 + "  " + SystemClock.currentThreadTimeMillis());
    }

    public void h(int i2, boolean z2) {
        int i3 = this.f615u;
        int i4 = z2 ? i3 | (i2 & 255) : i3 & (~(i2 & 255));
        Log.e("chip", "========== applayReversingFlag falg: " + i2 + " applay: " + z2);
        Log.e("chip", "========== applayReversingFlag reversingFlag: " + this.f615u + " to value: " + i4);
        this.f619y.a(i4);
        this.K.removeCallbacks(this.f619y);
        int iR = !this.f618x && i2 == 1 && z2 ? r(f591d0) : 0;
        Log.e("chip", "========== applayReversingFlag delayTime: " + iR + " imageH : " + this.K);
        this.K.postDelayed(this.f619y, (long) iR);
    }

    public void i() {
    }

    public void j(AudioDevice audioDevice) {
    }

    public void k(f1.o.c cVar) {
    }

    public int l() {
        return o0.a((int) (q0.n(this.D) / 1000.0f), 0, 255);
    }

    public boolean m(String str) {
        HashMap<String, b.c> map = this.f609o;
        if (map == null) {
            return false;
        }
        return map.containsKey(str);
    }

    public void n() {
        Looper looper = this.f614t;
        if (looper != null) {
            looper.quitSafely();
            this.f614t = null;
        }
    }

    public void o(boolean z2) {
        if (!this.f608n) {
            ToolsJni.cmd_31_fan_en(z2 ? 1 : 0);
            return;
        }
        int[] iArr = new int[2];
        iArr[0] = 124;
        iArr[1] = z2 ? 255 : 0;
        z.k.s(iArr);
    }

    @Override // android.os.UEventObserver
    public void onUEvent(UEventObserver.UEvent uEvent) throws Throwable {
        Log.e("chip", "=== onUEvent start!! ===");
        String string = uEvent.toString();
        a.f.p().t(LogType.MAIN, string);
        Log.e("chip", "Chip --------------->>  onUEvent   msg : " + string + "    \nDataVideo.sVideo:" + e1.a.f1657b);
        if (E(string)) {
            return;
        }
        int i2 = 1;
        if (string.contains(UEventName.REVERSING.f639a)) {
            String strA = A(string, UEventKey.REVERSING.f623a);
            if (u0.b.f17357r0 != 1) {
                if (Camera.Parameters.FLASH_MODE_ON.equals(strA)) {
                    qt.u0(1);
                    return;
                } else {
                    if ("over".equals(strA)) {
                        qt.u0(0);
                        return;
                    }
                    return;
                }
            }
            Log.e("chip", "onUEvent   Reversing : " + strA + "   tatkOver: " + s0.o("sys.car.reverse", "0"));
            if (Camera.Parameters.FLASH_MODE_ON.equals(strA)) {
                h(1, true);
            } else if ("over".equals(strA)) {
                if (u0.i.l3().s3() && u0.b.f17347o != 0) {
                    q1.a.f("/sys/fytver/bl_en", "0");
                    this.f613s.postDelayed(new i(), 600L);
                }
                h(1, false);
            }
        } else if (string.contains(UEventName.ENTERSLEEP.f639a)) {
            u0.d.n0(1);
            s0.d.c(1);
        } else if (string.contains(UEventName.DCAMERR.f639a)) {
            e1.l lVar = e1.a.f1657b;
            if (lVar != null && (lVar instanceof e1.c)) {
                if (u0.b.n4 == 0) {
                    return;
                }
                u0.d.o3(0);
                ((e1.c) e1.a.f1657b).q();
            }
        } else if (string.contains(UEventName.TW9992RESET2.f639a)) {
            if (u0.b.n4 == 1 && f1.o.g().p(true, 2)) {
                this.K.removeCallbacks(this.W);
                this.K.postDelayed(this.W, 300L);
            }
        } else if (string.contains(UEventName.TW9992RESET0.f639a)) {
            if (u0.b.n4 == 1 && f1.o.g().p(true, 0)) {
                this.K.removeCallbacks(this.U);
                this.K.postDelayed(this.U, 300L);
            }
        } else if (string.contains(UEventName.TW9992RESET.f639a)) {
            u0.d.J3(45, new int[]{4}, null, new String[]{"FYT_TW9992_RESET=COMPLETE BSP 要求重刷参数"});
            a.f.p().s("9992复位成功 重刷参数 ");
            if (u0.b.n4 == 1) {
                if (f1.o.g().p(true, 1)) {
                    this.K.removeCallbacks(this.V);
                    this.K.postDelayed(this.V, 300L);
                } else {
                    e1.l lVar2 = e1.a.f1657b;
                    if (lVar2 != null && (lVar2 instanceof e1.c)) {
                        ((e1.c) lVar2).y(true);
                        this.K.removeCallbacks(this.X);
                        this.K.postDelayed(this.X, 300L);
                    }
                }
            }
        } else if (string.contains(UEventName.ENTERRADIO.f639a)) {
            boolean zN0 = o1.u.n0();
            Log.e("chip", "TA Enter Radio -- radioIsTop:" + zN0);
            if (!zN0) {
                if (o1.u.Q()) {
                    int i3 = u0.b.D;
                    if (i3 == 3 || i3 == 8 || i3 == 7) {
                        this.A = i3;
                    }
                    this.B = o1.u.S(a.b.f22j);
                }
                o1.u.x0();
                s0.F("sys.syu.radio.ta", "true");
            }
        } else if (string.contains(UEventName.EXITRADIO.f639a)) {
            boolean zQ = o1.u.Q();
            boolean zN1 = o1.u.n0();
            boolean zL = s0.l("sys.syu.radio.ta", false);
            Log.e("chip", "TA Exit Radio -- radioIsTop:" + zN1 + " toDo: " + zL);
            if (zN1 && zL) {
                if (zQ) {
                    int i4 = 100;
                    int i5 = this.A;
                    if (i5 > 0) {
                        i4 = 800;
                        if (i5 == 3) {
                            o1.u.q();
                        } else if (i5 == 7) {
                            o1.u.w0();
                        } else if (i5 == 8) {
                            o1.u.i();
                        }
                        this.A = 0;
                    }
                    if (!this.B) {
                        this.K.postDelayed(new j(), i4);
                    }
                } else {
                    o1.u.k();
                }
            }
            s0.F("sys.syu.radio.ta", "false");
        } else if (string.contains("SENSOR_NAME=lsec-orientation")) {
            if (!string.contains(UEventName.ROTATIONANHLE1.f639a)) {
                if (string.contains(UEventName.ROTATIONANHLE2.f639a)) {
                    i2 = 2;
                } else {
                    i2 = string.contains(UEventName.ROTATIONANHLE3.f639a) ? 3 : 0;
                }
            }
            int i6 = ((i2 - ((SystemProperties.getInt("ro.sf.swrotation", 0) / 90) % 4)) + 4) % 4;
            ToolsJni.cmd_147_7026_control_write(10, i2);
            try {
                a.f.j().freezeRotation(i6);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            UEventName uEventName = UEventName.LT9611C_INTERRUPT;
            if (string.contains(uEventName.f639a)) {
                f1.q qVarE = f1.o.g().e(Configure.Property.CUSTOMER_PLATFORM.h(ProxyProperties.LOCAL_EXCL_LIST).equals("HDMI-RV") ? 13 : 9);
                if (qVarE != null) {
                    qVarE.x(uEventName.f639a);
                }
            } else if (string.contains(UEventName.EV6202RESET.f639a)) {
                x0.c.X2().Y2(string);
            }
        }
        Log.e("chip", "=== onUEvent end!! ==");
    }

    public b.c p(String str, int i2) {
        if (!m(str)) {
            this.f609o.put(str, new b.c(str, i2));
        }
        return this.f609o.get(str);
    }

    public i1.b0 q(String str, int i2) {
        if (!this.f610p.containsKey(str)) {
            this.f610p.put(str, new i1.b0(p(str, i2)));
        }
        i1.b0 b0Var = this.f610p.get(str);
        if (b0Var != null) {
            b0Var.h(i2);
            b0Var.c(s0.l("sys.syu.serial.mcuOn_delay", true));
        }
        return b0Var;
    }

    public final int r(int i2) {
        u0.i iVarL3 = u0.i.l3();
        return iVarL3 != null ? iVarL3.k3() : i2;
    }

    public synchronized void s(int[] iArr) {
        if (this.f594b != null && iArr != null && iArr.length != 0) {
            e1.l lVar = e1.a.f1657b;
            if (lVar != null && (lVar instanceof e1.c)) {
                e1.c cVar = (e1.c) lVar;
                int length = iArr.length / 2;
                for (int i2 = 0; i2 < length; i2++) {
                    int i3 = i2 * 2;
                    int i4 = i3 + 1;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    cVar.E(this.f594b.intValue(), iArr[i3], iArr[i4]);
                }
            }
        }
    }

    public String t(String str) {
        return this.f598d;
    }

    public String u() {
        return this.f602h;
    }

    public String v() {
        return this.f604j;
    }

    public String w() {
        return this.f596c;
    }

    public String x() {
        return this.f601g;
    }

    public int y(int i2) {
        return this.f612r;
    }

    public int z() {
        return this.f611q;
    }
}
