package module.sound;

import android.animation.ValueAnimator;
import android.net.LinkCapabilities;
import android.net.wifi.WifiStateMachine;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TimedRemoteCaller;
import base.Configure;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import k0.nt;
import k0.ot;
import o1.b0;
import o1.h0;
import o1.j0;
import o1.s0;
import plugins.BusKtv;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AudioDevice extends y0.e implements Runnable {
    public static int[] A0;
    public static int[] B0;
    public static final int[] C0;
    public static final int[] D0;
    public static int E0;
    public static int F0;
    public static int[] G0;
    public static boolean H0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static ArrayList<Integer> f15041z0;
    public boolean N;
    public boolean O;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15060j;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f15072p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[] f15074q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Handler f15076r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Looper f15078s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public h0 f15080t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f15042a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SparseArray<int[]> f15044b = new SparseArray<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray<int[]> f15046c = new SparseArray<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseIntArray f15048d = new SparseIntArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f15050e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f15052f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f15054g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f15056h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f15058i = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f15062k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f15064l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f15066m = {8, 8};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f15068n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[] f15070o = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f15082u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f15084v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f15086w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f15088x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f15090y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f15092z = 0;
    public boolean A = true;
    public boolean B = false;
    public boolean C = false;
    public boolean D = false;
    public boolean E = false;
    public int F = 0;
    public Integer G = null;
    public int H = 0;
    public int I = 0;
    public boolean J = false;
    public boolean K = true;
    public final Object L = new Object();
    public boolean M = false;
    public int[] P = null;
    public int Q = Integer.MIN_VALUE;
    public boolean R = true;
    public ValueAnimator S = null;
    public int T = -1;
    public int U = Integer.MIN_VALUE;
    public volatile int V = 0;
    public volatile int W = 0;
    public volatile int X = 255;
    public int Y = 8;
    public final int Z = 5;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f15043a0 = 10;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f15045b0 = 5;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final Object f15047c0 = new Object();

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final ValueAnimator.AnimatorUpdateListener f15049d0 = new j();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public AtomicInteger f15051e0 = new AtomicInteger();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final int f15053f0 = 26;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final int f15055g0 = 60;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f15057h0 = 5;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final Runnable f15059i0 = new k();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public Runnable f15061j0 = new l();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final Runnable f15063k0 = new m();

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Runnable f15065l0 = new n();

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public o1.p f15067m0 = new o();

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public Runnable f15069n0 = new p();

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public o1.p f15071o0 = new q();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public o1.p f15073p0 = new r();

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public o1.p f15075q0 = new a();

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final Runnable f15077r0 = new b();

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final Runnable f15079s0 = new c();

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public Runnable f15081t0 = new d();

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public Runnable f15083u0 = new e();

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public Runnable f15085v0 = new f();

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public Runnable f15087w0 = new g();

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final Runnable f15089x0 = new h();

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final Runnable f15091y0 = new i();

    public enum STORE {
        MODE,
        LOUDON,
        P2BASSON,
        SURRON,
        SURRMOED,
        SURRLEVEL,
        SURRGAIN,
        HPFFA,
        HPFFB,
        HPFRA,
        HPFRB,
        SBWLFREQ,
        SBWHFREQ,
        SBWLGAIN,
        SBWHGAIN,
        P2BFGAIN,
        P2BFFREQ,
        P2BRGAIN,
        P2BRFREQ,
        IIRA,
        IIRB,
        MIXON,
        TYPE,
        SUBWOOFON,
        RANGE,
        RANGE_LEVEL,
        DYNAMIC,
        HIGH_PITCH,
        CUSTOMS_EQ,
        CUSTOMS_EQ_MODE1,
        CUSTOMS_EQ_MODE2,
        CUSTOMS_EQ_MODE3,
        BAL_FADE,
        P2BASS,
        HIGH_FREQ_LIMITE,
        VOLUME_OFFSET,
        SPEAKER_GAINS,
        SURR_MODE0,
        SURR_MODE1,
        SURR_MODE2,
        SURR_MODE3,
        LOW_PASS_FILTERING,
        HIGH_PASS_FILTERING,
        VOL_OFFSET_LEVEL,
        SUBWOOF_SYNC,
        SUBWOOF_PHASE,
        SUBWOOF_QVAL,
        NOISE_GATE,
        STEREO_PAEAM,
        STEREO_ENABLE,
        SOUND_3D,
        VOCALS,
        CSAUTO_SRS,
        CSAUTO_FOC,
        CSAUTO_TRUBASS,
        CSAUTO_OTHERS,
        DLY_MIXER_LVL,
        DLY_MIXER_PHASE,
        DLY_MIXER_TAP,
        SURR_FIELD,
        EQ_CUSTOME_ONE,
        EQ_CUSTOME_ONE_EX,
        EQ_CUSTOME_TWO,
        EQ_CUSTOME_TWO_EX,
        EQ_CUSTOME_THREE,
        EQ_CUSTOME_THREE_EX,
        EQ_CUSTOME_FOUR,
        EQ_CUSTOME_FOUR_EX,
        EQ_CUSTOME_FIVE,
        EQ_CUSTOME_FIVE_EX,
        EQ_CUSTOME_SIX,
        EQ_CUSTOME_SIX_EX,
        EQ_CUSTOME_SEVEN,
        EQ_CUSTOME_SEVEN_EX,
        FREQ_CUT_MODE,
        FREQ_CUT_5_1CH,
        FREQ_CUT_2WAY,
        FREQ_CUT_3WAY,
        SPK_PHASE,
        SPK_LINK,
        LOWERING_NOISE,
        FILTER_CEN,
        FILTER_FRT,
        FILTER_REAR,
        FILTER_SUB,
        OPTICAL_DIRECT,
        OPTICAL_TYPE,
        VOLUME_OFFSET_UI,
        VOLUME_BEEP,
        SIZE
    }

    public class a implements o1.p {
        public a() {
        }

        @Override // o1.p
        public void d(Object obj) {
            int[] iArr = (int[]) obj;
            AudioDevice.this.L(iArr[0], iArr[1]);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = (u0.b.f17320f == 0 || u0.b.f17323g != 1 || u0.b.f17306a0 == 0) ? false : true;
            Log.e("soundMute", "  >>>>>>>>>>>>>>>>>>>>>>>>>>> enterSystemUnmute to: " + z2);
            y0.h.Y(4, z2 ^ true);
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile boolean f15147a = false;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.e("Audio", " load >>>>>>>>>>>>>>>>>>>>>>>>>>> AUDIO SETUP START");
                a.f.p().w(" load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP START  MCUON  ENTER !! ");
                AudioDevice audioDevice = AudioDevice.this;
                audioDevice.f15050e = false;
                audioDevice.k();
            }
        }

        public c() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            boolean z2 = (u0.b.f17320f == 0 || u0.b.f17323g != 1 || u0.b.f17306a0 == 0) ? false : true;
            Log.e("Audio", " >>>>>> AUDIO SETUP START >>>>>> old " + this.f15147a + " to: " + z2);
            if (!z2) {
                y0.h.Y(4, true);
            }
            Log.e("Audio", " load >>>>>>>>> AUDIO  DataMain.sMcuOn: " + u0.b.f17320f + " DataMain.sScreenOn : " + u0.b.f17323g + "  DataMain.sAccOn: " + u0.b.f17306a0);
            if (this.f15147a != z2) {
                o1.k.a().removeCallbacks(AudioDevice.this.f15077r0);
                this.f15147a = z2;
                if (this.f15147a) {
                    Handler handler = AudioDevice.this.f15076r;
                    if (handler != null) {
                        handler.post(new a());
                        Log.e("Audio", " load >>>>>>>>>>>>>>>>>>>>>>>>>>> Post enterSystemUnmute");
                        o1.k.a().postDelayed(AudioDevice.this.f15077r0, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                    }
                } else {
                    Log.e("Audio", " load >>>>>>>>>>>>>>>>>>>>>>>>>>> AUDIO DEVICE OFF");
                    AudioDevice.this.v0(true);
                    AudioDevice.this.f15050e = false;
                    y0.f.f18079u = 0;
                    y0.g.f18093c.c();
                    y0.g.f18106p.d(AudioDevice.this.f15067m0);
                    y0.g.f18104n.d(AudioDevice.this.f15071o0);
                    y0.g.f18105o.d(AudioDevice.this.f15073p0);
                    u0.c.f17374a.d(AudioDevice.this.f15081t0);
                    h0.d.f2463b.d(AudioDevice.this.f15083u0);
                    ot.f9020b.d(AudioDevice.this.f15069n0);
                    y0.h.M();
                    AudioDevice audioDevice = AudioDevice.this;
                    audioDevice.R = true;
                    audioDevice.Q = Integer.MIN_VALUE;
                }
            }
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15150a = 0;

        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (s0.l("persist.fyt.ui.txz", false)) {
                return;
            }
            if (AudioDevice.this.j0(u0.b.D) == 1) {
                a.f.f().abandonAudioFocus(null);
            } else {
                a.f.f().requestAudioFocus(null, 3, AudioDevice.E0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AudioDevice.this.j(null);
            AudioDevice audioDevice = AudioDevice.this;
            audioDevice.w0(h0.c.G != 1 ? audioDevice.f15062k : 1);
            Log.e("c32107", " =====>>   mNotifyBtPhoneWork : " + y0.f.L0 + "  DataSound.sFadeDst : " + y0.f.M0);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((u0.b.n4 != 0 && y0.f.U != 0) || AudioDevice.this.J) {
                y0.h.j0(AudioDevice.this.c1());
            }
            Handler handler = AudioDevice.this.f15076r;
            if (handler != null) {
                handler.removeCallbacks(this);
                AudioDevice.this.f15076r.postDelayed(this, 80L);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = u0.b.f17320f == 0 || u0.b.f17306a0 == 0 || u0.b.n4 == 0;
            Log.e("mute", String.format(">>>>>>>>>>>>>>>>>>>>>>  wakeup  DataMain.sMcuOn = %d,  DataMain.sAccOn = %d,  DataMain.sSleepWakeup = %d", Integer.valueOf(u0.b.f17320f), Integer.valueOf(u0.b.f17306a0), Integer.valueOf(u0.b.n4)));
            if (z2) {
                AudioDevice.this.v0(z2);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AudioDevice.this.v0(false);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17340l1 == 0) {
                AudioDevice audioDevice = AudioDevice.this;
                audioDevice.L0(12, audioDevice.V(5));
                AudioDevice audioDevice2 = AudioDevice.this;
                audioDevice2.L0(13, audioDevice2.V(5));
                AudioDevice audioDevice3 = AudioDevice.this;
                audioDevice3.L0(11, audioDevice3.V(5));
                return;
            }
            AudioDevice audioDevice4 = AudioDevice.this;
            audioDevice4.L0(12, audioDevice4.V(6));
            AudioDevice audioDevice5 = AudioDevice.this;
            audioDevice5.L0(13, audioDevice5.V(6));
            AudioDevice audioDevice6 = AudioDevice.this;
            audioDevice6.L0(11, audioDevice6.V(6));
        }
    }

    public class j implements ValueAnimator.AnimatorUpdateListener {
        public j() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            AudioDevice audioDevice = AudioDevice.this;
            if (iIntValue != audioDevice.U) {
                int i2 = audioDevice.T;
                audioDevice.T = i2 + 1;
                if (i2 % audioDevice.Y != 0) {
                    return;
                }
            }
            audioDevice.C1(iIntValue);
            AudioDevice audioDevice2 = AudioDevice.this;
            if (iIntValue == audioDevice2.U) {
                audioDevice2.U = Integer.MIN_VALUE;
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            if (y0.f.f18055i != 1) {
                AudioDevice audioDevice = AudioDevice.this;
                audioDevice.A1(audioDevice.f15054g, true);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.Z;
            if (i2 >= 0) {
                AudioDevice.this.f15051e0.set(i2);
                Handler handler = AudioDevice.this.f15076r;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: y0.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f17950a.b();
                        }
                    });
                    return;
                }
                return;
            }
            AudioDevice.this.f15051e0.set(u0.b.X1);
            if (y0.f.f18055i != 1) {
                AudioDevice audioDevice = AudioDevice.this;
                audioDevice.A1(audioDevice.f15054g, true);
            }
        }
    }

    public class l implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15159a = 1;

        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = AudioDevice.this.f15051e0.get();
            if (i2 < 60) {
                AudioDevice.this.f15051e0.set(60);
                this.f15159a = 1;
            } else if (i2 < 0 || i2 > 130) {
                this.f15159a = -1;
                AudioDevice.this.f15051e0.set(i2 + ((-1) * 5));
            } else {
                AudioDevice.this.f15051e0.set(i2 + (this.f15159a * 5));
            }
            Log.e("sound", "=============>>> speed : " + AudioDevice.this.f15051e0.get());
            AudioDevice audioDevice = AudioDevice.this;
            audioDevice.A1(audioDevice.f15054g, true);
            AudioDevice.this.f15076r.removeCallbacks(this);
            AudioDevice.this.f15076r.postDelayed(this, 1000L);
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y0.h.X(16, false);
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AudioDevice audioDevice = AudioDevice.this;
            if (!audioDevice.N && !audioDevice.l0(audioDevice.f15062k)) {
                AudioDevice.this.K0(0);
                return;
            }
            AudioDevice audioDevice2 = AudioDevice.this;
            if (audioDevice2.l0(audioDevice2.f15062k)) {
                int[] iArr = AudioDevice.this.f15074q;
                int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
                AudioDevice audioDevice3 = AudioDevice.this;
                audioDevice3.f15044b.put(audioDevice3.f15062k, iArrCopyOf);
                AudioDevice audioDevice4 = AudioDevice.this;
                int iOrdinal = audioDevice4.Q(audioDevice4.f15062k).ordinal();
                AudioDevice.this.f15080t.r(iOrdinal, iArrCopyOf);
                AudioDevice.this.f15080t.e(iOrdinal);
            }
        }
    }

    public class o implements o1.p {
        public o() {
        }

        @Override // o1.p
        public void d(Object obj) {
            AudioDevice.this.h(((int[]) obj)[0]);
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AudioDevice audioDevice = AudioDevice.this;
            if (audioDevice.f15050e) {
                int i2 = 1;
                boolean z2 = nt.W != 0;
                audioDevice.z0();
                int[] iArr = AudioDevice.this.f15066m;
                iArr[0] = y0.f.f18057j;
                iArr[1] = y0.f.f18061l;
                Log.e("c32107", " =====>>   balFade   : " + Arrays.toString(AudioDevice.this.f15066m) + " DataCanbus.sDriverOnRight: " + nt.W);
                if (Arrays.equals(AudioDevice.this.f15066m, AudioDevice.A0)) {
                    i2 = 0;
                } else if (!Arrays.equals(AudioDevice.this.f15066m, AudioDevice.B0)) {
                    i2 = -1;
                }
                int[] iArr2 = {4, 4};
                if (z2) {
                    // fill-array-data instruction
                    iArr2[0] = 12;
                    iArr2[1] = 4;
                }
                AudioDevice.A0 = iArr2;
                int[] iArr3 = {12, 4};
                if (z2) {
                    // fill-array-data instruction
                    iArr3[0] = 4;
                    iArr3[1] = 4;
                }
                AudioDevice.B0 = iArr3;
                if (i2 != -1) {
                    Log.e("c32107", " =====>>   fieldMode   : " + i2 + "   " + y0.f.L0 + "  DataSound.sFadeDst : " + y0.f.M0);
                    AudioDevice.this.P(i2);
                }
            }
        }
    }

    public class q implements o1.p {
        public q() {
        }

        @Override // o1.p
        public void d(Object obj) {
            int[] iArr = (int[]) obj;
            AudioDevice audioDevice = AudioDevice.this;
            audioDevice.M(iArr[0], iArr[1] - audioDevice.x0(iArr[0]));
        }
    }

    public class r implements o1.p {
        public r() {
        }

        @Override // o1.p
        public void d(Object obj) {
            int[] iArr = (int[]) obj;
            AudioDevice audioDevice = AudioDevice.this;
            audioDevice.O(iArr[0], iArr[1] - audioDevice.y0(iArr[0]));
        }
    }

    static {
        ArrayList<Integer> arrayList = new ArrayList<>();
        f15041z0 = arrayList;
        arrayList.add(0);
        f15041z0.add(9);
        f15041z0.add(10);
        f15041z0.add(11);
        f15041z0.add(12);
        f15041z0.add(13);
        A0 = new int[]{4, 4};
        B0 = new int[]{12, 4};
        C0 = new int[]{8, 8};
        D0 = new int[]{8, 12};
        E0 = 2;
        F0 = 10;
        H0 = true;
    }

    public AudioDevice(int i2, int i3) {
        this.f15060j = -1;
        this.f15072p = -1;
        this.f15074q = null;
        this.f15076r = null;
        this.f15078s = null;
        this.f15080t = null;
        this.N = true;
        this.O = false;
        z0.d.f18290d.a(LinkCapabilities.Role.DEFAULT);
        for (int i4 = 0; i4 < 20; i4++) {
            V0(i4, Configure.Property.VOLUME_BALANCE_OFFSET.e(i4, 0));
        }
        this.O = Configure.Property.BUTTON_SOUND_EFFECT_CUSTOM.b(false);
        this.N = Configure.Property.EQ_MULTI_CUSTOME.b(g.f.f(11));
        this.f15080t = new h0(getClass().getSimpleName());
        if (this.f15076r == null) {
            HandlerThread handlerThread = new HandlerThread("AudioDevice-thread");
            handlerThread.start();
            Looper looper = handlerThread.getLooper();
            this.f15078s = looper;
            this.f15076r = new Handler(looper);
        }
        this.f15060j = i2;
        this.f15072p = i3;
        if (i2 <= 0 || i3 <= 0) {
            throw new RuntimeException("EQ   :   band  < = 0 or  eqParamNum <= 0!!");
        }
        this.f15074q = new int[i2 * i3];
        F();
    }

    public static void Q0(int[] iArr) {
        G0 = iArr;
        AudioDevice audioDeviceW = W();
        if (audioDeviceW != null) {
            audioDeviceW.x(iArr);
        }
    }

    public static AudioDevice W() {
        y0.e eVar = y0.f.f18034b;
        if (eVar == null || !(eVar instanceof AudioDevice)) {
            return null;
        }
        return (AudioDevice) eVar;
    }

    public void A(int i2) {
        int iMax = Math.max(0, Math.min(i2, 10));
        if (iMax != this.f15045b0) {
            this.f15045b0 = iMax;
            N0();
            STORE store = STORE.VOLUME_BEEP;
            G0(store, iMax);
            this.f15080t.e(store.ordinal());
        }
        y0.h.s0(95, iMax);
    }

    public void A0() {
    }

    public void A1(int i2, boolean z2) {
        f0.a aVarY2 = f0.c.X2().Y2();
        if (aVarY2 != null) {
            aVarY2.b(i2, -1, this.f15057h0, this.f15051e0.get());
        }
    }

    public boolean B() {
        return false;
    }

    public void B0(int i2, int i3, int i4) {
        y0.h.s0(36, i2, i3, i4);
    }

    public void B1(int i2, boolean z2) {
        ValueAnimator valueAnimator;
        int iM1 = m1(i2);
        Log.e("Sound", "=====>>>volumeAnimatorExec vol : " + i2 + " this.vol:" + this.f15054g + " target:" + iM1 + " tempVol:" + this.Q + " targetVol:" + this.U);
        if ((this.f15054g == i2 && this.U == iM1) && (valueAnimator = this.S) != null && valueAnimator.isRunning()) {
            return;
        }
        ValueAnimator valueAnimator2 = this.S;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.S = null;
        this.T = -1;
        int i3 = this.Q;
        if (i3 != iM1 || this.R || z2) {
            if (i3 == Integer.MIN_VALUE) {
                this.Q = m1(0);
            }
            if (z2) {
                if (this.Q == iM1) {
                    this.Q = Integer.MIN_VALUE;
                }
                C1(iM1);
                this.U = Integer.MIN_VALUE;
                return;
            }
            int i4 = this.U;
            if (i4 != Integer.MIN_VALUE && this.Q != i4) {
                C1(i4);
                this.U = Integer.MIN_VALUE;
            }
            float fAbs = Math.abs(this.f15054g - i2) / 5.0f;
            long j2 = 1200;
            if (fAbs < 0.4d) {
                C1(iM1);
                return;
            }
            if (fAbs <= 0.6f) {
                j2 = 500;
            } else if (fAbs <= 1.0f) {
                j2 = 800;
            }
            Log.e("Sound", "=====>>>  volumeAnimatorExec value:" + i2 + " space :" + fAbs + " duration:" + j2);
            this.U = iM1;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.Q, iM1);
            this.S = valueAnimatorOfInt;
            valueAnimatorOfInt.addUpdateListener(this.f15049d0);
            this.S.setDuration(j2);
            this.S.start();
        }
    }

    public void C() {
        if (this.M) {
            this.M = false;
            y0.h.s0(72, 0);
        }
        Iterator<Integer> it = f15041z0.iterator();
        while (it.hasNext()) {
            this.f15080t.v(Q(it.next().intValue()).ordinal());
        }
    }

    public void C0(int i2, int i3) {
        STORE store;
        if (i2 == 65536) {
            store = STORE.P2BFFREQ;
        } else {
            store = i2 == 131072 ? STORE.P2BRFREQ : null;
        }
        if (store != null) {
            G0(store, i3);
        }
        y0.h.s0(30, i2, i3);
    }

    public void C1(int i2) {
        Log.e("C2313", "=====>>>  writeVolume value:" + i2);
    }

    public void D(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public void D0(int i2, int i3) {
        STORE store;
        if (i2 == 65536) {
            store = STORE.P2BFGAIN;
        } else {
            store = i2 == 131072 ? STORE.P2BRGAIN : null;
        }
        if (store != null) {
            G0(store, i3);
        }
        y0.h.s0(29, i2, i3);
    }

    public int E(int i2) {
        int iJ = J(i2);
        int i3 = this.f15051e0.get();
        if (i3 <= 60 || iJ <= i2) {
            return 0;
        }
        if (i3 >= 120) {
            int[] iArr = G0;
            return iArr[iJ] - iArr[i2];
        }
        int[] iArr2 = G0;
        return (int) ((((iArr2[iJ] - iArr2[i2]) * (i3 - 60)) / 60.0f) + 0.5f);
    }

    public void E0(boolean z2) {
        G0(STORE.P2BASSON, z2 ? 1 : 0);
        y0.h.s0(28, z2 ? 1 : 0);
    }

    public abstract void F();

    public int F0() {
        int[] iArr = G0;
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        return (iArr[1] > iArr[2] ? -1 : 1) * (H() - this.H);
    }

    public void G(int i2) {
        Handler handler;
        if (i2 != 1 || (handler = this.f15076r) == null) {
            return;
        }
        handler.removeCallbacks(this.f15065l0);
    }

    public void G0(STORE store, int i2) {
        if (this.f15050e) {
            this.f15080t.q(store.ordinal(), i2);
        }
    }

    public int H() {
        return Math.abs(G0[1] - q0());
    }

    public void H0(STORE store, int[] iArr) {
        if (this.f15050e) {
            this.f15080t.r(store.ordinal(), iArr);
        }
    }

    public void I(int i2) {
        Integer num = new Integer(i2);
        if (f15041z0.contains(num)) {
            f15041z0.remove(num);
        }
    }

    public void I0(STORE store) {
        this.f15080t.v(store.ordinal());
    }

    public int J(int i2) {
        int length = (G0.length - 1) - i2;
        int i3 = this.f15057h0;
        if (length >= i3) {
            return i2 + i3;
        }
        return length > 0 ? i2 + length : i2;
    }

    public void J0(int i2) {
        synchronized (this.L) {
            try {
                switch (i2) {
                    case 0:
                        G(1);
                        G(4);
                        G(2);
                        G(3);
                        G(5);
                        G(6);
                        G(7);
                        G(8);
                        G(9);
                        G(10);
                        G(11);
                        break;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                        G(i2);
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void K(int i2) {
        int i3 = this.f15057h0;
        int iMax = Math.max(0, Math.min(i2, F0));
        Log.e("sound", "envVolOffsetLevel === > ");
        if (this.f15057h0 != iMax) {
            this.f15057h0 = iMax;
            if (y0.f.f18055i != 1) {
                A1(this.f15054g, true);
            }
            G0(STORE.VOL_OFFSET_LEVEL, iMax);
            this.f15080t.d();
            y0.h.s0(57, iMax);
        }
        if (i3 > 0 && i2 <= 0) {
            o1.h.f16866b.d(this.f15059i0);
            ot.f9021c.d(this.f15059i0);
        } else {
            if (i3 > 0 || i2 <= 0) {
                return;
            }
            ot.f9021c.a(this.f15059i0, 0);
            o1.h.f16866b.a(this.f15059i0, 1);
        }
    }

    public void K0(int i2) {
        synchronized (this.L) {
            Log.e("C2313", " saveCustomEq to customMode : " + i2 + " isCustomized : " + this.M);
            if (this.N ? this.M : true) {
                int[] iArr = this.f15074q;
                int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
                Z0(i2, iArrCopyOf);
                h(i2);
                int iOrdinal = Q(i2).ordinal();
                this.f15080t.r(iOrdinal, iArrCopyOf);
                this.f15080t.e(iOrdinal);
                Log.e("C2313", " saveCustomEq data : " + Arrays.toString(iArrCopyOf) + " customMode : " + i2 + " current mode: " + this.f15062k);
            }
        }
    }

    public void L(int i2, int i3) {
        int[] iArr = this.f15074q;
        if (iArr == null || iArr.length <= i2) {
            return;
        }
        if (this.N && !l0(this.f15062k) && !this.M) {
            this.M = true;
            y0.h.s0(72, 1);
            A0();
        }
        y0.h.s0(18, i2, i3);
        y0.f.f18050g0[i2] = i3;
        d0();
    }

    public void L0(int i2, int i3) {
        this.f15048d.put(i2, i3);
    }

    public void M(int i2, int i3) {
        int[] iArr = this.f15074q;
        if (iArr == null || iArr.length <= i2) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(" 11  index == ");
        sb.append(i2);
        sb.append(" gain : ");
        sb.append(i3);
        sb.append(" eqData : ");
        sb.append(this.f15074q);
        sb.append(" size:");
        int[] iArr2 = this.f15074q;
        sb.append(iArr2 == null ? 0 : iArr2.length);
        sb.append("  isCustomized: ");
        sb.append(this.M);
        Log.e("C2313", sb.toString());
        if (this.N && !l0(this.f15062k) && !this.M) {
            this.M = true;
            y0.h.s0(72, 1);
            A0();
        }
        y0.h.s0(9, i2, x0(i2) + i3);
        y0.f.f18038c0[i2] = i3;
        d0();
    }

    public final void M0(int... iArr) {
        this.f15070o = iArr;
        if (this.f15050e) {
            X0(iArr);
        }
    }

    public void N() {
        int i2 = this.f15062k + 1;
        if (this.f15044b.indexOfKey(i2) < 0) {
            i2 = 0;
        }
        h(i2);
        y0.h.F(i2);
    }

    public void N0() {
    }

    public void O(int i2, int i3) {
        int[] iArr = this.f15074q;
        if (iArr == null || iArr.length <= i2) {
            return;
        }
        if (this.N && !l0(this.f15062k) && !this.M) {
            this.M = true;
            y0.h.s0(72, 1);
            A0();
        }
        y0.h.s0(20, i2, y0(i2) + i3);
        y0.f.f18058j0[i2] = i3;
        d0();
    }

    public void O0(boolean z2) {
        this.f15086w = z2;
    }

    public void P(int i2) {
        int[] iArr = C0;
        if (i2 == 0) {
            iArr = A0;
        } else if (i2 == 1) {
            iArr = B0;
        } else if (i2 != 2 && i2 == 3) {
            iArr = D0;
        }
        y0.h.o(iArr[0], iArr[1]);
    }

    public void P0(boolean z2) {
        this.f15084v = z2;
    }

    public STORE Q(int i2) {
        STORE store = STORE.EQ_CUSTOME_ONE;
        if (i2 == 0) {
            return store;
        }
        switch (i2) {
            case 9:
                return STORE.EQ_CUSTOME_TWO;
            case 10:
                return STORE.EQ_CUSTOME_THREE;
            case 11:
                return STORE.EQ_CUSTOME_FOUR;
            case 12:
                return STORE.EQ_CUSTOME_FIVE;
            case 13:
                return STORE.EQ_CUSTOME_SIX;
            case 14:
                return STORE.EQ_CUSTOME_SEVEN;
            default:
                return store;
        }
    }

    /* JADX WARN: Code duplicated, block: B:215:0x030d  */
    /* JADX WARN: Code duplicated, block: B:216:0x0319  */
    public void R() {
        int i2;
        int iU1;
        int iV1;
        int iA0;
        int i3;
        int iG;
        int i4;
        int iT1;
        int iU2;
        int i5;
        boolean z2;
        int i6;
        boolean z3;
        boolean z4;
        boolean z5;
        int i7;
        int i8;
        if (this.f15050e) {
            int i9 = u0.b.D;
            boolean z6 = h0.c.G == 1 || h0.c.f2448m0 || (u0.i.l3().r3() && i9 == 15);
            boolean z7 = y0.f.f18083w || (u0.b.f17347o != 0 || u0.b.Z != 0);
            int iMax = y0.f.C0;
            int i10 = y0.f.F0;
            if (i10 >= 0 && iMax > i10) {
                iMax = i10;
            }
            boolean zS0 = s0();
            boolean z8 = j0(u0.b.D) == 0;
            f.c cVar = f.b.f1841d.f1844c;
            int iM = a.c.m();
            int iW = a.c.w();
            a.c.t();
            Log.e("sound", "  ==============>>>  DataBt.mMuteFlag: " + Integer.toBinaryString(h0.c.Z & 65535));
            int i11 = y0.f.F0;
            if (i11 >= 0) {
                iMax = Math.max(0, Math.min(iMax, i11));
            }
            if ((y0.f.K0 & (-257) & (-17) & 65535) != 0) {
                u0(true);
                return;
            }
            if (z6) {
                iA0 = y0.f.J0;
                if (iMax >= iA0) {
                    iA0 = iMax;
                }
                int i12 = u0.i.l3().A;
                if (i9 == 2 && h0.e.C()) {
                    iA0 = 0;
                }
                if (this.f15084v) {
                    z2 = iA0 > 0;
                    i7 = iA0;
                } else {
                    z2 = false;
                    i7 = 0;
                }
                if (cVar.h()) {
                    i3 = 0;
                    iM = 0;
                    i8 = 0;
                } else {
                    i3 = -1;
                    i8 = -1;
                }
                iG = (int) (((a.c.g() * h0.c.f2424a0) / h0.c.f2426b0) + 0.5f);
                i6 = i7;
                i5 = i8;
            } else {
                int iA1 = z7 ? (int) (y0.f.f18085x == 0 ? ((y0.f.R * iMax) / y0.f.S) + 0.5f : 0.0f) : iMax;
                if (iA1 == 0) {
                    u0(true);
                    return;
                }
                boolean z9 = y0.f.R0 != 0;
                boolean z10 = y0.f.T0 != 0;
                boolean z11 = y0.f.Q0 != 0;
                if (f.b.f1841d.f1844c.h()) {
                    zS0 = (z9 || z10 || z11 || BusKtv.f17034g) && zS0;
                }
                if (this.f15084v && i9 == 2) {
                    i2 = iA1;
                    zS0 = zS0;
                } else if (zS0) {
                    int i13 = y0.f.f18088y0[7];
                    i2 = (int) (!z11 ? iA1 : 0.5f + iA1 + ((iA1 * (y0.f.f18084w0[7] - (i13 / 2))) / i13));
                } else {
                    zS0 = zS0;
                    i2 = 0;
                }
                boolean z12 = i2 > 0;
                StringBuilder sb = new StringBuilder();
                int i14 = i2;
                sb.append("===========>>>>>   002   tipAudio = ");
                sb.append(z9);
                sb.append("  voiceAudio = ");
                sb.append(z10);
                sb.append("  naviAudio = ");
                sb.append(z11);
                sb.append("  DataSound.isLowerTheSound = ");
                sb.append(y0.f.f18083w);
                sb.append("  DataMain.sArmMuteAndAmpMute = ");
                sb.append(u0.b.V3);
                sb.append(" vol = ");
                sb.append(iA1);
                Log.e("sound", sb.toString());
                if (z10) {
                    iM = (h1.a.d().e() == 2 && e.f.m()) ? a.c.m() : 0;
                    if (!z12 || (this.f15084v && i9 == 2)) {
                        i14 = iA1;
                        iA0 = (this.f15084v && z12 && z11) ? a0(iA1) : iA1;
                    } else if (!g1() || (this instanceof C2313)) {
                        iA0 = iA1;
                        i14 = iA0;
                    } else {
                        i14 = iA1;
                        iG = 0;
                        iU1 = 0;
                        iA0 = 0;
                    }
                    iG = 0;
                    iU1 = 0;
                } else {
                    if (z9) {
                        iT1 = a.c.e();
                        iU2 = u1();
                    } else {
                        if (!z12 || !z8 || !z11) {
                            if (i9 != 1) {
                                if (i9 != 2 && i9 != 3) {
                                    switch (i9) {
                                        case 8:
                                        case 9:
                                        case 10:
                                            iU1 = u1();
                                            if (z11) {
                                                iU1 = a0(iU1);
                                            }
                                            iA0 = iA1;
                                            i14 = i14;
                                            iG = 0;
                                            break;
                                        default:
                                            switch (i9) {
                                                case 15:
                                                    break;
                                                case 16:
                                                    iT1 = t1();
                                                    iU2 = u1();
                                                    if (z11) {
                                                        iT1 = Math.min(iT1, a0(iT1));
                                                    }
                                                    if (z11) {
                                                        iU2 = Math.min(iU2, a0(iU2));
                                                    }
                                                    break;
                                                case 17:
                                                    int[] iArrS = S(-1, u1(), -1, z11);
                                                    iV1 = iArrS[0] >= 0 ? iArrS[0] : -1;
                                                    if (iArrS[1] < 0) {
                                                        iA0 = iA1;
                                                        i3 = iV1;
                                                        i14 = i14;
                                                        iG = 0;
                                                        iU1 = -1;
                                                    } else {
                                                        iU1 = iArrS[1];
                                                        iA0 = iA1;
                                                        i3 = iV1;
                                                        i14 = i14;
                                                        iG = 0;
                                                    }
                                                    break;
                                                default:
                                                    iU1 = u1();
                                                    if (z11) {
                                                        iU1 = a0(iU1);
                                                    }
                                                    iA0 = iA1;
                                                    iG = 0;
                                                    i3 = -1;
                                                    break;
                                            }
                                            break;
                                    }
                                }
                                int iT2 = t1();
                                if (z11) {
                                    iT2 = Math.min(iT2, a0(iT2));
                                }
                                int i15 = iT2;
                                if (u0.b.L3 > 0 || u0.b.M3) {
                                    i4 = 15;
                                    i15 = 0;
                                } else {
                                    i4 = 15;
                                }
                                if (i9 != i4 && h0.e.C()) {
                                    iA1 = 0;
                                    i15 = 0;
                                }
                                if (u0.i.l3().r3()) {
                                    iM = 0;
                                }
                                iA0 = iA1;
                                iG = i15;
                                iU1 = 0;
                                i3 = -1;
                            } else if (w0.d.f17789a == 3) {
                                iU1 = u1();
                                iV1 = v1();
                                if (z11) {
                                    iU1 = Math.min(iU1, a0(iU1));
                                }
                                if (z11) {
                                    iV1 = Math.min(iV1, a0(iV1));
                                }
                                iA0 = iA1;
                                i3 = iV1;
                                i14 = i14;
                                iG = 0;
                            } else {
                                if (BusKtv.f17034g) {
                                    iU1 = u1();
                                    if (z11) {
                                        iU1 = Math.min(iU1, a0(iU1));
                                    }
                                    iA0 = iA1;
                                    iG = 0;
                                }
                                i3 = -1;
                            }
                            if (y0.f.f18069p > 0) {
                                Log.e("sound", "========================>>>>>   002   DataSound.sStreamPlayerLoseTick > 0  musicStream = 0");
                                z2 = z12;
                                i6 = i14;
                                zS0 = zS0;
                                i5 = 0;
                            } else {
                                i5 = iU1;
                                z2 = z12;
                                i6 = i14;
                                zS0 = zS0;
                            }
                        } else if (g1() && !(this instanceof C2313)) {
                            iA1 = a0(iA1);
                        }
                        iA0 = iA1;
                        iG = 0;
                        iU1 = -1;
                        i3 = -1;
                        if (y0.f.f18069p > 0) {
                            Log.e("sound", "========================>>>>>   002   DataSound.sStreamPlayerLoseTick > 0  musicStream = 0");
                            z2 = z12;
                            i6 = i14;
                            zS0 = zS0;
                            i5 = 0;
                        } else {
                            i5 = iU1;
                            z2 = z12;
                            i6 = i14;
                            zS0 = zS0;
                        }
                    }
                    iA0 = iA1;
                    iG = iT1;
                    iU1 = iU2;
                    i3 = -1;
                    if (y0.f.f18069p > 0) {
                        Log.e("sound", "========================>>>>>   002   DataSound.sStreamPlayerLoseTick > 0  musicStream = 0");
                        z2 = z12;
                        i6 = i14;
                        zS0 = zS0;
                        i5 = 0;
                    } else {
                        i5 = iU1;
                        z2 = z12;
                        i6 = i14;
                        zS0 = zS0;
                    }
                }
                i3 = 0;
                if (y0.f.f18069p > 0) {
                    Log.e("sound", "========================>>>>>   002   DataSound.sStreamPlayerLoseTick > 0  musicStream = 0");
                    z2 = z12;
                    i6 = i14;
                    zS0 = zS0;
                    i5 = 0;
                } else {
                    i5 = iU1;
                    z2 = z12;
                    i6 = i14;
                    zS0 = zS0;
                }
            }
            int i16 = iMax;
            boolean z13 = y0.f.f18055i == 1;
            if (w(i9)) {
                Log.e("sound", "analogChannelWithoutAudio =========  mute");
                z4 = true;
                z3 = true;
                z5 = false;
            } else {
                boolean z14 = z13;
                Log.e("sound", "fix Stream =========  <<<<< *** >>>>>>  vol");
                Log.e("sound", "========================>>>>>   002  mixOn = " + z2 + "  mixVol = " + i6 + " vol = " + iA0);
                boolean z15 = ((this.f15084v && i9 == 2) || zS0) ? true : !z2;
                Log.e("sound", "========================>>>>>   hasMainVol = " + z15);
                z3 = z15;
                z4 = z14;
                z5 = true;
            }
            if (!z5 && z4) {
                u0(z4);
            }
            if (iG != -1) {
                a.c.f(iG);
            }
            if (i5 != -1) {
                a.c.p(i5);
            }
            if (i3 != -1) {
                a.c.i(i3);
            }
            if (this.D != z6) {
                this.D = z6;
                o(this.f15092z);
            }
            a.c.l(iM);
            a.c.v(iW);
            if (z5) {
                Log.e("sound", "========================>>>>>   003  mixOn = " + z2 + "  mixVol = " + i6 + " vol = " + iA0 + " hasMainVol = " + z3);
                z1(z3 ? iA0 : 0, iA0 / i16);
                r0(z2 ? i6 : 0);
                u0(false);
                v0(z4);
            }
            Log.d("sound", "vol = " + iA0 + "    " + a.c.c() + " mutePlayer " + a.c.b() + "   appid : " + i9);
        }
    }

    public void R0(boolean z2) {
        if (this.J != z2) {
            this.J = z2;
            y0.h.s0(81, z2 ? 1 : 0);
            STORE store = STORE.LOWERING_NOISE;
            G0(store, z2 ? 1 : 0);
            this.f15080t.e(store.ordinal());
        }
    }

    public int[] S(int i2, int i3, int i4, boolean z2) {
        int[] iArrQ = s0.q(3, -1);
        int iU1 = u1();
        if (z2) {
            iU1 = a0(iU1);
        }
        iArrQ[1] = iU1;
        iArrQ[0] = 0;
        return iArrQ;
    }

    public void S0(boolean z2) {
        this.K = z2;
    }

    public void T() {
        int iO1 = o1();
        this.I = Y(STORE.VOLUME_OFFSET_UI, Configure.Property.MAIN_VOLUME_OFFSET_UI.d(-1));
        Log.e("c32107", String.format("00 ======>> total: %d, offset: %d, volOffsetUI: %d", Integer.valueOf(iO1), Integer.valueOf(this.H), Integer.valueOf(this.I)));
        if (this.I >= 0) {
            this.H = q1();
            Log.e("c32107", String.format("01 ======>> total: %d, offset: %d, volOffsetUI: %d", Integer.valueOf(iO1), Integer.valueOf(this.H), Integer.valueOf(this.I)));
        } else {
            STORE store = STORE.VOLUME_OFFSET;
            int iY = Y(store, Configure.Property.MAIN_VOLUME_OFFSET.d(Integer.MIN_VALUE));
            this.H = iY;
            if (iY == Integer.MIN_VALUE) {
                this.H = H();
            } else if (iY > iO1) {
                I0(store);
                this.H = H();
            }
            this.I = n1();
            Log.e("c32107", String.format("02 ======>> total: %d, offset: %d, volOffsetUI: %d", Integer.valueOf(iO1), Integer.valueOf(this.H), Integer.valueOf(this.I)));
        }
        y0.h.s0(51, 0, 100);
        y0.h.s0(52, this.I);
    }

    public void T0(int i2) {
        if (this.f15058i != i2) {
            this.f15058i = i2;
            G0(STORE.TYPE, i2);
            k();
        }
        y0.h.s0(37, i2);
    }

    public boolean U(int i2, y.b bVar) {
        if (i2 == 27) {
            r1(bVar, i2, this.E ? 1 : 0);
        } else if (i2 == 57) {
            r1(bVar, i2, this.f15057h0);
        } else if (i2 == 72) {
            r1(bVar, i2, this.M ? 1 : 0);
        } else if (i2 == 74) {
            r1(bVar, i2, this.N ? 1 : 0);
        } else if (i2 == 81) {
            r1(bVar, i2, this.J ? 1 : 0);
        } else {
            if (i2 == 87) {
                return z0.d.f18290d.b(i2, bVar);
            }
            if (i2 == 95) {
                r1(bVar, i2, this.f15045b0);
            } else if (i2 == 51) {
                r1(bVar, i2, 0, 100);
            } else {
                if (i2 != 52) {
                    return false;
                }
                Log.e("c32107", String.format(" flush ======>> offset: %d, volOffsetUI: %d", Integer.valueOf(this.H), Integer.valueOf(this.I)));
                r1(bVar, i2, this.I);
            }
        }
        return true;
    }

    public void U0(int i2) {
        int iMax = Math.max(0, Math.min(i2, 100));
        if (this.I == iMax) {
            return;
        }
        int iO1 = o1();
        this.I = iMax;
        this.H = (int) ((iMax / 100.0f) * iO1);
        STORE store = STORE.VOLUME_OFFSET_UI;
        G0(store, iMax);
        this.f15080t.e(store.ordinal());
        STORE store2 = STORE.VOLUME_OFFSET;
        G0(store2, this.H);
        this.f15080t.e(store2.ordinal());
        Log.e("c32107", String.format("======>> total: %d, offset: %d, volOffsetUI: %d", Integer.valueOf(iO1), Integer.valueOf(this.H), Integer.valueOf(this.I)));
        y0.h.s0(52, this.I);
        A1(this.f15054g, true);
    }

    public int V(int i2) {
        return this.f15048d.get(i2);
    }

    public void V0(int i2, int i3) {
        if (this.P == null) {
            this.P = s0.q(20, 0);
        }
        if (i2 <= 0 || i2 >= 20) {
            return;
        }
        this.P[i2] = Configure.Property.VOLUME_BALANCE_OFFSET.e(i2, i3);
    }

    public void W0() {
        Handler handler = this.f15076r;
        if (handler != null) {
            handler.removeCallbacks(this.f15085v0);
            this.f15076r.postDelayed(this.f15085v0, 80L);
        }
    }

    public int[] X(int i2) {
        return this.f15044b.get(i2);
    }

    public void X0(int... iArr) {
    }

    public int Y(STORE store, int i2) {
        return this.f15080t.h(store.ordinal(), i2);
    }

    public void Y0(int[] iArr) {
        this.f15068n = iArr;
    }

    public int[] Z(STORE store, int[] iArr) {
        int[] iArrI = this.f15080t.i(store.ordinal());
        return (iArrI != null || iArr == null) ? iArrI : iArr;
    }

    public void Z0(int i2, int[] iArr) {
        this.f15044b.put(i2, iArr);
        if (i2 == this.f15062k) {
            w0(i2);
        }
    }

    public int a0(int i2) {
        int i3 = ((i2 * y0.f.L) + 10) / 20;
        if (y0.f.J == 1) {
            return i3;
        }
        return 0;
    }

    public void a1(int i2, int i3) {
        y0.h.s0(53, i2, i3);
    }

    public int[] b0(int i2, int... iArr) {
        return null;
    }

    public void b1(boolean z2) {
        y0.h.s0(55, !z2 ? 1 : 0);
    }

    public void c0(boolean z2) {
        Log.e("soundMute", "AudioDevice App Mute   mute = " + z2 + " loaded:" + this.f15050e);
        Log.e("soundMute", "00 handleAppMute Mute  mMuteStatus = " + this.X + " mUserMute:" + this.V);
        this.W = z2 ? 1 : 0;
        if (this.W > 0) {
            ValueAnimator valueAnimator = this.S;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.U = Integer.MIN_VALUE;
            int i2 = this.V | 2;
            this.V = i2;
            this.X = i2;
            if (this.f15050e) {
                C1(m1(0));
            }
        } else {
            t0();
        }
        Log.e("soundMute", "01 handleAppMute Mute  mMuteStatus = " + this.X + " mUserMute:" + this.V);
    }

    public abstract int[] c1();

    public void d0() {
        Handler handler = this.f15076r;
        if (handler == null) {
            return;
        }
        handler.removeCallbacks(this.f15065l0);
        this.f15076r.postDelayed(this.f15065l0, 300L);
    }

    public void d1(boolean z2) {
        G0(STORE.STEREO_ENABLE, z2 ? 1 : 0);
        y0.h.s0(64, z2 ? 1 : 0);
    }

    @Override // y0.e
    public void e() {
        super.e();
        Log.e("c32107", " load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP START  IN()  ENTER !! ");
        a.f.p().w(" load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP START IN()  ENTER !! ");
        this.f15064l = -1;
        u0.c.f17386m.a(this.f15079s0, 0);
        u0.c.f17376c.a(this.f15079s0, 0);
        u0.c.f17378e.a(this.f15079s0, 1);
    }

    public boolean e0() {
        return (y0.f.R0 == 0 && y0.f.T0 == 0 && y0.f.Q0 == 0 && !BusKtv.f17034g) ? false : true;
    }

    public void e1(int i2, int i3) {
        STORE store;
        if (i2 == 0) {
            store = STORE.SBWLFREQ;
        } else {
            store = i2 == 256 ? STORE.SBWHFREQ : null;
        }
        if (store != null) {
            G0(store, i3);
            y0.h.s0(27, i2, i3);
        }
    }

    @Override // y0.e
    public void f() {
        this.f15050e = false;
        this.f15064l = -1;
        super.f();
        u0.c.f17386m.d(this.f15079s0);
        u0.c.f17376c.d(this.f15079s0);
        u0.c.f17378e.d(this.f15079s0);
        Handler handler = this.f15076r;
        if (handler != null) {
            handler.removeCallbacks(this.f15085v0);
        }
    }

    public void f0(boolean z2) {
        if (this.E != z2) {
            this.E = z2;
            G0(STORE.HIGH_FREQ_LIMITE, z2 ? 1 : 0);
            y0.h.s0(27, z2 ? 1 : 0);
        }
    }

    public void f1(boolean z2) {
        G0(STORE.SUBWOOFON, z2 ? 1 : 0);
        y0.h.s0(38, z2 ? 1 : 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void g0(int i2, int i3) {
        STORE store;
        switch (i2) {
            case 65536:
                G0(STORE.HPFFA, i3);
                y0.h.s0(31, 65552, i3);
                G0(STORE.HPFFB, i3);
                y0.h.s0(31, 65568, i3);
                store = null;
                break;
            case 65552:
                store = STORE.HPFFA;
                break;
            case 65568:
                store = STORE.HPFFB;
                break;
            case 131072:
                G0(STORE.HPFRA, i3);
                y0.h.s0(31, WifiStateMachine.CMD_STATIC_IP_FAILURE, i3);
                G0(STORE.HPFRB, i3);
                y0.h.s0(31, 131104, i3);
                store = null;
                break;
            case WifiStateMachine.CMD_STATIC_IP_FAILURE /* 131088 */:
                store = STORE.HPFRA;
                break;
            case 131104:
                store = STORE.HPFRB;
                break;
            default:
                store = null;
                break;
        }
        if (store != null) {
            G0(store, i3);
            y0.h.s0(31, i2, i3);
        }
    }

    public boolean g1() {
        return this.K;
    }

    @Override // y0.e
    public void h(int i2) {
        if (this.f15062k != i2 || this.M) {
            Handler handler = this.f15076r;
            if (handler != null) {
                handler.removeCallbacks(this.f15065l0);
            }
            this.f15062k = i2;
            if (this.N && this.M) {
                this.M = false;
                y0.h.s0(72, 0);
            }
            G0(STORE.MODE, i2);
            y0.h.F(i2);
            w0(this.f15062k);
        }
    }

    public void h0(boolean z2) {
    }

    public void h1(int i2, int i3) {
        y0.h.s0(54, i2, i3);
    }

    public final boolean i0(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public void i1(int i2, int i3) {
        STORE store = null;
        if (i2 == 16) {
            store = STORE.IIRA;
        } else if (i2 == 32) {
            store = STORE.IIRB;
        } else if (i2 == 1073741824) {
            G0(STORE.IIRA, i3);
            y0.h.s0(35, 16, i3);
            G0(STORE.IIRB, i3);
            y0.h.s0(35, 32, i3);
        }
        if (store != null) {
            G0(store, i3);
            y0.h.s0(35, i2, i3);
        }
    }

    @Override // y0.e
    public void j(int[] iArr) {
        h0 h0Var = this.f15080t;
        STORE store = STORE.BAL_FADE;
        h0Var.r(store.ordinal(), new int[]{y0.f.f18057j, y0.f.f18061l});
        this.f15080t.e(store.ordinal());
    }

    public abstract int j0(int i2);

    public void j1(int i2, int i3) {
        y0.h.s0(34, i2, i3);
    }

    @Override // y0.e
    public void k() {
        synchronized (this.f15047c0) {
            a.f.p().w(" load >>>>>>>>>>>>>SETUP START !!  +    DataMain.sAccOn=  " + u0.b.f17306a0 + "   loaded : " + this.f15050e);
            Log.e("c32107", " load >>>>>>>>>>>>>SETUP START !!  +    DataMain.sAccOn=  " + u0.b.f17306a0 + "   loaded : " + this.f15050e);
            if (this.f15050e) {
                return;
            }
            Log.e("c32107", " load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP START !! ");
            a.f.p().w(" load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP START !! ");
            o1.k.a().removeCallbacks(this.f15089x0);
            y0.h.X(2048, true);
            s0.C(200L);
            this.f15050e = true;
            m0();
            n0();
            z0.d.f18290d.e();
            W0();
            z0.d.f18290d.c();
            int[] iArr = this.f15070o;
            if (iArr != null) {
                X0(iArr);
            }
            int i2 = this.f15050e ? 1 : 0;
            if (y0.f.f18079u != i2) {
                y0.f.f18079u = i2;
                y0.g.f18093c.c();
            }
            Log.e("c32107", " load >>>>>>>>>>>>>>>>>>>>>>>>>>>MODE   : " + this.f15062k + "  " + this.f15050e);
            a.f.p().w(" load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP SUCCESS !! ");
            Log.e("c32107", " load >>>>>>>>>>>>>>>>>>>>>>>>>>>SETUP SUCCESS !! ");
            y0.g.f18106p.a(this.f15067m0);
            y0.g.f18104n.a(this.f15071o0);
            y0.g.f18105o.a(this.f15073p0);
            u0.c.f17374a.a(this.f15081t0, 1);
            h0.d.f2463b.a(this.f15083u0, 1);
            ot.f9020b.a(this.f15069n0, 1);
            j0.f16915j.c(this);
            o1.k.a().postDelayed(this.f15089x0, 500L);
            u0.c.H.a(this.f15091y0, 1);
            if (this.f15057h0 > 0) {
                ot.f9021c.a(this.f15059i0, 0);
                o1.h.f16866b.a(this.f15059i0, 1);
            }
            if (this.f15050e) {
                y0.h.X(2048, false);
                y0.h.M();
            }
        }
    }

    public boolean k0() {
        return this.f15086w;
    }

    public void k1(int i2) {
        G0(STORE.SURRMOED, i2);
        y0.h.s0(33, i2);
    }

    @Override // y0.e
    public void l(int i2) {
        G0(STORE.LOUDON, i2);
    }

    public boolean l0(int i2) {
        return f15041z0.contains(Integer.valueOf(i2));
    }

    public void l1(boolean z2) {
        G0(STORE.SURRON, z2 ? 1 : 0);
        y0.h.s0(32, z2 ? 1 : 0);
    }

    public void m0() {
        int iY = Y(STORE.MODE, a.i.k("sys.syu.eqmode", 1));
        this.f15062k = iY;
        y0.f.f18032a0 = iY;
        int iY2 = Y(STORE.LOUDON, y0.f.E);
        y0.f.E = iY2;
        this.f15052f = iY2 == 1;
        int[] iArrI = this.f15080t.i(STORE.BAL_FADE.ordinal());
        if (iArrI != null && iArrI.length == this.f15066m.length) {
            this.f15066m = iArrI;
        }
        Log.e("c32107", " =====>>   loadCustom");
        int iY3 = Y(STORE.VOL_OFFSET_LEVEL, s0.m("ro.syu.env_voloffset_level", 0));
        this.f15057h0 = iY3;
        this.f15057h0 = Math.min(F0, Math.max(iY3, 0));
        int[] iArr = this.f15066m;
        int i2 = iArr[0];
        y0.f.f18057j = i2;
        y0.f.L0 = i2;
        int i3 = iArr[1];
        y0.f.f18061l = i3;
        y0.f.M0 = i3;
        y0.f.f18081v = true;
        int iY4 = Y(STORE.SBWHGAIN, a.i.k("ro.fyt.subwoof", y0.f.W0));
        this.f15092z = iY4;
        y0.f.V0 = iY4;
        this.A = Y(STORE.SUBWOOFON, 1) == 1;
        this.B = Y(STORE.SUBWOOF_SYNC, 0) == 1;
        this.E = Y(STORE.HIGH_FREQ_LIMITE, 0) == 1;
        this.J = Y(STORE.LOWERING_NOISE, this.J ? 1 : 0) == 1;
        this.f15045b0 = Y(STORE.VOLUME_BEEP, 5);
    }

    public int m1(int i2) {
        int iMax = Math.max(0, Math.min(i2, G0.length - 1));
        if (iMax == 0) {
            return G0[iMax];
        }
        int[] iArr = G0;
        Log.e("c32107", String.format("index : %d,  TabVol: %2X, mainVolTob[1] - mainVolTob[2]: %d, defOffset(): %d, volTableOffset: %d", Integer.valueOf(iMax), Integer.valueOf(G0[iMax]), Integer.valueOf(iArr[1] - iArr[2]), Integer.valueOf(H()), Integer.valueOf(this.H)));
        int iF0 = (G0[iMax] - F0()) + E(iMax);
        Log.e("c32107", String.format("mainVolTob[index] : %02X,  result: %02X", Integer.valueOf(G0[iMax] & 65535), Integer.valueOf(iF0 & 65535)));
        return iF0;
    }

    public void n0() {
        Iterator<Integer> it = f15041z0.iterator();
        while (it.hasNext()) {
            o0(it.next().intValue());
        }
    }

    public final int n1() {
        return Math.max(0, Math.min((int) (((this.H / o1()) * 100.0f) + 0.5f), 100));
    }

    @Override // y0.e
    public void o(int i2) {
        if (this.f15092z != i2) {
            this.f15092z = i2;
            G0(STORE.SBWHGAIN, i2);
        }
    }

    public void o0(int i2) {
        int[] iArrX = X(1);
        int[] iArrZ = Z(Q(i2), iArrX);
        if (iArrZ == null || iArrX.length != iArrZ.length) {
            return;
        }
        Z0(i2, iArrZ);
    }

    public int o1() {
        int[] iArr = G0;
        return H() + Math.abs(iArr[iArr.length - 1] - p0());
    }

    @Override // y0.e
    public void p() {
        R();
    }

    public int p0() {
        int[] iArr = G0;
        if (iArr == null) {
            return 0;
        }
        return iArr[iArr.length - 1];
    }

    public void p1(int i2, int[] iArr, int... iArr2) {
    }

    public int q0() {
        int[] iArr = G0;
        if (iArr == null) {
            return 0;
        }
        return iArr[0];
    }

    public final int q1() {
        int iO1 = o1();
        return Math.max(0, Math.min((int) ((this.I / 100.0f) * iO1), iO1));
    }

    public void r0(int i2) {
        f0.a aVarY2 = f0.c.X2().Y2();
        if (aVarY2 != null) {
            aVarY2.b(-1, i2, this.f15057h0, this.f15051e0.get());
        }
    }

    public void r1(y.b bVar, int i2, int... iArr) {
        s1(bVar, i2, iArr, null, null);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (B()) {
            this.F++;
        } else {
            this.F = 0;
        }
        if (this.F >= 4) {
            j0.f16915j.d(this);
            this.f15050e = false;
            k();
            this.F = 0;
        }
    }

    public boolean s0() {
        return j0(u0.b.D) == 0;
    }

    public final void s1(y.b bVar, int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (bVar != null) {
            synchronized (bVar) {
                try {
                    bVar.H0(i2, iArr, fArr, strArr);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public final void t0() {
        int i2 = this.V;
        int i3 = this.W > 0 ? i2 | 2 : i2 & (-3);
        if (this.X == 255 || i3 != this.X) {
            Log.e("Sound", "AudioDevice mute() from: " + this.X + " to: " + i3);
            this.X = i3;
            boolean z2 = true;
            boolean z3 = this.X > 0;
            if (this.f15050e) {
                if (z3) {
                    y1(0);
                    r0(0);
                } else {
                    int i4 = this.f15054g;
                    if (i4 > 0) {
                        y1(i4);
                    }
                    int i5 = this.f15056h;
                    if (i5 > 0) {
                        r0(i5);
                    }
                }
                if (!z3 && this.f15054g != 0) {
                    z2 = false;
                }
                v0(z2);
                f0.a aVarY2 = f0.c.X2().Y2();
                if (aVarY2 != null) {
                    aVarY2.f(z3);
                }
            }
        }
    }

    public int t1() {
        return a.c.g();
    }

    public void u0(boolean z2) {
        if (this.f15050e) {
            Log.e("soundMute", "AudioDevice User Mute   mute = " + z2 + " loaded:" + this.f15050e);
            this.V = z2 ? 1 : 0;
            t0();
            Log.e("soundMute", "AudioDevice User Mute   mute = " + z2 + " mUserMute:" + this.V);
        }
    }

    public int u1() {
        return a.c.q();
    }

    public void v0(boolean z2) {
        boolean z3 = !this.f15050e || (z2 && u0.b.V3);
        Log.e("soundMute", " ----- >>>> AudioDevice MuteAmp dstMuet : " + z3 + "   mute = " + z2 + " loaded:" + this.f15050e + " vol : " + this.f15054g);
        y0.h.X(256, z3);
    }

    public int v1() {
        return a.c.j();
    }

    public boolean w(int i2) {
        if (!u0.b.d4 || (!(i2 == 2 || i2 == 3) || j0(i2) == 1)) {
            return u0.b.d4 && j0(i2) == 1 && y0.f.P0 == 0 && h0.c.G == 0 && y0.f.T0 == 0 && y0.f.R0 == 0 && y0.f.Q0 == 0 && h0.c.N != 1 && u0.b.E == -1;
        }
        return h0.c.G == 0 && y0.f.T0 == 0 && y0.f.R0 == 0 && y0.f.Q0 == 0 && h0.c.N != 1;
    }

    public abstract void w0(int i2);

    public int w1() {
        return a.c.w();
    }

    public void x(int[] iArr) {
        if (!Arrays.equals(G0, iArr)) {
            G0 = iArr;
        }
        int[] iArr2 = G0;
        Log.e("sound", b0.e(iArr2, 0, iArr2.length));
        T();
    }

    public int x0(int i2) {
        int[] iArr = this.f15068n;
        if (iArr != null) {
            int i3 = this.f15072p;
            if (i2 * i3 <= iArr.length) {
                if (i3 == 1) {
                    return iArr[i2];
                }
                if (i3 == 2) {
                    return iArr[((i2 + 1) * i3) - 1];
                }
                if (i3 == 3) {
                    return iArr[((i2 + 1) * i3) - 2];
                }
            }
        }
        return 0;
    }

    public int x1(int i2, int[] iArr) {
        int iMax = Math.max(0, Math.min(i2, iArr.length - 1));
        if (iMax == 0) {
            return iArr[iMax];
        }
        Log.e("c32107", String.format("index : %d,  TabVol: %2X, table[1] - table[2]: %d, defOffset(): %d, volTableOffset: %d", Integer.valueOf(iMax), Integer.valueOf(iArr[iMax]), Integer.valueOf(iArr[1] - iArr[2]), Integer.valueOf(H()), Integer.valueOf(this.H)));
        int iF0 = (iArr[iMax] - F0()) + E(iMax);
        Log.e("c32107", String.format("table[index] : %2X,  result: %2X", Integer.valueOf(iArr[iMax]), Integer.valueOf(iF0)));
        return iF0;
    }

    public void y() {
    }

    public int y0(int i2) {
        int[] iArr = this.f15068n;
        if (iArr == null) {
            return 0;
        }
        int i3 = this.f15072p;
        if (i2 * i3 > iArr.length || i3 < 3) {
            return 0;
        }
        return iArr[((i2 + 1) * i3) - 1];
    }

    public void y1(int i2) {
        A1(i2, false);
    }

    public void z(boolean z2) {
        Log.e("alex", "beep DataSound.sBeep:" + y0.f.f18073r + " dispatchBeep:" + this.O + " ic:" + z2);
        if (y0.f.f18073r != 0) {
            if (this.O) {
                y0.h.s0(88, new int[0]);
            } else if (z2) {
                y();
            } else {
                z.k.s(1, 0, 82);
            }
        }
    }

    public void z0() {
    }

    public void z1(int i2, float f2) {
        A1(i2, false);
    }
}
