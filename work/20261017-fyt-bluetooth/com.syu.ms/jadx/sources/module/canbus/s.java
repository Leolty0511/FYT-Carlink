package module.canbus;

import android.bluetooth.BluetoothClass;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.media.MediaPlayer;
import android.media.TextTrackRegion;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.UrlQuerySanitizer;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.opengl.GLES10;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.provider.Downloads;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.widget.SpellChecker;
import app.App;
import java.nio.charset.Charset;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import o1.s0;
import plugins.ZLink;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class s extends lt implements o1.q {
    public static int D0;
    public static int E0;
    public y Q;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f14760j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14764l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14770o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f14776r;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final int[] f14740x0 = new int[12];

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static final int[] f14741y0 = new int[256];

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static int[] f14742z0 = {1, 1, 3, 7, 2, 8, 4, 6, 5, 1, 1, 33, 33, 1, 1, 1, 1, 33, 33, 6, 1};
    public static int A0 = 0;
    public static int B0 = 0;
    public static int C0 = 1;
    public static final int[] F0 = {0, 1, 2, 3, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 38, 40};
    public static final o1.f<x> G0 = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f14744b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f14746c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f14748d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14750e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f14752f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14754g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14756h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f14758i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14762k = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f14766m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[][] f14768n = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 5}, new int[]{24, 63}, new int[]{48, 12}, new int[]{49, 25}, new int[]{50, 6}, new int[]{51, 74}, new int[]{52, 75}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 18}, new int[]{56, 40}, new int[]{57, 41}, new int[]{58, 42}, new int[]{59, 43}, new int[]{60, 44}, new int[]{61, 45}, new int[]{62, 29}, new int[]{63, 71}, new int[]{19, 3}, new int[]{20, 4}, new int[]{22, 29}, new int[]{129, 7}, new int[]{130, 8}, new int[]{134, 12}, new int[]{32, 7}, new int[]{33, 8}, new int[]{34, 4}, new int[]{35, 3}, new int[]{36, 19}, new int[]{37, 20}, new int[]{38, 4}, new int[]{39, 3}, new int[]{40, 0}, new int[]{129, 7}, new int[]{130, 8}, new int[]{134, 12}, new int[]{145, 25}, new int[]{146, 3}, new int[]{147, 4}, new int[]{148, 67}, new int[]{149, 68}, new int[]{150, 2}, new int[]{177, 7}, new int[]{178, 8}, new int[]{179, 4}, new int[]{180, 3}, new int[]{181, 5}, new int[]{182, 16}, new int[]{184, 6}, new int[]{185, 16}, new int[]{186, 38}, new int[]{189, 3}, new int[]{190, 4}};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14772p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[][] f14774q = {new int[]{32, 75}, new int[]{33, 74}, new int[]{34, 54}, new int[]{35, 76}, new int[]{36, 53}, new int[]{37, 54}, new int[]{38, -1}, new int[]{38, -1}};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f14778s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[][] f14780t = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 54}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 9}, new int[]{12, 1}, new int[]{49, 0}, new int[]{50, 6}, new int[]{51, 74}, new int[]{52, 75}, new int[]{53, -1}, new int[]{54, 53}, new int[]{55, 18}, new int[]{56, 40}, new int[]{57, 41}, new int[]{58, 42}, new int[]{59, 43}, new int[]{60, 44}, new int[]{61, 45}, new int[]{62, 29}, new int[]{63, 25}, new int[]{64, 5}, new int[]{65, 16}, new int[]{66, 54}};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14782u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f14784v = new k();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f14786w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f14788x = new p();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f14789y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f14790z = new q();
    public Runnable A = new r();
    public boolean B = false;
    public boolean C = false;
    public boolean D = false;
    public int E = 0;
    public boolean F = false;
    public Runnable G = new RunnableC0080s();
    public Runnable H = new t();
    public Runnable I = new u();
    public Runnable J = new v();
    public float K = 0.0f;
    public int L = 255;
    public int M = 255;
    public Runnable N = new w();
    public Runnable O = new a();
    public Runnable P = new b();
    public String R = ProxyProperties.LOCAL_EXCL_LIST;
    public String S = ProxyProperties.LOCAL_EXCL_LIST;
    public int T = 0;
    public int U = 0;
    public int V = 0;
    public int W = 0;
    public int X = 0;
    public int Y = 0;
    public int Z = 0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f14743a0 = 0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f14745b0 = 255;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final Runnable f14747c0 = new c();

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public byte f14749d0 = 10;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public Runnable f14751e0 = new d();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Runnable f14753f0 = new e();

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public Runnable f14755g0 = new f();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public Runnable f14757h0 = new g();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Runnable f14759i0 = new h();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public Runnable f14761j0 = new i();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public Runnable f14763k0 = new j();

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Runnable f14765l0 = new l();

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public Runnable f14767m0 = new m();

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public Runnable f14769n0 = new n();

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f14771o0 = 0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f14773p0 = 0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f14775q0 = 0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f14777r0 = 0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f14779s0 = 0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public boolean f14781t0 = false;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f14783u0 = 100;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public Runnable f14785v0 = new o();

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f14787w0 = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.N3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.c3(0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(s.this.f14753f0);
            s.this.f14749d0 = (byte) 10;
            if (nt.f8637c == 255) {
                z.k.s(227, 132, 2, 9, 0);
            }
            if (u0.b.f17306a0 == 1 || nt.f8637c == 5) {
                return;
            }
            z.k.s(227, 192, 8, 0, 0, 0, 0, 0, 0, 0, 0);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s sVar = s.this;
            byte b2 = (byte) (sVar.f14749d0 - 1);
            sVar.f14749d0 = b2;
            if (b2 <= 0) {
                l0.b0.p0(sVar.f14753f0);
                s.this.f14749d0 = (byte) 8;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 != 1) {
                if (nt.f8637c != 255) {
                    return;
                }
                z.k.s(227, 132, 2, 9, 0);
                return;
            }
            s sVar2 = s.this;
            sVar2.M3(sVar2.f14746c.b(2, 0));
            s sVar3 = s.this;
            sVar3.L3(sVar3.f14746c.b(3, 1));
            int i2 = nt.f8637c;
            if (i2 != 5 && i2 != 46 && i2 != 47 && i2 != 60 && i2 != 154 && i2 != 155 && i2 != 61 && i2 != 64 && i2 != 73 && i2 != 156 && i2 != 74 && i2 != 153 && i2 != 85) {
                s sVar4 = s.this;
                sVar4.J3(sVar4.f14746c.b(1, 0));
            }
            z.k.s(227, 144, 2, 48, 0);
            int i3 = nt.f8637c;
            if (i3 == 9 || i3 == 11 || i3 == 32) {
                z.k.s(227, 132, 2, 3, 6);
                z.k.s(227, 132, 2, 4, 6);
                z.k.s(227, 132, 2, 5, 6);
            } else if (i3 == 5) {
                if (u0.b.D == 13) {
                    z.k.s(227, -17, 1, 0);
                } else {
                    z.k.s(227, -17, 1, 1);
                }
            }
            if (nt.f8637c != 255) {
                return;
            }
            if (s.this.f14749d0 <= 2) {
                z.k.s(227, 132, 2, 9, 16);
            } else {
                z.k.s(227, 132, 2, 9, 0);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 13) {
                z.k.s(227, -17, 1, 0);
            } else {
                z.k.s(227, -17, 1, 1);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 12 || i2 == 83 || i2 == 14 || i2 == 31 || i2 == 32 || i2 == 60 || i2 == 154 || i2 == 155 || i2 == 64) {
                s.this.G3((byte) 2, u0.b.i3);
                return;
            }
            if (i2 == 41 || i2 == 45 || i2 == 49 || i2 == 50 || i2 == 51 || i2 == 52 || i2 == 149 || i2 == 150 || i2 == 151 || i2 == 53 || i2 == 62 || i2 == 71 || i2 == 72 || i2 == 63 || i2 == 73 || i2 == 156 || i2 == 74 || i2 == 153 || i2 == 76 || i2 == 77 || i2 == 78 || i2 == 79 || i2 == 80 || i2 == 81 || i2 == 85 || i2 == 86 || i2 == 87 || i2 == 88 || i2 == 89 || i2 == 109 || i2 == 110 || i2 == 135 || i2 == 136 || i2 == 111 || i2 == 112 || i2 == 114 || i2 == 115 || i2 == 116 || i2 == 117 || i2 == 118 || i2 == 120 || i2 == 121 || i2 == 122 || i2 == 123 || i2 == 124 || i2 == 125 || i2 == 126 || i2 == 127 || i2 == 128 || i2 == 129 || i2 == 131 || i2 == 132 || i2 == 133 || i2 == 134 || i2 == 90 || i2 == 91 || i2 == 92 || i2 == 93 || i2 == 94 || i2 == 95 || i2 == 103 || i2 == 104 || i2 == 105 || i2 == 106 || i2 == 138 || i2 == 139 || i2 == 140 || i2 == 141 || i2 == 142 || i2 == 143 || i2 == 144 || i2 == 145 || i2 == 146 || i2 == 147 || i2 == 148 || i2 == 149 || i2 == 150 || i2 == 151) {
                s.this.F3((byte) 2, u0.b.i3);
            } else {
                s.this.E3((byte) 2, u0.b.i3);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 12 || i2 == 83 || i2 == 14 || i2 == 31 || i2 == 32 || i2 == 60 || i2 == 154 || i2 == 155 || i2 == 64) {
                s.this.G3((byte) 3, u0.b.k3);
                return;
            }
            if (i2 == 41 || i2 == 45 || i2 == 49 || i2 == 50 || i2 == 51 || i2 == 52 || i2 == 149 || i2 == 150 || i2 == 151 || i2 == 53 || i2 == 62 || i2 == 71 || i2 == 72 || i2 == 63 || i2 == 73 || i2 == 156 || i2 == 74 || i2 == 153 || i2 == 76 || i2 == 77 || i2 == 78 || i2 == 79 || i2 == 80 || i2 == 81 || i2 == 85 || i2 == 86 || i2 == 87 || i2 == 88 || i2 == 89 || i2 == 109 || i2 == 110 || i2 == 135 || i2 == 136 || i2 == 111 || i2 == 112 || i2 == 114 || i2 == 115 || i2 == 116 || i2 == 117 || i2 == 118 || i2 == 120 || i2 == 121 || i2 == 122 || i2 == 123 || i2 == 124 || i2 == 125 || i2 == 126 || i2 == 127 || i2 == 128 || i2 == 129 || i2 == 131 || i2 == 132 || i2 == 133 || i2 == 134 || i2 == 90 || i2 == 91 || i2 == 92 || i2 == 93 || i2 == 94 || i2 == 95 || i2 == 103 || i2 == 104 || i2 == 105 || i2 == 106 || i2 == 138 || i2 == 139 || i2 == 140 || i2 == 141 || i2 == 142 || i2 == 143 || i2 == 144 || i2 == 145 || i2 == 146 || i2 == 147 || i2 == 148 || i2 == 149 || i2 == 150 || i2 == 151) {
                s.this.F3((byte) 3, u0.b.k3);
            } else {
                s.this.E3((byte) 3, u0.b.k3);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 12 || i2 == 83 || i2 == 14 || i2 == 31 || i2 == 32 || i2 == 60 || i2 == 154 || i2 == 155 || i2 == 64) {
                s.this.G3((byte) 4, u0.b.j3);
                return;
            }
            if (i2 == 41 || i2 == 45 || i2 == 49 || i2 == 50 || i2 == 51 || i2 == 52 || i2 == 149 || i2 == 150 || i2 == 151 || i2 == 53 || i2 == 62 || i2 == 71 || i2 == 72 || i2 == 63 || i2 == 73 || i2 == 156 || i2 == 74 || i2 == 153 || i2 == 76 || i2 == 77 || i2 == 78 || i2 == 79 || i2 == 80 || i2 == 81 || i2 == 85 || i2 == 86 || i2 == 87 || i2 == 88 || i2 == 89 || i2 == 109 || i2 == 110 || i2 == 135 || i2 == 136 || i2 == 111 || i2 == 112 || i2 == 114 || i2 == 115 || i2 == 116 || i2 == 117 || i2 == 118 || i2 == 120 || i2 == 121 || i2 == 122 || i2 == 123 || i2 == 124 || i2 == 125 || i2 == 126 || i2 == 127 || i2 == 128 || i2 == 129 || i2 == 131 || i2 == 132 || i2 == 133 || i2 == 134 || i2 == 90 || i2 == 91 || i2 == 92 || i2 == 93 || i2 == 94 || i2 == 95 || i2 == 103 || i2 == 104 || i2 == 105 || i2 == 106 || i2 == 138 || i2 == 139 || i2 == 140 || i2 == 141 || i2 == 142 || i2 == 143 || i2 == 144 || i2 == 145 || i2 == 146 || i2 == 147 || i2 == 148 || i2 == 149 || i2 == 150 || i2 == 151) {
                s.this.F3((byte) 4, u0.b.j3);
            } else {
                s.this.E3((byte) 4, u0.b.j3);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 12 || i2 == 83 || i2 == 14 || i2 == 31 || i2 == 32 || i2 == 60 || i2 == 154 || i2 == 155 || i2 == 64) {
                s.this.G3((byte) 5, u0.b.l3);
                return;
            }
            if (i2 == 41 || i2 == 45 || i2 == 49 || i2 == 50 || i2 == 51 || i2 == 52 || i2 == 149 || i2 == 150 || i2 == 151 || i2 == 53 || i2 == 62 || i2 == 71 || i2 == 72 || i2 == 63 || i2 == 73 || i2 == 156 || i2 == 74 || i2 == 153 || i2 == 76 || i2 == 77 || i2 == 78 || i2 == 79 || i2 == 80 || i2 == 81 || i2 == 85 || i2 == 86 || i2 == 87 || i2 == 88 || i2 == 89 || i2 == 109 || i2 == 110 || i2 == 135 || i2 == 136 || i2 == 111 || i2 == 112 || i2 == 114 || i2 == 115 || i2 == 116 || i2 == 117 || i2 == 118 || i2 == 120 || i2 == 121 || i2 == 122 || i2 == 123 || i2 == 124 || i2 == 125 || i2 == 126 || i2 == 127 || i2 == 128 || i2 == 129 || i2 == 131 || i2 == 132 || i2 == 133 || i2 == 134 || i2 == 90 || i2 == 91 || i2 == 92 || i2 == 93 || i2 == 94 || i2 == 95 || i2 == 103 || i2 == 104 || i2 == 105 || i2 == 106 || i2 == 138 || i2 == 139 || i2 == 140 || i2 == 141 || i2 == 142 || i2 == 143 || i2 == 144 || i2 == 145 || i2 == 146 || i2 == 147 || i2 == 148 || i2 == 149 || i2 == 150 || i2 == 151) {
                s.this.F3((byte) 5, u0.b.l3);
            } else {
                s.this.E3((byte) 5, u0.b.l3);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (s.this.f14781t0) {
                qt.a(0);
            } else if (o1.u.T(a.b.O)) {
                qt.f();
            }
            l0.b0.o0(s.this.f14788x);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.O3(h0.c.f2437h);
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                qt.y0(316, 1);
            } else {
                qt.y0(316, 0);
                qt.y0(318, 0);
            }
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            int i3 = time.hour;
            byte b2 = (byte) i3;
            int i4 = time.minute;
            byte b3 = (byte) i4;
            byte b4 = (byte) time.second;
            if (i2 != 0 && b2 > 12) {
                b2 = (byte) (b2 - 12);
            }
            if (nt.f8637c == 0) {
                z.k.s(227, 200, 4, 0, i2, i3, i4);
            } else {
                z.k.s(227, -58, 4, 80, (byte) (((i2 << 7) | b2) & 255), b3, b4);
            }
            qt.y0(225, time.hour);
            qt.y0(226, b3);
            qt.y0(227, time.month);
            qt.y0(228, time.monthDay);
            qt.y0(229, time.weekDay);
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (s.this.f14783u0 > 100) {
                    s.o3(s.this);
                    if (s.this.f14787w0 == s.this.f14783u0 / 100) {
                        s.this.f14787w0 = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = s.E0 = s.F0[0];
                } else {
                    int unused2 = s.E0 = s.F0[o0.a(y0.f.f18037c, 0, 36)];
                }
            }
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.f14786w--;
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = nt.f8637c;
            if (i3 != 5 && i3 != 33 && (i2 = s.this.f14789y) != u0.b.D) {
                if (i2 == 2) {
                    z.k.s(227, 192, 2, 5, 64);
                    z.k.s(227, 195, 6, 4, 0, 0, 0, 0, 0);
                }
                s.this.f14789y = u0.b.D;
            }
            l0.c0.e();
            if (App.c().getResources().getConfiguration().orientation == 1) {
                int i4 = nt.f8637c;
                if (i4 == 12) {
                    z.k.s(227, -30, 1, 3);
                    return;
                }
                if (i4 == 14) {
                    z.k.s(227, -30, 1, 4);
                    return;
                }
                if (i4 == 34) {
                    z.k.s(227, -30, 1, 5);
                    return;
                }
                if (i4 == 75) {
                    z.k.s(227, -30, 1, 6);
                    return;
                }
                if (i4 == 83) {
                    z.k.s(227, -30, 1, 7);
                    return;
                }
                if (i4 == 16) {
                    z.k.s(227, -30, 1, 1);
                    return;
                }
                if (i4 == 17) {
                    z.k.s(227, -30, 1, 2);
                    return;
                }
                switch (i4) {
                    case 98:
                        z.k.s(227, -30, 1, 8);
                        break;
                    case 99:
                        if (App.c().getResources().getConfiguration().orientation == 1) {
                            z.k.s(227, -30, 1, 9);
                        }
                        break;
                    case 100:
                        if (App.c().getResources().getConfiguration().orientation == 1) {
                            z.k.s(227, -30, 1, 10);
                        }
                        break;
                    case 101:
                        z.k.s(227, -30, 1, 11);
                        break;
                    case 102:
                        z.k.s(227, -30, 1, 12);
                        break;
                }
                return;
            }
            int i5 = nt.f8637c;
            if (i5 == 22) {
                z.k.s(227, -30, 1, 144);
                return;
            }
            if (i5 == 34) {
                z.k.s(227, -30, 1, 133);
                return;
            }
            if (i5 == 41) {
                z.k.s(227, -30, 1, 132);
                return;
            }
            if (i5 == 87) {
                z.k.s(227, -30, 1, 139);
                return;
            }
            if (i5 == 76) {
                z.k.s(227, -30, 1, 176);
                return;
            }
            if (i5 == 77) {
                z.k.s(227, -30, 1, 177);
                return;
            }
            if (i5 == 109 || i5 == 110) {
                z.k.s(227, -30, 1, 138);
                return;
            }
            switch (i5) {
                case 49:
                case 50:
                    z.k.s(227, -30, 1, 135);
                    return;
                case 51:
                    z.k.s(227, -30, 1, 134);
                    return;
                case 52:
                    break;
                case 53:
                    z.k.s(227, -30, 1, 136);
                    return;
                default:
                    switch (i5) {
                        case 90:
                        case 91:
                            z.k.s(227, -30, 1, 128);
                            return;
                        case 92:
                        case 93:
                            z.k.s(227, -30, 1, 129);
                            return;
                        case 94:
                        case 95:
                            z.k.s(227, -30, 1, 138);
                            return;
                        case 96:
                        case 97:
                            z.k.s(227, -30, 1, 145);
                            return;
                        default:
                            switch (i5) {
                                case 103:
                                case 104:
                                    z.k.s(227, -30, 1, 130);
                                    return;
                                case 105:
                                case 106:
                                    z.k.s(227, -30, 1, 131);
                                    return;
                                default:
                                    switch (i5) {
                                        case 114:
                                        case 125:
                                            z.k.s(227, -30, 1, 128);
                                            return;
                                        case 115:
                                        case 126:
                                            z.k.s(227, -30, 1, 129);
                                            return;
                                        case 116:
                                        case 127:
                                            z.k.s(227, -30, 1, 130);
                                            return;
                                        case 117:
                                        case 128:
                                            z.k.s(227, -30, 1, 131);
                                            return;
                                        case 118:
                                        case 129:
                                            z.k.s(227, -30, 1, 132);
                                            return;
                                        case 119:
                                        case 130:
                                            z.k.s(227, -30, 1, 133);
                                            return;
                                        case 120:
                                        case 131:
                                        case 135:
                                        case 136:
                                            z.k.s(227, -30, 1, 134);
                                            return;
                                        case 121:
                                        case 132:
                                            z.k.s(227, -30, 1, 135);
                                            return;
                                        case 122:
                                        case 133:
                                            z.k.s(227, -30, 1, 136);
                                            return;
                                        case 123:
                                        case 134:
                                            z.k.s(227, -30, 1, 137);
                                            return;
                                        case 124:
                                            z.k.s(227, -30, 1, 144);
                                            return;
                                        case 137:
                                            z.k.s(227, -30, 1, 146);
                                            return;
                                        case 138:
                                        case 139:
                                            z.k.s(227, -30, 1, 139);
                                            return;
                                        default:
                                            switch (i5) {
                                                case 150:
                                                case 151:
                                                    z.k.s(227, -30, 1, 140);
                                                    break;
                                            }
                                            return;
                                    }
                            }
                    }
            }
            z.k.s(227, -30, 1, 137);
        }
    }

    public class r implements Runnable {
        public r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c == 33) {
                return;
            }
            int i2 = 0;
            int i3 = y0.f.C0;
            int[] iArr = {196, 1, i3};
            if (i3 > 36) {
                iArr[2] = 36;
            }
            int i4 = nt.f8637c;
            if ((i4 == 3 || i4 == 4 || i4 == 43 || i4 == 43) && (y0.f.f18055i == 1 || y0.f.C0 == 0)) {
                iArr[2] = iArr[2] | 128;
            }
            int[] iArr2 = new int[4];
            iArr2[0] = 227;
            while (i2 < 3) {
                int i5 = i2 + 1;
                iArr2[i5] = iArr[i2];
                i2 = i5;
            }
            z.k.s(iArr2);
        }
    }

    /* JADX INFO: renamed from: module.canbus.s$s, reason: collision with other inner class name */
    public class RunnableC0080s implements Runnable {
        public RunnableC0080s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 0);
                return;
            }
            int i2 = u0.b.D;
            if (i2 == 5) {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 1);
            } else if (i2 != 13) {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 15);
            } else {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 2);
            }
        }
    }

    public class t implements Runnable {
        public t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 2) {
                int i2 = h0.c.E;
                if (i2 == 3) {
                    z.k.s(227, 195, 6, 2, 0, 0, 0, 0, 0);
                    return;
                }
                if (i2 == 4) {
                    z.k.s(227, 195, 6, 1, 0, 0, 0, 0, 0);
                } else if (i2 != 5) {
                    z.k.s(227, 195, 6, 4, 0, 0, 0, 0, 0);
                } else {
                    z.k.s(227, 195, 6, 3, 0, 0, 0, 0, 0);
                }
            }
        }
    }

    public class u implements Runnable {
        public u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.F3((byte) 6, h0.c.f2441j);
        }
    }

    public class v implements Runnable {
        public v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.P / 1000;
            int i3 = i2 / BatchedScanSettings.MAX_INTERVAL_SEC;
            int i4 = (i2 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            int i5 = i2 % 60;
            z.k.s(227, 203, 33, 7, ((i3 % 16) & 15) | (((i3 / 16) << 4) & 240), (((i4 / 16) << 4) & 240) | (i4 & 15), (i5 & 15) | (((i5 / 16) << 4) & 240), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        }
    }

    public class w implements Runnable {
        public w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s sVar = s.this;
            if (sVar.Z == 0) {
                sVar.K = u0.b.f17359s0;
                if ((s.this.K <= 11.25d && s.this.K >= 0.0f) || (s.this.K >= 348.75d && s.this.K <= 360.0f)) {
                    s.this.M = 0;
                } else if (s.this.K > 11.25d && s.this.K < 33.75d) {
                    s.this.M = 1;
                } else if (s.this.K >= 33.75d && s.this.K <= 56.25d) {
                    s.this.M = 2;
                } else if (s.this.K > 56.25d && s.this.K < 78.75d) {
                    s.this.M = 3;
                } else if (s.this.K >= 78.75d && s.this.K <= 101.25d) {
                    s.this.M = 4;
                } else if (s.this.K > 101.25d && s.this.K < 123.75d) {
                    s.this.M = 5;
                } else if (s.this.K >= 123.75d && s.this.K <= 146.25d) {
                    s.this.M = 6;
                } else if (s.this.K > 146.25d && s.this.K < 168.75d) {
                    s.this.M = 7;
                } else if (s.this.K > 168.75d && s.this.K < 191.25d) {
                    s.this.M = 8;
                } else if (s.this.K > 191.25d && s.this.K < 213.75d) {
                    s.this.M = 9;
                } else if (s.this.K > 213.75d && s.this.K < 236.25d) {
                    s.this.M = 10;
                } else if (s.this.K > 236.25d && s.this.K < 258.75d) {
                    s.this.M = 11;
                } else if (s.this.K > 258.75d && s.this.K < 281.25d) {
                    s.this.M = 12;
                } else if (s.this.K > 281.25d && s.this.K < 303.75d) {
                    s.this.M = 13;
                } else if (s.this.K > 303.75d && s.this.K < 326.25d) {
                    s.this.M = 14;
                } else if (s.this.K <= 326.25d || s.this.K >= 348.75d) {
                    s.this.M = 0;
                } else {
                    s.this.M = 15;
                }
                if (s.this.M != s.this.L) {
                    z.k.s(227, 198, 2, 90, s.this.M);
                    s sVar2 = s.this;
                    sVar2.L = sVar2.M;
                }
            }
        }
    }

    public static class x implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14814a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14815b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14816c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14817d;

        public x(int i2, int i3) {
            this.f14814a = i2;
            this.f14817d = i3;
        }

        public synchronized void a(int i2) {
            this.f14815b = i2;
            if (!this.f14816c) {
                this.f14816c = true;
                o1.k.a().postDelayed(this, this.f14817d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 132, 2, this.f14814a, this.f14815b);
            this.f14816c = false;
        }
    }

    public class y extends BroadcastReceiver {
        public y() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0046 A[Catch: Exception -> 0x0129, TryCatch #0 {Exception -> 0x0129, blocks: (B:5:0x0024, B:7:0x002e, B:11:0x003b, B:13:0x003f, B:14:0x0046, B:16:0x004d, B:18:0x0055, B:20:0x0063, B:22:0x0069, B:23:0x0071, B:25:0x007f, B:27:0x0085, B:28:0x008d, B:30:0x0097, B:31:0x009f, B:33:0x00a9, B:34:0x00c6, B:36:0x00d0, B:37:0x00d9, B:39:0x00e3, B:40:0x00ec, B:42:0x00f6, B:44:0x00fc, B:46:0x0107), top: B:51:0x0024 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                boolean z2 = false;
                if (extras.getInt("KEY_TYPE") == 10019) {
                    int i2 = extras.getInt("EXTRA_STATE");
                    if (i2 != 2 && i2 != 39) {
                        switch (i2) {
                            case 8:
                            case 10:
                                s sVar = s.this;
                                sVar.f14743a0 = 1;
                                sVar.Z = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                s sVar2 = s.this;
                                sVar2.f14743a0 = 0;
                                sVar2.Z = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        s sVar3 = s.this;
                        sVar3.f14743a0 = 0;
                        sVar3.Z = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!s.this.R.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        s.this.R = extras.getString("CUR_ROAD_NAME");
                    }
                    if (!s.this.S.equals(extras.getString("NEXT_ROAD_NAME")) && extras.getString("NEXT_ROAD_NAME") != null) {
                        s.this.S = extras.getString("NEXT_ROAD_NAME");
                    }
                    if (s.this.U != extras.getInt("SEG_REMAIN_DIS")) {
                        s.this.U = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (s.this.T != extras.getInt("ROUTE_REMAIN_DIS")) {
                        s.this.T = extras.getInt("ROUTE_REMAIN_DIS");
                        s.this.X = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (s.this.V != extras.getInt("CAR_DIRECTION")) {
                        s.this.V = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (s.this.W != extras.getInt("ROUTE_ALL_TIME")) {
                        s.this.W = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (s.this.Y != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        s.this.Y = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    s.this.c3(1);
                    o1.j.e(o1.l.a(), s.this.f14747c0);
                    o1.j.b(o1.l.a(), s.this.f14747c0, 10000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ y(s sVar, k kVar) {
            this();
        }
    }

    public static void C3(int i2, int i3) {
        x xVarC = G0.c(i2);
        if (xVarC != null) {
            xVarC.a(i3);
        }
    }

    public static /* synthetic */ int o3(s sVar) {
        int i2 = sVar.f14787w0;
        sVar.f14787w0 = i2 + 1;
        return i2;
    }

    public final void D3(String str) {
        Intent intent = new Intent("com.syu.execute_tts");
        intent.putExtra("raw_text", str);
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    public final void E3(byte b2, String str) {
        if (str == null) {
            str = "Unkown";
        }
        int[] iArr = new int[36];
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 33;
        iArr[3] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = nt.f8637c;
            if (i3 == 113 || i3 == 119 || i3 == 130) {
                int i4 = i2 << 1;
                iArr[i4 + 4] = (iCodePointAt >> 8) & 255;
                iArr[i4 + 5] = iCodePointAt & 255;
            } else {
                int i5 = i2 << 1;
                iArr[i5 + 5] = (iCodePointAt >> 8) & 255;
                iArr[i5 + 4] = iCodePointAt & 255;
            }
        }
        z.k.s(iArr);
    }

    public final void F3(byte b2, String str) {
        if (str == null) {
            str = "Unkown";
        }
        try {
            byte[] bytes = str.getBytes("GB2312");
            int length = 31;
            if (bytes.length <= 31) {
                length = bytes.length;
            }
            int[] iArr = new int[36];
            iArr[0] = 227;
            iArr[1] = 203;
            iArr[2] = 33;
            iArr[3] = b2;
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2 + 4] = bytes[i2];
            }
            z.k.s(iArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void G3(byte b2, String str) {
        if (str == null) {
            str = "Unkown";
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length <= 31 ? bytes.length : 31;
        int[] iArr = new int[36];
        for (int i2 = 0; i2 < 36; i2++) {
            iArr[i2] = 255;
        }
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 33;
        iArr[3] = b2;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3 + 4] = bytes[i3];
        }
        z.k.s(iArr);
    }

    public final void H3() {
        Z2(y0.f.f18037c);
    }

    public final void I3() {
        if (SystemProperties.getBoolean("persist.fyt.showduduair", false) || qt.i0().equals("com.syu.carinfo.honda.ActivityAirControl")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.honda.ActivityAirControl");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void J3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 3) {
            i2 = 3;
        }
        A0 = i2;
        if (i2 == 0) {
            z.k.s(227, -58, 2, 64, 1);
        } else if (i2 == 1) {
            z.k.s(227, -58, 2, 64, 0);
        } else if (i2 == 2) {
            z.k.s(227, -58, 2, 64, 2);
        } else if (i2 == 3) {
            z.k.s(227, -58, 2, 64, 3);
        }
        int i3 = nt.f8637c;
        if (i3 == 46 || i3 == 47 || i3 == 60 || i3 == 154 || i3 == 155 || i3 == 61 || i3 == 64 || i3 == 73 || i3 == 156 || i3 == 74 || i3 == 153 || i3 == 85) {
            return;
        }
        qt.y0(Process.MEDIA_UID, A0);
        qt.y0(317, A0);
        int iB = this.f14746c.b(1, 0);
        int i4 = A0;
        if (iB != i4) {
            this.f14746c.g(1, i4);
        }
    }

    public final void K3(int i2, int i3) {
        A0 = i2;
        z.k.s(227, -57, 2, i2, i3);
        int iB = this.f14746c.b(1, 0);
        int i4 = A0;
        if (iB != i4) {
            this.f14746c.g(1, i4);
        }
    }

    public final void L3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        C0 = i2;
        qt.y0(325, i2);
        int iB = this.f14746c.b(3, 0);
        int i3 = C0;
        if (iB != i3) {
            this.f14746c.g(3, i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void M3(int i2) {
        B0 = i2;
        qt.y0(150, i2);
        int iB = this.f14746c.b(2, 0);
        int i3 = B0;
        if (iB != i3) {
            this.f14746c.g(2, i3);
        }
    }

    @Override // k0.lt
    public void N2() {
    }

    public final synchronized void N3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        C3(9, E0);
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        int i3 = nt.f8637c;
        if (i3 == 46 || i3 == 47 || i3 == 60 || i3 == 154 || i3 == 155 || i3 == 61 || i3 == 64 || i3 == 74 || i3 == 153 || i3 == 73 || i3 == 156 || i3 == 85) {
            if (i2 == 33) {
                if (iArr[1] != 0) {
                    z.k.s(227, -17, 3, 125, 64, 1);
                    return;
                }
                z.k.s(227, -17, 3, 125, 64, 0);
            }
            if (i2 == 34) {
                if (iArr[1] != 0) {
                    z.k.s(227, -17, 3, 125, 65, 1);
                    return;
                } else {
                    z.k.s(227, -17, 3, 125, 65, 0);
                    return;
                }
            }
            if (i2 == 41) {
                if (iArr[1] != 0) {
                    z.k.s(227, -17, 4, 125, 69, 0, 128);
                    return;
                } else {
                    z.k.s(227, -17, 4, 125, 69, 0, 129);
                    return;
                }
            }
            if (i2 == 42) {
                if (iArr[1] != 0) {
                    z.k.s(227, -17, 4, 125, 69, 1, 128);
                    return;
                } else {
                    z.k.s(227, -17, 4, 125, 69, 1, 129);
                    return;
                }
            }
            if (i2 == 55) {
                z.k.s(227, -17, 4, 125, 69, 0, iArr[1]);
                return;
            }
            if (i2 == 56) {
                z.k.s(227, -17, 4, 125, 69, 1, iArr[1]);
                return;
            }
            if (i2 != 68) {
                switch (i2) {
                    case 36:
                        if (iArr[1] == 0) {
                            z.k.s(227, -17, 3, 125, 71, 0);
                        } else {
                            z.k.s(227, -17, 3, 125, 71, 1);
                        }
                        break;
                    case 37:
                        if (iArr[1] == 0) {
                            z.k.s(227, -17, 3, 125, 72, 0);
                        } else {
                            z.k.s(227, -17, 3, 125, 72, 1);
                        }
                        break;
                    case 38:
                        if (iArr[1] == 1) {
                            z.k.s(227, -17, 3, 125, 66, 0);
                        } else if (iArr[1] == 0) {
                            z.k.s(227, -17, 3, 125, 66, 1);
                        }
                        break;
                    case 39:
                        if (iArr[1] != -1) {
                            z.k.s(227, -17, 3, 125, 68, 129);
                        } else {
                            z.k.s(227, -17, 3, 125, 68, 128);
                        }
                        break;
                }
            }
            if (iArr[1] == 1) {
                z.k.s(227, -17, 4, 125, 2, 2, 1);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -17, 4, 125, 2, 2, 11);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -17, 4, 125, 2, 0, 1);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -17, 4, 125, 2, 0, 11);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, -17, 4, 125, 2, 3, 1);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, -17, 4, 125, 2, 3, 11);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, -17, 4, 125, 2, 1, 1);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, -17, 4, 125, 2, 1, 11);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -17, 3, 125, 1, 0);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, -17, 3, 125, 1, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -17, 4, 125, 2, 16, 1);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -17, 4, 125, 2, 16, 11);
                    return;
                }
                return;
            }
        }
        int i4 = nt.f8633a;
        if (i4 == 5636394 || i4 == 5701930 || i4 == 5767466 || i4 == 7143722 || i4 == 7274794 || i4 == 7209258 || i4 == 8847658 || i4 == 8913194 || i4 == 7405866 || i4 == 7471402 || i4 == 7536938 || i4 == 7602474 || i4 == 7668010 || i4 == 7733546 || i4 == 7799082 || i4 == 7864618 || i4 == 7930154 || i4 == 7995690 || i4 == 8061226 || i4 == 8126762 || i4 == 8192298 || i4 == 8257834 || i4 == 8323370 || i4 == 8388906 || i4 == 8454442 || i4 == 8519978 || i4 == 8585514 || i4 == 8651050 || i4 == 8716586 || i4 == 8782122 || i4 == 5833002 || i4 == 7340330) {
            if (i2 == 41) {
                if (iArr[1] == 0) {
                    z.k.s(227, -58, 2, 172, 18);
                    return;
                } else {
                    z.k.s(227, -58, 2, 172, 19);
                    return;
                }
            }
            if (i2 == 42) {
                if (iArr[1] == 0) {
                    z.k.s(227, -58, 2, 172, 20);
                    return;
                } else {
                    z.k.s(227, -58, 2, 172, 21);
                    return;
                }
            }
            if (i2 == 68) {
                if (iArr[1] == 1) {
                    z.k.s(227, -121, 2, 2, 0);
                    return;
                }
                if (iArr[1] == 2) {
                    z.k.s(227, -121, 2, 2, 1);
                    return;
                }
                if (iArr[1] == 3) {
                    z.k.s(227, -121, 2, 3, 0);
                    return;
                }
                if (iArr[1] == 4) {
                    z.k.s(227, -121, 2, 3, 1);
                    return;
                }
                if (iArr[1] == 5) {
                    z.k.s(227, -121, 2, 4, 0);
                    return;
                }
                if (iArr[1] == 6) {
                    z.k.s(227, -121, 2, 4, 1);
                    return;
                }
                if (iArr[1] == 7) {
                    z.k.s(227, -121, 2, 5, 0);
                    return;
                }
                if (iArr[1] == 8) {
                    z.k.s(227, -121, 2, 5, 1);
                    return;
                }
                if (iArr[1] == 9) {
                    z.k.s(227, -121, 2, 6, 0);
                    return;
                }
                if (iArr[1] == 10) {
                    z.k.s(227, -121, 2, 6, 1);
                    return;
                } else if (iArr[1] == 11) {
                    z.k.s(227, -121, 2, 1, 0);
                    return;
                } else {
                    if (iArr[1] == 12) {
                        z.k.s(227, -121, 2, 1, 1);
                        return;
                    }
                    return;
                }
            }
            switch (i2) {
                case 33:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[10] == 1) {
                            z.k.s(227, -58, 2, 172, 17);
                        }
                    } else if (nt.f8645g[10] == 0) {
                        z.k.s(227, -58, 2, 172, 17);
                    }
                    break;
                case 34:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[11] == 1) {
                            z.k.s(227, -58, 2, 172, 2);
                        }
                    } else if (nt.f8645g[11] == 0) {
                        z.k.s(227, -58, 2, 172, 1);
                    }
                    break;
                case 35:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[13] == 1) {
                            z.k.s(227, -58, 2, 172, 37);
                        }
                    } else if (nt.f8645g[13] == 0) {
                        z.k.s(227, -58, 2, 172, 37);
                    }
                    break;
                case 36:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[65] == 1) {
                            z.k.s(227, -58, 2, 172, 35);
                        }
                    } else if (nt.f8645g[65] == 0) {
                        z.k.s(227, -58, 2, 172, 35);
                    }
                    break;
                case 37:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[16] == 1) {
                            z.k.s(227, -58, 2, 172, 36);
                        }
                    } else if (nt.f8645g[16] == 0) {
                        z.k.s(227, -58, 2, 172, 36);
                    }
                    break;
                case 38:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[12] == 1) {
                            z.k.s(227, -58, 2, 172, 41);
                        }
                    } else if (nt.f8645g[12] == 0) {
                        z.k.s(227, -58, 2, 172, 41);
                    }
                    break;
                case 39:
                    if (iArr[1] == -2) {
                        z.k.s(227, -58, 2, 172, 25);
                    } else if (iArr[1] == -1) {
                        z.k.s(227, -58, 2, 172, 26);
                    }
                    break;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                z.k.s(227, -121, 2, 11, 1);
                return;
            } else {
                z.k.s(227, -121, 2, 11, 0);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                z.k.s(227, -121, 2, 13, 1);
                return;
            } else {
                z.k.s(227, -121, 2, 13, 0);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] < 18) {
                z.k.s(227, -121, 2, 12, 0);
                return;
            }
            if (iArr[1] >= 18 && iArr[1] <= 32) {
                z.k.s(227, -121, 2, 12, ((iArr[1] - 17) * 2) - 1);
                return;
            } else {
                if (iArr[1] > 32) {
                    z.k.s(227, -121, 2, 12, 31);
                    return;
                }
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] < 18) {
                z.k.s(227, -121, 2, 14, 0);
                return;
            }
            if (iArr[1] >= 18 && iArr[1] <= 32) {
                z.k.s(227, -121, 2, 14, ((iArr[1] - 17) * 2) - 1);
                return;
            } else {
                if (iArr[1] > 32) {
                    z.k.s(227, -121, 2, 14, 31);
                    return;
                }
                return;
            }
        }
        if (i2 == 67) {
            int i5 = iArr[1];
            if (i5 == 3) {
                z.k.s(227, 135, 2, 80, 1);
                return;
            } else {
                if (i5 != 10) {
                    return;
                }
                z.k.s(227, 135, 2, 80, 0);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 1) {
                z.k.s(227, -121, 2, 2, 0);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -121, 2, 2, 1);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -121, 2, 3, 0);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -121, 2, 3, 1);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, -121, 2, 4, 0);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, -121, 2, 4, 1);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, -121, 2, 5, 0);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, -121, 2, 5, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -121, 2, 6, 0);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, -121, 2, 6, 1);
                return;
            }
            if (iArr[1] == 11) {
                z.k.s(227, -121, 2, 1, 0);
                return;
            }
            if (iArr[1] == 12) {
                z.k.s(227, -121, 2, 1, 1);
                return;
            } else if (iArr[1] == 13) {
                z.k.s(227, -121, 2, 36, 0);
                return;
            } else {
                if (iArr[1] == 14) {
                    z.k.s(227, -121, 2, 36, 1);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        z.k.s(227, -121, 2, 7, 0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    z.k.s(227, -121, 2, 7, 1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        z.k.s(227, -121, 2, 8, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    z.k.s(227, -121, 2, 8, 1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    z.k.s(227, -121, 2, 15, 0);
                } else {
                    z.k.s(227, -121, 2, 15, 1);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    z.k.s(227, -121, 2, 17, 0);
                } else {
                    z.k.s(227, -121, 2, 17, 1);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    z.k.s(227, -121, 2, 18, 0);
                } else {
                    z.k.s(227, -121, 2, 18, 1);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    z.k.s(227, -121, 2, 16, 0);
                } else if (iArr[1] == 0) {
                    z.k.s(227, -121, 2, 16, 1);
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    z.k.s(227, -121, 2, 9, 0);
                } else {
                    z.k.s(227, -121, 2, 9, 1);
                }
                break;
        }
    }

    public final void O3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 31 ? str.length() : 31;
        int[] iArr = new int[36];
        iArr[0] = -29;
        iArr[1] = -53;
        iArr[2] = 33;
        iArr[3] = 1;
        int i2 = length + 4;
        for (int i3 = 4; i3 < i2; i3++) {
            iArr[i3] = (byte) (str.charAt(i3 - 4) & 255);
        }
        iArr[i2] = 15;
        z.k.s(iArr);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8315j = 0;
        int i2 = nt.f8637c;
        if (i2 == 13 || i2 == 35) {
            qt.x(this.O);
            this.f7886a.f8315j = 1;
        } else if (i2 == 40) {
            b3();
            qt.x(this.O);
        } else if (i2 == 152) {
            qt.x(this.O);
        } else if (i2 == 16 || i2 == 17) {
            mtVar.f8322q = 1;
        } else if (i2 == 23) {
            qt.x(this.O);
        } else if (i2 == 24) {
            qt.x(this.O);
            this.f7886a.f8315j = 1;
        } else if (i2 == 32) {
            mtVar.f8307b = 1;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            if (nt.a()) {
                init();
                l0.b0.a(this.f14785v0);
                H3();
                y0.g.f18094d.a(this.P, 1);
            }
        } else if (i2 != 33) {
            switch (i2) {
                case 3:
                case 4:
                    qt.x(this.O);
                    this.f7886a.f8315j = 1;
                    break;
                case 5:
                    u0.c.f17374a.a(this.f14755g0, 1);
                    break;
                case 6:
                case 7:
                case 10:
                case 11:
                    b3();
                    qt.x(this.O);
                    break;
                case 8:
                    mtVar.f8315j = 1;
                    b3();
                    qt.x(this.O);
                    break;
                case 9:
                    mtVar.f8315j = 1;
                    b3();
                    qt.x(this.O);
                    mt mtVar2 = this.f7886a;
                    mtVar2.f8307b = 1;
                    mtVar2.f8308c = 0;
                    mtVar2.f8309d = 0;
                    if (nt.a()) {
                        init();
                        l0.b0.a(this.f14785v0);
                        H3();
                        y0.g.f18094d.a(this.P, 1);
                    }
                    break;
            }
        } else {
            qt.x(this.O);
            this.f7886a.f8315j = 1;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(this.f14751e0, 1);
        if (nt.f8637c != 5) {
            this.f14746c.a();
            l0.b0.b(this.G);
            l0.b0.b(this.f14790z);
            y0.g.f18094d.a(this.A, 1);
            y0.g.f18095e.a(this.A, 1);
            qt.z(this.f14769n0);
            u0.c.f17388o.a(this.f14757h0, 1);
            u0.c.f17389p.a(this.f14761j0, 1);
            u0.c.f17390q.a(this.f14759i0, 1);
            u0.c.f17396w.a(this.f14763k0, 1);
            u0.c.f17379f.a(this.f14767m0, 1);
            h0.d.f2464c.a(this.f14765l0, 1);
            o1.h.f16865a.a(this.N, 1);
            h0.d.f2473l.a(this.I, 1);
            h0.d.f2465d.a(this.J, 1);
            this.Q = new y(this, null);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
            App.c().registerReceiver(this.Q, intentFilter);
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    /* JADX WARN: Code duplicated, block: B:611:0x1c3c  */
    /* JADX WARN: Code duplicated, block: B:613:0x1c40  */
    /* JADX WARN: Code duplicated, block: B:615:0x1c48  */
    /* JADX WARN: Code duplicated, block: B:617:0x1c55  */
    /* JADX WARN: Code duplicated, block: B:619:0x1c59  */
    /* JADX WARN: Code duplicated, block: B:620:0x1c6e  */
    /* JADX WARN: Code duplicated, block: B:622:0x1c76  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        int i5;
        int[][] iArr3;
        int i6;
        int[][] iArr4;
        int i7;
        byte b3 = bArr[i2];
        if (b3 == -14) {
            int i8 = i2 + 2;
            if (bArr[i8] == 1) {
                int i9 = i2 + 3;
                if (bArr[i9] == 1) {
                    l0.b0.l0(72, 0);
                    l0.b0.l0(72, 1);
                    return;
                } else {
                    if (bArr[i9] == 2) {
                        l0.b0.l0(71, 0);
                        l0.b0.l0(71, 1);
                        return;
                    }
                    return;
                }
            }
            if (bArr[i8] == 2) {
                qt.y0(232, bArr[i2 + 3] & 255);
                return;
            }
            if (bArr[i8] == 3) {
                int i10 = i2 + 3;
                qt.y0(233, bArr[i10] & 255);
                o1.x.C(nt.f8643f, 1049, new int[]{9, bArr[i10] & 255}, null, null);
                return;
            }
            if (bArr[i8] != 6) {
                if (bArr[i8] == 7) {
                    qt.y0(264, bArr[i2 + 3] & 255);
                    qt.y0(265, bArr[i2 + 4] & 255);
                    qt.y0(266, bArr[i2 + 5] & 255);
                    qt.y0(267, bArr[i2 + 6] & 255);
                    qt.y0(268, bArr[i2 + 7] & 255);
                    return;
                }
                if (bArr[i8] == 8) {
                    int i11 = i2 + 3;
                    qt.y0(i.a.Theme_findOnPageNextDrawable, bArr[i11] & 255);
                    o1.x.C(nt.f8643f, 1049, new int[]{7, bArr[i11] & 255}, null, null);
                    return;
                }
                if (bArr[i8] == 22) {
                    qt.y0(295, bArr[i2 + 3] & 255);
                    return;
                }
                if (bArr[i8] == 20) {
                    o1.x.C(nt.f8643f, 1049, new int[]{10, (bArr[i2 + 3] >> 0) & 3}, null, null);
                    return;
                }
                if (bArr[i8] != 21) {
                    if (bArr[i8] == 23) {
                        qt.y0(296, bArr[i2 + 3] & 255);
                        return;
                    }
                    if (bArr[i8] == 24) {
                        qt.y0(297, bArr[i2 + 3] & 255);
                        return;
                    }
                    if (bArr[i8] == 25) {
                        qt.y0(298, bArr[i2 + 3] & 255);
                        return;
                    }
                    if (bArr[i8] == 26) {
                        qt.y0(299, bArr[i2 + 3] & 255);
                        return;
                    } else {
                        if (bArr[i8] == 27) {
                            qt.y0(306, bArr[i2 + 3] & 255);
                            qt.y0(307, bArr[i2 + 4] & 255);
                        }
                        return;
                    }
                }
                byte b4 = bArr[i2 + 3];
                if (b4 == 0) {
                    if (qt.k0()) {
                        c.e.d().c(614);
                        return;
                    }
                    return;
                }
                if (b4 == 1) {
                    if (qt.k0()) {
                        c.e.d().c(591);
                        return;
                    }
                    return;
                } else if (b4 == 2) {
                    if (qt.k0()) {
                        c.e.d().c(592);
                        return;
                    }
                    return;
                } else if (b4 == 3) {
                    if (qt.k0()) {
                        c.e.d().c(595);
                        return;
                    }
                    return;
                } else {
                    if (b4 == 4 && qt.k0()) {
                        c.e.d().c(596);
                        return;
                    }
                    return;
                }
            }
            switch (bArr[i2 + 3]) {
                case 1:
                    D3("请主驾驶乘客系好安全带");
                    break;
                case 2:
                    D3("请副驾驶乘客系好安全带");
                    break;
                case 3:
                    int i12 = i2 + 4;
                    if (bArr[i12] == 1) {
                        D3("左前门已打开");
                        a.f.p().t(LogType.CANBUS, "exectue_tts voice 左前门已打开");
                    } else if (bArr[i12] == 0) {
                        D3("左前门已关闭");
                    }
                    break;
                case 4:
                    int i13 = i2 + 4;
                    if (bArr[i13] == 1) {
                        D3("右前门已打开");
                        a.f.p().t(LogType.CANBUS, "exectue_tts voice 右前门已打开");
                    } else if (bArr[i13] == 0) {
                        D3("右前门已关闭");
                    }
                    break;
                case 5:
                    int i14 = i2 + 4;
                    if (bArr[i14] == 1) {
                        D3("左后门已打开");
                    } else if (bArr[i14] == 0) {
                        D3("左后门已关闭");
                    }
                    break;
                case 6:
                    int i15 = i2 + 4;
                    if (bArr[i15] == 1) {
                        D3("右后门已打开");
                    } else if (bArr[i15] == 0) {
                        D3("右后门已关闭");
                    }
                    break;
                case 7:
                    int i16 = i2 + 4;
                    if (bArr[i16] == 1) {
                        D3("后备箱已打开");
                    } else if (bArr[i16] == 0) {
                        D3("后备箱已关闭");
                    }
                    break;
                case 8:
                    D3("行驶里程剩余100公里请及时加油哦");
                    break;
                case 9:
                    D3("行驶里程剩余50公里请及时加油哦");
                    break;
                case 10:
                    D3("您已连续驾驶超过2小时，请勿疲劳驾驶哦");
                    break;
                case 11:
                    D3("您已连续驾驶超过3小时，请勿疲劳驾驶哦");
                    break;
                case 12:
                    D3("车速超过120");
                    break;
                case 13:
                    D3("车速超过130");
                    break;
                case 14:
                    D3("车速超过150，请勿激烈驾驶哦");
                    break;
                case 15:
                    D3("车速超过170，请勿危险驾驶哦");
                    break;
            }
        }
        if (b3 == 7) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 5];
            byte b9 = bArr[i2 + 6];
            int i17 = b6 & 255;
            if (i17 < 0) {
                i17 = 0;
            } else if (i17 > 40) {
                i17 = 40;
            }
            int[] iArr5 = nt.f8645g;
            if (iArr5[244] != i17) {
                iArr5[244] = i17;
                o1.x.C(nt.f8643f, i.a.Theme_actionModePopupWindowStyle, new int[]{i17}, null, null);
            }
            int i18 = b7 & 255;
            if (i18 < 0) {
                i18 = 0;
            } else {
                int i19 = i17 - 1;
                if (i18 > i19) {
                    i18 = i19;
                }
            }
            int i20 = b5 & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i20 != 0) {
                i20 = 1;
            }
            int i21 = (b9 & 255) | ((b8 & 255) << 8);
            int i22 = (b5 >> 7) & 1;
            if (i22 == 0) {
                i21 *= 10;
            }
            int[] iArr6 = f14741y0;
            if (iArr6[i18] != i21) {
                iArr6[i18] = i21;
                o1.x.C(nt.f8643f, i.a.Theme_actionModeWebSearchDrawable, new int[]{i18, i21, i20, i22}, null, null);
                return;
            }
            return;
        }
        if (b3 == 20) {
            qt.y0(418, bArr[i2 + 3] & 255);
            qt.y0(419, bArr[i2 + 4] & 255);
            qt.y0(420, bArr[i2 + 5] & 255);
            qt.y0(421, bArr[i2 + 6] & 255);
            qt.y0(422, bArr[i2 + 7] & 255);
            return;
        }
        if (b3 == 22) {
            int i23 = i2 + 3;
            int i24 = i2 + 2;
            qt.y0(149, ((bArr[i23] << 8) & 65280) | (bArr[i24] & 255));
            qt.y0(1031, (bArr[i24] & 255) | ((bArr[i23] << 8) & 65280));
            return;
        }
        if (b3 == 80) {
            int i25 = i2 + 2;
            byte b10 = bArr[i25];
            int i26 = nt.f8637c;
            if (i26 != 46 && i26 != 47 && i26 != 60 && i26 != 154 && i26 != 155 && i26 != 61 && i26 != 64 && i26 != 73 && i26 != 156 && i26 != 74 && i26 != 153 && i26 != 85) {
                qt.y0(Process.MEDIA_UID, b10 & 255);
            }
            if (this.f14779s0 != bArr[i25]) {
                this.f14779s0 = bArr[i25];
                if (!qt.k0()) {
                    if (this.f14779s0 != 0) {
                        qt.a(1);
                    } else {
                        qt.a(0);
                    }
                }
            }
            if (nt.f8637c != 22 || (i4 = this.f14782u) == bArr[i25]) {
                return;
            }
            if (bArr[i25] == 3) {
                y0.f.f18034b.a(5);
            } else if (i4 == 3) {
                y0.f.f18034b.a(u0.b.D);
            }
            this.f14782u = bArr[i25];
            return;
        }
        if (b3 == 82) {
            int i27 = i2 + 2;
            qt.y0(308, bArr[i27] & 255);
            int i28 = i2 + 3;
            qt.y0(309, bArr[i28] & DhcpPacket.DHCP_DOMAIN_NAME);
            o1.x.C(nt.f8643f, 1049, new int[]{15, (bArr[i28] & 255) | ((bArr[i27] << 8) & 65280)}, null, null);
            return;
        }
        if (b3 == 3) {
            byte b11 = bArr[i2 + 2];
            byte b12 = bArr[i2 + 3];
            byte b13 = bArr[i2 + 4];
            int i29 = (b11 >> 7) & 1;
            int i30 = i29 == 0 ? 0 : i29 == 1 ? 10000 : i29;
            int[] iArr7 = nt.f8645g;
            if (iArr7[238] != i30) {
                iArr7[238] = i30;
                o1.x.C(nt.f8643f, 238, new int[]{i30}, null, null);
            }
            int i31 = (b11 & 64) == 0 ? 0 : 1;
            if (iArr7[247] != i31) {
                iArr7[247] = i31;
                o1.x.C(nt.f8643f, i.a.Theme_preferenceHeaderPanelStyle, new int[]{i31}, null, null);
            }
            int i32 = (b11 & 32) == 0 ? 0 : 1;
            if (iArr7[245] != i32) {
                iArr7[245] = i32;
                o1.x.C(nt.f8643f, i.a.Theme_preferenceFragmentStyle, new int[]{i32}, null, null);
            }
            int i33 = (b11 & 16) == 0 ? 0 : 1;
            if (iArr7[246] != i33) {
                iArr7[246] = i33;
                o1.x.C(nt.f8643f, i.a.Theme_preferencePanelStyle, new int[]{i33}, null, null);
            }
            int i34 = (b13 & 255) | ((b12 & 255) << 8);
            if (i29 == 0) {
                i34 *= 10;
            }
            if (iArr7[237] != i34) {
                iArr7[237] = i34;
                o1.x.C(nt.f8643f, 237, new int[]{i34}, null, null);
            }
            int i35 = (b11 & DhcpPacket.DHCP_DOMAIN_NAME) - 1;
            if (iArr7[239] != i35) {
                iArr7[239] = i35;
                o1.x.C(nt.f8643f, 239, new int[]{i35}, null, null);
                return;
            }
            return;
        }
        if (b3 == 4) {
            int i36 = (bArr[i2 + 2] >> 7) & 1;
            int i37 = i36 != 0 ? 6 : 12;
            int[] iArr8 = nt.f8645g;
            if (iArr8[242] != i37) {
                iArr8[242] = i37;
                o1.x.C(nt.f8643f, i.a.Theme_actionModeFindDrawable, new int[]{i37}, null, null);
            }
            int i38 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
            if (i36 == 0) {
                i38 *= 10;
            }
            int[] iArr9 = f14740x0;
            if (iArr9[0] != i38) {
                iArr9[0] = i38;
                o1.x.C(nt.f8643f, 240, new int[]{0, i38}, null, null);
            }
            int i39 = ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255);
            if (i36 == 0) {
                i39 *= 10;
            }
            if (iArr9[1] != i39) {
                iArr9[1] = i39;
                o1.x.C(nt.f8643f, 240, new int[]{1, i39}, null, null);
            }
            int i40 = ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255);
            if (i36 == 0) {
                i40 *= 10;
            }
            if (iArr9[2] != i40) {
                iArr9[2] = i40;
                o1.x.C(nt.f8643f, 240, new int[]{2, i40}, null, null);
            }
            int i41 = ((bArr[i2 + 9] & 255) << 8) | (bArr[i2 + 10] & 255);
            if (i36 == 0) {
                i41 *= 10;
            }
            if (iArr9[3] != i41) {
                iArr9[3] = i41;
                o1.x.C(nt.f8643f, 240, new int[]{3, i41}, null, null);
            }
            int i42 = ((bArr[i2 + 11] & 255) << 8) | (bArr[i2 + 12] & 255);
            if (i36 == 0) {
                i42 *= 10;
            }
            if (iArr9[4] != i42) {
                iArr9[4] = i42;
                o1.x.C(nt.f8643f, 240, new int[]{4, i42}, null, null);
            }
            int i43 = ((bArr[i2 + 13] & 255) << 8) | (bArr[i2 + 14] & 255);
            if (i36 == 0) {
                i43 *= 10;
            }
            if (iArr9[5] != i43) {
                iArr9[5] = i43;
                o1.x.C(nt.f8643f, 240, new int[]{5, i43}, null, null);
            }
            int i44 = ((bArr[i2 + 15] & 255) << 8) | (bArr[i2 + 16] & 255);
            if (i36 == 0) {
                i44 *= 10;
            }
            if (iArr9[6] != i44) {
                iArr9[6] = i44;
                o1.x.C(nt.f8643f, 240, new int[]{6, i44}, null, null);
            }
            int i45 = ((bArr[i2 + 17] & 255) << 8) | (bArr[i2 + 18] & 255);
            if (i36 == 0) {
                i45 *= 10;
            }
            if (iArr9[7] != i45) {
                iArr9[7] = i45;
                o1.x.C(nt.f8643f, 240, new int[]{7, i45}, null, null);
            }
            int i46 = ((bArr[i2 + 19] & 255) << 8) | (bArr[i2 + 20] & 255);
            if (i36 == 0) {
                i46 *= 10;
            }
            if (iArr9[8] != i46) {
                iArr9[8] = i46;
                o1.x.C(nt.f8643f, 240, new int[]{8, i46}, null, null);
            }
            int i47 = ((bArr[i2 + 21] & 255) << 8) | (bArr[i2 + 22] & 255);
            if (i36 == 0) {
                i47 *= 10;
            }
            if (iArr9[9] != i47) {
                iArr9[9] = i47;
                o1.x.C(nt.f8643f, 240, new int[]{9, i47}, null, null);
            }
            int i48 = ((bArr[i2 + 23] & 255) << 8) | (bArr[i2 + 24] & 255);
            if (i36 == 0) {
                i48 *= 10;
            }
            if (iArr9[10] != i48) {
                iArr9[10] = i48;
                o1.x.C(nt.f8643f, 240, new int[]{10, i48}, null, null);
            }
            int i49 = (bArr[i2 + 26] & 255) | ((bArr[i2 + 25] & 255) << 8);
            if (i36 == 0) {
                i49 *= 10;
            }
            if (iArr9[11] != i49) {
                iArr9[11] = i49;
                o1.x.C(nt.f8643f, 240, new int[]{11, i49}, null, null);
                return;
            }
            return;
        }
        if (b3 == 41) {
            if (this.B) {
                return;
            }
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, GLES10.GL_AMBIENT);
            return;
        }
        if (b3 == 42) {
            byte b14 = bArr[i2 + 2];
            byte b15 = bArr[i2 + 3];
            this.f14778s = b14 & 255;
            int i50 = 0;
            while (true) {
                iArr = this.f14780t;
                if (i50 >= iArr.length) {
                    break;
                }
                int i51 = this.f14778s;
                if (i51 == iArr[i50][0]) {
                    if (i51 == 0) {
                        break;
                    }
                    this.f14776r = i50;
                    break;
                }
                i50++;
            }
            int i52 = b15 & 255;
            if (i52 == 1) {
                if (i50 < iArr.length) {
                    l0.b0.l0(iArr[i50][1], 0);
                    return;
                }
                return;
            } else {
                if (i52 == 0) {
                    int i53 = this.f14776r;
                    if (i53 < iArr.length && i53 != 255) {
                        l0.b0.l0(iArr[i53][1], 1);
                    }
                    this.f14776r = 255;
                    return;
                }
                return;
            }
        }
        if (b3 == 112) {
            if (B0 == 1 && !this.D) {
                if (nt.W == 0) {
                    int i54 = i2 + 3;
                    if (this.f14771o0 != ((bArr[i54] >> 7) & 1)) {
                        int i55 = (bArr[i54] >> 7) & 1;
                        this.f14771o0 = i55;
                        if (i55 == 1) {
                            if (!o1.u.T(a.b.O)) {
                                qt.t();
                            }
                        } else if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                    }
                } else {
                    int i56 = (bArr[i2 + 3] >> 3) & 1;
                    if (this.f14771o0 != i56) {
                        this.f14771o0 = i56;
                        if (i56 == 1) {
                            if (!o1.u.T(a.b.O)) {
                                qt.t();
                            }
                        } else if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                    }
                }
            }
            int i57 = (bArr[i2 + 3] >> 6) & 1;
            if (u0.b.f17347o == 0 && i57 == 1) {
                if (o1.u.T(a.b.O)) {
                    qt.f();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                    return;
                }
            }
            return;
        }
        if (b3 == 113) {
            int i58 = i2 + 3;
            int i59 = i2 + 2;
            qt.y0(151, ((bArr[i58] << 8) & 65280) | (bArr[i59] & 255));
            qt.y0(1032, (bArr[i59] & 255) | ((bArr[i58] << 8) & 65280));
            return;
        }
        switch (b3) {
            case -48:
                int i60 = nt.f8637c;
                if ((i60 == 46 || i60 == 47 || i60 == 60 || i60 == 154 || i60 == 155 || i60 == 61 || i60 == 64 || i60 == 73 || i60 == 156 || i60 == 74 || i60 == 153 || i60 == 85) && (bArr[i2 + 2] & 255) == 64) {
                    int i61 = i2 + 3;
                    if (bArr[i61] == 0) {
                        qt.y0(Process.MEDIA_UID, 1);
                    } else if (bArr[i61] != 1) {
                        qt.y0(Process.MEDIA_UID, bArr[i61]);
                    } else {
                        qt.y0(Process.MEDIA_UID, 0);
                    }
                }
                break;
            case -47:
                int i62 = h0.c.E;
                if (i62 != 4 && i62 != 5 && i62 != 3 && C0 != 0) {
                    this.D = true;
                    int i63 = i2 + 3;
                    byte b16 = bArr[i63];
                    if (B0 == 1 && !this.C) {
                        if (nt.W == 0) {
                            if (this.f14771o0 != ((bArr[i63] >> 7) & 1)) {
                                int i64 = (bArr[i63] >> 7) & 1;
                                this.f14771o0 = i64;
                                if (i64 == 1) {
                                    if (this.f14781t0) {
                                        qt.a(1);
                                    } else if (!o1.u.T(a.b.O)) {
                                        qt.t();
                                    }
                                    this.f14786w = 20;
                                    l0.b0.a(this.f14788x);
                                } else if (!this.f14781t0 && this.f14786w <= 0) {
                                    if (o1.u.T(a.b.O)) {
                                        qt.f();
                                    }
                                    l0.b0.o0(this.f14788x);
                                } else {
                                    o1.j.e(o1.l.a(), this.f14784v);
                                    o1.j.b(o1.l.a(), this.f14784v, 4000L);
                                }
                            }
                            if (this.f14781t0 && this.f14773p0 != ((bArr[i63] >> 3) & 1)) {
                                int i65 = (bArr[i63] >> 3) & 1;
                                this.f14773p0 = i65;
                                if (i65 == 1) {
                                    qt.a(1);
                                    this.f14786w = 20;
                                    l0.b0.a(this.f14788x);
                                } else {
                                    o1.j.e(o1.l.a(), this.f14784v);
                                    o1.j.b(o1.l.a(), this.f14784v, 4000L);
                                }
                            }
                        } else {
                            int i66 = (bArr[i63] >> 3) & 1;
                            int i67 = nt.f8637c;
                            if (i67 == 3 || i67 == 4 || i67 == 35 || i67 == 13 || i67 == 1) {
                                b2 = 2;
                            } else {
                                b2 = 2;
                                if (i67 == 2) {
                                }
                                if (this.f14771o0 != i66) {
                                    this.f14771o0 = i66;
                                    if (i66 == 1) {
                                        if (!o1.u.T(a.b.O)) {
                                            qt.t();
                                        }
                                        this.f14786w = 20;
                                        l0.b0.a(this.f14788x);
                                    } else if (this.f14786w > 0) {
                                        o1.j.e(o1.l.a(), this.f14784v);
                                        o1.j.b(o1.l.a(), this.f14784v, 4000L);
                                    } else {
                                        if (o1.u.T(a.b.O)) {
                                            qt.f();
                                        }
                                        l0.b0.o0(this.f14788x);
                                    }
                                }
                            }
                            i66 = (bArr[i63] >> b2) & 1;
                            if (this.f14771o0 != i66) {
                                this.f14771o0 = i66;
                                if (i66 == 1) {
                                    if (!o1.u.T(a.b.O)) {
                                        qt.t();
                                    }
                                    this.f14786w = 20;
                                    l0.b0.a(this.f14788x);
                                } else if (this.f14786w > 0) {
                                    o1.j.e(o1.l.a(), this.f14784v);
                                    o1.j.b(o1.l.a(), this.f14784v, 4000L);
                                } else {
                                    if (o1.u.T(a.b.O)) {
                                        qt.f();
                                    }
                                    l0.b0.o0(this.f14788x);
                                }
                            }
                        }
                    }
                    int i68 = (b16 >> 6) & 1;
                    if (u0.b.f17347o == 0 && i68 == 1) {
                        if (!o1.u.T(a.b.O)) {
                            qt.t();
                        } else if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                        break;
                    }
                }
                break;
            case -46:
                qt.y0(116, bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME & 255);
                break;
            case -45:
                this.f14772p = bArr[i2 + 2] & 255;
                int i69 = 0;
                while (true) {
                    iArr2 = this.f14774q;
                    if (i69 < iArr2.length) {
                        int i70 = this.f14772p;
                        if (i70 != iArr2[i69][0]) {
                            i69++;
                        } else if (i70 != 0) {
                            this.f14770o = i69;
                        }
                    }
                }
                int i71 = this.f14772p;
                if (i71 == 38 || i71 == 39) {
                    if (!o1.u.S("com.syu.carlink")) {
                        o1.u.g("com.syu.carlink");
                    }
                    break;
                } else if (i71 != 0 && (i5 = this.f14770o) < iArr2.length) {
                    l0.b0.l0(iArr2[i5][1], 0);
                    l0.b0.l0(this.f14774q[this.f14770o][1], 1);
                    break;
                }
                break;
            default:
                switch (b3) {
                    case 32:
                        byte b17 = bArr[i2 + 2];
                        byte b18 = bArr[i2 + 3];
                        this.f14766m = b17 & 255;
                        int i72 = 0;
                        while (true) {
                            iArr3 = this.f14768n;
                            if (i72 < iArr3.length) {
                                int i73 = this.f14766m;
                                if (i73 != iArr3[i72][0]) {
                                    i72++;
                                } else if (i73 != 0) {
                                    this.f14764l = i72;
                                }
                            }
                        }
                        int i74 = this.f14766m;
                        if (i74 != 41) {
                            switch (i74) {
                                case 7:
                                    int i75 = nt.f8637c;
                                    switch (i75) {
                                        case 86:
                                        case 87:
                                        case 88:
                                        case 89:
                                            break;
                                        default:
                                            switch (i75) {
                                                case 109:
                                                case 110:
                                                case 111:
                                                case 112:
                                                case 113:
                                                case 114:
                                                case 115:
                                                case 116:
                                                case 117:
                                                case 118:
                                                case 119:
                                                case 120:
                                                case 121:
                                                case 122:
                                                case 123:
                                                case 124:
                                                case 125:
                                                case 126:
                                                case 127:
                                                case 128:
                                                case 129:
                                                case 130:
                                                case 131:
                                                case 132:
                                                case 133:
                                                case 134:
                                                case 135:
                                                case 136:
                                                    break;
                                                default:
                                                    if ((b18 & 255) == 1) {
                                                        if (i75 != 5) {
                                                            l0.b0.l0(2, 0);
                                                            l0.b0.l0(2, 1);
                                                        } else if (!qt.i0().equals("com.syu.carinfo.honda.Act_CarCD_AoDeSai")) {
                                                            Intent intent = new Intent();
                                                            intent.setClassName("com.syu.canbus", "com.syu.carinfo.honda.Act_CarCD_AoDeSai");
                                                            intent.addCategory(Intent.CATEGORY_DEFAULT);
                                                            intent.setFlags(268435456);
                                                            App.c().startActivity(intent);
                                                        } else {
                                                            l0.b0.l0(6, 0);
                                                            l0.b0.l0(6, 1);
                                                        }
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    int i76 = b18 & 255;
                                    if (this.f14756h != i76) {
                                        this.f14756h = i76;
                                        if (i76 == 0) {
                                            if (!this.f14758i) {
                                                l0.b0.l0(2, 0);
                                                l0.b0.l0(2, 1);
                                            }
                                            this.f14758i = false;
                                            break;
                                        } else if (i76 == 1) {
                                            this.f14758i = false;
                                            break;
                                        } else if (i76 == 2) {
                                            this.f14758i = true;
                                            l0.b0.l0(16, 0);
                                            l0.b0.l0(16, 1);
                                            break;
                                        }
                                    }
                                    break;
                                case 8:
                                    if ((b18 & 255) == 1) {
                                        if (ZLink.Y().d0() || s0.m("sys.carlink.type", 0) > 0) {
                                            c.e.d().c(576);
                                        } else if (h0.c.E == 4) {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        } else {
                                            l0.b0.l0(13, 0);
                                            l0.b0.l0(13, 1);
                                        }
                                    }
                                    break;
                                case 9:
                                    int i77 = nt.f8637c;
                                    switch (i77) {
                                        case 86:
                                        case 87:
                                        case 88:
                                        case 89:
                                            break;
                                        default:
                                            switch (i77) {
                                                case 109:
                                                case 110:
                                                case 111:
                                                case 112:
                                                case 113:
                                                case 114:
                                                case 115:
                                                case 116:
                                                case 117:
                                                case 118:
                                                case 119:
                                                case 120:
                                                case 121:
                                                case 122:
                                                case 123:
                                                case 124:
                                                case 125:
                                                case 126:
                                                case 127:
                                                case 128:
                                                case 129:
                                                case 130:
                                                case 131:
                                                case 132:
                                                case 133:
                                                case 134:
                                                case 135:
                                                case 136:
                                                    break;
                                                default:
                                                    if ((b18 & 255) == 1) {
                                                        l0.b0.l0(18, 0);
                                                        l0.b0.l0(18, 1);
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    int i78 = b18 & 255;
                                    if (this.f14756h != i78) {
                                        this.f14756h = i78;
                                        if (i78 == 0) {
                                            if (!this.f14758i && (i6 = h0.c.E) != 3 && i6 != 5) {
                                                l0.b0.l0(18, 0);
                                                l0.b0.l0(18, 1);
                                            }
                                            this.f14758i = false;
                                            break;
                                        } else if (i78 == 1) {
                                            this.f14758i = false;
                                            break;
                                        } else if (i78 == 2) {
                                            this.f14758i = true;
                                            l0.b0.l0(13, 0);
                                            l0.b0.l0(13, 1);
                                            break;
                                        }
                                    }
                                    break;
                                case 10:
                                    int i79 = nt.f8637c;
                                    switch (i79) {
                                        case 86:
                                        case 87:
                                        case 88:
                                        case 89:
                                            break;
                                        default:
                                            switch (i79) {
                                                case 109:
                                                case 110:
                                                case 111:
                                                case 112:
                                                case 113:
                                                case 114:
                                                case 115:
                                                case 116:
                                                case 117:
                                                case 118:
                                                case 119:
                                                case 120:
                                                case 121:
                                                case 122:
                                                case 123:
                                                case 124:
                                                case 125:
                                                case 126:
                                                case 127:
                                                case 128:
                                                case 129:
                                                case 130:
                                                case 131:
                                                case 132:
                                                case 133:
                                                case 134:
                                                case 135:
                                                case 136:
                                                    break;
                                                default:
                                                    if ((b18 & 255) == 1) {
                                                        if (!ZLink.Y().d0() && s0.m("sys.carlink.type", 0) <= 0) {
                                                            int i80 = h0.c.E;
                                                            if (i80 == 3 || i80 == 4 || i80 == 5) {
                                                                l0.b0.l0(26, 0);
                                                                l0.b0.l0(26, 1);
                                                            } else {
                                                                l0.b0.l0(6, 0);
                                                                l0.b0.l0(6, 1);
                                                            }
                                                        } else {
                                                            c.e.d().c(6);
                                                        }
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    int i81 = b18 & 255;
                                    if (this.f14756h != i81) {
                                        this.f14756h = i81;
                                        if (i81 == 0) {
                                            if (!this.f14758i) {
                                                if (ZLink.Y().d0() || s0.m("sys.carlink.type", 0) > 0) {
                                                    c.e.d().c(6);
                                                } else {
                                                    int i82 = h0.c.E;
                                                    if (i82 == 3 || i82 == 4 || i82 == 5) {
                                                        l0.b0.l0(26, 0);
                                                        l0.b0.l0(26, 1);
                                                    } else {
                                                        l0.b0.l0(6, 0);
                                                        l0.b0.l0(6, 1);
                                                    }
                                                }
                                            }
                                            this.f14758i = false;
                                            break;
                                        } else if (i81 == 1) {
                                            this.f14758i = false;
                                            break;
                                        } else if (i81 == 2) {
                                            this.f14758i = true;
                                            l0.b0.l0(12, 0);
                                            l0.b0.l0(12, 1);
                                            break;
                                        }
                                    }
                                    break;
                                default:
                                    int i83 = b18 & 255;
                                    if (i83 != 1) {
                                        if (i83 == 0) {
                                            int i84 = this.f14764l;
                                            if (i84 < iArr3.length && i84 != 255) {
                                                l0.b0.l0(iArr3[i84][1], 1);
                                            }
                                            this.f14764l = 255;
                                        }
                                    } else if (i72 < iArr3.length) {
                                        l0.b0.l0(iArr3[i72][1], 0);
                                    }
                                    break;
                            }
                        }
                        break;
                    case 33:
                        switch (nt.f8633a) {
                            case 196906:
                            case 262442:
                            case 786730:
                            case 852266:
                            case 917802:
                            case 1311018:
                            case 1835306:
                            case 1900842:
                            case 2425130:
                            case 2490666:
                            case 2687274:
                            case 2752810:
                            case 2818346:
                            case 2883882:
                            case 3211562:
                            case 3277098:
                            case 3932458:
                            case 4194602:
                            case 4784426:
                            case 4849962:
                            case 4981034:
                            case 5046570:
                            case 5112106:
                            case 5177642:
                            case 5243178:
                            case 5308714:
                            case 5898538:
                            case 5964074:
                            case 6029610:
                            case 6095146:
                            case 6160682:
                            case 6226218:
                            case 6291754:
                            case 6357290:
                            case 6488362:
                            case 6553898:
                            case 6750506:
                            case 6816042:
                            case 6881578:
                            case 6947114:
                            case 8978730:
                            case 9044266:
                            case 9109802:
                            case 9175338:
                            case 9240874:
                            case 9306410:
                            case 9371946:
                            case 9437482:
                            case 9503018:
                            case 9568554:
                            case 9634090:
                            case 9699626:
                            case 10027306:
                            case 10092842:
                            case 10158378:
                            case 10223914:
                                int i85 = (bArr[i2 + 6] >> 6) & 1;
                                if (this.f14754g != i85) {
                                    this.f14754g = i85;
                                    if (!SystemProperties.getBoolean("persist.fyt.showduduair", false) && this.f14754g == 1) {
                                        if (!qt.i0().equals("com.syu.carinfo.honda.ActivityAirControl")) {
                                            I3();
                                        } else {
                                            l0.b0.l0(6, 0);
                                            l0.b0.l0(6, 1);
                                        }
                                    }
                                }
                                break;
                        }
                        int i86 = nt.f8633a;
                        if (i86 == 5636394 || i86 == 5701930 || i86 == 5767466 || i86 == 5833002 || i86 == 7340330 || i86 == 7143722 || i86 == 8847658 || i86 == 7274794 || i86 == 7209258 || i86 == 8913194 || i86 == 7405866 || i86 == 7471402 || i86 == 7536938 || i86 == 7602474 || i86 == 7668010 || i86 == 7733546 || i86 == 7799082 || i86 == 7864618 || i86 == 7930154 || i86 == 7995690 || i86 == 8061226 || i86 == 8192298 || i86 == 8257834 || i86 == 8323370 || i86 == 8388906 || i86 == 8454442 || i86 == 8519978 || i86 == 8585514 || i86 == 8651050 || i86 == 8716586 || i86 == 8782122 || i86 == 8126762) {
                            int i87 = i2 + 6;
                            if (this.f14754g != ((bArr[i87] >> 6) & 1)) {
                                int i88 = (bArr[i87] >> 6) & 1;
                                this.f14754g = i88;
                                if (i88 == 1 && !SystemProperties.getBoolean("persist.fyt.showduduair", false)) {
                                    if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                                        l0.b0.l0(6, 0);
                                        l0.b0.l0(6, 1);
                                    } else {
                                        l0.b0.l0(62, 0);
                                        l0.b0.l0(62, 1);
                                    }
                                }
                            }
                        }
                        byte b19 = bArr[i2 + 2];
                        qt.y0(10, (b19 >> 7) & 1);
                        qt.y0(11, (b19 >> 6) & 1);
                        qt.y0(12, (b19 >> 5) & 1);
                        qt.y0(62, (b19 >> 4) & 1);
                        qt.y0(13, (b19 >> 3) & 1);
                        qt.y0(14, (b19 >> 2) & 1);
                        qt.y0(16, (b19 >> 1) & 1);
                        byte b20 = bArr[i2 + 3];
                        qt.y0(18, (b20 >> 7) & 1);
                        qt.y0(19, (b20 >> 6) & 1);
                        qt.y0(20, (b20 >> 5) & 1);
                        int i89 = b20 & DhcpPacket.DHCP_DOMAIN_NAME;
                        if (i89 > 7) {
                            i89 = 7;
                        }
                        qt.y0(21, i89);
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            byte b21 = bArr[i2 + 5];
                            if (b21 == -1) {
                                qt.y0(27, -3);
                            } else if (b21 != 0) {
                                qt.y0(27, b21 & 255);
                            } else {
                                qt.y0(27, -2);
                            }
                            byte b22 = bArr[i2 + 4];
                            if (b22 == -1) {
                                qt.y0(28, -3);
                            } else if (b22 != 0) {
                                qt.y0(28, b22 & 255);
                            } else {
                                qt.y0(28, -2);
                            }
                        } else {
                            byte b23 = bArr[i2 + 4];
                            if (b23 == -1) {
                                qt.y0(27, -3);
                            } else if (b23 != 0) {
                                qt.y0(27, b23 & 255);
                            } else {
                                qt.y0(27, -2);
                            }
                            byte b24 = bArr[i2 + 5];
                            if (b24 == -1) {
                                qt.y0(28, -3);
                            } else if (b24 != 0) {
                                qt.y0(28, b24 & 255);
                            } else {
                                qt.y0(28, -2);
                            }
                        }
                        byte b25 = bArr[i2 + 6];
                        qt.y0(65, (b25 >> 7) & 1);
                        qt.y0(37, (b25 >> 0) & 1);
                        qt.y0(67, (b25 >> 2) & 1);
                        qt.y0(64, (b25 >> 6) & 1);
                        byte b26 = bArr[i2 + 8];
                        if (b26 == -1) {
                            qt.y0(40, -3);
                        } else if (b26 != 0) {
                            qt.y0(40, b26 & 255);
                        } else {
                            qt.y0(40, -2);
                        }
                        byte b27 = bArr[i2 + 9];
                        qt.y0(48, (b27 >> 7) & 1);
                        qt.y0(46, (b27 >> 6) & 1);
                        qt.y0(47, (b27 >> 5) & 1);
                        qt.y0(44, b27 & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(43, (bArr[i2 + 10] >> 7) & 1);
                        byte b28 = bArr[i2 + 7];
                        qt.y0(22, (b28 >> 2) & 1);
                        qt.y0(23, (b28 >> 1) & 1);
                        qt.y0(24, b28 & 1);
                        byte b29 = bArr[i2 + 11];
                        qt.y0(31, (b29 >> 6) & 3);
                        qt.y0(29, (b29 >> 4) & 3);
                        qt.y0(32, (b29 >> 2) & 3);
                        qt.y0(30, b29 & 3);
                        break;
                    case 34:
                        int i90 = i2 + 2;
                        qt.y0(312, bArr[i90] & 255);
                        int i91 = i2 + 3;
                        qt.y0(313, bArr[i91] & 255);
                        int i92 = i2 + 4;
                        qt.y0(314, bArr[i92] & 255);
                        int i93 = i2 + 5;
                        qt.y0(315, bArr[i93] & 255);
                        u0.d.R2(l0.c0.E0(bArr[i90] & 255));
                        u0.d.S2(l0.c0.E0(bArr[i91] & 255));
                        u0.d.T2(l0.c0.E0(bArr[i92] & 255));
                        u0.d.U2(l0.c0.E0(bArr[i93] & 255));
                        break;
                    case 35:
                        int i94 = i2 + 2;
                        int i95 = bArr[i94] & 255;
                        int i96 = i2 + 3;
                        int i97 = bArr[i96] & 255;
                        int i98 = i2 + 4;
                        int i99 = bArr[i98] & 255;
                        int i100 = i2 + 5;
                        int i101 = bArr[i100] & 255;
                        if (i95 == 0 && i97 == 0 && i99 == 0 && i101 == 0) {
                            u0.d.C2(0);
                        } else if ((l0.c0.f13013g != i95 || l0.c0.f13014h != i97 || l0.c0.f13015i != i99 || l0.c0.f13016j != i101) && u0.b.f17347o == 0) {
                            u0.d.C2(1);
                            l0.c0.f13017k = 4;
                            l0.b0.b(l0.c0.f13018l);
                        }
                        l0.c0.f13013g = i95;
                        l0.c0.f13014h = i97;
                        l0.c0.f13015i = i99;
                        l0.c0.f13016j = i101;
                        u0.d.D2(l0.c0.E0(bArr[i94] & 255));
                        u0.d.E2(l0.c0.E0(bArr[i96] & 255));
                        u0.d.F2(l0.c0.E0(bArr[i98] & 255));
                        u0.d.G2(l0.c0.E0(bArr[i100] & 255));
                        break;
                    case 36:
                        byte b30 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b30 >> 7) & 1);
                            qt.y0(2, (b30 >> 6) & 1);
                            qt.y0(3, (b30 >> 5) & 1);
                            qt.y0(4, (b30 >> 4) & 1);
                        } else {
                            qt.y0(1, (b30 >> 6) & 1);
                            qt.y0(2, (b30 >> 7) & 1);
                            qt.y0(3, (b30 >> 4) & 1);
                            qt.y0(4, (b30 >> 5) & 1);
                        }
                        qt.y0(5, (b30 >> 3) & 1);
                        qt.y0(0, (b30 >> 2) & 1);
                        int i102 = nt.f8637c;
                        if (i102 == 21 || i102 == 22) {
                            int i103 = i2 + 3;
                            if (this.f14777r0 != (bArr[i103] & 1)) {
                                this.f14777r0 = bArr[i103] & 1;
                                if (!qt.k0()) {
                                    if (this.f14777r0 != 1) {
                                        qt.a(0);
                                    } else {
                                        qt.a(1);
                                    }
                                }
                            }
                        }
                        break;
                    case 37:
                        qt.y0(310, (bArr[i2 + 2] >> 1) & 1);
                        qt.y0(311, (bArr[i2 + 3] >> 6) & 3);
                        break;
                    default:
                        switch (b3) {
                            case 48:
                                qt.L(new String(bArr, i2 + 2, i3 - 2));
                                break;
                            case 49:
                                if (nt.a()) {
                                    int i104 = i2 + 2;
                                    D0 = o0.a(bArr[i104] & 255, 0, 40);
                                    byte b31 = bArr[i104];
                                    byte b32 = bArr[i2 + 3];
                                    byte b33 = bArr[i2 + 4];
                                    byte b34 = bArr[i2 + 5];
                                    byte b35 = bArr[i2 + 6];
                                    byte b36 = bArr[i2 + 7];
                                    byte b37 = bArr[i2 + 8];
                                    byte b38 = bArr[i2 + 9];
                                    byte b39 = bArr[i2 + 10];
                                    qt.y0(183, b31);
                                    qt.y0(184, b32);
                                    qt.y0(185, b33);
                                    qt.y0(186, b34);
                                    qt.y0(187, b35);
                                    qt.y0(188, b36);
                                    qt.y0(189, b37);
                                    qt.y0(190, b38);
                                    qt.y0(191, b39);
                                }
                                break;
                            case 50:
                                byte b40 = bArr[i2 + 2];
                                byte b41 = bArr[i2 + 3];
                                byte b42 = bArr[i2 + 4];
                                byte b43 = bArr[i2 + 5];
                                byte b44 = bArr[i2 + 6];
                                byte b45 = bArr[i2 + 7];
                                byte b46 = bArr[i2 + 8];
                                byte b47 = bArr[i2 + 9];
                                byte b48 = bArr[i2 + 10];
                                qt.y0(120, (b40 >> 6) & 3);
                                qt.y0(119, (b40 >> 4) & 3);
                                qt.y0(121, b40 & DhcpPacket.DHCP_DOMAIN_NAME);
                                qt.y0(122, (b41 >> 4) & 7);
                                qt.y0(123, (b41 >> 2) & 3);
                                qt.y0(124, b41 & 3);
                                qt.y0(125, (b42 >> 7) & 1);
                                qt.y0(126, (b42 >> 6) & 1);
                                qt.y0(127, (b42 >> 4) & 3);
                                qt.y0(128, (b42 >> 2) & 3);
                                qt.y0(129, b42 & 3);
                                qt.y0(130, (b43 >> 6) & 1);
                                qt.y0(131, (b43 >> 5) & 1);
                                qt.y0(132, (b43 >> 4) & 1);
                                qt.y0(133, (b43 >> 3) & 1);
                                qt.y0(134, (b43 >> 0) & 7);
                                qt.y0(135, (b44 >> 6) & 3);
                                qt.y0(136, (b44 >> 5) & 1);
                                qt.y0(137, (b44 >> 4) & 1);
                                qt.y0(138, (b44 >> 3) & 1);
                                qt.y0(139, (b44 >> 2) & 1);
                                qt.y0(140, (b44 >> 1) & 1);
                                qt.y0(141, (b44 >> 0) & 1);
                                qt.y0(142, (b45 >> 7) & 1);
                                qt.y0(143, (b45 >> 6) & 1);
                                qt.y0(144, (b45 >> 5) & 1);
                                qt.y0(145, (b45 >> 4) & 1);
                                qt.y0(146, (b45 >> 2) & 3);
                                qt.y0(147, (b45 >> 0) & 3);
                                qt.y0(148, (b46 >> 7) & 1);
                                int i105 = nt.f8633a;
                                if (i105 == 852266) {
                                    byte b49 = bArr[i2 + 11];
                                    qt.y0(158, (b49 >> 2) & 3);
                                    qt.y0(154, b49 & 1);
                                    qt.y0(155, (b49 >> 1) & 1);
                                } else if (i105 == 524586 || i105 == 590122 || i105 == 655658 || i105 == 721194 || i105 == 983338) {
                                    qt.y0(152, (b43 >> 7) & 1);
                                    qt.y0(153, (b46 >> 6) & 1);
                                    qt.y0(154, (b46 >> 5) & 1);
                                    qt.y0(155, (b46 >> 4) & 1);
                                    qt.y0(156, (b46 >> 3) & 1);
                                    qt.y0(157, (b46 >> 2) & 1);
                                } else {
                                    qt.y0(158, (b46 >> 5) & 3);
                                    qt.y0(154, (b46 >> 4) & 1);
                                    qt.y0(155, (b46 >> 3) & 1);
                                    qt.y0(195, (b46 >> 2) & 1);
                                    qt.y0(196, (b46 >> 1) & 1);
                                    qt.y0(197, (b46 >> 0) & 1);
                                    qt.y0(198, (b47 >> 7) & 1);
                                    qt.y0(199, (b47 >> 6) & 1);
                                    qt.y0(200, (b47 >> 5) & 1);
                                    qt.y0(201, (b47 >> 4) & 1);
                                    qt.y0(202, (b47 >> 3) & 1);
                                    qt.y0(203, (b47 >> 2) & 1);
                                    qt.y0(205, (b47 >> 1) & 1);
                                    qt.y0(153, (b47 >> 0) & 1);
                                    qt.y0(210, (b48 >> 7) & 1);
                                    qt.y0(217, (b48 >> 6) & 1);
                                    qt.y0(219, (b48 >> 5) & 1);
                                    qt.y0(234, (b48 >> 4) & 1);
                                    int i106 = i2 + 11;
                                    qt.y0(211, (bArr[i106] >> 6) & 3);
                                    qt.y0(212, (bArr[i106] >> 4) & 3);
                                    qt.y0(213, (bArr[i106] >> 3) & 1);
                                    qt.y0(214, (bArr[i106] >> 2) & 1);
                                    qt.y0(215, (bArr[i106] >> 1) & 1);
                                    qt.y0(216, (bArr[i106] >> 0) & 1);
                                    int i107 = i2 + 12;
                                    qt.y0(220, (bArr[i107] >> 7) & 1);
                                    qt.y0(221, (bArr[i107] >> 6) & 1);
                                    qt.y0(222, (bArr[i107] >> 5) & 1);
                                    qt.y0(223, (bArr[i107] >> 4) & 1);
                                    qt.y0(235, (bArr[i107] >> 3) & 1);
                                    qt.y0(236, (bArr[i107] >> 2) & 1);
                                    int i108 = i2 + 13;
                                    qt.y0(300, (bArr[i108] >> 5) & 7);
                                    qt.y0(TextTrackRegion.SCROLL_VALUE_SCROLL_UP, (bArr[i108] >> 4) & 1);
                                    qt.y0(302, (bArr[i108] >> 3) & 1);
                                    qt.y0(303, (bArr[i108] >> 2) & 1);
                                    qt.y0(305, (bArr[i108] >> 0) & 1);
                                    int i109 = i2 + 14;
                                    qt.y0(304, (bArr[i109] >> 6) & 3);
                                    qt.y0(403, (bArr[i109] >> 4) & 3);
                                    qt.y0(UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL, (bArr[i109] >> 3) & 1);
                                    qt.y0(UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL, (bArr[i109] >> 2) & 1);
                                    qt.y0(Downloads.Impl.STATUS_NOT_ACCEPTABLE, (bArr[i109] >> 1) & 1);
                                    qt.y0(407, (bArr[i109] >> 0) & 1);
                                    int i110 = i2 + 15;
                                    qt.y0(408, (bArr[i110] >> 5) & 7);
                                    qt.y0(409, (bArr[i110] >> 4) & 1);
                                    qt.y0(410, (bArr[i110] >> 1) & 7);
                                    qt.y0(413, (bArr[i110] >> 0) & 1);
                                    int i111 = i2 + 16;
                                    qt.y0(Downloads.Impl.STATUS_LENGTH_REQUIRED, (bArr[i111] >> 4) & 15);
                                    qt.y0(Downloads.Impl.STATUS_PRECONDITION_FAILED, (bArr[i111] >> 0) & 3);
                                    int i112 = i2 + 17;
                                    qt.y0(414, (bArr[i112] >> 6) & 3);
                                    qt.y0(415, (bArr[i112] >> 4) & 3);
                                    qt.y0(416, (bArr[i112] >> 2) & 3);
                                    qt.y0(417, (bArr[i112] >> 0) & 3);
                                }
                                qt.y0(179, (b46 >> 1) & 1);
                                qt.y0(180, b46 & 1);
                                qt.y0(181, b48 + (b47 * 256));
                                if (nt.f8633a == 983338) {
                                    qt.y0(158, (b47 >> 6) & 3);
                                    qt.y0(193, (b47 >> 5) & 1);
                                    qt.y0(194, (b47 >> 4) & 1);
                                }
                                break;
                            case 51:
                                byte b50 = bArr[i2 + 2];
                                if (b50 == 1) {
                                    qt.y0(98, bArr[i2 + 3] & 255);
                                    int i113 = i2 + 4;
                                    int i114 = i2 + 5;
                                    qt.y0(99, ((bArr[i113] << 8) & 65280) | (bArr[i114] & 255));
                                    int i115 = i2 + 6;
                                    int i116 = i2 + 7;
                                    qt.y0(100, (bArr[i116] & 255) | ((bArr[i115] << 8) & 65280));
                                    int i117 = i2 + 8;
                                    int i118 = i2 + 9;
                                    qt.y0(101, ((bArr[i117] << 8) & 65280) | (bArr[i118] & 255));
                                    qt.y0(102, ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                                    qt.y0(103, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                                    byte b51 = bArr[i2 + 15];
                                    qt.y0(104, b51 & 3);
                                    qt.y0(105, (b51 >> 2) & 3);
                                    int i119 = (b51 >> 4) & 3;
                                    qt.y0(106, i119);
                                    qt.y0(107, (b51 >> 6) & 1);
                                    qt.y0(108, (b51 >> 7) & 1);
                                    o1.x[] xVarArr = nt.f8643f;
                                    int i120 = (i119 << 16) & Spanned.SPAN_PRIORITY;
                                    o1.x.C(xVarArr, 1049, new int[]{16, ((bArr[i113] << 8) & 65280) | i120 | (bArr[i114] & 255)}, null, null);
                                    o1.x.C(xVarArr, 1049, new int[]{17, ((bArr[i115] << 8) & 65280) | i120 | (bArr[i116] & 255)}, null, null);
                                    o1.x.C(xVarArr, 1049, new int[]{18, i120 | ((bArr[i117] << 8) & 65280) | (bArr[i118] & 255)}, null, null);
                                    int i121 = bArr[i2 + 16] & 255;
                                    qt.y0(109, this.f14744b[i121 < 0 ? 0 : i121 > 11 ? 11 : i121]);
                                    break;
                                } else if (b50 == 2) {
                                    qt.y0(110, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                    qt.y0(111, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                                    qt.y0(112, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                                    qt.y0(113, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                                    qt.y0(114, ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                                    qt.y0(115, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
                                    byte b52 = bArr[i2 + 18];
                                    qt.y0(104, b52 & 3);
                                    qt.y0(105, (b52 >> 2) & 3);
                                    qt.y0(106, (b52 >> 4) & 3);
                                    qt.y0(107, (b52 >> 6) & 1);
                                    qt.y0(108, (b52 >> 7) & 1);
                                    int i122 = bArr[i2 + 19] & 255;
                                    qt.y0(109, this.f14744b[i122 < 0 ? 0 : i122 > 11 ? 11 : i122]);
                                    break;
                                } else if (b50 == 3) {
                                    qt.y0(218, bArr[i2 + 3] & 255);
                                    break;
                                } else if (b50 == 5) {
                                    qt.y0(250, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                    int i123 = i2 + 6;
                                    int i124 = i2 + 7;
                                    qt.y0(251, ((bArr[i123] << 8) & 65280) | (bArr[i124] & 255));
                                    qt.y0(252, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                                    qt.y0(i.a.Theme_dialogTitleDecorLayout, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                                    qt.y0(254, ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                                    qt.y0(255, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
                                    qt.y0(256, ((bArr[i2 + 18] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 19] << 8) & 65280) | (bArr[i2 + 20] & 255));
                                    qt.y0(257, ((bArr[i2 + 21] << 8) & 65280) | (bArr[i2 + 22] & 255));
                                    byte b53 = bArr[i2 + 23];
                                    qt.y0(262, b53 & 3);
                                    qt.y0(261, (b53 >> 2) & 3);
                                    int i125 = (b53 >> 4) & 3;
                                    qt.y0(260, i125);
                                    qt.y0(259, (b53 >> 6) & 1);
                                    qt.y0(258, (b53 >> 7) & 1);
                                    o1.x.C(nt.f8643f, 1049, new int[]{19, ((i125 << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i123] << 8) & 65280) | (bArr[i124] & 255)}, null, null);
                                    int i126 = bArr[i2 + 24] & 255;
                                    qt.y0(263, this.f14744b[i126 < 0 ? 0 : i126 > 11 ? 11 : i126]);
                                    break;
                                } else if (b50 == 6) {
                                    qt.y0(328, ((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 24) & (-16777216)) | ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                                    qt.y0(329, bArr[i2 + 7] & 255);
                                    qt.y0(330, bArr[i2 + 8] & 255);
                                    qt.y0(331, bArr[i2 + 9] & 255);
                                    int i127 = i2 + 10;
                                    qt.y0(332, (bArr[i127] >> 7) & 1);
                                    qt.y0(333, (bArr[i127] >> 6) & 1);
                                    qt.y0(334, (bArr[i127] >> 5) & 1);
                                    qt.y0(335, (bArr[i127] >> 4) & 1);
                                    int i128 = i2 + 11;
                                    int i129 = i2 + 12;
                                    qt.y0(336, ((bArr[i128] << 8) & 65280) | (bArr[i129] & 255));
                                    int i130 = i2 + 13;
                                    int i131 = i2 + 14;
                                    qt.y0(337, ((bArr[i130] << 8) & 65280) | (bArr[i131] & 255));
                                    qt.y0(339, bArr[i2 + 15] & 255);
                                    qt.y0(1031, ((bArr[i128] << 8) & 65280) | (bArr[i129] & 255));
                                    qt.y0(1032, (bArr[i131] & 255) | ((bArr[i130] << 8) & 65280));
                                    break;
                                } else if (b50 == 7) {
                                    qt.x0(338, new String(bArr, i2 + 3, 17));
                                    break;
                                }
                                break;
                            case 52:
                                switch (bArr[i2 + 2]) {
                                    case 1:
                                        qt.y0(340, bArr[i2 + 3] & 255);
                                        qt.y0(341, bArr[i2 + 4] & 255);
                                        qt.y0(342, bArr[i2 + 5] & 255);
                                        qt.y0(343, bArr[i2 + 6] & 255);
                                        qt.y0(344, bArr[i2 + 7] & 255);
                                        qt.y0(345, bArr[i2 + 8] & 255);
                                        qt.y0(346, bArr[i2 + 9] & 255);
                                        break;
                                    case 2:
                                        qt.y0(347, bArr[i2 + 3] & 255);
                                        qt.y0(348, bArr[i2 + 4] & 255);
                                        qt.y0(349, bArr[i2 + 5] & 255);
                                        qt.y0(SpellChecker.WORD_ITERATOR_INTERVAL, bArr[i2 + 6] & 255);
                                        qt.y0(351, bArr[i2 + 7] & 255);
                                        qt.y0(352, bArr[i2 + 8] & 255);
                                        qt.y0(353, bArr[i2 + 9] & 255);
                                        break;
                                    case 3:
                                        qt.y0(354, bArr[i2 + 3] & 255);
                                        qt.y0(355, bArr[i2 + 4] & 255);
                                        break;
                                    case 4:
                                        qt.y0(356, bArr[i2 + 3] & 255);
                                        qt.y0(357, bArr[i2 + 4] & 255);
                                        break;
                                    case 5:
                                        qt.y0(358, bArr[i2 + 3] & 255);
                                        qt.y0(359, bArr[i2 + 4] & 255);
                                        qt.y0(MediaProperties.HEIGHT_360, bArr[i2 + 5] & 255);
                                        qt.y0(361, bArr[i2 + 6] & 255);
                                        qt.y0(362, bArr[i2 + 7] & 255);
                                        qt.y0(363, bArr[i2 + 8] & 255);
                                        break;
                                    case 6:
                                        qt.y0(364, bArr[i2 + 3] & 255);
                                        qt.y0(365, bArr[i2 + 4] & 255);
                                        qt.y0(366, bArr[i2 + 5] & 255);
                                        qt.y0(367, bArr[i2 + 6] & 255);
                                        qt.y0(368, bArr[i2 + 7] & 255);
                                        qt.y0(369, bArr[i2 + 8] & 255);
                                        break;
                                    case 7:
                                        qt.y0(370, bArr[i2 + 3] & 255);
                                        qt.y0(371, bArr[i2 + 4] & 255);
                                        qt.y0(372, bArr[i2 + 5] & 255);
                                        qt.y0(373, bArr[i2 + 6] & 255);
                                        qt.y0(374, bArr[i2 + 7] & 255);
                                        qt.y0(375, bArr[i2 + 8] & 255);
                                        break;
                                    case 8:
                                        qt.y0(376, bArr[i2 + 3] & 255);
                                        qt.y0(377, bArr[i2 + 4] & 255);
                                        qt.y0(378, bArr[i2 + 5] & 255);
                                        qt.y0(379, bArr[i2 + 6] & 255);
                                        qt.y0(380, bArr[i2 + 7] & 255);
                                        qt.y0(381, bArr[i2 + 8] & 255);
                                        break;
                                    case 9:
                                        qt.y0(382, bArr[i2 + 3] & 255);
                                        qt.y0(383, bArr[i2 + 4] & 255);
                                        qt.y0(384, bArr[i2 + 5] & 255);
                                        qt.y0(385, bArr[i2 + 6] & 255);
                                        qt.y0(386, bArr[i2 + 7] & 255);
                                        qt.y0(387, bArr[i2 + 8] & 255);
                                        break;
                                    case 10:
                                        qt.y0(388, bArr[i2 + 3] & 255);
                                        qt.y0(389, bArr[i2 + 4] & 255);
                                        qt.y0(390, bArr[i2 + 5] & 255);
                                        qt.y0(391, bArr[i2 + 6] & 255);
                                        qt.y0(392, bArr[i2 + 7] & 255);
                                        qt.y0(393, bArr[i2 + 8] & 255);
                                        break;
                                    case 11:
                                        qt.y0(394, bArr[i2 + 3] & 255);
                                        qt.y0(395, bArr[i2 + 4] & 255);
                                        qt.y0(396, bArr[i2 + 5] & 255);
                                        qt.y0(397, bArr[i2 + 6] & 255);
                                        qt.y0(398, bArr[i2 + 7] & 255);
                                        qt.y0(399, bArr[i2 + 8] & 255);
                                        break;
                                    case 12:
                                        qt.y0(400, bArr[i2 + 3] & 255);
                                        qt.y0(401, bArr[i2 + 4] & 255);
                                        qt.y0(402, bArr[i2 + 5] & 255);
                                        break;
                                }
                                break;
                            case 53:
                                qt.y0(i.a.Theme_findOnPagePreviousDrawable, (bArr[i2 + 2] >> 0) & 15);
                                qt.y0(271, (bArr[i2 + 3] >> 0) & 255);
                                qt.y0(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, (bArr[i2 + 4] >> 0) & 255);
                                int i132 = i2 + 5;
                                qt.y0(273, (bArr[i132] >> 7) & 1);
                                qt.y0(274, (bArr[i132] >> 6) & 1);
                                qt.y0(275, (bArr[i132] >> 5) & 1);
                                qt.y0(BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA, (bArr[i132] >> 4) & 1);
                                qt.y0(277, (bArr[i132] >> 3) & 1);
                                qt.y0(278, (bArr[i132] >> 2) & 1);
                                qt.y0(279, (bArr[i132] >> 1) & 1);
                                qt.y0(BluetoothClass.Device.COMPUTER_WEARABLE, (bArr[i2 + 6] >> 0) & 255);
                                break;
                            case 54:
                                int i133 = i2 + 2;
                                qt.y0(281, (bArr[i133] >> 7) & 1);
                                qt.y0(282, (bArr[i133] >> 6) & 1);
                                qt.y0(283, (bArr[i133] >> 5) & 1);
                                qt.y0(284, (bArr[i133] >> 4) & 1);
                                qt.y0(285, (bArr[i133] >> 3) & 1);
                                qt.y0(286, (bArr[i133] >> 2) & 1);
                                qt.y0(287, (bArr[i133] >> 1) & 1);
                                qt.y0(MediaProperties.HEIGHT_288, (bArr[i133] >> 0) & 1);
                                int i134 = i2 + 3;
                                qt.y0(289, (bArr[i134] >> 7) & 1);
                                qt.y0(290, (bArr[i134] >> 6) & 1);
                                qt.y0(291, (bArr[i134] >> 5) & 1);
                                qt.y0(292, (bArr[i134] >> 4) & 1);
                                qt.y0(293, bArr[i2 + 4] & 255);
                                qt.y0(294, (bArr[i2 + 5] >> 7) & 1);
                                break;
                            default:
                                switch (b3) {
                                    case 119:
                                        byte b54 = bArr[i2 + 2];
                                        byte b55 = bArr[i2 + 3];
                                        byte b56 = bArr[i2 + 4];
                                        byte b57 = bArr[i2 + 1];
                                        qt.y0(160, b54);
                                        qt.y0(161, b56);
                                        if (b55 == 0) {
                                            this.f14760j = new String(bArr, i2 + 5, b57 - 3, Charset.forName("ascii"));
                                        } else if (b55 == 1) {
                                            this.f14760j = new String(bArr, i2 + 5, b57 - 3, Charset.forName("unicode"));
                                        }
                                        qt.x0(162, this.f14760j);
                                        break;
                                    case 120:
                                        int i135 = i2 + 2;
                                        byte b58 = bArr[i135];
                                        if (nt.f8637c == 5) {
                                            if (b58 != 26) {
                                                switch (b58) {
                                                    case 17:
                                                    case 18:
                                                    case 19:
                                                    case 20:
                                                        break;
                                                    default:
                                                        if (nt.a()) {
                                                            byte b59 = bArr[i135];
                                                            byte b60 = bArr[i2 + 3];
                                                            this.f14766m = (b59 & 255) | 160;
                                                            int i136 = 0;
                                                            while (true) {
                                                                iArr4 = this.f14768n;
                                                                if (i136 < iArr4.length) {
                                                                    int i137 = this.f14766m;
                                                                    if (i137 != iArr4[i136][0]) {
                                                                        i136++;
                                                                    } else if (i137 != 0) {
                                                                        this.f14764l = i136;
                                                                    }
                                                                }
                                                            }
                                                            if ((b60 & 255) == 0) {
                                                                if (i136 <= iArr4.length) {
                                                                    l0.b0.l0(iArr4[this.f14764l][1], 1);
                                                                }
                                                            } else if (i136 < iArr4.length) {
                                                                l0.b0.l0(iArr4[i136][1], 0);
                                                            }
                                                        }
                                                        break;
                                                }
                                            }
                                            if (!o1.u.Y0().equals("com.syu.canbus")) {
                                                o1.u.v();
                                                break;
                                            }
                                        }
                                        break;
                                    case 121:
                                        byte b61 = bArr[i2 + 2];
                                        byte b62 = bArr[i2 + 3];
                                        qt.y0(163, b61 & 1);
                                        qt.y0(164, b62);
                                        break;
                                    case 122:
                                        byte b63 = bArr[i2 + 2];
                                        byte b64 = bArr[i2 + 3];
                                        byte b65 = bArr[i2 + 4];
                                        qt.y0(174, b63 & 1);
                                        qt.y0(175, (b63 >> 1) & 1);
                                        qt.y0(176, b64);
                                        qt.y0(177, b65);
                                        break;
                                    case 123:
                                        qt.y0(178, bArr[i2 + 2] & 1);
                                        break;
                                    case 124:
                                        byte b66 = bArr[i2 + 2];
                                        byte b67 = bArr[i2 + 3];
                                        byte b68 = bArr[i2 + 4];
                                        byte b69 = bArr[i2 + 5];
                                        qt.y0(165, (b66 >> 7) & 1);
                                        qt.y0(166, (b66 >> 6) & 1);
                                        qt.y0(167, (b66 >> 5) & 1);
                                        qt.y0(168, b67 & DhcpPacket.DHCP_DOMAIN_NAME);
                                        qt.y0(169, (b68 >> 7) & 1);
                                        qt.y0(170, b68 & DhcpPacket.DHCP_DOMAIN_NAME);
                                        qt.y0(171, (b69 >> 7) & 1);
                                        qt.y0(172, (b69 >> 3) & 3);
                                        qt.y0(173, b69 & 3);
                                        break;
                                    case 125:
                                        int i138 = bArr[i2 + 2] & 255;
                                        if (i138 != 1) {
                                            if (i138 != 6) {
                                                if (i138 != 3) {
                                                    if (i138 != 4) {
                                                        if (i138 != 8) {
                                                            if (i138 != 9) {
                                                                if (i138 != 240) {
                                                                    if (i138 == 241 && this.E != (i7 = bArr[i2 + 3] & 255)) {
                                                                        this.E = i7;
                                                                        if (i7 == 17) {
                                                                            if (!o1.u.V()) {
                                                                                this.F = true;
                                                                                o1.u.j();
                                                                            }
                                                                            break;
                                                                        } else if (i7 == 1 && this.F && o1.u.V()) {
                                                                            l0.b0.l0(6, 0);
                                                                            l0.b0.l0(6, 1);
                                                                            break;
                                                                        }
                                                                    }
                                                                } else {
                                                                    qt.y0(319, bArr[i2 + 3] & 255);
                                                                    qt.y0(320, bArr[i2 + 4] & 255);
                                                                    qt.y0(321, bArr[i2 + 5] & 255);
                                                                    qt.y0(322, bArr[i2 + 6] & 255);
                                                                    qt.y0(323, bArr[i2 + 7] & 255);
                                                                    qt.y0(324, bArr[i2 + 8] & 255);
                                                                    break;
                                                                }
                                                            } else {
                                                                int i139 = i2 + 4;
                                                                qt.y0(230, bArr[i139] & 255);
                                                                o1.x.C(nt.f8643f, 1049, new int[]{2, (bArr[i139] & 255) - 40}, null, null);
                                                                break;
                                                            }
                                                        } else {
                                                            byte b70 = bArr[i2 + 3];
                                                            byte b71 = bArr[i2 + 4];
                                                            qt.y0(224, ((b71 << 8) & 65280) | (b70 & 255));
                                                            qt.i(b70, b71, true, 540);
                                                            this.B = true;
                                                            break;
                                                        }
                                                    } else {
                                                        int i140 = i2 + 7;
                                                        int i141 = i2 + 6;
                                                        int i142 = (((bArr[i140] << 8) & 65280) | (bArr[i141] & 255)) / 10;
                                                        qt.y0(326, (bArr[i141] & 255) | ((bArr[i140] << 8) & 65280));
                                                        o1.x.C(nt.f8643f, 1049, new int[]{5, i142}, null, null);
                                                        break;
                                                    }
                                                } else {
                                                    int i143 = i2 + 4;
                                                    int i144 = i2 + 3;
                                                    int i145 = (((bArr[i143] << 8) & 65280) | (bArr[i144] & 255)) / 100;
                                                    o1.x.C(nt.f8643f, 1049, new int[]{1, i145}, null, null);
                                                    qt.y0(1031, i145);
                                                    qt.y0(149, (bArr[i144] & 255) | ((bArr[i143] << 8) & 65280));
                                                    int i146 = nt.f8637c;
                                                    if ((i146 == 71 || i146 == 72 || i146 == 82 || i146 == 84) && u0.b.f17341m == 1) {
                                                        if (i145 != 0) {
                                                            u0.b.f17338l = 0;
                                                        } else {
                                                            u0.b.f17338l = 1;
                                                            u0.d.x0(1);
                                                        }
                                                    }
                                                    break;
                                                }
                                            } else {
                                                int i147 = i2 + 3;
                                                qt.y0(327, (bArr[i147] >> 6) & 1);
                                                o1.x[] xVarArr2 = nt.f8643f;
                                                o1.x.C(xVarArr2, 1049, new int[]{12, (bArr[i147] >> 6) & 1}, null, null);
                                                o1.x.C(xVarArr2, 1049, new int[]{3, (bArr[i147] >> 0) & 1}, null, null);
                                                int i148 = i2 + 4;
                                                o1.x.C(xVarArr2, 1049, new int[]{4, (bArr[i148] >> 0) & 15}, null, null);
                                                qt.y0(231, (bArr[i148] >> 0) & 15);
                                                break;
                                            }
                                        } else {
                                            int i149 = i2 + 3;
                                            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i149] & 255}, null, null);
                                            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                                                l0.c0.b((bArr[i149] >> 3) & 1, (bArr[i149] >> 4) & 1, 0);
                                            } else {
                                                l0.c0.a((bArr[i149] >> 3) & 1, (bArr[i149] >> 4) & 1, 0);
                                            }
                                            if (B0 == 1) {
                                                if (nt.W == 0) {
                                                    if (((bArr[i149] >> 4) & 1) == 0) {
                                                        if (this.f14771o0 != ((bArr[i149] >> 3) & 1)) {
                                                            int i150 = (bArr[i149] >> 3) & 1;
                                                            this.f14771o0 = i150;
                                                            if (i150 == 1) {
                                                                if (this.f14781t0) {
                                                                    qt.a(1);
                                                                } else if (!o1.u.T(a.b.O)) {
                                                                    qt.t();
                                                                }
                                                                this.f14786w = 20;
                                                                l0.b0.a(this.f14788x);
                                                            } else if (this.f14781t0) {
                                                                o1.j.e(o1.l.a(), this.f14784v);
                                                                o1.j.b(o1.l.a(), this.f14784v, 4000L);
                                                            } else if (this.f14786w > 0) {
                                                                o1.j.e(o1.l.a(), this.f14784v);
                                                                o1.j.b(o1.l.a(), this.f14784v, 2000L);
                                                            } else {
                                                                if (o1.u.T(a.b.O)) {
                                                                    qt.f();
                                                                }
                                                                l0.b0.o0(this.f14788x);
                                                            }
                                                        }
                                                        if (this.f14781t0 && this.f14773p0 != ((bArr[i149] >> 3) & 1)) {
                                                            int i151 = (bArr[i149] >> 3) & 1;
                                                            this.f14773p0 = i151;
                                                            if (i151 == 1) {
                                                                qt.a(1);
                                                                this.f14786w = 20;
                                                                l0.b0.a(this.f14788x);
                                                            } else {
                                                                o1.j.e(o1.l.a(), this.f14784v);
                                                                o1.j.b(o1.l.a(), this.f14784v, 4000L);
                                                            }
                                                        }
                                                    }
                                                } else if (((bArr[i149] >> 3) & 1) == 0 && this.f14771o0 != ((bArr[i149] >> 4) & 1)) {
                                                    int i152 = (bArr[i149] >> 4) & 1;
                                                    this.f14771o0 = i152;
                                                    if (i152 == 1) {
                                                        if (!o1.u.T(a.b.O)) {
                                                            qt.t();
                                                        }
                                                        this.f14786w = 20;
                                                        l0.b0.a(this.f14788x);
                                                    } else if (this.f14786w > 0) {
                                                        o1.j.e(o1.l.a(), this.f14784v);
                                                        o1.j.b(o1.l.a(), this.f14784v, 2000L);
                                                    } else {
                                                        if (o1.u.T(a.b.O)) {
                                                            qt.f();
                                                        }
                                                        l0.b0.o0(this.f14788x);
                                                    }
                                                }
                                                this.C = true;
                                            }
                                            break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f14746c.j();
        l0.b0.p0(this.f14790z);
        y0.g.f18094d.d(this.A);
        y0.g.f18095e.d(this.A);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f14790z);
        u0.c.f17392s.d(this.f14790z);
        u0.c.f17393t.d(this.f14790z);
        u0.c.f17386m.d(this.f14751e0);
        l0.b0.p0(this.f14753f0);
        qt.q0(this.f14769n0);
        u0.c.f17388o.d(this.f14757h0);
        u0.c.f17389p.d(this.f14761j0);
        u0.c.f17390q.d(this.f14759i0);
        u0.c.f17396w.d(this.f14763k0);
        u0.c.f17379f.d(this.f14767m0);
        h0.d.f2464c.d(this.f14765l0);
        yVar.d(this.f14755g0);
        l0.b0.o0(this.f14785v0);
        qt.o0(this.O);
        o1.h.f16865a.d(this.N);
        h0.d.f2466e.d(this.I);
        h0.d.f2465d.d(this.J);
        l0.b0.p0(this.G);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 423) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (nt.f8633a == 917802) {
                K3(iArr[0], iArr[1]);
                return;
            }
            J3(iArr[0]);
        }
        if (i2 == 1029) {
            int iW = (iArr[1] * 1024) / a.f.w();
            int i3 = (iArr[2] * 1000) / a.f.i();
            if (T2(iArr, 2)) {
                if (iArr[0] == 0) {
                    z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES, 6, 1, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES, 6, 0, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 97:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, -112, 2, (byte) iArr[0], (byte) iArr[1]);
                    break;
                }
                break;
            case 98:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, -26, 2, (byte) iArr[0], (byte) iArr[1]);
                    break;
                }
                break;
            case 99:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(318, iArr[0]);
                    break;
                }
                break;
            case 100:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, -112, 2, 51, (byte) iArr[0]);
                    z.k.s(227, -112, 2, 50, 0);
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 102:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 1) {
                                iArr[0] = 1;
                            } else if (iArr[0] > 15) {
                                iArr[0] = 15;
                            }
                            z.k.s(227, -58, 2, -63, (byte) iArr[0]);
                            break;
                        }
                        break;
                    case 103:
                        z.k.s(227, -58, 2, -64, 1);
                        break;
                    case 104:
                        if (iArr != null && iArr.length > 0) {
                            M3(iArr[0]);
                            break;
                        }
                        break;
                    case 105:
                        if (iArr != null && iArr.length >= 2) {
                            z.k.s(227, -58, 2, (byte) iArr[0], (byte) iArr[1]);
                            break;
                        }
                        break;
                    case 106:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -17, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 107:
                        if (T2(iArr, 2)) {
                            z.k.s(227, -32, 2, iArr[0], iArr[1]);
                        }
                        break;
                    case 108:
                        if (T2(iArr, 2)) {
                            z.k.s(227, -124, 2, iArr[0], iArr[1]);
                        }
                        break;
                    case 109:
                        if (T2(iArr, 2)) {
                            z.k.s(227, -56, 2, iArr[0], iArr[1]);
                        }
                        break;
                    case 110:
                        if (iArr != null && iArr.length > 0) {
                            L3(iArr[0]);
                            break;
                        }
                        break;
                    case 111:
                        if (T2(iArr, 2)) {
                            z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                        }
                        break;
                    default:
                        switch (i2) {
                            case 120:
                                if (iArr != null && iArr.length > 0) {
                                    z.k.s(227, -112, 2, iArr[0], 0);
                                    break;
                                }
                                break;
                            case 121:
                                if (iArr != null && iArr.length > 0) {
                                    z.k.s(227, -125, 2, iArr[0], iArr[1]);
                                    break;
                                }
                                break;
                            case 122:
                                if (iArr != null && iArr.length > 0) {
                                    z.k.s(227, -126, 1, iArr[0]);
                                    break;
                                }
                                break;
                            case 123:
                                if (iArr != null && iArr.length >= 1) {
                                    J3(iArr[0]);
                                    break;
                                }
                                break;
                            case 124:
                                if (iArr != null && iArr.length > 0) {
                                    z.k.s(227, -55, 8, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7]);
                                    break;
                                }
                                break;
                            default:
                                switch (i2) {
                                    case 150:
                                        a3();
                                        break;
                                    case 151:
                                        if (T2(iArr, 2)) {
                                            z.k.s(227, -13, 2, iArr[0], iArr[1]);
                                        }
                                        break;
                                    case 152:
                                        if (T2(iArr, 2)) {
                                            z.k.s(227, -13, 6, 7, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                                        }
                                        break;
                                    case 153:
                                        if (T2(iArr, 2)) {
                                            z.k.s(227, -13, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            E0 = F0[o0.a(i2, 0, 36)];
        }
    }

    public final void a3() {
        if (nt.f8637c == 5) {
            z.k.s(227, -112, 2, 119, 0);
            z.k.s(227, -112, 2, 121, 0);
            z.k.s(227, -112, 2, 122, 0);
            z.k.s(227, -112, 2, 123, 0);
            z.k.s(227, -112, 2, 124, 0);
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null) {
        }
        switch (nt.f8633a) {
            case 3014954:
            case 3080490:
            case 3932458:
            case 3997994:
            case 4194602:
            case 4784426:
            case 4849962:
            case 10027306:
            case 10092842:
            case 10158378:
            case 10223914:
                int[] iArr = new int[bArr.length];
                int length = bArr.length - 1;
                for (int i2 = 0; i2 < length; i2++) {
                    iArr[i2] = bArr[i2] & 255;
                }
                o1.x.B(nt.f8643f, Process.DRM_UID, iArr);
                break;
        }
    }

    public final void b3() {
        int[] iArr = new int[9];
        iArr[0] = 227;
        iArr[1] = 238;
        iArr[2] = 6;
        iArr[3] = 117;
        for (int i2 = 4; i2 < 9; i2++) {
            iArr[i2] = 0;
        }
        z.k.s(iArr);
    }

    public final void c3(int i2) {
        int i3 = this.Y;
        if (i3 <= 0 || i3 >= f14742z0.length) {
            return;
        }
        int i4 = this.T / 100;
        a.f.p().t(LogType.CANBUS, "Route_remain ==== ---->: " + i4);
        if (i2 != 1) {
            z.k.s(227, 156, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            return;
        }
        try {
            byte[] bytes = this.S.getBytes("GB2312");
            int length = bytes.length > 23 ? 23 : bytes.length;
            byte[] bArr = new byte[23];
            for (int i5 = 0; i5 < length; i5++) {
                bArr[i5] = bytes[i5];
            }
            z.k.s(227, 156, 30, f14742z0[this.Y], this.X & 255, (i4 >> 8) & 255, i4 & 255, 1, 0, 0, bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7], bArr[8], bArr[9], bArr[10], bArr[11], bArr[12], bArr[13], bArr[14], bArr[15], bArr[16], bArr[17], bArr[18], bArr[19], bArr[20], bArr[21], bArr[22]);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void init() {
        G0.f(9, new x(9, 100));
    }
}
