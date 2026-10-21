package module.sound;

import a.i;
import android.bluetooth.BluetoothClass;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioService;
import android.media.videoeditor.MediaProperties;
import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.net.UrlQuerySanitizer;
import android.net.wifi.WifiStateMachine;
import android.os.Handler;
import android.provider.CalendarContract;
import android.util.TimedRemoteCaller;
import android.view.Window;
import app.App;
import com.syu.ms.R;
import java.util.Arrays;
import n0.c4;
import n0.j4;
import o1.d0;
import o1.h0;
import o1.n;
import o1.o0;
import o1.s0;
import y0.f;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public class DU561 extends AudioDevice {
    public static int N1 = 90;
    public int[] A1;
    public int[] B1;
    public int[] C1;
    public int[] D1;
    public boolean E1;
    public boolean F1;
    public boolean G1;
    public int H1;
    public final boolean I0;
    public int I1;
    public final String J0;
    public int[] J1;
    public final int K0;
    public int K1;
    public final int L0;
    public Handler L1;
    public final int M0;
    public Runnable M1;
    public final int N0;
    public final int O0;
    public final int P0;
    public final int Q0;
    public final int R0;
    public final int S0;
    public final double T0;
    public final double U0;
    public final double V0;
    public final int[] W0;
    public int[] X0;
    public final int[] Y0;
    public final int[] Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public int[] f16102a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final int f16103b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final int f16104c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final int f16105d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public int[] f16106e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public int[] f16107f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public int[] f16108g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public int[] f16109h1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public int[] f16110i1;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public int[] f16111j1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public int[] f16112k1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public int[] f16113l1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public int[] f16114m1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public final int[] f16115n1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public final int[] f16116o1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final int[] f16117p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public final int[] f16118q1;
    public final int[] r1;
    public final int[] s1;
    public final int[] t1;
    public final int[] u1;
    public n v1;
    public int w1;
    public int x1;
    public int y1;
    public AudioManager z1;

    public enum CHANNEL {
        IN1(0),
        IN2(1),
        IN3(2),
        IN4(3);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16124a;

        CHANNEL(int i2) {
            this.f16124a = i2;
        }
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DU561.this.L1.postDelayed(this, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int[] f16126a;

        public b(int[] iArr) {
            this.f16126a = iArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            DU561.this.Z1(this.f16126a);
        }
    }

    public class c {
        public c() {
        }

        public int a(double d2) {
            double dPow;
            if (d2 <= -72.5d) {
                dPow = 0.0d;
            } else {
                if (d2 > 12.0d) {
                    d2 = 12.0d;
                }
                dPow = Math.pow(10.0d, d2 / 20.0d);
            }
            return (int) (dPow * 4096.0d);
        }
    }

    public DU561(n nVar) {
        super(36, 3);
        this.I0 = false;
        this.J0 = "DU561";
        this.K0 = 357;
        this.L0 = 368;
        this.M0 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL;
        this.N0 = 415;
        this.O0 = 0;
        this.P0 = 1;
        this.Q0 = 2;
        this.R0 = 3;
        this.S0 = 4;
        this.T0 = -71.5d;
        this.U0 = 12.0d;
        this.V0 = -72.5d;
        this.W0 = new int[0];
        this.X0 = null;
        this.Y0 = new int[0];
        this.Z0 = new int[0];
        this.f16102a1 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.f16103b1 = 110;
        this.f16104c1 = 110;
        this.f16105d1 = 120;
        this.f16106e1 = new int[]{-720, -590, -510, -450, -400, -360, -320, -290, -270, -260, -250, -240, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10};
        this.f16107f1 = new int[]{-720, -520, -460, -410, -370, -340, -310, -290, -270, -260, -250, -240, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10};
        this.f16108g1 = new int[]{-720, -600, -520, -450, -400, -360, -320, -290, -270, -250, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -25, -20, -15, -10, -5, 0};
        this.f16109h1 = new int[]{24, 24, 24, 24, 24, 24, 24, 24, 24, 30, 36, 42, 48, 54, 60, 66, 255};
        this.f16110i1 = new int[]{-725, -210, -180, -150, -120, -100, -80, -60, -40, -20, 0};
        this.f16111j1 = new int[]{-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.f16112k1 = new int[]{100, 150, 200, 250, 300, MediaProperties.HEIGHT_360, 420, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, MediaProperties.HEIGHT_720, 850, 1000, 1200, 1400, 1600, BluetoothClass.Device.WEARABLE_PAGER, 2100, 2500, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 3500, 4000};
        this.f16113l1 = new int[]{-145, -80, -48, -32, -25, -21, -18, -16, -14, -12, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0};
        this.f16114m1 = new int[]{20, 10, 40, 24, 10, 40, 29, 10, 40, 36, 10, 40, 45, 10, 40, 53, 10, 40, 65, 10, 40, 80, 10, 40, 100, 10, 40, 120, 10, 40, 140, 10, 40, 170, 10, 40, 210, 10, 40, 260, 10, 40, 320, 10, 40, 390, 10, 40, 470, 10, 40, 570, 10, 40, 700, 10, 40, 850, 10, 40, 1000, 10, 40, 1300, 10, 40, 1600, 10, 40, 1900, 10, 40, 2300, 10, 40, 2800, 10, 40, 3400, 10, 40, 4100, 10, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 10, 40, 11000, 10, 40, 14000, 10, 40, 17000, 10, 40, Window.PROGRESS_SECONDARY_START, 10, 40};
        int[] iArr = {20, 10, 40, 24, 10, 40, 29, 10, 40, 36, 10, 40, 45, 10, 40, 53, 10, 40, 65, 10, 40, 80, 10, 40, 100, 10, 40, 120, 10, 40, 140, 10, 40, 170, 10, 40, 210, 10, 40, 260, 10, 40, 320, 10, 40, 390, 10, 40, 470, 10, 40, 570, 10, 40, 700, 10, 40, 850, 10, 40, 1000, 10, 40, 1300, 10, 40, 1600, 10, 40, 1900, 10, 40, 2300, 10, 40, 2800, 10, 40, 3400, 10, 40, 4100, 10, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 10, 40, 11000, 10, 40, 14000, 10, 40, 17000, 10, 40, Window.PROGRESS_SECONDARY_START, 10, 40};
        this.f16115n1 = iArr;
        int[] iArr2 = {20, 17, 40, 24, 17, 40, 29, 17, 40, 36, 17, 40, 45, 17, 40, 53, 17, 40, 65, 16, 40, 80, 15, 40, 100, 14, 40, 120, 13, 40, 140, 12, 40, 170, 12, 40, 210, 11, 40, 260, 9, 40, 320, 8, 40, 390, 7, 40, 470, 6, 40, 570, 6, 40, 700, 6, 40, 850, 6, 40, 1000, 6, 40, 1300, 7, 40, 1600, 7, 40, 1900, 8, 40, 2300, 9, 40, 2800, 11, 40, 3400, 12, 40, 4100, 13, 40, 5000, 14, 40, 6100, 15, 40, 7500, 16, 40, 9000, 17, 40, 11000, 17, 40, 14000, 17, 40, 17000, 17, 40, Window.PROGRESS_SECONDARY_START, 17, 40};
        this.f16116o1 = iArr2;
        int[] iArr3 = {20, 4, 40, 24, 4, 40, 29, 4, 40, 36, 4, 40, 45, 4, 40, 53, 4, 40, 65, 4, 40, 80, 4, 40, 100, 5, 40, 120, 7, 40, 140, 8, 40, 170, 9, 40, 210, 10, 40, 260, 11, 40, 320, 12, 40, 390, 13, 40, 470, 14, 40, 570, 13, 40, 700, 13, 40, 850, 12, 40, 1000, 12, 40, 1300, 12, 40, 1600, 12, 40, 1900, 12, 40, 2300, 13, 40, 2800, 13, 40, 3400, 14, 40, 4100, 12, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 10, 40, 11000, 10, 40, 14000, 10, 40, 17000, 10, 40, Window.PROGRESS_SECONDARY_START, 10, 40};
        this.f16117p1 = iArr3;
        int[] iArr4 = {20, 16, 40, 24, 16, 40, 29, 16, 40, 36, 16, 40, 45, 16, 40, 53, 16, 40, 65, 17, 40, 80, 17, 40, 100, 16, 40, 120, 15, 40, 140, 14, 40, 170, 13, 40, 210, 12, 40, 260, 11, 40, 320, 10, 40, 390, 9, 40, 470, 8, 40, 570, 9, 40, 700, 11, 40, 850, 12, 40, 1000, 11, 40, 1300, 10, 40, 1600, 10, 40, 1900, 9, 40, 2300, 8, 40, 2800, 7, 40, 3400, 6, 40, 4100, 6, 40, 5000, 6, 40, 6100, 5, 40, 7500, 5, 40, 9000, 4, 40, 11000, 3, 40, 14000, 3, 40, 17000, 3, 40, Window.PROGRESS_SECONDARY_START, 3, 40};
        this.f16118q1 = iArr4;
        int[] iArr5 = {20, 16, 40, 24, 16, 40, 29, 16, 40, 36, 16, 40, 45, 15, 40, 53, 15, 40, 65, 14, 40, 80, 14, 40, 100, 10, 40, 120, 9, 40, 140, 8, 40, 170, 7, 40, 210, 6, 40, 260, 9, 40, 320, 11, 40, 390, 12, 40, 470, 13, 40, 570, 14, 40, 700, 14, 40, 850, 14, 40, 1000, 14, 40, 1300, 13, 40, 1600, 12, 40, 1900, 10, 40, 2300, 8, 40, 2800, 6, 40, 3400, 7, 40, 4100, 9, 40, 5000, 11, 40, 6100, 13, 40, 7500, 16, 40, 9000, 15, 40, 11000, 14, 40, 14000, 14, 40, 17000, 14, 40, Window.PROGRESS_SECONDARY_START, 14, 40};
        this.r1 = iArr5;
        int[] iArr6 = {20, 16, 40, 24, 16, 40, 29, 16, 40, 36, 16, 40, 45, 16, 40, 53, 16, 40, 65, 16, 40, 80, 16, 40, 100, 16, 40, 120, 16, 40, 140, 15, 40, 170, 15, 40, 210, 14, 40, 260, 14, 40, 320, 14, 40, 390, 14, 40, 470, 15, 40, 570, 16, 40, 700, 16, 40, 850, 15, 40, 1000, 14, 40, 1300, 13, 40, 1600, 13, 40, 1900, 12, 40, 2300, 12, 40, 2800, 12, 40, 3400, 11, 40, 4100, 11, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 9, 40, 11000, 8, 40, 14000, 8, 40, 17000, 8, 40, Window.PROGRESS_SECONDARY_START, 8, 40};
        this.s1 = iArr6;
        int[] iArr7 = {20, 14, 40, 24, 14, 40, 29, 14, 40, 36, 14, 40, 45, 13, 40, 53, 12, 40, 65, 12, 40, 80, 12, 40, 100, 10, 40, 120, 8, 40, 140, 6, 40, 170, 5, 40, 210, 4, 40, 260, 6, 40, 320, 7, 40, 390, 8, 40, 470, 9, 40, 570, 10, 40, 700, 10, 40, 850, 10, 40, 1000, 10, 40, 1300, 10, 40, 1600, 10, 40, 1900, 10, 40, 2300, 11, 40, 2800, 12, 40, 3400, 12, 40, 4100, 12, 40, 5000, 12, 40, 6100, 13, 40, 7500, 14, 40, 9000, 15, 40, 11000, 16, 40, 14000, 16, 40, 17000, 16, 40, Window.PROGRESS_SECONDARY_START, 16, 40};
        this.t1 = iArr7;
        int[] iArr8 = {20, 10, 40, 24, 10, 40, 29, 10, 40, 36, 10, 40, 45, 10, 40, 53, 10, 40, 65, 11, 40, 80, 12, 40, 100, 13, 40, 120, 14, 40, 140, 14, 40, 170, 14, 40, 210, 15, 40, 260, 15, 40, 320, 16, 40, 390, 16, 40, 470, 16, 40, 570, 16, 40, 700, 17, 40, 850, 17, 40, 1000, 17, 40, 1300, 17, 40, 1600, 16, 40, 1900, 16, 40, 2300, 16, 40, 2800, 16, 40, 3400, 16, 40, 4100, 16, 40, 5000, 16, 40, 6100, 16, 40, 7500, 15, 40, 9000, 15, 40, 11000, 14, 40, 14000, 14, 40, 17000, 14, 40, Window.PROGRESS_SECONDARY_START, 14, 40};
        this.u1 = iArr8;
        this.v1 = null;
        this.w1 = 40;
        this.x1 = 200;
        this.y1 = 5;
        this.z1 = null;
        this.A1 = new int[4];
        this.B1 = new int[]{25, 12, 12, 0};
        this.C1 = new int[]{30, 0};
        this.D1 = new int[]{0, 0};
        this.E1 = true;
        this.F1 = false;
        this.G1 = false;
        this.H1 = 0;
        this.I1 = 0;
        this.J1 = new int[]{0, 10, 0, 1000};
        this.K1 = 0;
        this.L1 = new Handler();
        this.M1 = new a();
        Z0(0, this.f16114m1);
        Z0(1, iArr);
        Z0(2, iArr2);
        Z0(3, iArr3);
        Z0(4, iArr4);
        Z0(5, iArr5);
        Z0(6, iArr6);
        Z0(7, iArr7);
        Z0(8, iArr8);
        u0.b.V3 = true;
        x(this.f16106e1);
        f.f18047f0 = 20;
        this.z1 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
        this.v1 = nVar;
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        if (z2 || i2 != this.f15054g) {
            if (i2 != this.f15054g) {
                this.f15054g = i2;
            }
            U1(m1(i2) / 10.0f);
        }
    }

    @Override // module.sound.AudioDevice
    public void B0(int i2, int i3, int i4) {
        if (i2 == 65536) {
            D1(i3, i4);
        }
    }

    @Override // module.sound.AudioDevice
    public void C0(int i2, int i3) {
        int iMax = Math.max(30, Math.min(i3, 300));
        boolean z2 = false;
        if (i2 == 65536) {
            int[] iArr = this.C1;
            boolean z3 = iArr[0] != iMax;
            iArr[0] = iMax;
            F1(0, iMax);
            z2 = z3;
        } else {
            iMax = -1;
        }
        if (z2) {
            super.C0(i2, iMax);
        }
    }

    @Override // module.sound.AudioDevice
    public void D(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 56) {
            switch (i2) {
                case 64:
                    if (s0.h(iArr, 0)) {
                        d1(iArr[0] == 1);
                    }
                    break;
                case 65:
                    if (s0.h(iArr, 0)) {
                        c2(iArr[0]);
                    }
                    break;
                case 66:
                    if (s0.h(iArr, 1)) {
                        d2(iArr[0], iArr[1]);
                    }
                    break;
            }
        }
        if (s0.h(iArr, 1)) {
            if ((iArr[0] & 16) == 0) {
                if (iArr[1] != this.H1) {
                    int i3 = iArr[1];
                    this.H1 = i3;
                    if (i3 < 0 || i3 > 3 || i3 == 1) {
                        this.H1 = 0;
                    }
                    g0(65552, this.A1[0]);
                    g0(65568, this.A1[1]);
                    h.s0(56, 0, this.H1);
                    AudioDevice.STORE store = AudioDevice.STORE.LOW_PASS_FILTERING;
                    G0(store, this.H1);
                    this.f15080t.e(store.ordinal());
                    return;
                }
                return;
            }
            if ((iArr[0] & 16) == 0 || iArr[1] == this.I1) {
                return;
            }
            int i4 = iArr[1];
            this.I1 = i4;
            if (i4 < 0 || i4 > 3 || i4 == 1) {
                this.I1 = 0;
            }
            g0(65552, this.A1[0]);
            g0(65568, this.A1[1]);
            h.s0(56, 16, this.I1);
            AudioDevice.STORE store2 = AudioDevice.STORE.HIGH_PASS_FILTERING;
            G0(store2, this.I1);
            this.f15080t.e(store2.ordinal());
        }
    }

    @Override // module.sound.AudioDevice
    public void D0(int i2, int i3) {
        boolean z2 = false;
        int iMax = Math.max(0, Math.min(i3, 12));
        if (i2 == 65536) {
            int[] iArr = this.C1;
            z2 = iArr[1] != iMax;
            iArr[1] = iMax;
            F1(1, iMax);
        } else {
            iMax = -1;
        }
        if (z2) {
            super.D0(i2, iMax);
        }
    }

    public void D1(int i2, double d2) {
        synchronized (this) {
            int i3 = 30;
            try {
                if (i2 <= 30) {
                    O1(132, 3, 0, 0, 0);
                    i2 = 30;
                } else {
                    O1(132, 3, 0, 1, 0);
                    i.a0(10L);
                }
                O1(132, 3, 1, i2 & 255, (i2 >> 8) & 255);
                int i4 = (int) ((d2 * 30.0d) / 12.0d);
                if (i4 <= 30) {
                    i3 = i4;
                }
                O1(132, 3, 2, i3 & 255, (i3 >> 8) & 255);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void E0(boolean z2) {
        if (this.f15082u != z2) {
            this.f15082u = z2;
        }
        F1(2, z2 ? 1 : 0);
        super.E0(z2);
    }

    public void E1(boolean z2) {
        synchronized (this) {
            try {
                if (z2) {
                    O1(132, 3, 0, 1, 0);
                } else {
                    O1(132, 3, 0, 0, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.IN1;
        L0(0, channel.f16124a);
        L0(1, CHANNEL.IN2.f16124a);
        L0(2, channel.f16124a);
        L0(3, channel.f16124a);
        CHANNEL channel2 = CHANNEL.IN3;
        L0(4, channel2.f16124a);
        L0(5, channel2.f16124a);
        L0(6, channel2.f16124a);
        L0(7, channel.f16124a);
        L0(8, channel.f16124a);
        L0(9, channel.f16124a);
        L0(10, channel.f16124a);
        L0(11, channel2.f16124a);
        L0(12, channel2.f16124a);
        L0(13, channel2.f16124a);
        L0(14, channel.f16124a);
        L0(15, channel.f16124a);
        L0(16, channel.f16124a);
    }

    public void F1(int i2, int i3) {
        int i4 = 30;
        if (i2 == 0) {
            if (i3 <= 30) {
                E1(false);
            } else {
                if (i3 > 300) {
                    i3 = 300;
                }
                E1(true);
                i.a0(10L);
                i4 = i3;
            }
            synchronized (this) {
                O1(132, 3, 1, i4 & 255, (i4 >> 8) & 255);
            }
            return;
        }
        if (i2 == 1) {
            int i5 = i3 * 3;
            i4 = i5 <= 30 ? i5 : 30;
            synchronized (this) {
                O1(132, 3, 2, i4 & 255, (i4 >> 8) & 255);
            }
            return;
        }
        if (i2 == 2) {
            synchronized (this) {
                try {
                    if (i3 == 0) {
                        O1(132, 3, 3, 0, 0);
                    } else {
                        O1(132, 3, 3, 1, 0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void G(int i2) {
        super.G(i2);
        if (i2 == 1) {
            this.f15080t.v(AudioDevice.STORE.CUSTOMS_EQ_MODE1.ordinal());
            this.f15080t.v(AudioDevice.STORE.CUSTOMS_EQ_MODE2.ordinal());
            this.f15080t.v(AudioDevice.STORE.MODE.ordinal());
            this.f15080t.v(AudioDevice.STORE.TYPE.ordinal());
            this.f15062k = -1;
            C();
            n0();
            h(1);
            return;
        }
        if (i2 == 7) {
            this.f15080t.v(AudioDevice.STORE.VOCALS.ordinal());
            d2(0, 0);
            d2(1, 10);
            d2(2, 0);
            d2(3, 1000);
            return;
        }
        if (i2 != 4) {
            if (i2 != 5) {
                return;
            }
            this.f15080t.v(AudioDevice.STORE.HPFFA.ordinal());
            this.f15080t.v(AudioDevice.STORE.HPFFB.ordinal());
            this.f15080t.v(AudioDevice.STORE.HPFRA.ordinal());
            this.f15080t.v(AudioDevice.STORE.HPFRB.ordinal());
            this.f15080t.v(AudioDevice.STORE.LOW_PASS_FILTERING.ordinal());
            this.f15080t.v(AudioDevice.STORE.HIGH_PASS_FILTERING.ordinal());
            this.H1 = 0;
            this.I1 = 0;
            g0(65552, 20);
            g0(65568, 200);
            h.s0(56, 0, this.H1);
            h.s0(56, 16, this.I1);
            return;
        }
        this.f15080t.v(AudioDevice.STORE.P2BASSON.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BFFREQ.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BRFREQ.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BFGAIN.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BRGAIN.ordinal());
        this.f15080t.v(AudioDevice.STORE.SOUND_3D.ordinal());
        this.f15080t.v(AudioDevice.STORE.STEREO_ENABLE.ordinal());
        E0(false);
        d1(false);
        c2(0);
        C0(65536, 30);
        D0(65536, 0);
        this.f15092z = 0;
        h.n0(i.k("ro.fyt.subwoof", f.W0));
        e1(0, 200);
    }

    public void G1(int i2) {
        synchronized (this) {
            if (i2 == CHANNEL.IN1.f16124a) {
                O1(4, 3, 0, 0, 0);
                O1(3, 3, 0, 0, 0);
                O1(3, 3, 1, 0, 0);
                N1();
            } else if (i2 == CHANNEL.IN3.f16124a) {
                N1();
                O1(3, 3, 2, 0, 0);
                O1(3, 3, 3, 0, 0);
                O1(3, 3, 0, 1, 0);
                O1(3, 3, 1, 1, 0);
                O1(4, 3, 0, 3, 0);
            } else if (i2 == CHANNEL.IN2.f16124a) {
                N1();
                O1(3, 3, 0, 0, 0);
                O1(3, 3, 1, 0, 0);
                O1(3, 3, 2, 1, 0);
                O1(3, 3, 3, 1, 0);
                O1(4, 3, 0, 3, 0);
            } else {
                O1(4, 3, 0, 0, 0);
                O1(3, 3, 0, 0, 0);
                O1(3, 3, 1, 0, 0);
                N1();
            }
        }
    }

    public void H1(boolean z2) {
        synchronized (this) {
            try {
                if (z2) {
                    O1(141, 3, 0, 1, 0);
                } else {
                    O1(141, 3, 0, 0, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void I1(int i2, int i3) {
        synchronized (this) {
            try {
                if (i2 == 0) {
                    if (i3 > 10000) {
                        i3 = 10000;
                    }
                    if (i3 < 300) {
                        i3 = 300;
                    }
                    O1(141, 3, 1, i3 & 255, (i3 >> 8) & 255);
                    a.f.p().s("vocal Exciter FREQ value: " + i3);
                } else if (i2 == 1) {
                    if (i3 > 100) {
                        i3 = 100;
                    }
                    O1(141, 3, 2, i3 & 255, 0);
                    a.f.p().s("Harmonic Exciter DRY value: " + i3);
                } else if (i2 == 2) {
                    if (i3 > 100) {
                        i3 = 100;
                    }
                    O1(141, 3, 3, i3 & 255, 0);
                    a.f.p().s("Harmonic Exciter WET value: " + i3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void J1(int i2) {
        int i3;
        synchronized (this) {
            try {
                if (i2 <= 20) {
                    O1(143, 3, 8, 0, 0);
                    i2 = 0;
                } else {
                    O1(143, 3, 8, 1, 0);
                }
                O1(143, 3, 10, i2 & 255, (i2 >> 8) & 255);
                int i4 = this.I1;
                if (i4 == 2) {
                    i3 = 593;
                } else {
                    i3 = i4 == 3 ? 512 : 724;
                }
                O1(143, 3, 11, i3 & 255, (i3 >> 8) & 255);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void K1(int i2) {
        synchronized (this) {
            try {
                if (i2 != 0) {
                    O1(131, 3, 0, 1, 0);
                } else {
                    O1(131, 3, 0, 0, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void L(int i2, int i3) {
        int i4 = this.f15072p * i2;
        int[] iArr = this.f15074q;
        int i5 = i4 + 2;
        if (iArr.length <= i5) {
            return;
        }
        iArr[i4] = i3;
        int i6 = iArr[i4 + 1];
        if (i6 < this.f16111j1.length) {
            Y1(i2, iArr[i4], iArr[i5], i6);
        }
        super.L(i2, i3);
    }

    public void L1(int i2) {
        int i3;
        synchronized (this) {
            try {
                if (i2 >= 20000) {
                    i2 = 24000;
                    O1(143, 3, 3, 0, 0);
                } else {
                    O1(143, 3, 3, 1, 0);
                }
                O1(143, 3, 5, i2 & 255, (i2 >> 8) & 255);
                int i4 = this.H1;
                if (i4 == 2) {
                    i3 = 593;
                } else {
                    i3 = i4 == 3 ? 512 : 724;
                }
                O1(143, 3, 6, i3 & 255, (i3 >> 8) & 255);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void M(int i2, int i3) {
        int i4 = this.f15072p * i2;
        int i5 = i4 + 1;
        int[] iArr = this.f15074q;
        if (iArr.length <= i5 + 1) {
            return;
        }
        iArr[i5] = i3;
        Y1(i2, iArr[i4], iArr[i4 + 2], iArr[i5]);
        super.M(i2, i3);
    }

    public void M1(int i2) {
        int i3 = i2 * 10;
        synchronized (this) {
            try {
                if (i2 == 0) {
                    O1(133, 3, 0, 0, 0);
                } else {
                    O1(133, 3, 0, 1, 0);
                    if (i3 > 100) {
                        i3 = 100;
                    }
                    if (i3 < 0) {
                        i3 = 0;
                    }
                    O1(133, 3, 1, i3 & 255, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        a.f.p().s("MV3D inten value: " + i2 + " para:" + i3);
    }

    public void N1() {
        synchronized (this) {
            if (this.F1 || j0(u0.b.D) == 1) {
                O1(7, 3, 1, 0, 0);
                this.G1 = true;
            } else {
                O1(7, 3, 1, 3, 0);
                this.G1 = false;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void O(int i2, int i3) {
        int i4 = this.f15072p * i2;
        int i5 = i4 + 2;
        int[] iArr = this.f15074q;
        if (iArr.length <= i5) {
            return;
        }
        iArr[i5] = i3;
        int i6 = iArr[i4 + 1];
        if (i6 < this.f16111j1.length) {
            Y1(i2, iArr[i4], iArr[i5], i6);
        }
        super.O(i2, i3);
    }

    public synchronized int O1(int i2, int i3, int i4, int... iArr) {
        int i5 = 2;
        int[] iArr2 = new int[iArr.length + 2];
        int i6 = 0;
        iArr2[0] = i3;
        iArr2[1] = i4;
        while (i6 < iArr.length) {
            iArr2[i5] = iArr[i6];
            i6++;
            i5++;
        }
        V1(i2, iArr2);
        return 1;
    }

    public int[] P1(int i2, int i3) {
        int[] iArr = new int[i3];
        return this.v1.e(i3, N1, false, s0.c(i2, 0));
    }

    public void Q1(int i2) {
        synchronized (this) {
            try {
                if (i2 == 0) {
                    O1(134, 3, 0, 0, 0);
                } else {
                    O1(134, 3, 0, 1, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        a.f.p().s("ST widener swflag: " + i2);
    }

    public void R1(int i2) {
        if (i2 > 250) {
            i2 = 250;
        }
        synchronized (this) {
            O1(137, 3, 5, i2 & 255, (i2 >> 8) & 255);
        }
        a.f.p().s("subwoof freq: " + i2);
    }

    public void S1(int i2) {
        synchronized (this) {
            int iA = new c().a(((double) this.f16110i1[i2]) / 10.0d);
            O1(10, 3, 3, iA & 255, (iA >> 8) & 255);
        }
        a.f.p().s("subwoof value: " + i2);
    }

    public void T1(int i2) {
        int i3 = i2 * 10;
        synchronized (this) {
            try {
                if (i2 == 0) {
                    O1(135, 3, 0, 0, 0);
                } else {
                    if (i3 > 100) {
                        i3 = 100;
                    }
                    if (i3 < 0) {
                        i3 = 0;
                    }
                    O1(135, 3, 0, 1, 0);
                    O1(135, 3, 1, i3 & 255, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        a.f.p().s("vocal cut value: " + i2 + " para:" + i3);
    }

    @Override // module.sound.AudioDevice
    public boolean U(int i2, y.b bVar) {
        boolean z2 = true;
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
                r1(bVar, i2, i5, iArr3[(this.f15072p * i5) + 2]);
            }
        } else if (i2 == 34) {
            r1(bVar, i2, 1073741824, this.B1[0]);
        } else if (i2 == 56) {
            r1(bVar, i2, 0, this.H1);
            r1(bVar, i2, 16, this.I1);
        } else if (i2 != 61) {
            switch (i2) {
                case 26:
                    r1(bVar, i2, this.f15092z);
                    break;
                case 27:
                    r1(bVar, i2, 0, this.x1);
                    break;
                case 28:
                    r1(bVar, i2, this.f15082u ? 1 : 0);
                    break;
                case 29:
                    r1(bVar, i2, 65536, this.C1[1]);
                    r1(bVar, i2, 131072, this.D1[1]);
                    break;
                case 30:
                    r1(bVar, i2, 65536, this.C1[0]);
                    r1(bVar, i2, 131072, this.D1[0]);
                    break;
                case 31:
                    r1(bVar, i2, 65552, this.A1[0]);
                    r1(bVar, i2, 65568, this.A1[1]);
                    r1(bVar, i2, WifiStateMachine.CMD_STATIC_IP_FAILURE, this.A1[2]);
                    r1(bVar, i2, 131104, this.A1[3]);
                    break;
                default:
                    switch (i2) {
                        case 64:
                            r1(bVar, i2, this.E1 ? 1 : 0);
                            break;
                        case 65:
                            r1(bVar, i2, this.K1);
                            break;
                        case 66:
                            int[] iArr4 = this.J1;
                            if (iArr4 != null && iArr4.length > 0) {
                                int i6 = 0;
                                while (true) {
                                    int[] iArr5 = this.J1;
                                    if (i6 < iArr5.length) {
                                        r1(bVar, i2, i6, iArr5[i6]);
                                        i6++;
                                    }
                                }
                            }
                            break;
                        default:
                            z2 = false;
                            break;
                    }
                    break;
            }
        } else {
            r1(bVar, i2, this.w1);
        }
        return z2 ? z2 : super.U(i2, bVar);
    }

    public void U1(double d2) {
        synchronized (this) {
            int iA = new c().a(d2);
            int i2 = iA & 255;
            int i3 = (iA >> 8) & 255;
            O1(130, 3, 2, i2, i3);
            O1(136, 3, 2, i2, i3);
        }
    }

    public synchronized int V1(int i2, int... iArr) {
        int iD = this.v1.d(N1, new int[]{s0.c(i2, 0)}, iArr);
        s0.C(3L);
        int i3 = iArr[0];
        if (i3 > 3) {
            int i4 = i3 + 2;
            int[] iArr2 = new int[i4];
            iArr2[0] = i2;
            System.arraycopy(iArr, 0, iArr2, 1, iArr.length);
            for (int i5 = 0; i5 < 10; i5++) {
                if (i2 == 128) {
                    this.v1.d(N1, new int[]{s0.c(i2, 0)}, 1, iArr[1]);
                } else {
                    this.v1.d(N1, new int[]{s0.c(i2, 0)}, 0);
                }
                int[] iArr3 = new int[i4];
                int[] iArrP1 = P1(i2, i4);
                for (int i6 = 0; i6 < iArrP1.length; i6++) {
                    iArrP1[i6] = iArrP1[i6] & 255;
                }
                if (Arrays.equals(iArr2, iArrP1)) {
                    return iD;
                }
                s0.C(6L);
                iD = this.v1.d(N1, new int[]{s0.c(i2, 0)}, iArr);
            }
        }
        return iD;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00a3  */
    @Override // module.sound.AudioDevice
    public void W0() {
        int iV1;
        super.W0();
        if (this.X0 == null) {
            this.X0 = s0.A(App.c(), R.raw.du561_init_data, 16);
        }
        int length = this.X0.length;
        char c2 = 65535;
        while (true) {
            if (c2 < 0) {
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            V1(0, 0);
            int[] iArrP1 = P1(0, 9);
            char c3 = (iArrP1[2] == 0 && iArrP1[3] == 2 && iArrP1[4] == 30 && iArrP1[5] == 2) ? (char) 1 : (char) 65535;
            if (c3 >= 0) {
                break;
            } else {
                c2 = c3;
            }
        }
        int[] iArr = new int[255];
        int i2 = 0;
        do {
            int[] iArr2 = this.X0;
            if (iArr2[i2] == 165) {
                int i3 = i2 + 1;
                if (iArr2[i3] == 90) {
                    int i4 = iArr2[i2 + 2];
                    int i5 = iArr2[i2 + 3];
                    if (iArr2[i2 + 4 + i5] == 22) {
                        int i6 = i5 + 5;
                        int i7 = 0;
                        while (i7 < i6) {
                            iArr[i7] = this.X0[i2];
                            i7++;
                            i2++;
                        }
                        int i8 = i6 - 4;
                        int[] iArr3 = new int[i8];
                        System.arraycopy(iArr, 3, iArr3, 0, i8);
                        synchronized (this) {
                            iV1 = V1(i4, iArr3);
                        }
                        if (iV1 < 0) {
                            s0.C(10L);
                            i2 = 0;
                        }
                    } else {
                        i2 = i3;
                    }
                } else {
                    i2++;
                }
            } else {
                i2++;
            }
        } while (i2 < this.X0.length);
        w0(this.f15062k);
        Z1(this.f15074q);
        l(this.f15052f ? 1 : 0);
        a(u0.b.D);
        A1(f.C0, true);
        o(this.f15092z);
        e1(0, this.x1);
        Q1(this.E1 ? 1 : 0);
        c2(this.K1);
        d2(0, this.J1[0]);
        d2(1, this.J1[1]);
        d2(2, this.J1[2]);
        d2(3, this.J1[3]);
        g0(65552, this.A1[0]);
        g0(65568, this.A1[1]);
        int[] iArr4 = this.C1;
        B0(65536, iArr4[0], iArr4[1]);
        int[] iArr5 = this.D1;
        B0(131072, iArr5[0], iArr5[1]);
    }

    public void W1(int i2) {
        if (i2 != 0) {
            K1(1);
        } else {
            K1(0);
        }
    }

    public boolean X1(int[] iArr, int i2) {
        int[] iArrA2;
        return i2 == 0 || (iArrA2 = a2(i2)) == null || !Arrays.equals(iArr, iArrA2);
    }

    public void Y1(int i2, int... iArr) {
        if (i2 < 0 || i2 >= this.f15060j || iArr.length != this.f15072p) {
            return;
        }
        int iMin = Math.min(this.f16111j1.length - 1, iArr[2]);
        synchronized (this) {
            int i3 = (i2 / 10) + 145;
            int i4 = ((i2 % 10) * 5) + 3;
            if (this.f16111j1[iMin] == 0) {
                O1(i3, 3, i4 + 0, 0, 0);
            } else {
                O1(i3, 3, i4 + 0, 1, 0);
            }
            O1(i3, 3, i4 + 2, iArr[0] & 255, (iArr[0] >> 8) & 255);
            int i5 = (int) ((((double) iArr[1]) * 1024.0d) / 10.0d);
            O1(i3, 3, i4 + 3, i5 & 255, (i5 >> 8) & 255);
            int i6 = (int) (((double) this.f16111j1[iMin]) * 256.0d);
            O1(i3, 3, i4 + 4, i6 & 255, (i6 >> 8) & 255);
        }
    }

    public void Z1(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f15072p;
            Y1(i2, iArr[i2 * i3], iArr[(i2 * i3) + 2], iArr[(i3 * i2) + 1]);
        }
    }

    @Override // y0.e
    public void a(int i2) {
        if (h0.c.G == 1) {
            i2 = 2;
        }
        int i3 = u0.b.E;
        if (i3 >= 0) {
            i2 = i3;
        }
        this.f15064l = i2;
        int i4 = this.f15048d.get(i2) & 15;
        if (i4 < 0) {
            i4 = CHANNEL.IN1.f16124a;
        }
        if (i4 == CHANNEL.IN1.f16124a) {
        }
        c4 c4Var = j4.f16466d;
        if (c4Var == null || c4Var.l3()) {
        }
        if (this.f15086w) {
            String name = AudioManager.class.getName();
            Class cls = Boolean.TYPE;
            if (d0.c(name, "setVoiceSwitch2iis", cls) != null) {
                Boolean bool = Boolean.FALSE;
                d0.e(AudioManager.class.getName(), this.z1, "setVoiceSwitch2iis", new Class[]{cls}, bool);
                d0.e(AudioManager.class.getName(), this.z1, "setAudioSwitch2iis", new Class[]{cls}, bool);
            } else {
                String name2 = AudioManager.class.getName();
                AudioManager audioManager = this.z1;
                Class cls2 = Integer.TYPE;
                d0.e(name2, audioManager, "setWiredDeviceConnectionState", new Class[]{cls2, cls2, String.class, String.class}, 8, 1, ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
        G1(i4);
        int i5 = f.f18090z0[i2];
        if (i5 < 0 || i5 >= 48) {
            return;
        }
        m(i5, f.f18084w0[i5]);
    }

    public int[] a2(int i2) {
        int[] iArr = new int[this.f15060j * this.f15072p];
        int[] iArrX = X(i2);
        if (iArrX != null) {
            int length = iArrX.length;
            int i3 = this.f15060j;
            int i4 = this.f15072p;
            if (length == i3 * i4) {
                System.arraycopy(iArrX, 0, iArr, 0, length);
            } else if (length < i3 * i4) {
                System.arraycopy(iArrX, 0, iArr, 0, length);
                System.arraycopy(iArrX, 0, iArr, length, (this.f15060j * this.f15072p) - length);
            }
        }
        return iArr;
    }

    public void b2(int i2, int i3) {
        int i4 = (i2 == 357 || i2 == 404) ? 100 : 1;
        if (i2 == 368) {
            J1(i3 * i4);
        } else if (i2 == 357) {
            L1(i3 * i4);
        }
    }

    @Override // module.sound.AudioDevice
    public int[] c1() {
        return null;
    }

    public void c2(int i2) {
        int iMax = Math.max(0, Math.min(10, i2));
        if (this.K1 != iMax) {
            this.K1 = iMax;
            M1(iMax);
            h.s0(65, this.K1);
            h0 h0Var = this.f15080t;
            AudioDevice.STORE store = AudioDevice.STORE.SOUND_3D;
            h0Var.q(store.ordinal(), iMax);
            this.f15080t.e(store.ordinal());
        }
    }

    @Override // module.sound.AudioDevice
    public void d1(boolean z2) {
        if (this.E1 == z2) {
            return;
        }
        this.E1 = z2;
        Q1(z2 ? 1 : 0);
        super.d1(z2);
    }

    public void d2(int i2, int i3) {
        if (i2 >= 0 || i2 < this.J1.length) {
            int iMax = Math.max(i2 == 3 ? 300 : 0, Math.min(i3, i2 == 3 ? 10000 : 10));
            int[] iArr = this.J1;
            int i4 = iArr[2];
            int i5 = iArr[1];
            if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3) {
                if (iArr[i2] != iMax) {
                    iArr[i2] = iMax;
                    h.s0(66, i2, iMax);
                    H0(AudioDevice.STORE.VOCALS, this.J1);
                }
                if (i2 != 0 && i2 != 3) {
                    int[] iArr2 = this.J1;
                    if (iArr2[2] == 0 && iArr2[1] == 10) {
                        H1(false);
                    } else if (i4 == 0 && i5 == 10) {
                        H1(true);
                        i.a0(10L);
                    }
                }
                if (i2 == 0) {
                    T1(iMax);
                    return;
                }
                if (i2 == 1) {
                    I1(1, iMax * 10);
                } else if (i2 == 2) {
                    I1(2, iMax * 10);
                } else if (i2 == 3) {
                    I1(0, iMax);
                }
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void e1(int i2, int i3) {
        boolean z2;
        if (i2 != 0 || this.x1 == i3) {
            z2 = false;
        } else {
            z2 = true;
            this.x1 = i3;
        }
        R1(i3);
        if (z2) {
            super.e1(i2, i3);
        }
    }

    public void e2(float f2) {
        int length = f2 > 0.0f ? (int) ((this.f16108g1.length - 1) * f2) : 0;
        if (length > this.f16108g1.length - 1 || length < 0) {
            return;
        }
        synchronized (this) {
            int iA = new c().a(this.f16108g1[length] / 10.0f);
            if (j0(u0.b.D) != 1) {
                int i2 = iA & 255;
                int i3 = (iA >> 8) & 255;
                O1(4, 3, 2, i2, i3);
                O1(4, 3, 3, i2, i3);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // module.sound.AudioDevice
    public void g0(int i2, int i3) {
        int i4;
        boolean z2;
        int i5;
        switch (i2) {
            case 65536:
                g0(65552, i3);
                g0(65568, i3);
                i4 = -1;
                z2 = false;
                break;
            case 65552:
                int[] iArr = this.A1;
                z2 = iArr[0] != i3;
                i5 = 368;
                iArr[0] = i3;
                i4 = i5;
                break;
            case 65568:
                int[] iArr2 = this.A1;
                boolean z3 = iArr2[1] != i3;
                i5 = 357;
                iArr2[1] = i3;
                z2 = z3;
                i4 = i5;
                break;
            case 131072:
                g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, i3);
                g0(131104, i3);
                i4 = -1;
                z2 = false;
                break;
            case WifiStateMachine.CMD_STATIC_IP_FAILURE /* 131088 */:
                int[] iArr3 = this.A1;
                z2 = iArr3[2] != i3;
                i4 = 415;
                iArr3[2] = i3;
                break;
            case 131104:
                int[] iArr4 = this.A1;
                z2 = iArr4[3] != i3;
                i4 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL;
                iArr4[3] = i3;
                break;
            default:
                i4 = -1;
                z2 = false;
                break;
        }
        if (i4 > 0) {
            b2(i4, i3);
            if (z2) {
                super.g0(i2, i3);
            }
        }
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (this.f15050e) {
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
            a1(69632, iMax);
            a1(73728, iMax2);
            a1(135168, iMax3);
            a1(139264, iMax4);
            super.j(null);
        }
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        if (i3 < 0) {
            i3 = CHANNEL.IN1.f16124a;
        }
        return i3 == V(8) ? 1 : 0;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        W1(this.f15052f ? 1 : 0);
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= 48 || (i4 = u0.b.D) < 0 || i4 >= 20 || f.f18090z0[i4] != i2) {
            return;
        }
        int iA = o0.a(i3, 0, 10);
        if (iA > 8) {
            iA = 8;
        }
        int i5 = this.f15048d.get(u0.b.D);
        if (i5 < 0) {
            i5 = CHANNEL.IN1.f16124a;
        }
        synchronized (this) {
            if (i5 == CHANNEL.IN1.f16124a) {
                int i6 = iA + 40;
                O1(6, 3, 12, i6, 0);
                O1(6, 3, 13, i6, 0);
            } else if (i5 == CHANNEL.IN2.f16124a) {
                int i7 = iA + 50;
                O1(3, 3, 8, i7, 0);
                O1(3, 3, 9, i7, 0);
            } else if (i5 == CHANNEL.IN3.f16124a) {
                int i8 = iA + 39;
                O1(3, 3, 6, i8, 0);
                O1(3, 3, 7, i8, 0);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
        this.B1 = Z(AudioDevice.STORE.SURRLEVEL, this.B1);
        this.J1 = Z(AudioDevice.STORE.VOCALS, this.J1);
        this.K1 = Y(AudioDevice.STORE.SOUND_3D, 0);
        this.E1 = Y(AudioDevice.STORE.STEREO_ENABLE, 0) == 1;
        this.f15082u = Y(AudioDevice.STORE.P2BASSON, 0) == 1;
        this.x1 = Y(AudioDevice.STORE.SBWLFREQ, 200);
        this.w1 = Y(AudioDevice.STORE.SUBWOOF_QVAL, 40);
        this.C1[0] = Y(AudioDevice.STORE.P2BFFREQ, 30);
        this.C1[1] = Y(AudioDevice.STORE.P2BFGAIN, 0);
        this.D1[0] = Y(AudioDevice.STORE.P2BRFREQ, 0);
        this.D1[1] = Y(AudioDevice.STORE.P2BRGAIN, 0);
        this.A1[0] = Y(AudioDevice.STORE.HPFFA, 20);
        this.A1[1] = Y(AudioDevice.STORE.HPFFB, 200);
        this.A1[2] = Y(AudioDevice.STORE.HPFRA, 20);
        this.A1[3] = Y(AudioDevice.STORE.HPFRB, 200);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        S1(i2);
        super.o(i2);
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        return 20;
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return -700;
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        int iMax = Math.max(0, Math.min(i2, this.f16107f1.length - 1));
        this.f15056h = iMax;
        int iX1 = x1(iMax, this.f16107f1);
        if (iMax != 0) {
            this.F1 = true;
        } else {
            this.F1 = false;
        }
        boolean z2 = this.F1;
        if ((z2 && !this.G1) || (!z2 && j0(u0.b.D) != 1 && this.G1)) {
            N1();
        }
        if (this.F1) {
            U1(iX1 / 10.0f);
        }
    }

    @Override // module.sound.AudioDevice
    public int u1() {
        return super.u1();
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int i3;
        if (this.f15050e) {
            int[] iArrA2 = a2(i2);
            if (X1(this.f15074q, i2)) {
                int i4 = 0;
                System.arraycopy(iArrA2, 0, this.f15074q, 0, iArrA2.length);
                int i5 = this.f15060j;
                int[] iArr = new int[i5];
                int[] iArr2 = new int[i5];
                int[] iArr3 = new int[i5];
                while (true) {
                    i3 = this.f15060j;
                    if (i4 >= i3) {
                        break;
                    }
                    int i6 = this.f15072p;
                    iArr2[i4] = iArrA2[i4 * i6];
                    iArr[i4] = iArrA2[(i4 * i6) + 1];
                    iArr3[i4] = iArrA2[(i6 * i4) + 2];
                    i4++;
                }
                h.H(iArr, iArr2, iArr3, i3, this);
                Handler handler = this.L1;
                if (handler != null) {
                    handler.post(new b(iArrA2));
                } else {
                    Z1(iArrA2);
                }
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void z1(int i2, float f2) {
        super.z1(i2, f2);
        e2(f2);
    }
}
