package module.sound;

import a.i;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.videoeditor.MediaArtistNativeHelper;
import android.mtp.MtpConstants;
import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.util.Log;
import app.App;
import base.Configure;
import com.syu.jni.ToolsJni;
import java.io.FileWriter;
import java.util.Arrays;
import n0.c4;
import n0.j4;
import o1.b0;
import o1.d0;
import o1.k;
import o1.m;
import o1.n;
import o1.o0;
import o1.s0;
import y0.f;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public class a extends AudioDevice {
    public static final int[][] A1 = {new int[]{0, 192, 9}, new int[]{0, 193, 145}, new int[]{0, 194, 3}, new int[]{0, 195, 255}, new int[]{0, 196, 255}, new int[]{0, 197, 255}, new int[]{0, 198, 255}, new int[]{0, 199, 255}, new int[]{0, 200, 255}, new int[]{0, 201, 255}, new int[]{0, 203, 20}, new int[]{0, 204, 14}, new int[]{2, 180, 0, IntentFilter.MATCH_CATEGORY_PATH, IntentFilter.MATCH_CATEGORY_PATH}, new int[]{5, 181, 5, 67108864, 67108864, 67108864, 67108864, 67108864}, new int[]{3, 180, 31, 67108864, 0, 0}, new int[]{2, 180, 39, 0, 67108864}, new int[]{2, 180, 43, 67108864, 0}, new int[]{5, 180, 26, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 34, 0, 0, 0, 0, 67108864}, new int[]{1, 180, 89, 67108864}, new int[]{2, 180, 65, 0, 0}, new int[]{1, 180, 69, 0}, new int[]{1, 180, 68, 0}, new int[]{5, 180, 45, 0, 0, 0, 0, 67108864}, new int[]{3, 180, 72, 0, 0, 0}, new int[]{4, 180, 90, 0, 0, 0, 0}, new int[]{3, 180, 99, 67108864, 0, 0}, new int[]{5, 180, 94, 0, 0, 0, 0, 67108864}, new int[]{2, 180, 102, 0, 0}, new int[]{2, 180, 109, 67108864, 67108864}, new int[]{5, 180, 104, 0, 0, 0, 0, 67108864}, new int[]{2, 180, 116, 67108864, 0}, new int[]{5, 180, 111, 0, 0, 0, 0, 67108864}, new int[]{3, 180, 118, 33554432, 33554432, 67108864}, new int[]{5, 180, 121, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 131, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 141, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 151, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 161, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 171, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 181, 0, 0, 0, 0, 33554432}, new int[]{5, 180, 191, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 201, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 211, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 221, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 231, 0, 0, 0, 0, 67108864}, new int[]{5, 180, i.a.Theme_actionModeShareDrawable, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 251, 0, 0, 0, 0, 33554432}, new int[]{5, 180, 126, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 136, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 146, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 156, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 166, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 176, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 186, 0, 0, 0, 0, 33554432}, new int[]{5, 180, 196, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 206, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 216, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 226, 0, 0, 0, 0, 67108864}, new int[]{5, 180, 236, 0, 0, 0, 0, 67108864}, new int[]{5, 180, i.a.Theme_preferencePanelStyle, 0, 0, 0, 0, 67108864}, new int[]{5, 181, 0, 0, 0, 0, 0, 33554432}, new int[]{3, 181, 45, 67108864, 67108864, 67108864}, new int[]{5, 181, 10, 0, 0, 0, 0, 67108864}, new int[]{5, 181, 15, 0, 0, 0, 0, 67108864}, new int[]{5, 181, 20, 0, 0, 0, 0, 67108864}, new int[]{5, 181, 25, 0, 0, 0, 0, 67108864}, new int[]{5, 181, 30, 0, 0, 0, 0, 67108864}, new int[]{5, 181, 35, 0, 0, 0, 0, 67108864}, new int[]{5, 181, 40, 0, 0, 0, 0, 67108864}, new int[]{4, 180, 2, 201366417, 134156624, 119434, 268316022}, new int[]{4, 180, 6, 267720480, 714976, 201565000, 133639501}, new int[]{4, 180, 13, 202263262, 127906530, 2809031, 265626425}, new int[]{4, 180, 17, 259495900, 8939556, 204307482, 54826813}, new int[]{3, 180, 10, 0, 67108864, 0}, new int[]{0, 204, 15}, new int[]{255}};
    public static final int[] B1 = {1638, 2062, 2596, 3269, 4115, 5181, 6522, MtpConstants.RESPONSE_STORE_NOT_AVAILABLE, 10337, 13014, 16384};
    public static final int[] C1 = {16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384, 16384, 13014, 10337, MtpConstants.RESPONSE_STORE_NOT_AVAILABLE, 6522, 5181, 3667, 2314, 1};
    public static final int[] D1 = {255, 124, 114, 104, 96, 90, 84, 78, 72, 68, 64, 62, 60, 58, 56, 54, 52, 50, 48, 46, 44, 42, 40, 38, 36, 34, 32, 30, 28, 26, 22, 18, 14, 10, 6, 2, 0};
    public static final int[] E1 = {255, 134, 120, 108, 98, 90, 84, 78, 72, 68, 64, 60, 58, 56, 54, 52, 50, 48, 46, 44, 42, 40, 38, 36, 34, 32, 30, 28, 26, 24, 22, 20, 14, 18, 12, 16, 10, 14, 8, 12, 6, 5, 2, 1, 0, 0, 0, 0};
    public static final int[][] F1 = {new int[]{3, 130, 31, 67108864, 0, 0}, new int[]{2, 129, 39, 0, 67108864}, new int[]{2, 129, 43, 67108864, 0}, new int[]{5, 132, 26, 0, 0, 0, 0, 67108864}, new int[]{5, 132, 34, 0, 0, 0, 0, 67108864}, new int[]{255}};
    public static final int[][] G1 = {new int[]{3, 130, 31, 26173440, 32882688, 0}, new int[]{2, 129, 39, 59097088, 67108864}, new int[]{2, 129, 43, 67108864, 59097088}, new int[]{5, 132, 26, 16154624, 38559744, 226803712, 0, 41627648}, new int[]{5, 132, 34, 207822848, 127393792, 63778816, 140869632, 63778816}, new int[]{255}};
    public static final int[][] H1 = {new int[]{1, 128, 89, 67108864}, new int[]{2, 129, 65, 0, 0}, new int[]{1, 128, 69, 0}, new int[]{1, 128, 68, 0}, new int[]{5, 132, 45, 0, 0, 0, 0, 67108864}, new int[]{3, 130, 72, 0, 0, 0}, new int[]{255}};
    public static final int[][] I1 = {new int[]{1, 128, 89, 0}, new int[]{2, 129, 65, 42500096, 26173440}, new int[]{1, 128, 69, 22814720}, new int[]{1, 128, 68, 23486464}, new int[]{5, 132, 45, 0, 0, 0, 0, 67108864}, new int[]{3, 130, 72, 66895872, 102400, 102400}, new int[]{255}};
    public static final int[][] J1 = {new int[]{4, 131, 90, 0, 0, 0, 0}, new int[]{3, 130, 99, 67108864, 0, 0}, new int[]{5, 132, 94, 0, 0, 0, 0, 67108864}, new int[]{255}};
    public static final int[][] K1 = {new int[]{4, 131, 90, 77824, 66437120, 59056128, 209379328}, new int[]{3, 130, 99, 67108864, 77176832, 191258624}, new int[]{5, 132, 94, 243998720, 90427392, 6946816, 228810752, 33771520}, new int[]{255}};
    public static final int[][] L1 = {new int[]{2, 129, 102, 0, 0}, new int[]{2, 129, 109, 67108864, 67108864}, new int[]{5, 132, 104, 0, 0, 0, 0, 67108864}, new int[]{255}};
    public static final int[][] M1 = {new int[]{2, 129, 102, 100663296, 100663296}, new int[]{2, 129, 109, 67108864, 67108864}, new int[]{5, 132, 104, 202532771, 133000613, 2733, 5467, 2733}, new int[]{255}};
    public static final int[][] N1 = {new int[]{2, 129, 116, 67108864, 0}, new int[]{5, 132, 111, 0, 0, 0, 0, 67108864}, new int[]{255}};
    public static final int[][] O1 = {new int[]{2, 129, 116, 58716160, 29528064}, new int[]{5, 132, 111, 2551808, 54349824, 250155008, 246693888, 44097536}, new int[]{255}};
    public static final int[][] P1 = {new int[]{3, 130, 118, 33554432, 33554432, 67108864}, new int[]{5, 132, 251, 0, 0, 0, 0, 33554432}, new int[]{5, 148, 0, 0, 0, 0, 0, 33554432}, new int[]{255}};
    public static final int[][] Q1 = {new int[]{3, 130, 118, 33554432, 33554432, 67108864}, new int[]{5, 132, 251, 214683648, 119373824, 60538880, 143413248, 33972224}, new int[]{5, 148, 0, 214683648, 119373824, 60538880, 143413248, 33972224}, new int[]{255}};
    public static int R1 = 0;
    public static boolean x1 = false;
    public static boolean y1 = false;
    public static boolean z1 = false;
    public final Runnable I0;
    public int[] J0;
    public int[] K0;
    public final int[] L0;
    public final int[] M0;
    public final int[] N0;
    public final int[] O0;
    public final int[] P0;
    public final int[] Q0;
    public final int[] R0;
    public final int[] S0;
    public n T0;
    public boolean U0;
    public int[] V0;
    public int[] W0;
    public int[] X0;
    public boolean Y0;
    public boolean Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public boolean f16247a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public int[] f16248b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public int[] f16249c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public int f16250d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public int f16251e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public boolean f16252f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final int f16253g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final int f16254h1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final int f16255i1;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final int f16256j1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final int f16257k1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public final int f16258l1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public boolean f16259m1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public int f16260n1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public int f16261o1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public boolean f16262p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public boolean f16263q1;
    public AudioManager r1;
    public Runnable s1;
    public Runnable t1;
    public Runnable u1;
    public Runnable v1;
    public String w1;

    /* JADX INFO: renamed from: module.sound.a$a, reason: collision with other inner class name */
    public class RunnableC0081a implements Runnable {
        public RunnableC0081a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.X(16, false);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = SystemProperties.getInt("ro.lsec.i2s_event", 0) == 1;
            if (a.x1) {
                Log.e("soundMute1", "========>>>  akClkRstDelay i2sEvent: " + z2);
            }
            if (z2) {
                a aVar = a.this;
                int[] iArr = aVar.V0;
                if ((iArr[0] & 192) == 128 && (iArr[11] & 2) == 0) {
                    aVar.L1();
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.l2();
            a.this.c2(100);
            k.a().removeCallbacks(a.this.u1);
            k.a().postDelayed(a.this.u1, 500L);
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16267a = 0;

        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k.a().removeCallbacks(this);
            int iM = s0.m("ii2s.on", 0);
            if (iM == 1 && this.f16267a != iM) {
                this.f16267a = iM;
                k.a().removeCallbacks(a.this.s1);
                a.this.f16263q1 = false;
                k.a().postDelayed(a.this.s1, 500L);
                s0.F("ii2s.on", "0");
            } else if (iM == 0) {
                this.f16267a = 0;
            }
            k.a().postDelayed(this, 1000L);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("soundMute1", "  i2sResetClk ============>> needInit : " + a.this.f16263q1);
            a aVar = a.this;
            if (aVar.f16263q1) {
                aVar.l2();
            }
            a.this.c2(300);
            a.this.s1.run();
            k.a().removeCallbacks(a.this.u1);
            k.a().postDelayed(a.this.u1, 500L);
        }
    }

    public a(int i2, int i3, n nVar) {
        super(i2, i3);
        this.I0 = new RunnableC0081a();
        this.J0 = new int[]{-12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
        this.K0 = new int[]{50, 12, 14, 80, 12, 14, 125, 12, 14, 200, 12, 14, 500, 12, 14, 800, 12, 14, 1000, 12, 14, 2000, 12, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 12, 14, 16000, 12, 14};
        int[] iArr = {50, 12, 14, 80, 12, 14, 125, 12, 14, 200, 12, 14, 500, 12, 14, 800, 12, 14, 1000, 12, 14, 2000, 12, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 12, 14, 16000, 12, 14};
        this.L0 = iArr;
        int[] iArr2 = {50, 16, 14, 80, 17, 14, 125, 17, 14, 200, 14, 14, 500, 9, 14, 800, 9, 14, 1000, 10, 14, 2000, 15, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 16, 14, 5000, 17, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 17, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 15, 14};
        this.M0 = iArr2;
        int[] iArr3 = {50, 12, 14, 80, 11, 14, 125, 11, 14, 200, 10, 14, 500, 8, 14, 800, 9, 14, 1000, 10, 14, 2000, 12, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 14, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 15, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 14, 14};
        this.N0 = iArr3;
        int[] iArr4 = {50, 14, 14, 80, 13, 14, 125, 14, 14, 200, 13, 14, 500, 12, 14, 800, 12, 14, 1000, 12, 14, 2000, 12, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 15, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 14, 14};
        this.O0 = iArr4;
        int[] iArr5 = {50, 14, 14, 80, 15, 14, 125, 16, 14, 200, 17, 14, 500, 13, 14, 800, 12, 14, 1000, 11, 14, 2000, 10, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 14, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 15, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 14, 14};
        this.P0 = iArr5;
        int[] iArr6 = {50, 8, 14, 80, 9, 14, 125, 11, 14, 200, 12, 14, 500, 14, 14, 800, 15, 14, 1000, 16, 14, 2000, 16, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 16, 14, 5000, 16, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 16, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 16, 14};
        this.Q0 = iArr6;
        int[] iArr7 = {50, 17, 14, 80, 16, 14, 125, 17, 14, 200, 13, 14, 500, 10, 14, 800, 12, 14, 1000, 12, 14, 2000, 13, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 14, 14, 5000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 15, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 14, 14};
        this.R0 = iArr7;
        int[] iArr8 = {50, 11, 14, 80, 13, 14, 125, 16, 14, 200, 17, 14, 500, 17, 14, 800, 17, 14, 1000, 16, 14, 2000, 14, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 14, 14, 5000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 12, 14, 16000, 12, 14};
        this.S0 = iArr8;
        this.T0 = null;
        this.U0 = false;
        this.V0 = new int[15];
        this.W0 = new int[5];
        this.X0 = new int[5];
        this.Y0 = false;
        this.Z0 = false;
        this.f16247a1 = false;
        this.f16248b1 = new int[]{5, 5};
        this.f16249c1 = new int[]{90, 5};
        this.f16250d1 = 5;
        this.f16251e1 = 5;
        this.f16252f1 = false;
        this.f16253g1 = 1;
        this.f16254h1 = 1;
        this.f16255i1 = 1;
        this.f16256j1 = 0;
        this.f16257k1 = 1;
        this.f16258l1 = 1;
        this.f16259m1 = false;
        this.f16260n1 = 0;
        this.f16261o1 = 0;
        this.f16262p1 = true;
        this.f16263q1 = false;
        this.r1 = null;
        this.s1 = new b();
        this.t1 = new c();
        this.u1 = new d();
        this.v1 = new e();
        this.w1 = "/sys/lsecinfo/i2s_ampmute_enable";
        Z0(0, this.K0);
        Z0(1, iArr);
        Z0(2, iArr2);
        Z0(3, iArr3);
        Z0(4, iArr4);
        Z0(5, iArr5);
        Z0(6, iArr6);
        Z0(7, iArr7);
        Z0(8, iArr8);
        u0.b.V3 = false;
        x(D1);
        f.f18047f0 = 24;
        this.r1 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
        if (nVar == null) {
            throw new RuntimeException("C7602 i2c  Device Can't be NULL");
        }
        this.T0 = nVar;
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (x1) {
            Log.e("c7602", "set volume =====" + i2);
        }
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        if (i2 != this.f15054g) {
            this.f15054g = i2;
        }
        Y1(i2);
        E1((int) (((!this.A ? 0 : f.V0) * i2) / 10.0f));
        if (i2 >= 25) {
            g2();
        }
    }

    @Override // module.sound.AudioDevice
    public boolean B() {
        if (u0.b.n4 == 0 || u0.b.f17320f == 0 || u0.b.f17306a0 == 0) {
            return false;
        }
        int[] iArrR2 = r2(1, 75);
        int[] iArrR3 = r2(1, 64);
        int[] iArr = this.V0;
        return (iArr[11] == (iArrR2[0] & 255) && iArr[0] == (iArrR3[0] & 255)) ? false : true;
    }

    @Override // module.sound.AudioDevice
    public void C0(int i2, int i3) {
        if (i2 == 1073741824) {
            int iMax = Math.max(20, Math.min(i3, 200));
            K1(this.f15082u, iMax, this.f16249c1[1]);
            int[] iArr = this.f16249c1;
            if (iArr[0] != iMax) {
                iArr[0] = iMax;
                this.f16263q1 = true;
                H0(AudioDevice.STORE.P2BASS, iArr);
                h.s0(30, i2, iMax);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void D(int i2, int[] iArr, float[] fArr, String[] strArr) {
        super.D(i2, iArr, fArr, strArr);
        switch (i2) {
            case 37:
                if (i0(iArr, 1)) {
                    q2(iArr[0]);
                }
                break;
            case 38:
                if (i0(iArr, 1)) {
                    p2(iArr[0]);
                }
                break;
            case 39:
                if (i0(iArr, 1)) {
                    d2(iArr[0]);
                }
                break;
            case 40:
                if (i0(iArr, 1)) {
                    j2(iArr[0]);
                }
                break;
            case 41:
                if (i0(iArr, 2)) {
                    k2(iArr[0], iArr[1]);
                }
                break;
        }
    }

    @Override // module.sound.AudioDevice
    public void D0(int i2, int i3) {
        if (i2 == 1073741824) {
            int iMax = Math.max(0, Math.min(i3, 10));
            K1(this.f15082u, this.f16249c1[0], iMax);
            int[] iArr = this.f16249c1;
            if (iArr[1] != iMax) {
                iArr[1] = iMax;
                this.f16263q1 = true;
                H0(AudioDevice.STORE.P2BASS, iArr);
                h.s0(29, i2, iMax);
            }
        }
    }

    public void D1(int i2, int i3, int i4, int i5) {
        int[] iArr = C1;
        u2(false, 261, iArr[i2] << 12, iArr[i3] << 12, iArr[i4] << 12, iArr[i5] << 12);
    }

    @Override // module.sound.AudioDevice
    public void E0(boolean z2) {
        int[] iArr = this.f16249c1;
        K1(z2, iArr[0], iArr[1]);
        if (this.f15082u == z2) {
            return;
        }
        this.f15082u = z2;
        this.f16263q1 = true;
        super.E0(z2);
    }

    public void E1(int i2) {
        if (i2 > 36) {
            return;
        }
        x2(199, AudioDevice.G0[i2]);
    }

    @Override // module.sound.AudioDevice
    public void F() {
        L0(0, 5);
        L0(1, 3);
        L0(2, 15);
        L0(3, 5);
        L0(4, 2);
        L0(5, 1);
        L0(6, 4);
        L0(7, 5);
        L0(8, 5);
        L0(9, 5);
        L0(10, 5);
        L0(11, 5);
        L0(12, 5);
        L0(13, 1);
        L0(14, 1);
        L0(15, 5);
        L0(16, 5);
    }

    public void F1(String str) {
        if (x1) {
            Log.d("soundMute1", "BspHardMuteConfig():" + str);
        }
        try {
            FileWriter fileWriter = new FileWriter(this.w1, false);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // module.sound.AudioDevice
    public void G(int i2) {
        super.G(i2);
        if (i2 == 1) {
            I0(AudioDevice.STORE.CUSTOMS_EQ);
            I0(AudioDevice.STORE.MODE);
            this.f15062k = -1;
            C();
            n0();
            h(1);
            return;
        }
        if (i2 == 3) {
            I0(AudioDevice.STORE.SURRON);
            I0(AudioDevice.STORE.SURRLEVEL);
            I0(AudioDevice.STORE.RANGE);
            I0(AudioDevice.STORE.RANGE_LEVEL);
            l1(true);
            j1(1073741824, 5);
            q2(1);
            p2(5);
            return;
        }
        if (i2 == 4) {
            I0(AudioDevice.STORE.P2BASSON);
            I0(AudioDevice.STORE.P2BASS);
            E0(true);
            C0(1073741824, 90);
            D0(1073741824, 5);
            return;
        }
        if (i2 != 5) {
            return;
        }
        I0(AudioDevice.STORE.HPFFA);
        I0(AudioDevice.STORE.HIGH_PITCH);
        j2(0);
        g0(1073741824, 5);
        k2(1073741824, 5);
    }

    public int I1(double d2, int i2) {
        double dM2 = m2(-1.34217728E8d, n2(1.34217727E8d, d2 * 1.34217728E8d * Math.pow(2.0d, -i2)));
        if (dM2 < 0.0d) {
            dM2 += 2.68435456E8d;
        }
        return (int) s2(dM2 + 0.5d, 0.0d, 2.68435456E8d);
    }

    public short J1(double d2, int i2) {
        double dM2 = m2(-32768.0d, n2(32767.0d, d2 * 32768.0d * Math.pow(2.0d, -i2)));
        if (dM2 < 0.0d) {
            dM2 += 65536.0d;
        }
        return (short) s2(dM2 + 0.5d, 0.0d, 65536.0d);
    }

    public void K1(boolean z2, int i2, int i3) {
        if (y1 != z2) {
            V1(true);
        }
        if (z2) {
            int i4 = ((i3 * 4194304) - 20971520) + 100663296;
            v2(2, 129, 102, i4, i4);
            v2(2, 129, 109, 67108864, 67108864);
            u2(false, 104, Z1(48000, 2, i2, 0.707d, 0, 0));
        } else {
            w2(L1);
        }
        if (y1 != z2) {
            V1(false);
        }
        y1 = z2;
    }

    public void L1() {
        if (x1) {
            Log.e("soundMute1", "========>>>  akClkReset START ");
        }
        b2();
        i.a0(300L);
        M1(true);
        i.a0(10L);
        M1(false);
        c2(300);
        if (x1) {
            Log.e("soundMute1", "========>>>  akClkReset END ");
        }
    }

    @Override // module.sound.AudioDevice
    public void M(int i2, int i3) {
        int i4 = this.f15072p * i2;
        this.f15074q[i4 + 1] = i3;
        this.f16263q1 = true;
        int iE2 = e2(this.J0[f2(i3)]);
        int[] iArr = this.f15074q;
        int[] iArrZ1 = Z1(48000, 1, iArr[i4], ((double) iArr[i4 + 2]) / 10.0d, iE2, (i2 == 6 || i2 == 13) ? 1 : 0);
        int i5 = i2 * 10;
        u2(false, i5 + 121, iArrZ1);
        u2(false, i5 + 126, iArrZ1);
        super.M(i2, i3);
    }

    public void M1(boolean z2) {
        int[] iArr = new int[1];
        iArr[0] = z2 ? this.V0[1] & 127 : this.V0[1] | 128;
        x2(193, iArr);
    }

    public void N1(boolean z2) {
        w2(z2 ? I1 : H1);
    }

    @Override // module.sound.AudioDevice
    public void O(int i2, int i3) {
        int i4 = this.f15072p * i2;
        int i5 = i4 + 2;
        int[] iArr = this.f15074q;
        iArr[i5] = i3;
        int i6 = iArr[i4 + 1];
        int[] iArr2 = this.J0;
        if (i6 < iArr2.length) {
            this.f16263q1 = true;
            int iE2 = e2(iArr2[f2(i6)]);
            int[] iArr3 = this.f15074q;
            int[] iArrZ1 = Z1(48000, 1, iArr3[i4], ((double) iArr3[i5]) / 10.0d, iE2, (i2 == 6 || i2 == 13) ? 1 : 0);
            int i7 = i2 * 10;
            u2(false, i7 + 121, iArrZ1);
            u2(false, i7 + 126, iArrZ1);
        }
        super.O(i2, i3);
    }

    @Override // module.sound.AudioDevice
    public void O0(boolean z2) {
        super.O0(z2);
        this.f15084v = true;
    }

    public void O1(boolean z2, int i2) {
        if (!z2) {
            w2(N1);
            return;
        }
        o2(true);
        s0.C(100L);
        v2(2, 129, 116, ((i2 * 4194304) - 20971520) + 58716160, 29528064);
        v2(5, 132, 111, 2551808, 54349824, 250155008, 246693888, 44097536);
        s0.C(100L);
        o2(false);
    }

    public void P1(boolean z2, int i2, int i3) {
        int i4;
        int i5 = i2 * 1000;
        if (z1 != z2) {
            V1(true);
        }
        if (z2) {
            int i6 = (i3 * 8388608) - 41943040;
            if (i5 < 5000) {
                i4 = 5000;
            } else {
                i4 = i5 > 20000 ? 20000 : i5;
            }
            v2(3, 130, 31, 26173440, 32882688, 0);
            int i7 = i6 + 59097088;
            v2(1, 128, 39, i7);
            v2(1, 128, 40, 67108864);
            v2(1, 128, 43, 67108864);
            v2(1, 128, 44, i7);
            u2(false, 26, Z1(48000, 6, i4, 0.2d, 0, 0));
            u2(false, 34, Z1(48000, 8, 200, 0.707d, -30, 0));
        } else {
            w2(F1);
        }
        if (z1 != z2) {
            V1(false);
        }
        z1 = z2;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0041  */
    /* JADX WARN: Code duplicated, block: B:24:0x0047  */
    public void Q1() {
        int i2;
        int[] iArr = this.V0;
        if ((iArr[0] & 192) != 128 || (iArr[11] & 2) != 0) {
            if (R1 != 0) {
                R1 = 0;
                return;
            }
            return;
        }
        int[] iArr2 = this.W0;
        if (iArr2[0] == 0 && iArr2[1] == 0 && iArr2[2] == 0 && iArr2[3] == 0) {
            i2 = R1;
            if (i2 < 10000) {
                R1 = i2 + 1;
            }
        } else {
            int i3 = iArr2[0];
            int[] iArr3 = this.X0;
            if (i3 == iArr3[0] && iArr2[1] == iArr3[1] && iArr2[2] == iArr3[2] && iArr2[3] == iArr3[3]) {
                i2 = R1;
                if (i2 < 10000) {
                    R1 = i2 + 1;
                }
            } else if (R1 != 0) {
                R1 = 0;
            }
        }
        int[] iArr4 = this.X0;
        iArr4[0] = iArr2[0];
        iArr4[1] = iArr2[1];
        iArr4[2] = iArr2[2];
        iArr4[3] = iArr2[3];
        if (R1 > 2) {
            R1 = 1;
            if (SystemProperties.getInt("ro.lsec.i2s_event", 0) != 1) {
                L1();
                if (x1) {
                    Log.d("jason", "AKM7602 RST for no bits or LR clk!!!");
                }
            }
        }
    }

    public void R1(int i2) {
        boolean z2 = i2 / 10 != 0;
        int i3 = i2 % 10;
        int[] iArr = this.V0;
        iArr[0] = iArr[0] & (-193);
        iArr[0] = iArr[0] & (-49);
        if (x1) {
            Log.e("init", " appId  000  =================>>>    Audio Channel:  " + i3);
        }
        if (z2) {
            int[] iArr2 = this.V0;
            iArr2[11] = iArr2[11] & (-17);
        } else {
            int[] iArr3 = this.V0;
            iArr3[11] = iArr3[11] | 16;
        }
        if (i3 == 5) {
            int[] iArr4 = this.V0;
            iArr4[11] = iArr4[11] & (-3);
            if (!z2) {
                iArr4[0] = iArr4[0] | 128;
            }
        } else {
            int[] iArr5 = this.V0;
            iArr5[11] = iArr5[11] | 2;
            iArr5[11] = iArr5[11] & (-97);
            if (i3 != 1) {
                if (i3 == 2) {
                    iArr5[11] = iArr5[11] | 32;
                } else if (i3 == 3) {
                    iArr5[11] = iArr5[11] | 64;
                } else if (i3 != 4) {
                    return;
                } else {
                    iArr5[11] = iArr5[11] | 96;
                }
            }
        }
        boolean z3 = ((r2(1, 64)[0] & 255) != this.V0[0]) || (r2(1, 75)[0] & 255) != this.V0[11];
        if (SystemProperties.getInt("ro.lsec.i2s_event", 0) != 0) {
            int[] iArr6 = this.V0;
            if ((iArr6[0] & 192) == 128 && (iArr6[11] & 2) == 0) {
                F1("1");
            } else {
                F1("0");
            }
        }
        if (z3) {
            x2(192, this.V0[0]);
            x2(203, this.V0[11]);
            L1();
        }
    }

    public void S1(int i2) {
        int[] iArr = B1;
        int[] iArr2 = {iArr[i2] << 11, iArr[i2] << 11};
        if (x1) {
            Log.e("c7602", "akInputGainSet   index =  " + i2);
        }
        u2(false, 0, iArr2);
    }

    public void T1(boolean z2) {
        w2(z2 ? Q1 : P1);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0126  */
    /* JADX WARN: Code duplicated, block: B:51:? A[RETURN, SYNTHETIC] */
    @Override // module.sound.AudioDevice
    public boolean U(int i2, y.b bVar) {
        boolean z2 = false;
        if (i2 == 9) {
            int[] iArr = this.f15074q;
            for (int i3 = 0; i3 < this.f15060j; i3++) {
                r1(bVar, i2, i3, iArr[(this.f15072p * i3) + 1] + x0(i3));
            }
        } else if (i2 == 10) {
            r1(bVar, i2, this.f15062k);
        } else if (i2 == 18) {
            int[] iArr2 = this.f15074q;
            for (int i4 = 0; i4 < this.f15060j; i4++) {
                r1(bVar, i2, i4, iArr2[this.f15072p * i4]);
            }
        } else if (i2 == 20) {
            int[] iArr3 = this.f15074q;
            for (int i5 = 0; i5 < this.f15060j; i5++) {
                r1(bVar, i2, i5, iArr3[(this.f15072p * i5) + 2] + y0(i5));
            }
        } else if (i2 == 26) {
            r1(bVar, i2, this.f15092z);
        } else {
            if (i2 != 34) {
                switch (i2) {
                    case 28:
                        r1(bVar, i2, this.f15082u ? 1 : 0);
                        break;
                    case 29:
                        r1(bVar, i2, 1073741824, this.f16249c1[1]);
                        break;
                    case 30:
                        r1(bVar, i2, 1073741824, this.f16249c1[0]);
                        break;
                    case 31:
                        r1(bVar, i2, 1073741824, this.f16248b1[0]);
                        break;
                    case 32:
                        r1(bVar, i2, this.Y0 ? 1 : 0);
                        break;
                    default:
                        switch (i2) {
                            case 38:
                                r1(bVar, i2, this.A ? 1 : 0);
                                break;
                            case 39:
                                r1(bVar, i2, this.f16252f1 ? 1 : 0);
                                break;
                            case 40:
                                r1(bVar, i2, this.f16251e1);
                                break;
                            case 41:
                                r1(bVar, i2, this.f16259m1 ? 1 : 0);
                                break;
                            case 42:
                                r1(bVar, i2, this.f16247a1 ? 1 : 0);
                                break;
                            case 43:
                                r1(bVar, i2, 1073741824, this.f16248b1[1]);
                                break;
                        }
                        break;
                }
                if (z2) {
                    return z2;
                }
                return super.U(i2, bVar);
            }
            r1(bVar, i2, 1073741824, this.f16250d1);
        }
        z2 = true;
        if (z2) {
            return z2;
        }
        return super.U(i2, bVar);
    }

    public void U1(int i2) {
        if (i2 > 36) {
            return;
        }
        int iMax = i2 == 0 ? E1[i2] : Math.max(p0(), Math.min(E1[i2] - F0(), q0()));
        x2(200, iMax);
        x2(201, iMax);
    }

    public void V1(boolean z2) {
        if (z2) {
            x2(194, this.V0[2] | 240);
            i.a0(50L);
        } else {
            i.a0(50L);
            x2(194, this.V0[2] & 15);
        }
    }

    @Override // module.sound.AudioDevice
    public void W0() {
        super.W0();
        if (x1) {
            Log.e("c7602", " C7602    init   START!!");
        }
        ToolsJni.cmd_251_Normal_Io_Set(0, 0);
        i.a0(20L);
        ToolsJni.cmd_251_Normal_Io_Set(0, 1);
        i.a0(20L);
        w2(A1);
        l2();
        a(u0.b.D);
        o(this.f15092z);
        y1(f.C0);
        if (x1) {
            Log.e("c7602", " C7602    init   END!!");
        }
    }

    public void W1() {
        this.W0[0] = t2(96);
        this.W0[1] = t2(97);
        this.W0[2] = t2(98);
        this.W0[3] = t2(99);
    }

    public void X1(boolean z2, int i2) {
        if (!z2) {
            w2(J1);
            return;
        }
        v2(3, 130, 99, 67108864, 77176832, 191258624);
        v2(4, 131, 90, 77824, 66437120, ((i2 * 6291456) - 31457280) + 59056128, 209379328);
        v2(5, 132, 94, 243998720, 90427392, 6946816, 228810752, 33771520);
    }

    public void Y1(int i2) {
        if (this.f16262p1 && i2 <= 36) {
            int iM1 = m1(i2);
            x2(195, iM1);
            x2(196, iM1);
            x2(197, iM1);
            x2(198, iM1);
        }
    }

    public int[] Z1(int i2, int i3, int i4, double d2, int i5, int i6) {
        double d3;
        double d4;
        double d5;
        double d6;
        double d7;
        double d8;
        int i7;
        double d9;
        double d10;
        double d11;
        double d12;
        double d13;
        double d14;
        double d15;
        double d16;
        double d17;
        short sJ1;
        String str;
        char c2;
        if (x1) {
            Log.d("c7602", String.format("\r\n\t Type:%d,\tFreq:%d,\tQ:%f,\tGain:%d,\tsflag:%d.", Integer.valueOf(i3), Integer.valueOf(i4), Double.valueOf(d2), Integer.valueOf(i5), Integer.valueOf(i6)));
        }
        double d18 = i2;
        double d19 = i4;
        double d20 = (6.283185307179586d * d19) / d18;
        double dSin = Math.sin(d20);
        double d21 = dSin / (d2 * 2.0d);
        double dCos = Math.cos(d20);
        double d22 = i5;
        double dPow = (i5 > 0 ? Math.pow(10.0d, d22 / 20.0d) : Math.pow(10.0d, ((double) (-i5)) / 20.0d)) - 1.0d;
        switch (i3) {
            case 1:
                double dTan = (((d18 / 3.141592653589793d) * Math.tan((d19 * 3.141592653589793d) / d18)) * 3.141592653589793d) / d18;
                double d23 = dTan / d2;
                double dPow2 = d23 + 1.0d + Math.pow(dTan, 2.0d);
                double dPow3 = (Math.pow(dTan, 2.0d) * 2.0d) - 2.0d;
                double dPow4 = (1.0d - d23) + Math.pow(dTan, 2.0d);
                double d24 = d23 * (dPow + 1.0d);
                double dPow5 = d24 + 1.0d + Math.pow(dTan, 2.0d);
                double dPow6 = (1.0d - d24) + Math.pow(dTan, 2.0d);
                if (i5 < 0) {
                    d3 = dPow2 / dPow5;
                    d4 = dPow3 / dPow5;
                    d5 = dPow4 / dPow5;
                    d6 = dPow6 / dPow5;
                } else {
                    d3 = dPow5 / dPow2;
                    d4 = dPow3 / dPow2;
                    d5 = dPow6 / dPow2;
                    d6 = dPow4 / dPow2;
                }
                d7 = d4;
                d8 = d3;
                i7 = 1;
                d9 = d5;
                d10 = d7;
                break;
            case 2:
                d11 = 1.0d - dCos;
                d12 = d11 / 2.0d;
                double d25 = d21 + 1.0d;
                d6 = (1.0d - d21) / d25;
                d7 = (dCos * (-2.0d)) / d25;
                d8 = d12 / d25;
                i7 = 1;
                d10 = d11 / d25;
                d9 = d8;
                break;
            case 3:
                double dSin2 = (Math.sin(d20) - 1.0d) / Math.cos(d20);
                d7 = dSin2;
                d10 = (dSin2 + 1.0d) / 2.0d;
                d8 = d10;
                d9 = 0.0d;
                d6 = 0.0d;
                i7 = 1;
                break;
            case 4:
                double d26 = dCos + 1.0d;
                d12 = d26 / 2.0d;
                d11 = -d26;
                double d27 = d21 + 1.0d;
                d6 = (1.0d - d21) / d27;
                d7 = (dCos * (-2.0d)) / d27;
                d8 = d12 / d27;
                i7 = 1;
                d10 = d11 / d27;
                d9 = d8;
                break;
            case 5:
                double dSin3 = (Math.sin(d20) - 1.0d) / Math.cos(d20);
                double d28 = 1.0d - dSin3;
                double d29 = d28 / 2.0d;
                d10 = (-d28) / 2.0d;
                d8 = d29;
                d6 = 0.0d;
                i7 = 1;
                d7 = dSin3;
                d9 = 0.0d;
                break;
            case 6:
                double d30 = d21 + 1.0d;
                i7 = 1;
                d10 = 0.0d / d30;
                d9 = (-d21) / d30;
                d6 = (1.0d - d21) / d30;
                d7 = (dCos * (-2.0d)) / d30;
                d8 = d21 / d30;
                break;
            case 7:
                double d31 = d21 + 1.0d;
                d10 = (dCos * (-2.0d)) / d31;
                d7 = d10;
                d8 = 1.0d / d31;
                i7 = 1;
                d6 = (1.0d - d21) / d31;
                d9 = d8;
                break;
            case 8:
                double dSqrt = Math.sqrt(Math.pow(10.0d, d22 / 20.0d));
                double d32 = dSqrt + 1.0d;
                double d33 = dSqrt - 1.0d;
                double d34 = d33 * dCos;
                double d35 = d32 - d34;
                double dSqrt2 = (Math.sqrt(dSqrt) / d2) * dSin;
                double d36 = (d35 + dSqrt2) * dSqrt;
                double d37 = dCos * d32;
                double d38 = 2.0d * dSqrt * (d33 - d37);
                d13 = dSqrt * (d35 - dSqrt2);
                double d39 = d32 + d34;
                d14 = d39 + dSqrt2;
                d15 = (d33 + d37) * (-2.0d);
                d16 = d39 - dSqrt2;
                d17 = d36 / d14;
                d10 = d38 / d14;
                d9 = d13 / d14;
                d7 = d15 / d14;
                d6 = d16 / d14;
                d8 = d17;
                i7 = 1;
                break;
            case 9:
                double dSqrt3 = Math.sqrt(Math.pow(10.0d, d22 / 20.0d));
                double d40 = dSqrt3 + 1.0d;
                double d41 = dSqrt3 - 1.0d;
                double d42 = d41 * dCos;
                double d43 = d40 + d42;
                double dSqrt4 = (Math.sqrt(dSqrt3) / d2) * dSin;
                double d44 = (d43 + dSqrt4) * dSqrt3;
                double d45 = dCos * d40;
                double d46 = (-2.0d) * dSqrt3 * (d41 + d45);
                d13 = dSqrt3 * (d43 - dSqrt4);
                double d47 = d40 - d42;
                d14 = d47 + dSqrt4;
                d15 = (d41 - d45) * 2.0d;
                d16 = d47 - dSqrt4;
                d17 = d44 / d14;
                d10 = d46 / d14;
                d9 = d13 / d14;
                d7 = d15 / d14;
                d6 = d16 / d14;
                d8 = d17;
                i7 = 1;
                break;
            default:
                d9 = 0.0d;
                d10 = 0.0d;
                d6 = 0.0d;
                d7 = 0.0d;
                d8 = 0.0d;
                i7 = 1;
                break;
        }
        short sJ2 = J1(d9, i7);
        short sJ3 = J1(d10, i7);
        double d48 = -d6;
        short sJ4 = J1(d48, i7);
        double d49 = -d7;
        short sJ5 = J1(d49, i7);
        if (i6 != 0) {
            sJ1 = J1(d8, 2);
            i7 = 1;
        } else {
            sJ1 = J1(d8, i7);
        }
        int iI1 = I1(d9, i7);
        int iI2 = I1(d10, i7);
        int iI3 = I1(d48, i7);
        int iI4 = I1(d49, i7);
        int iI5 = i6 != 0 ? I1(d8, 2) : I1(d8, i7);
        if (x1) {
            Object[] objArr = new Object[5];
            objArr[0] = Short.valueOf(sJ2);
            objArr[i7] = Short.valueOf(sJ3);
            objArr[2] = Short.valueOf(sJ1);
            objArr[3] = Short.valueOf(sJ4);
            objArr[4] = Short.valueOf(sJ5);
            str = "c7602";
            Log.d(str, String.format("\t AK7602_Calc(A2:%04X,A1:%04X,A0:%04X,B2:%04X,B1:%04X)", objArr));
        } else {
            str = "c7602";
        }
        if (x1) {
            c2 = 4;
            Log.d(str, String.format("\t Data<DA2:%08X,DA1:%08X,DA0:%08X,DB2:%08X,DB1:%08X>\r\n", Integer.valueOf(iI1), Integer.valueOf(iI2), Integer.valueOf(iI5), Integer.valueOf(iI3), Integer.valueOf(iI4)));
        } else {
            c2 = 4;
        }
        int[] iArr = new int[5];
        iArr[0] = iI3;
        iArr[1] = iI4;
        iArr[2] = iI1;
        iArr[3] = iI2;
        iArr[c2] = iI5;
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // y0.e
    public void a(int i2) {
        if (x1) {
            Log.e("soundMute1", "========>>>  appId() START ");
        }
        this.f15090y = true;
        if (h0.c.G == 1) {
            i2 = 2;
        }
        int i3 = u0.b.E;
        if (i3 >= 0) {
            i2 = i3;
        }
        boolean z2 = this.f15064l != i2;
        this.f15064l = i2;
        if (z2) {
            b2();
        }
        int i4 = this.f15048d.get(i2) & 15;
        if (i4 < 0) {
            i4 = 5;
        }
        boolean z3 = i4 == 5;
        c4 c4Var = j4.f16466d;
        boolean z4 = z3;
        if (c4Var != null && c4Var.l3()) {
            z4 = z3;
            z4 = false;
        }
        z4 = z3;
        this.f16263q1 = z4;
        boolean z5 = z4;
        if (this.f15086w && z2) {
            if (i2 == 2) {
                z5 = 0;
            } else if (!z4) {
                z5 = 1;
            }
            if (d0.c(AudioManager.class.getName(), "setVoiceSwitch2iis", Boolean.TYPE) == null) {
                if (x1) {
                    Log.e("soundMute1", "========>>>  appId() setWiredDeviceConnectionState  sdsp: " + z5);
                }
                String name = AudioManager.class.getName();
                AudioManager audioManager = this.r1;
                Class cls = Integer.TYPE;
                d0.e(name, audioManager, "setWiredDeviceConnectionState", new Class[]{cls, cls, String.class, String.class}, 8, Integer.valueOf(!z5), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
        R1(i4);
        int i5 = f.f18090z0[i2];
        if (i5 >= 0 && i5 < 48) {
            m(i5, f.f18084w0[i5]);
        }
        l2();
        if (z2) {
            c2(500);
        }
        this.f15090y = false;
        if (x1) {
            Log.e("soundMute1", "========>>>  appId() END ");
        }
    }

    public boolean a2(int[] iArr, int i2) {
        int[] iArrI2;
        return i2 == 0 || (iArrI2 = i2(i2)) == null || !Arrays.equals(iArr, iArrI2);
    }

    public void b2() {
        R1 = 1;
        m.a().removeCallbacks(this.I0);
        h.X(16, true);
    }

    @Override // module.sound.AudioDevice
    public int[] c1() {
        int i2;
        int i3;
        if (u0.b.n4 != 0) {
            W1();
            Q1();
        } else {
            int[] iArr = this.W0;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
        }
        if (x1) {
            Log.e("c7602", "=============>>>> spectrumData : " + Arrays.toString(this.W0));
        }
        int i4 = 0;
        boolean z2 = false;
        while (true) {
            int[] iArr2 = this.W0;
            if (i4 >= iArr2.length) {
                break;
            }
            z2 = z2 || iArr2[i4] >= 2;
            i4++;
        }
        boolean z3 = z2 || e0();
        if ((Configure.Property.BLUETOOTH_TYPE.d(0) == 7 && ((i3 = u0.b.D) == 3 || i3 == 2)) || u0.b.D == 1) {
            z3 = true;
        }
        if (this.J) {
            if (z3) {
                if (this.f16261o1 >= 20) {
                    if (x1) {
                        Log.e("c7602", "=========================>>>> AUDIO  START <<<<<");
                    }
                    this.f16262p1 = true;
                    Y1(this.f15054g);
                    j(null);
                }
                this.f16261o1 = 0;
            } else {
                int i5 = this.f16261o1;
                if (i5 < 21) {
                    this.f16261o1 = i5 + 1;
                }
                if (this.f16261o1 == 20) {
                    if (x1) {
                        Log.e("c7602", "=========================>>>> AUDIO STOP <<<<<");
                    }
                    int[] iArr3 = C1;
                    int length = iArr3.length - 1;
                    D1(iArr3[length], iArr3[length], iArr3[length], iArr3[length]);
                    Y1(0);
                    this.f16262p1 = false;
                }
            }
            if (x1) {
                Log.e("c7602", "=============******  >>>>   hasAudio : " + z3 + "  checkAudioCnt:" + this.f16261o1);
            }
        }
        int[] iArr4 = new int[7];
        int i6 = u0.b.D == 4 ? DhcpPacket.MAX_LENGTH : 255;
        for (int i7 = 0; i7 < 4; i7++) {
            int i8 = i7 * 2;
            int[] iArr5 = this.W0;
            iArr4[i8] = (iArr5[i7] * i6) / 1000;
            int i9 = i8 + 1;
            if (i9 < 7 && (i2 = i7 + 1) < 4) {
                iArr4[i9] = ((iArr5[i7] + iArr5[i2]) * i6) / 2000;
            }
        }
        return iArr4;
    }

    public void c2(int i2) {
        m.a().removeCallbacks(this.I0);
        m.a().postDelayed(this.I0, i2);
    }

    public void d2(int i2) {
        boolean z2 = i2 == 1;
        if (z2 != this.f16259m1) {
            this.f16259m1 = z2;
            N1(z2);
            G0(AudioDevice.STORE.DYNAMIC, i2);
            h.s0(41, i2);
        }
    }

    public final int e2(int i2) {
        int i3 = this.f15054g;
        return i3 >= 25 ? Math.max(-12, Math.min(36 - i3, Math.min(12, i2))) : i2;
    }

    public int f2(int i2) {
        int length = this.J0.length - 1;
        int i3 = length / 2;
        int i4 = i2 > i3 ? ((int) ((((i2 - i3) * 6.0f) / (length - i3)) + 0.5f)) + 12 : i2;
        if (x1) {
            Log.e("c7602", "fixGainIndex ==== > index : " + i2 + " gindex: " + i4);
        }
        return i4;
    }

    @Override // module.sound.AudioDevice
    public void g0(int i2, int i3) {
        if (i2 == 1073741824) {
            int iMax = Math.max(5, Math.min(i3, 20));
            P1(this.f16247a1, iMax, this.f16248b1[1]);
            int[] iArr = this.f16248b1;
            if (iArr[0] != iMax) {
                iArr[0] = iMax;
                this.f16263q1 = true;
                H0(AudioDevice.STORE.HPFFA, iArr);
                h.s0(31, i2, iMax);
            }
        }
    }

    public void g2() {
        int[] iArr = this.f15074q;
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        int i2 = this.f15060j;
        int[] iArr2 = new int[i2];
        int[] iArr3 = new int[i2];
        int[] iArr4 = new int[i2];
        int i3 = 0;
        while (i3 < this.f15060j) {
            int i4 = this.f15072p;
            iArr3[i3] = iArrCopyOf[i3 * i4];
            iArr2[i3] = iArrCopyOf[(i3 * i4) + 1];
            iArr4[i3] = iArrCopyOf[(i4 * i3) + 2];
            if (x1) {
                Log.e("c7602", "   <<<>>>> eq index: " + i3 + "  freq : " + iArr3[i3] + "  gain : " + iArr2[i3] + "   fq : " + iArr4[i3]);
            }
            int[] iArrZ1 = Z1(48000, 1, iArr3[i3], ((double) iArr4[i3]) / 10.0d, e2(this.J0[f2(iArr2[i3])]), (i3 == 6 || i3 == 13) ? 1 : 0);
            int i5 = i3 * 10;
            u2(false, i5 + 121, iArrZ1);
            u2(false, i5 + 126, iArrZ1);
            i3++;
        }
    }

    @Override // module.sound.AudioDevice
    public void h0(boolean z2) {
        if (x1) {
            Log.e("soundMute1", "  i2sAudioOn ============>>  " + z2 + "  needInit : " + this.f16263q1);
        }
        k.a().removeCallbacks(this.u1);
        if (g.e.a() == 7) {
            if (!z2) {
                this.f16263q1 = false;
                k.a().removeCallbacks(this.s1);
                k.a().postDelayed(this.s1, 1000L);
                return;
            } else {
                if (this.f16263q1) {
                    b2();
                    k.a().postDelayed(this.t1, 1000L);
                    return;
                }
                return;
            }
        }
        if (x1) {
            Log.e("soundMute1", "  7862 i2sAudioOn ============>>  " + z2 + "  needInit : " + this.f16263q1);
        }
        if (!z2) {
            this.f16263q1 = false;
            k.a().removeCallbacks(this.s1);
            k.a().postDelayed(this.s1, 0L);
        } else if (this.f16263q1) {
            b2();
            k.a().postDelayed(this.t1, 500L);
        }
        k.a().postDelayed(this.u1, 500L);
    }

    public void h2(int i2, boolean z2) {
        int[] iArrI2 = i2(i2);
        if (a2(this.f15074q, i2) || z2) {
            this.f15074q = Arrays.copyOf(iArrI2, iArrI2.length);
            int i3 = this.f15060j;
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            int i4 = 0;
            while (i4 < this.f15060j) {
                int i5 = this.f15072p;
                iArr2[i4] = iArrI2[i4 * i5];
                iArr[i4] = iArrI2[(i4 * i5) + 1];
                iArr3[i4] = iArrI2[(i5 * i4) + 2];
                if (x1) {
                    Log.e("c7602", "   <<<>>>> eq index: " + i4 + "  freq : " + iArr2[i4] + "  gain : " + iArr[i4] + "   fq : " + iArr3[i4]);
                }
                int[] iArrZ1 = Z1(48000, 1, iArr2[i4], ((double) iArr3[i4]) / 10.0d, e2(this.J0[f2(iArr[i4])]), (i4 == 6 || i4 == 13) ? 1 : 0);
                int i6 = i4 * 10;
                u2(false, i6 + 121, iArrZ1);
                u2(false, i6 + 126, iArrZ1);
                i4++;
            }
            if (x1) {
                Log.e("c7602", "   <<<>>>> eqGain  last  bands: " + this.f15060j);
                Log.e("c7602", "   <<<>>>> eqGain  last  mode: " + i2);
                Log.e("c7602", "   <<<>>>> eqGain  last  EQ_CUSTOM: " + Arrays.toString(this.K0));
                Log.e("c7602", "   <<<>>>> eqGain  last  eqCustom: " + Arrays.toString(this.f15074q));
                Log.e("c7602", "    <<<>>>>eqGain  last  eq: " + Arrays.toString(iArrI2));
                Log.e("c7602", "gains: " + Arrays.toString(iArr));
            }
            h.H(iArr, iArr2, iArr3, this.f15060j, this);
        }
    }

    public int[] i2(int i2) {
        int[] iArr = this.L0;
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        int[] iArrX = X(i2);
        if (iArrX != null) {
            iArrCopyOf = Arrays.copyOf(iArrX, iArrX.length);
        }
        if (x1) {
            Log.e("c7602", "   load  eq: " + Arrays.toString(iArrX));
        }
        if (x1) {
            Log.e("c7602", "   load  array: " + Arrays.toString(iArrCopyOf));
        }
        return iArrCopyOf;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (x1) {
            Log.e("c7602", "===============>> field2Ic  DataSound.sBalDst = " + f.L0 + "  DataSound.sFadeDst =" + f.M0);
        }
        if (this.f15050e) {
            this.f16263q1 = true;
            int iA = o0.a(f.L0, 0, 16);
            int iA2 = o0.a(f.M0, 0, 16);
            if (h0.c.G != 0 && u0.b.j2) {
                int[] iArrL2 = j4.f16466d.L2();
                int i2 = iArrL2[0];
                iA2 = iArrL2[1];
                iA = i2;
            }
            int iMax = Math.max(iA, iA2);
            int i3 = 16 - iA;
            int iMax2 = Math.max(i3, iA2);
            int i4 = 16 - iA2;
            int iMax3 = Math.max(iA, i4);
            int iMax4 = Math.max(i3, i4);
            if (x1) {
                Log.e("c7602", "=============>>>  field2Ic: " + String.format("fl = %d, fr = %d, rl = %d, rr = %d", Integer.valueOf(iMax), Integer.valueOf(iMax2), Integer.valueOf(iMax3), Integer.valueOf(iMax4)));
            }
            D1(iMax, iMax2, iMax3, iMax4);
            super.j(null);
        }
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        if (i3 < 0) {
            i3 = 5;
        }
        return i3 == 5 ? 1 : 0;
    }

    @Override // module.sound.AudioDevice
    public void j1(int i2, int i3) {
        if (i2 == 1073741824) {
            int iMax = Math.max(0, Math.min(i3, 10));
            X1(this.Y0, iMax);
            if (this.f16250d1 != iMax) {
                this.f16250d1 = iMax;
                this.f16263q1 = true;
                G0(AudioDevice.STORE.SURRLEVEL, iMax);
                super.j1(i2, iMax);
            }
        }
    }

    public void j2(int i2) {
        boolean z2 = i2 == 1;
        if (z2 != this.f16247a1) {
            this.f16247a1 = z2;
            int[] iArr = this.f16248b1;
            P1(z2, iArr[0], iArr[1]);
            G0(AudioDevice.STORE.HIGH_PITCH, i2);
            h.s0(42, i2);
        }
    }

    public void k2(int i2, int i3) {
        if (i2 == 1073741824) {
            int iMax = Math.max(0, Math.min(i3, 10));
            P1(this.f16247a1, this.f16248b1[0], iMax);
            int[] iArr = this.f16248b1;
            if (iArr[1] != iMax) {
                iArr[1] = iMax;
                H0(AudioDevice.STORE.HPFFA, iArr);
                h.s0(43, i2, iMax);
            }
        }
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        boolean z2 = i2 == 1;
        this.f15052f = z2;
        this.f16263q1 = true;
        T1(z2);
        super.l(i2);
    }

    @Override // module.sound.AudioDevice
    public void l1(boolean z2) {
        X1(z2, this.f16250d1);
        if (this.Y0 == z2) {
            return;
        }
        this.Y0 = z2;
        this.f16263q1 = true;
        super.l1(z2);
    }

    public void l2() {
        if (x1) {
            Log.e("soundMute1", "========>>>  init() START ");
        }
        this.f16263q1 = false;
        N1(this.f16259m1);
        T1(this.f15052f);
        O1(this.f16252f1, this.f16251e1);
        boolean z2 = this.f16247a1;
        int[] iArr = this.f16248b1;
        P1(z2, iArr[0], iArr[1]);
        boolean z3 = this.f15082u;
        int[] iArr2 = this.f16249c1;
        K1(z3, iArr2[0], iArr2[1]);
        X1(this.Y0, this.f16250d1);
        h2(this.f15062k, true);
        j(null);
        int i2 = f.f18090z0[u0.b.D];
        if (i2 >= 0 && i2 < 48) {
            m(i2, f.f18084w0[i2]);
        }
        if (x1) {
            Log.e("soundMute1", "========>>>  init() END ");
        }
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (x1) {
            Log.e("c7602", "  sb===================>>  index   " + i2 + "  value " + i3);
        }
        if (i2 < 0 || i2 >= 48 || (i4 = u0.b.D) < 0 || i4 >= 20 || f.f18090z0[i4] != i2) {
            return;
        }
        int iA = o0.a(i3, 0, 20);
        this.f16263q1 = true;
        S1(iA);
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
        this.Y0 = Y(AudioDevice.STORE.SURRON, 1) == 1;
        this.Z0 = Y(AudioDevice.STORE.MIXON, 1) == 1;
        this.f15082u = Y(AudioDevice.STORE.P2BASSON, 1) == 1;
        this.f16252f1 = Y(AudioDevice.STORE.RANGE, 1) == 1;
        this.f16259m1 = Y(AudioDevice.STORE.DYNAMIC, 1) == 1;
        this.f16247a1 = Y(AudioDevice.STORE.HIGH_PITCH, 0) == 1;
        this.f16248b1 = Z(AudioDevice.STORE.HPFFA, this.f16248b1);
        this.f16249c1 = Z(AudioDevice.STORE.P2BASS, this.f16249c1);
        this.f16251e1 = Y(AudioDevice.STORE.RANGE_LEVEL, this.f16251e1);
        this.f16250d1 = Y(AudioDevice.STORE.SURRLEVEL, this.f16250d1);
    }

    public double m2(double d2, double d3) {
        return d2 > d3 ? d2 : d3;
    }

    public double n2(double d2, double d3) {
        return d2 < d3 ? d2 : d3;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        int iA = !this.A ? 0 : o0.a(i2, 0, 10);
        this.f16260n1 = iA;
        E1((int) (this.f15054g * ((this.D ? 0 : iA) / 10.0f)));
        super.o(this.f16260n1);
    }

    public void o2(boolean z2) {
        Log.e("soundMute1", "  i2sAudioOn ============>>  mute7602 mute " + z2);
        ToolsJni.cmd_251_Normal_Io_Set(2, !z2 ? 1 : 0);
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        return 0;
    }

    public void p2(int i2) {
        int iMax = Math.max(0, Math.min(i2, 10));
        O1(this.f16252f1, iMax);
        if (this.f16251e1 != iMax) {
            this.f16251e1 = iMax;
            G0(AudioDevice.STORE.RANGE_LEVEL, iMax);
            h.s0(40, iMax);
        }
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return 240;
    }

    public void q2(int i2) {
        boolean z2 = i2 == 1;
        if (z2 != this.f16252f1) {
            this.f16252f1 = z2;
            O1(z2, this.f16251e1);
            G0(AudioDevice.STORE.RANGE, i2);
            h.s0(39, i2);
        }
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        this.f15056h = i2;
        U1(i2);
    }

    public int[] r2(int i2, int... iArr) {
        return this.T0.e(i2, 24, false, iArr);
    }

    public double s2(double d2, double d3, double d4) {
        return m2(n2(d2, d4), d3);
    }

    public int t2(int i2) {
        int[] iArrR2 = r2(2, i2);
        return s0.x(iArrR2[0], iArrR2[1]);
    }

    @Override // module.sound.AudioDevice
    public int u1() {
        return super.u1() - 3;
    }

    public int u2(boolean z2, int i2, int... iArr) {
        if (iArr == null || iArr.length == 0 || iArr.length > 5) {
            return -1;
        }
        int length = iArr.length;
        int i3 = length + 3;
        int[] iArr2 = new int[i3];
        iArr2[0] = length;
        if (i2 <= 255) {
            iArr2[1] = z2 ? 180 : (length - 1) | 128;
        } else {
            iArr2[1] = z2 ? 181 : (length - 1) | 144;
        }
        iArr2[2] = i2 % 256;
        System.arraycopy(iArr, 0, iArr2, 3, length);
        if (x1) {
            Log.e("c7602", " writeCarm:  resetFlag: " + z2 + "      " + Integer.toHexString(i2) + "    " + b0.e(iArr, 0, iArr.length));
        }
        if (x1) {
            Log.e("c7602", " writeCarm  data: " + b0.e(iArr2, 0, i3));
        }
        return v2(iArr2);
    }

    @Override // module.sound.AudioDevice
    public void v0(boolean z2) {
        super.v0(z2);
        o2(z2);
    }

    public int v2(int... iArr) {
        if (x1) {
            Log.e("c7602", " writeCmd: " + b0.e(iArr, 0, iArr.length));
        }
        if (iArr == null || iArr.length < 3) {
            return -1;
        }
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = i3 & 240;
        if (i4 == 128 || i4 == 144) {
            i2 = (i3 & 15) + 1;
        } else if (i4 != 176) {
            i2 = 0;
        }
        int i5 = i2 * 4;
        int[] iArr2 = new int[i5];
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = iArr[i6 + 3];
            int i8 = i6 * 4;
            iArr2[i8] = s0.c(i7, 3);
            iArr2[i8 + 1] = s0.c(i7, 2);
            iArr2[i8 + 2] = s0.c(i7, 1);
            iArr2[i8 + 3] = s0.c(i7, 0);
        }
        if (x1) {
            Log.e("c7602", " i2c write data: len  " + i5 + "   Cmd: " + Integer.toHexString(i3) + "   " + Integer.toHexString(iArr[2]) + " " + b0.e(iArr2, 0, i5));
        }
        return y2(i3, iArr[2], iArr2);
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        if (x1) {
            Log.e("soundMute1", "  ===================>>  notifyEqMode   START   ");
        }
        this.f16263q1 = true;
        h2(i2, false);
        if (x1) {
            Log.e("soundMute1", "  ===================>>  notifyEqMode   END   ");
        }
    }

    public void w2(int[][] iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        for (int[] iArr2 : iArr) {
            if (iArr2[0] != 255) {
                if (iArr2[0] == 0 && iArr2[1] >= 192 && iArr2[1] <= 204) {
                    this.V0[iArr2[1] - 192] = iArr2[2];
                }
                int iV2 = v2(iArr2);
                if (x1) {
                    Log.e("init", "  write DATA: " + b0.e(iArr2, 0, iArr2.length) + "    result: " + iV2);
                }
            }
        }
    }

    public int x2(int i2, int... iArr) {
        int iD = this.T0.d(24, new int[]{i2}, iArr);
        if (x1) {
            Log.e("init", "  write DATA: " + b0.e(new int[]{i2}, 0, 1) + "  " + b0.e(iArr, 0, iArr.length) + "  result :  " + iD);
        }
        return iD;
    }

    public int y2(int i2, int i3, int... iArr) {
        int iD = this.T0.d(24, new int[]{i2, i3}, iArr);
        if (x1) {
            Log.e("init", "  write DATA: " + b0.e(new int[]{i2, i3}, 0, 2) + "  " + b0.e(iArr, 0, iArr.length) + "  result :  " + iD);
        }
        return iD;
    }
}
