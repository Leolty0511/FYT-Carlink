package module.canbus;

import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;
import android.util.Log;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class c extends lt implements o1.q {
    public static int A0;
    public static int B0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static int f13726w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static int f13727x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static int f13728y0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13731b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13739f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13745i;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static int[] f13729z0 = {3, 3, 11, 12, 9, 8, 10, 10, 10, 3, 7, 5, 5, 3, 3, 7, 3, 6, 6, 8, 3};
    public static final int[] C0 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 30, 30, 30, 30, 30, 30};
    public static final o1.f<u> D0 = new o1.f<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13733c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f13735d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 29}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, 16}, new int[]{17, 0}, new int[]{18, 6}, new int[]{19, 16}, new int[]{20, 1}, new int[]{21, 54}, new int[]{22, 9}, new int[]{23, 18}, new int[]{24, 24}, new int[]{25, 18}, new int[]{26, 26}, new int[]{27, 2}, new int[]{28, 38}, new int[]{22, 29}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f13737e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 29}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, 16}, new int[]{16, 1}, new int[]{17, 5}, new int[]{18, 24}, new int[]{19, 54}, new int[]{20, 25}, new int[]{22, 29}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13741g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f13743h = {new int[]{1, 54}, new int[]{2, 5}, new int[]{3, 18}, new int[]{4, 6}, new int[]{5, 55}, new int[]{6, 30}, new int[]{7, 31}, new int[]{8, 29}, new int[]{9, 34}, new int[]{10, 35}, new int[]{11, 53}, new int[]{12, 24}, new int[]{13, 1}, new int[]{17, 30}, new int[]{18, 31}, new int[]{19, 32}, new int[]{20, 34}, new int[]{21, 35}, new int[]{22, 33}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f13747j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f13749k = {new int[]{1, 29}, new int[]{2, 54}, new int[]{3, 9}, new int[]{4, 18}, new int[]{5, 1}, new int[]{6, 58}, new int[]{7, 63}, new int[]{8, 55}, new int[]{9, -1}, new int[]{10, 34}, new int[]{11, 32}, new int[]{12, 3}, new int[]{13, 33}, new int[]{14, 35}, new int[]{15, 6}, new int[]{16, 4}, new int[]{24, 24}, new int[]{56, 12}, new int[]{64, 7}, new int[]{65, 8}, new int[]{80, 30}, new int[]{81, 31}, new int[]{113, 9}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13751l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13753m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f13755n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f13757o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final byte[] f13759p = new byte[1024];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f13761q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f13763r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f13765s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f13767t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f13769u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f13771v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f13773w = new k();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f13774x = new m();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public byte f13775y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f13776z = new n();
    public Runnable A = new o();
    public o1.g0 B = new o1.g0(getClass().getSimpleName(), 32);
    public final int C = 1;
    public final int D = 2;
    public final int E = 3;
    public int F = 0;
    public Runnable G = new p();
    public Runnable H = new q();
    public int I = 0;
    public byte J = 5;
    public Runnable K = new r();
    public Runnable L = new s();
    public Runnable M = new t();
    public int N = 0;
    public Runnable O = new a();
    public int P = 0;
    public Runnable Q = new b();
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
    public int f13730a0 = 1;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f13732b0 = 255;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final Runnable f13734c0 = new RunnableC0074c();

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public float f13736d0 = 0.0f;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f13738e0 = 255;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f13740f0 = 255;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public Runnable f13742g0 = new d();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public Runnable f13744h0 = new e();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f13746i0 = false;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public Runnable f13748j0 = new f();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f13750k0 = 0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f13752l0 = 0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f13754m0 = false;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f13756n0 = 0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public Runnable f13758o0 = new g();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public Runnable f13760p0 = new h();

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public Runnable f13762q0 = new i();

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f13764r0 = -1;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public Runnable f13766s0 = new j();

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f13768t0 = 100;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public Runnable f13770u0 = new l();

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f13772v0 = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            int i2 = cVar.N;
            int i3 = y0.f.Q0;
            if (i2 != i3) {
                cVar.N = i3;
                if (i3 == 1) {
                    z.k.s(227, 161, 1, ((cVar.P << 6) & 64) | 128);
                } else {
                    z.k.s(227, 161, 1, (cVar.P << 6) & 64 & 127);
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            if (i2 == 3 || i2 == 4 || i2 == 5) {
                c cVar = c.this;
                cVar.P = 1;
                z.k.s(227, 161, 1, ((cVar.N << 7) & 128) | 64);
            } else {
                c cVar2 = c.this;
                cVar2.P = 0;
                z.k.s(227, 161, 1, (cVar2.N << 7) & 128 & 191);
            }
        }
    }

    /* JADX INFO: renamed from: module.canbus.c$c, reason: collision with other inner class name */
    public class RunnableC0074c implements Runnable {
        public RunnableC0074c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            cVar.f13730a0 = 0;
            cVar.Z = 0;
            cVar.d3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            if (cVar.Z == 0) {
                cVar.f13736d0 = u0.b.f17359s0;
                if (c.this.f13736d0 > 360.0f) {
                    c.i3(c.this, 360.0f);
                }
                if (c.this.f13736d0 < 0.0f) {
                    c.i3(c.this, 360.0f);
                    c cVar2 = c.this;
                    cVar2.f13736d0 = 360.0f - Math.abs(cVar2.f13736d0);
                }
                if ((c.this.f13736d0 <= 22.5d && c.this.f13736d0 >= 0.0f) || (c.this.f13736d0 >= 337.5d && c.this.f13736d0 <= 360.0f)) {
                    c.this.f13740f0 = 0;
                } else if (c.this.f13736d0 > 22.5d && c.this.f13736d0 < 67.5d) {
                    c.this.f13740f0 = 2;
                } else if (c.this.f13736d0 >= 67.5d && c.this.f13736d0 <= 112.5d) {
                    c.this.f13740f0 = 4;
                } else if (c.this.f13736d0 > 112.5d && c.this.f13736d0 < 157.5d) {
                    c.this.f13740f0 = 6;
                } else if (c.this.f13736d0 >= 157.5d && c.this.f13736d0 <= 202.5d) {
                    c.this.f13740f0 = 8;
                } else if (c.this.f13736d0 > 202.5d && c.this.f13736d0 < 247.5d) {
                    c.this.f13740f0 = 10;
                } else if (c.this.f13736d0 >= 247.5d && c.this.f13736d0 <= 292.5d) {
                    c.this.f13740f0 = 12;
                } else if (c.this.f13736d0 <= 292.5d || c.this.f13736d0 >= 337.5d) {
                    c.this.f13740f0 = 0;
                } else {
                    c.this.f13740f0 = 14;
                }
                if (c.this.f13740f0 != c.this.f13738e0) {
                    z.k.s(227, 162, 8, 128, c.this.f13740f0, 0, 0, 0, 0, 0, 0);
                    c cVar3 = c.this;
                    cVar3.f13738e0 = cVar3.f13740f0;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 37:
                case 46:
                case 47:
                    z.k.s(227, 133, 1, 1);
                    break;
                case 38:
                case 48:
                case 49:
                    z.k.s(227, 133, 1, 2);
                    break;
                case 39:
                case 54:
                    z.k.s(227, 133, 1, 3);
                    break;
                case 44:
                case 50:
                case 51:
                case 52:
                case 55:
                    z.k.s(227, 133, 1, 4);
                    break;
                case 45:
                case 56:
                    z.k.s(227, 133, 1, 5);
                    break;
                case 57:
                case 64:
                    z.k.s(227, 133, 1, 6);
                    break;
                case 63:
                    z.k.s(227, 133, 1, 7);
                    break;
                case 67:
                    z.k.s(227, 133, 1, 8);
                    break;
                case 69:
                    z.k.s(227, 133, 1, 9);
                    break;
                case 70:
                    z.k.s(227, 133, 1, 7);
                    break;
                case 71:
                    z.k.s(227, 133, 1, 10);
                    break;
                case 72:
                    z.k.s(227, 133, 1, 11);
                    break;
                case 73:
                    z.k.s(227, 133, 1, 12);
                    break;
                case 74:
                case 77:
                    z.k.s(227, 133, 1, 8);
                    break;
                case 75:
                    z.k.s(227, 133, 1, 9);
                    break;
                case 76:
                    z.k.s(227, 133, 1, 10);
                    break;
                case 78:
                    z.k.s(227, 133, 1, 11);
                    break;
                case 79:
                    z.k.s(227, 133, 1, 12);
                    break;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f13746i0) {
                z.k.s(227, 144, 2, 65, 1);
                z.k.s(227, 144, 2, 65, 3);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(c.this.f13760p0);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f13756n0 == 0) {
                c.G3(new byte[]{46, -112, 1, 33, 0});
            }
            c cVar = c.this;
            int i2 = cVar.f13756n0;
            if (i2 > 0) {
                cVar.f13756n0 = i2 - 1;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 144, 2, 65, 1);
            z.k.s(227, 144, 2, 65, 2);
            z.k.s(227, 144, 2, 65, 3);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            int i2 = cVar.f13764r0;
            int i3 = u0.b.D;
            if (i2 != i3) {
                cVar.f13764r0 = i3;
                if (i3 == 5 || i3 == 13) {
                    z.k.s(227, 198, 2, 1, 1);
                } else {
                    z.k.s(227, 198, 2, 1, 0);
                }
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            int i2 = cVar.f13771v;
            if (i2 > 0) {
                cVar.f13771v = i2 - 1;
            }
            if (nt.f8637c != 68) {
                z.k.s(227, 144, 2, 65, 2);
            }
            c cVar2 = c.this;
            if (cVar2.f13771v == 0) {
                if (nt.f8637c == 68) {
                    cVar2.a3();
                } else {
                    l0.c0.E();
                }
            }
            o1.x.C(nt.f8643f, 1049, new int[]{11, c.this.f13767t}, null, null);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (c.this.f13768t0 > 100) {
                    c.p3(c.this);
                    if (c.this.f13772v0 == c.this.f13768t0 / 100) {
                        c.this.f13772v0 = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = c.B0 = c.C0[0];
                } else {
                    int unused2 = c.B0 = c.C0[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (c.this.f7886a.f8307b != 1 || c.A0 == c.B0) {
                    return;
                }
                c.this.F3();
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c == 68) {
                c.this.b3();
            } else {
                l0.c0.B0();
            }
            c.this.f13771v = 4;
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            byte b2 = (byte) (cVar.f13775y + 1);
            cVar.f13775y = b2;
            if (b2 > 11) {
                l0.b0.o0(cVar.f13776z);
                c.this.f13775y = (byte) 0;
            }
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.F3();
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 38, 0);
            }
        }
    }

    public class q implements Runnable {
        public q() {
        }

        /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
            java.lang.UnsupportedOperationException
            	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
            	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
            	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
            */
        @Override // java.lang.Runnable
        public void run() {
            /*
                r3 = this;
                int r0 = k0.nt.f8637c
                r1 = 44
                if (r0 == r1) goto L19
                r1 = 45
                if (r0 == r1) goto L19
                r1 = 67
                if (r0 == r1) goto L19
                r1 = 70
                if (r0 == r1) goto L19
                switch(r0) {
                    case 57: goto L19;
                    case 58: goto L19;
                    case 59: goto L19;
                    default: goto L15;
                }
            L15:
                switch(r0) {
                    case 74: goto L19;
                    case 75: goto L19;
                    case 76: goto L19;
                    case 77: goto L19;
                    case 78: goto L19;
                    case 79: goto L19;
                    default: goto L18;
                }
            L18:
                goto L51
            L19:
                boolean r0 = k0.qt.k0()
                if (r0 != 0) goto L51
                int r0 = u0.b.f17347o
                if (r0 != 0) goto L51
                module.canbus.c r0 = module.canbus.c.this
                k0.mt r1 = r0.f7886a
                int r1 = r1.f8317l
                r2 = 1
                if (r1 != r2) goto L3f
                int r0 = r0.f13750k0
                if (r0 != r2) goto L51
                boolean r0 = o1.u.a0()
                if (r0 != 0) goto L51
                module.canbus.c r0 = module.canbus.c.this
                module.canbus.c.v3(r0, r2)
                o1.u.z()
                goto L51
            L3f:
                int r0 = r0.f13750k0
                if (r0 != r2) goto L51
                boolean r0 = o1.u.V()
                if (r0 != 0) goto L51
                module.canbus.c r0 = module.canbus.c.this
                module.canbus.c.v3(r0, r2)
                o1.u.j()
            L51:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: module.canbus.c.q.run():void");
        }
    }

    public class r implements Runnable {
        public r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(c.this.L);
            c cVar = c.this;
            cVar.J = (byte) 5;
            cVar.I = 0;
        }
    }

    public class s implements Runnable {
        public s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            byte b2 = (byte) (cVar.J - 1);
            cVar.J = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                z.k.s(227, 144, 1, 48);
            } else {
                l0.b0.p0(cVar.L);
                c.this.J = (byte) 5;
            }
        }
    }

    public class t implements Runnable {
        public t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -90, 7, 16, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second);
        }
    }

    public static class u implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13797a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13798b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13799c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f13800d;

        public u(int i2, int i3) {
            this.f13797a = i2;
            this.f13800d = i3;
        }

        public synchronized void a(int i2) {
            this.f13798b = i2;
            if (!this.f13799c) {
                this.f13799c = true;
                o1.k.a().postDelayed(this, this.f13800d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 160, 2, this.f13797a, this.f13798b);
            this.f13799c = false;
        }
    }

    public static void A3(int i2, int i3) {
        u uVarC = D0.c(i2);
        if (uVarC != null) {
            uVarC.a(i3);
        }
    }

    public static void G3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 ^ 255);
        z.k.q(bArr);
    }

    public static /* synthetic */ float i3(c cVar, float f2) {
        float f3 = cVar.f13736d0 % f2;
        cVar.f13736d0 = f3;
        return f3;
    }

    public static /* synthetic */ int p3(c cVar) {
        int i2 = cVar.f13772v0;
        cVar.f13772v0 = i2 + 1;
        return i2;
    }

    public final void B3() {
        Z2(y0.f.f18037c);
        R2(null);
    }

    public final void C3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f13727x0 = i2;
        qt.y0(119, i2);
        z.k.s(227, -58, 2, 2, f13727x0);
        int iB = this.B.b(2, 0);
        int i3 = f13727x0;
        if (iB != i3) {
            this.B.g(2, i3);
        }
    }

    public final void D3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f13726w0 = i2;
        qt.y0(118, i2);
        z.k.s(227, -58, 2, 0, f13726w0);
        int iB = this.B.b(1, 0);
        int i3 = f13726w0;
        if (iB != i3) {
            this.B.g(1, i3);
        }
    }

    public final void E3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 3) {
            i2 = 3;
        }
        f13728y0 = i2;
        qt.y0(120, i2);
        z.k.s(227, -58, 2, 3, f13728y0);
        int iB = this.B.b(3, 0);
        int i3 = f13728y0;
        if (iB != i3) {
            this.B.g(3, i3);
        }
    }

    public final synchronized void F3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        A3(0, B0);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (((nt.f8633a >> 16) & 65535) != 2) {
            return;
        }
        y0.f.C0 = 30;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:46:0x00ee  */
    @Override // k0.lt
    public void S2() {
        int i2 = nt.f8637c;
        if (i2 != 81 && i2 != 84) {
            qt.z(this.f13773w);
            y0.g.f18094d.a(this.f13774x, 1);
            y0.g.f18095e.a(this.f13774x, 1);
            w0.e.f17815a.a(this.f13773w, 1);
            l0.b0.b(this.f13748j0);
            u0.c.f17379f.a(this.H, 1);
            l0.b0.b(this.f13744h0);
            o1.h.f16865a.a(this.f13742g0, 1);
            qt.x(this.G);
        }
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.K, 1);
        int i3 = nt.f8637c;
        if (i3 == 3 || i3 == 4 || i3 == 7) {
            this.f7886a.f8322q = 1;
        } else if (i3 == 35 || i3 == 36) {
            this.f7886a.f8323r = 1;
        } else {
            this.f7886a.f8322q = 0;
        }
        if (i3 != 2) {
            if (i3 != 3) {
                if (i3 == 4) {
                    mt mtVar = this.f7886a;
                    mtVar.f8306a = new String[]{"com.syu.canbus"};
                    mtVar.f8310e = 1;
                    mtVar.f8311f = 1;
                    mtVar.f8312g = 1;
                    mtVar.f8307b = 1;
                    mtVar.f8308c = 1;
                    mtVar.f8309d = 0;
                    G3(new byte[]{46, -127, 1, 1, 0});
                    yVar.a(this.f13758o0, 1);
                    if (nt.a()) {
                        init();
                        l0.b0.a(this.f13770u0);
                        B3();
                        y0.g.f18094d.a(this.A, 1);
                        return;
                    }
                    return;
                }
                if (i3 != 6) {
                    if (i3 != 7) {
                        if (i3 != 41) {
                            if (i3 != 42) {
                                if (i3 != 44 && i3 != 45) {
                                    if (i3 != 63) {
                                        if (i3 != 64) {
                                            if (i3 != 67) {
                                                switch (i3) {
                                                    default:
                                                        switch (i3) {
                                                            case 47:
                                                                break;
                                                            case 48:
                                                                break;
                                                            case 49:
                                                                break;
                                                            default:
                                                                switch (i3) {
                                                                    case 53:
                                                                        mt mtVar2 = this.f7886a;
                                                                        mtVar2.f8306a = null;
                                                                        mtVar2.f8310e = 1;
                                                                        mtVar2.f8311f = 1;
                                                                        mtVar2.f8312g = 1;
                                                                        mtVar2.f8307b = 0;
                                                                        mtVar2.f8308c = 0;
                                                                        mtVar2.f8309d = 0;
                                                                        break;
                                                                    case 54:
                                                                    case 55:
                                                                        mt mtVar3 = this.f7886a;
                                                                        mtVar3.f8306a = new String[]{"com.syu.canbus"};
                                                                        mtVar3.f8310e = 1;
                                                                        mtVar3.f8311f = 1;
                                                                        mtVar3.f8312g = 1;
                                                                        mtVar3.f8307b = 0;
                                                                        mtVar3.f8308c = 0;
                                                                        mtVar3.f8309d = 0;
                                                                        qt.z(this.M);
                                                                        break;
                                                                    case 56:
                                                                    case 57:
                                                                    case 58:
                                                                    case 59:
                                                                        break;
                                                                    default:
                                                                        switch (i3) {
                                                                            case 69:
                                                                            case 71:
                                                                            case 72:
                                                                            case 73:
                                                                                mt mtVar4 = this.f7886a;
                                                                                mtVar4.f8306a = new String[]{"com.syu.canbus"};
                                                                                mtVar4.f8310e = 1;
                                                                                mtVar4.f8311f = 1;
                                                                                mtVar4.f8312g = 1;
                                                                                mtVar4.f8307b = 0;
                                                                                mtVar4.f8308c = 0;
                                                                                mtVar4.f8309d = 0;
                                                                                qt.z(this.M);
                                                                                break;
                                                                            case 70:
                                                                            case 74:
                                                                            case 76:
                                                                            case 77:
                                                                            case 78:
                                                                            case 79:
                                                                                break;
                                                                            case 75:
                                                                                mt mtVar5 = this.f7886a;
                                                                                mtVar5.f8306a = new String[]{"com.syu.canbus"};
                                                                                mtVar5.f8310e = 1;
                                                                                mtVar5.f8311f = 1;
                                                                                mtVar5.f8312g = 1;
                                                                                mtVar5.f8317l = 1;
                                                                                mtVar5.f8307b = 0;
                                                                                mtVar5.f8308c = 0;
                                                                                mtVar5.f8309d = 0;
                                                                                u0.c.f17374a.a(this.f13766s0, 1);
                                                                                this.B.a();
                                                                                D3(this.B.b(1, 0));
                                                                                E3(this.B.b(3, 0));
                                                                                break;
                                                                            default:
                                                                                mt mtVar6 = this.f7886a;
                                                                                mtVar6.f8306a = new String[]{"com.syu.canbus"};
                                                                                mtVar6.f8310e = 1;
                                                                                mtVar6.f8311f = 1;
                                                                                mtVar6.f8312g = 1;
                                                                                mtVar6.f8307b = 0;
                                                                                mtVar6.f8308c = 0;
                                                                                mtVar6.f8309d = 0;
                                                                                break;
                                                                        }
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                    case 37:
                                                    case 38:
                                                    case 39:
                                                        mt mtVar7 = this.f7886a;
                                                        mtVar7.f8306a = new String[]{"com.syu.canbus"};
                                                        mtVar7.f8310e = 1;
                                                        mtVar7.f8311f = 1;
                                                        mtVar7.f8312g = 1;
                                                        mtVar7.f8307b = 0;
                                                        mtVar7.f8308c = 0;
                                                        mtVar7.f8309d = 0;
                                                        u0.c.f17374a.a(this.f13766s0, 1);
                                                        this.B.a();
                                                        D3(this.B.b(1, 0));
                                                        E3(this.B.b(3, 0));
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                    mt mtVar8 = this.f7886a;
                                    mtVar8.f8306a = new String[]{"com.syu.canbus"};
                                    mtVar8.f8310e = 1;
                                    mtVar8.f8311f = 1;
                                    mtVar8.f8312g = 1;
                                    mtVar8.f8307b = 0;
                                    mtVar8.f8308c = 0;
                                    mtVar8.f8309d = 0;
                                    if (App.c().getResources().getConfiguration().orientation == 1) {
                                        this.f7886a.f8317l = 1;
                                    } else {
                                        this.f7886a.f8317l = 0;
                                    }
                                    u0.c.f17374a.a(this.f13766s0, 1);
                                    this.B.a();
                                    D3(this.B.b(1, 0));
                                    C3(this.B.b(2, 0));
                                    E3(this.B.b(3, 0));
                                    return;
                                }
                                mt mtVar9 = this.f7886a;
                                mtVar9.f8306a = new String[]{"com.syu.canbus"};
                                mtVar9.f8310e = 1;
                                mtVar9.f8311f = 1;
                                mtVar9.f8312g = 1;
                                mtVar9.f8307b = 0;
                                mtVar9.f8308c = 0;
                                mtVar9.f8309d = 0;
                                u0.c.f17374a.a(this.f13766s0, 1);
                                this.B.a();
                                D3(this.B.b(1, 0));
                                E3(this.B.b(3, 0));
                                return;
                            }
                            mt mtVar10 = this.f7886a;
                            mtVar10.f8306a = new String[]{"com.syu.canbus"};
                            mtVar10.f8310e = 1;
                            mtVar10.f8311f = 1;
                            mtVar10.f8312g = 1;
                            mtVar10.f8307b = 1;
                            mtVar10.f8308c = 1;
                            mtVar10.f8309d = 0;
                            y0.g.f18110t.a(this.O, 1);
                            h0.d.f2462a.a(this.Q, 1);
                            if (nt.a()) {
                                init();
                                l0.b0.a(this.f13770u0);
                                B3();
                                y0.g.f18094d.a(this.A, 1);
                                return;
                            }
                            return;
                        }
                        mt mtVar11 = this.f7886a;
                        mtVar11.f8306a = new String[]{"com.syu.canbus"};
                        mtVar11.f8310e = 1;
                        mtVar11.f8311f = 1;
                        mtVar11.f8312g = 1;
                        mtVar11.f8307b = 0;
                        mtVar11.f8308c = 0;
                        mtVar11.f8309d = 0;
                        y0.g.f18110t.a(this.O, 1);
                        h0.d.f2462a.a(this.Q, 1);
                        return;
                    }
                }
            }
            mt mtVar12 = this.f7886a;
            mtVar12.f8306a = new String[]{"com.syu.canbus"};
            mtVar12.f8310e = 1;
            mtVar12.f8311f = 1;
            mtVar12.f8312g = 1;
            mtVar12.f8307b = 0;
            mtVar12.f8308c = 0;
            mtVar12.f8309d = 0;
            G3(new byte[]{46, -127, 1, 1, 0});
            yVar.a(this.f13758o0, 1);
            return;
        }
        mt mtVar13 = this.f7886a;
        mtVar13.f8306a = new String[]{"com.syu.canbus"};
        mtVar13.f8310e = 1;
        mtVar13.f8311f = 1;
        mtVar13.f8312g = 1;
        mtVar13.f8307b = 1;
        mtVar13.f8308c = 1;
        mtVar13.f8309d = 0;
        if (nt.a()) {
            init();
            l0.b0.a(this.f13770u0);
            B3();
            y0.g.f18094d.a(this.A, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:136:0x0258  */
    /* JADX WARN: Code duplicated, block: B:138:0x0260  */
    /* JADX WARN: Code duplicated, block: B:140:0x026c  */
    /* JADX WARN: Code duplicated, block: B:142:0x0272  */
    /* JADX WARN: Code duplicated, block: B:144:0x0276  */
    /* JADX WARN: Code duplicated, block: B:146:0x027c  */
    /* JADX WARN: Code duplicated, block: B:147:0x0283  */
    /* JADX WARN: Code duplicated, block: B:152:0x0297  */
    /* JADX WARN: Code duplicated, block: B:154:0x029b  */
    /* JADX WARN: Code duplicated, block: B:156:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:157:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:162:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:164:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:166:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:169:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:171:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:173:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:175:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:177:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:179:0x0304  */
    /* JADX WARN: Code duplicated, block: B:180:0x030a  */
    /* JADX WARN: Code duplicated, block: B:182:0x0310  */
    /* JADX WARN: Code duplicated, block: B:185:0x031d  */
    /* JADX WARN: Code duplicated, block: B:187:0x0321  */
    /* JADX WARN: Code duplicated, block: B:189:0x0327  */
    /* JADX WARN: Code duplicated, block: B:190:0x032d  */
    /* JADX WARN: Code duplicated, block: B:192:0x0333  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3;
        int i4;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[][] iArr3;
        int[][] iArr4;
        int i10;
        byte b4 = bArr[i2];
        if (b4 == -48) {
            byte b5 = bArr[i2 + 3];
            if (b5 == -91) {
                if (bArr[i2 + 4] == 1) {
                    l0.b0.l0(4, 0);
                    l0.b0.l0(4, 1);
                }
                return;
            }
            if (b5 == -86) {
                Log.v("zed", "rev D0 0xaa2222 .DataMain.sBlackScreen = " + u0.b.f17332j);
                z.k.s(1, 0, 14);
                int i11 = u0.b.f17332j;
                return;
            }
            if (b5 == -16) {
                Log.v("zed", "rev D0 0xf0333 .DataMain.sBlackScreen = " + u0.b.f17332j);
                z.k.s(1, 0, 15);
                if (u0.b.f17332j == 1) {
                    z.k.s(1, 0, 6);
                    return;
                }
                return;
            }
            if (b5 == 85) {
                if (bArr[i2 + 4] == 1) {
                    l0.b0.l0(16, 0);
                    l0.b0.l0(16, 1);
                    return;
                }
                return;
            }
            if (b5 == 90 && bArr[i2 + 4] == 1) {
                l0.b0.l0(3, 0);
                l0.b0.l0(3, 1);
                return;
            }
            return;
        }
        if (b4 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 125) {
            int i12 = bArr[i2 + 2] & 255;
            if (i12 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i13 = i2 + 3;
                    l0.c0.b((bArr[i13] >> 3) & 1, (bArr[i13] >> 4) & 1, 0);
                } else {
                    int i14 = i2 + 3;
                    l0.c0.a((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                }
                int i15 = bArr[i2 + 3] & 255;
                this.f13767t = i15;
                o1.x.C(nt.f8643f, 1049, new int[]{11, i15}, null, null);
                return;
            }
            if (i12 == 6) {
                o1.x[] xVarArr = nt.f8643f;
                o1.x.C(xVarArr, 1049, new int[]{3, (bArr[i2 + 3] >> 0) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            } else if (i12 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f13769u = true;
                return;
            } else if (i12 != 3) {
                if (i12 != 4) {
                    return;
                }
                o1.x.C(nt.f8643f, 1049, new int[]{5, ((bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280)) / 10}, null, null);
                return;
            } else {
                int i16 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i16);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i16}, null, null);
                return;
            }
        }
        if (b4 == 50) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            byte b8 = bArr[i2 + 4];
            byte b9 = bArr[i2 + 5];
            u0.d.I2(l0.c0.K1(b6));
            u0.d.K2(l0.c0.K1(b7));
            u0.d.J2(l0.c0.K1(b8));
            u0.d.H2(l0.c0.K1(b9));
            return;
        }
        if (b4 == 51) {
            byte b10 = bArr[i2 + 2];
            byte b11 = bArr[i2 + 3];
            byte b12 = bArr[i2 + 4];
            byte b13 = bArr[i2 + 5];
            u0.d.O2(l0.c0.K1(b10));
            u0.d.Q2(l0.c0.K1(b11));
            u0.d.P2(l0.c0.K1(b12));
            u0.d.N2(l0.c0.K1(b13));
            return;
        }
        if (b4 == 64) {
            int i17 = nt.f8637c;
            if (i17 != 44 && i17 != 45) {
                switch (i17) {
                    case 75:
                        int i18 = i2 + 2;
                        if (this.f13753m != bArr[i18]) {
                            byte b14 = bArr[i18];
                            this.f13753m = b14;
                            if (b14 == 0) {
                                if (!o1.u.a0()) {
                                    this.f13755n = true;
                                    o1.u.z();
                                }
                                break;
                            } else if (b14 == 1 && this.f13755n && o1.u.a0()) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                                break;
                            }
                        }
                        break;
                }
            }
            int i19 = i2 + 2;
            if (this.f13753m != bArr[i19]) {
                byte b15 = bArr[i19];
                this.f13753m = b15;
                if (b15 == 0) {
                    if (o1.u.V()) {
                        return;
                    }
                    this.f13755n = true;
                    o1.u.j();
                    return;
                }
                if (b15 == 1 && this.f13755n && o1.u.V()) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                    return;
                }
                return;
            }
            return;
        }
        if (b4 == 65) {
            byte b16 = bArr[i2 + 2];
            if (b16 == -128) {
                qt.y0(136, bArr[i2 + 3] & 255);
                qt.y0(137, bArr[i2 + 4] & 255);
                qt.y0(138, bArr[i2 + 5] & 255);
                qt.y0(139, bArr[i2 + 6] & 255);
                qt.y0(151, bArr[i2 + 7] & 255);
                qt.y0(152, bArr[i2 + 8] & 255);
                return;
            }
            if (b16 == -127) {
                int i20 = i2 + 3;
                qt.y0(161, (bArr[i20] >> 4) & 3);
                if ((bArr[i20] & 3) == 1) {
                    if (u0.b.f17332j == 1) {
                        l0.b0.l0(25, 0);
                        l0.b0.l0(25, 1);
                    }
                } else if ((bArr[i20] & 3) == 2 && u0.b.f17332j == 0) {
                    l0.b0.l0(25, 0);
                    l0.b0.l0(25, 1);
                }
                if (((bArr[i20] >> 2) & 3) == 2) {
                    if (y0.f.f18055i == 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                        return;
                    }
                    return;
                }
                if (((bArr[i20] >> 2) & 3) == 1 && y0.f.f18055i == 0) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                    return;
                }
                return;
            }
            if (b16 == -88) {
                int i21 = i2 + 3;
                qt.y0(153, (bArr[i21] >> 5) & 1);
                qt.y0(154, (bArr[i21] >> 4) & 1);
                qt.y0(155, (bArr[i21] >> 2) & 3);
                qt.y0(156, (bArr[i21] >> 0) & 3);
                return;
            }
            if (b16 == 64) {
                int i22 = i2 + 3;
                qt.y0(131, (bArr[i22] >> 0) & 15);
                qt.y0(132, (bArr[i22] >> 4) & 15);
                int i23 = i2 + 4;
                qt.y0(133, (bArr[i23] >> 0) & 15);
                qt.y0(134, (bArr[i23] >> 4) & 15);
                qt.y0(135, (bArr[i23] >> 0) & 15);
                return;
            }
            if (b16 == 1) {
                byte b17 = bArr[i2 + 3];
                qt.y0(101, (b17 >> 7) & 1);
                qt.y0(102, (b17 >> 6) & 1);
                qt.y0(103, (b17 >> 5) & 1);
                qt.y0(5, (b17 >> 4) & 1);
                qt.y0(4, (b17 >> 3) & 1);
                qt.y0(3, (b17 >> 2) & 1);
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b17 >> 1) & 1);
                    qt.y0(2, (b17 >> 0) & 1);
                    return;
                } else {
                    qt.y0(1, (b17 >> 0) & 1);
                    qt.y0(2, (b17 >> 1) & 1);
                    return;
                }
            }
            if (b16 == 2) {
                int i24 = i2 + 3;
                int i25 = i2 + 4;
                qt.y0(110, ((bArr[i24] << 8) & 65280) | ((bArr[i25] << 0) & 255));
                qt.y0(1032, ((bArr[i24] << 8) & 65280) | ((bArr[i25] << 0) & 255));
                int i26 = i2 + 5;
                int i27 = i2 + 6;
                qt.y0(109, ((bArr[i26] << 8) & 65280) | ((bArr[i27] << 0) & 255));
                int i28 = (((bArr[i26] << 8) & 65280) | (bArr[i27] & 255)) / 100;
                qt.y0(1031, i28);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i28}, null, null);
                qt.y0(105, ((bArr[i2 + 7] << 8) & 65280) | ((bArr[i2 + 8] << 0) & 255));
                int i29 = i2 + 9;
                int i30 = i2 + 10;
                qt.y0(121, ((bArr[i29] << 8) & 65280) | ((bArr[i30] << 0) & 255));
                qt.y0(106, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | ((bArr[i2 + 13] << 0) & 255));
                qt.y0(104, bArr[i2 + 14] & 255);
                if (nt.a()) {
                    int i31 = (bArr[i30] & 255) | ((bArr[i29] << 8) & 65280);
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((((32768 & i31) != 0 ? 1320 - (((65536 - i31) * 9) / 5) : ((i31 * 9) / 5) + 1320) / 10) * 10) | 268435456) & (-1) : (32768 & i31) != 0 ? 1000 - (65536 - i31) : i31 + 1000);
                    return;
                }
                return;
            }
            if (b16 == 3) {
                byte b18 = bArr[i2 + 3];
                qt.y0(99, (b18 >> 7) & 1);
                qt.y0(100, (b18 >> 6) & 1);
                return;
            }
            if (b16 != 4) {
                switch (b16) {
                    case 17:
                        int i32 = i2 + 3;
                        qt.y0(113, (bArr[i32] >> 6) & 3);
                        qt.y0(114, (bArr[i32] >> 5) & 1);
                        qt.y0(115, (bArr[i32] >> 4) & 1);
                        qt.y0(116, (bArr[i32] >> 3) & 1);
                        qt.y0(117, (bArr[i32] >> 0) & 7);
                        int i33 = i2 + 4;
                        qt.y0(140, (bArr[i33] >> 7) & 1);
                        qt.y0(141, (bArr[i33] >> 6) & 1);
                        qt.y0(142, (bArr[i33] >> 5) & 1);
                        break;
                    case 18:
                        int i34 = i2 + 3;
                        qt.y0(143, (bArr[i34] >> 7) & 1);
                        qt.y0(144, (bArr[i2 + 4] & 255) | (((bArr[i34] & DhcpPacket.DHCP_DOMAIN_NAME) << 8) & 65280));
                        break;
                    case 19:
                        qt.y0(145, (bArr[i2 + 4] & 255) | (((63 & bArr[i2 + 3]) << 8) & 65280));
                        break;
                }
            }
            if (nt.f8637c != 81) {
                qt.y0(146, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(147, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(148, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(149, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                qt.y0(150, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
                return;
            }
            int i35 = i2 + 3;
            int i36 = (bArr[i35] >> 4) & 15;
            if (this.f13757o != i36) {
                if (i36 != 0) {
                    if (y0.f.f18055i != 1) {
                        int i37 = y0.f.f18037c;
                        this.F = i37;
                        int i38 = i37 / 5;
                        if (i38 < 1) {
                            i38 = 1;
                        }
                        y0.h.t0(i38);
                    }
                } else if (i36 == 0) {
                    y0.h.t0(this.F);
                }
                this.f13757o = i36;
            }
            qt.y0(157, (bArr[i35] >> 7) & 1);
            qt.y0(158, (bArr[i35] >> 6) & 1);
            qt.y0(159, (bArr[i35] >> 5) & 1);
            qt.y0(160, (bArr[i35] >> 4) & 1);
            return;
        }
        switch (b4) {
            case 32:
                if (nt.f8637c != 80) {
                    byte b19 = bArr[i2 + 2];
                    byte b20 = bArr[i2 + 3];
                    this.f13733c = b19 & 255;
                    int i39 = 0;
                    while (true) {
                        iArr = this.f13735d;
                        if (i39 < iArr.length) {
                            int i40 = this.f13733c;
                            if (i40 != iArr[i39][0]) {
                                i39++;
                            } else if (i40 != 0) {
                                this.f13731b = i39;
                            }
                        }
                    }
                    int i41 = this.f13733c;
                    if (i41 != 3) {
                        if (i41 != 4) {
                            if (i41 != 5) {
                                if (i41 != 6) {
                                    if (i41 != 12) {
                                        if (i41 == 22) {
                                            if ((b20 & 255) == 1) {
                                                int i42 = nt.f8637c;
                                                if (i42 == 0 || i42 == 2 || i42 == 84) {
                                                    l0.b0.l0(9, 0);
                                                    l0.b0.l0(9, 1);
                                                } else {
                                                    l0.b0.l0(29, 0);
                                                    l0.b0.l0(29, 1);
                                                }
                                            }
                                            break;
                                        } else {
                                            int i43 = nt.f8637c;
                                            if ((i43 < 46 || i43 > 59) && i43 != 8 && i43 != 9) {
                                                int i44 = b20 & 255;
                                                if (i44 != 1) {
                                                    if (i44 == 0) {
                                                        int i45 = this.f13731b;
                                                        if (i45 < iArr.length && i45 != 255) {
                                                            l0.b0.l0(iArr[i45][1], 1);
                                                            l0.b0.o0(this.f13776z);
                                                            this.f13775y = (byte) 0;
                                                        }
                                                        this.f13731b = 255;
                                                    }
                                                    break;
                                                } else if (i39 < iArr.length && (b3 = this.f13775y) == 0) {
                                                    this.f13775y = (byte) (b3 + 1);
                                                    l0.b0.l0(iArr[i39][1], 0);
                                                    l0.b0.a(this.f13776z);
                                                    break;
                                                }
                                            } else if ((b20 & 255) != 0 && (i4 = this.f13731b) < iArr.length) {
                                                l0.b0.l0(iArr[i4][1], 0);
                                                l0.b0.l0(this.f13735d[this.f13731b][1], 1);
                                                break;
                                            }
                                        }
                                    } else {
                                        if (nt.f8637c != 81) {
                                            l0.b0.l0(16, 0);
                                            l0.b0.l0(16, 1);
                                        } else if (u0.b.D != 1) {
                                            l0.b0.l0(16, 0);
                                            l0.b0.l0(16, 1);
                                        }
                                        break;
                                    }
                                } else {
                                    if ((b20 & 255) == 1) {
                                        int i46 = nt.f8637c;
                                        if (i46 == 33 || i46 == 35) {
                                            l0.b0.l0(13, 0);
                                            l0.b0.l0(13, 1);
                                        } else {
                                            l0.b0.l0(12, 0);
                                            l0.b0.l0(12, 1);
                                        }
                                    }
                                    break;
                                }
                            } else if ((b20 & 255) == 1 && (b2 = this.f13775y) == 0) {
                                this.f13775y = (byte) (b2 + 1);
                                int i47 = h0.c.E;
                                if (i47 == 3 || (i47 != 4 && i47 == 5)) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                }
                                l0.b0.a(this.f13776z);
                                break;
                            }
                        } else {
                            if ((b20 & 255) == 1) {
                                if (nt.f8637c == 81) {
                                    int i48 = h0.c.E;
                                    if (i48 == 3 || i48 == 4 || i48 == 5) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else if (u0.i.l3().r3()) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else {
                                        l0.b0.l0(4, 0);
                                        l0.b0.l0(4, 1);
                                    }
                                } else {
                                    l0.b0.l0(4, 0);
                                    l0.b0.l0(4, 1);
                                }
                            }
                            break;
                        }
                    } else {
                        if ((b20 & 255) == 1) {
                            if (nt.f8637c == 81) {
                                int i49 = h0.c.E;
                                if (i49 == 3 || i49 == 4 || i49 == 5) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else if (u0.i.l3().r3()) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else {
                                    l0.b0.l0(3, 0);
                                    l0.b0.l0(3, 1);
                                }
                            } else {
                                l0.b0.l0(3, 0);
                                l0.b0.l0(3, 1);
                            }
                        }
                        break;
                    }
                } else {
                    byte b21 = bArr[i2 + 2];
                    byte b22 = bArr[i2 + 3];
                    this.f13733c = b21 & 255;
                    int i50 = 0;
                    while (true) {
                        iArr2 = this.f13737e;
                        if (i50 < iArr2.length) {
                            int i51 = this.f13733c;
                            if (i51 != iArr2[i50][0]) {
                                i50++;
                            } else if (i51 != 0) {
                                this.f13731b = i50;
                            }
                        }
                    }
                    int i52 = b22 & 255;
                    if (i52 == 1) {
                        if (i50 < iArr2.length) {
                            l0.b0.l0(iArr2[i50][1], 0);
                        }
                    } else if (i52 == 0) {
                        int i53 = this.f13731b;
                        if (i53 < iArr2.length && i53 != 255) {
                            l0.b0.l0(iArr2[i53][1], 1);
                        }
                        this.f13731b = 255;
                    }
                    break;
                }
                break;
            case 33:
                int i54 = nt.f8633a;
                if (i54 == 196659 || i54 == 458803 || i54 == 262195) {
                    a.f.p().t(LogType.CANBUS, "OBD0x21 air data " + o1.b0.d(bArr, i2 - 1, i3 + 2));
                    int i55 = bArr[i2 + 2] & 255;
                    int i56 = (i55 >> 5) & 7;
                    if (i56 != 1) {
                        if (i56 == 2) {
                            i5 = 0;
                            i7 = 1;
                        } else if (i56 == 3) {
                            i5 = 0;
                            i7 = 0;
                            i6 = 1;
                        } else if (i56 == 4) {
                            i7 = 0;
                            i5 = 1;
                            i6 = 1;
                        } else if (i56 != 5) {
                            i5 = 0;
                            i7 = 0;
                        } else {
                            i7 = 0;
                            i6 = 0;
                            i5 = 1;
                        }
                        i6 = i7;
                    } else {
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                    }
                    qt.y0(18, i5);
                    qt.y0(19, i7);
                    qt.y0(20, i6);
                    qt.y0(77, i56);
                    qt.y0(13, (i55 >> 4) & 1);
                    if (((i55 >> 3) & 1) == 1) {
                        qt.y0(12, 0);
                    } else if (((i55 >> 2) & 1) == 1) {
                        qt.y0(12, 1);
                    }
                    qt.y0(11, (i55 >> 1) & 1);
                    if (((i55 >> 0) & 1) == 1) {
                        qt.y0(10, 0);
                    } else {
                        qt.y0(10, 1);
                    }
                    int i57 = bArr[i2 + 3] & 255;
                    qt.y0(21, (i57 >> 4) & 15);
                    qt.y0(53, (i57 >> 3) & 1);
                    qt.y0(15, (i57 >> 2) & 1);
                    qt.y0(38, (i57 >> 1) & 1);
                    qt.y0(14, (i57 >> 0) & 1);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        qt.y0(27, (bArr[i2 + 5] >> 2) & 63);
                        qt.y0(28, 63 & (bArr[i2 + 4] >> 2));
                    } else {
                        qt.y0(27, (bArr[i2 + 4] >> 2) & 63);
                        qt.y0(28, 63 & (bArr[i2 + 5] >> 2));
                    }
                    qt.y0(29, (bArr[i2 + 4] >> 0) & 3);
                    qt.y0(30, (bArr[i2 + 5] >> 0) & 3);
                } else {
                    byte b23 = bArr[i2 + 2];
                    qt.y0(10, (b23 >> 7) & 1);
                    qt.y0(11, (b23 >> 6) & 1);
                    qt.y0(12, (b23 >> 5) & 1);
                    qt.y0(13, (b23 >> 4) & 1);
                    qt.y0(49, (b23 >> 3) & 1);
                    qt.y0(14, (b23 >> 2) & 1);
                    qt.y0(15, (b23 >> 1) & 1);
                    qt.y0(38, (b23 >> 0) & 1);
                    byte b24 = bArr[i2 + 3];
                    qt.y0(18, (b24 >> 7) & 1);
                    qt.y0(19, (b24 >> 6) & 1);
                    qt.y0(20, (b24 >> 5) & 1);
                    qt.y0(21, b24 & DhcpPacket.DHCP_DOMAIN_NAME);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        qt.y0(27, bArr[i2 + 5] & 255);
                        qt.y0(28, bArr[i2 + 4] & 255);
                    } else {
                        qt.y0(27, bArr[i2 + 4] & 255);
                        qt.y0(28, bArr[i2 + 5] & 255);
                    }
                    byte b25 = bArr[i2 + 6];
                    qt.y0(54, (b25 >> 7) & 1);
                    if (nt.f8633a != 589875) {
                        qt.y0(29, (b25 >> 4) & 3);
                        qt.y0(30, 3 & (b25 >> 0));
                    }
                    qt.y0(67, (b25 >> 3) & 1);
                    int i58 = nt.f8637c;
                    if (i58 == 46 || i58 == 47 || i58 == 48 || i58 == 49 || i58 == 50 || i58 == 51 || i58 == 52 || i58 == 53 || i58 == 54 || i58 == 55 || i58 == 56 || i58 == 57 || i58 == 58 || i58 == 59 || i58 == 63 || i58 == 67 || i58 == 69 || i58 == 71 || i58 == 72 || i58 == 73) {
                        qt.y0(53, (b25 >> 6) & 1);
                    } else {
                        qt.y0(53, (b25 >> 2) & 1);
                    }
                    if (nt.f8633a == 2949171) {
                        int i59 = i2 + 8;
                        qt.y0(22, (bArr[i59] >> 7) & 1);
                        qt.y0(23, (bArr[i59] >> 6) & 1);
                        qt.y0(24, (bArr[i59] >> 5) & 1);
                        qt.y0(25, (bArr[i59] >> 0) & 15);
                        int i60 = i2 + 7;
                        qt.y0(26, (bArr[i60] >> 0) & 1);
                        qt.y0(50, (bArr[i60] >> 1) & 1);
                    }
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.K1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.K1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.K1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.K1(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (SystemProperties.getBoolean("persist.fyt.radar_click", true)) {
                    int i61 = bArr[i2 + 2] & 255;
                    int i62 = bArr[i2 + 3] & 255;
                    int i63 = bArr[i2 + 4] & 255;
                    int i64 = bArr[i2 + 5] & 255;
                    if (i61 == 0 && i62 == 0 && i63 == 0 && i64 == 0) {
                        if (this.f13752l0 == 0) {
                            u0.d.C2(0);
                        }
                    } else if ((l0.c0.f13013g != i61 || l0.c0.f13014h != i62 || l0.c0.f13015i != i63 || l0.c0.f13016j != i64) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 6;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i61;
                    l0.c0.f13014h = i62;
                    l0.c0.f13015i = i63;
                    l0.c0.f13016j = i64;
                }
                u0.d.D2(l0.c0.K1(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.K1(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.K1(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.K1(bArr[i2 + 5] & 255));
                break;
            case 36:
                int i65 = bArr[i2 + 2] & 1;
                if (nt.f8645g[119] == 1 && u0.b.f17357r0 == 0 && this.f13751l != i65) {
                    this.f13751l = i65;
                    if (i65 == 1) {
                        if (!o1.u.V()) {
                            this.f13755n = true;
                            o1.u.j();
                        }
                        break;
                    } else if (i65 == 0 && this.f13755n && o1.u.V()) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        break;
                    }
                }
                break;
            case 37:
                int i66 = i2 + 2;
                byte b26 = bArr[i66];
                int i67 = (b26 >> 1) & 1;
                this.f13752l0 = i67;
                int i68 = nt.f8637c;
                if (i68 != 63 && i68 != 67) {
                    switch (i68) {
                        case 44:
                        case 45:
                            if (this.f13750k0 != ((bArr[i66] >> 1) & 1)) {
                                this.f13750k0 = (bArr[i66] >> 1) & 1;
                                if (!qt.k0()) {
                                    if (this.f7886a.f8317l == 1) {
                                        if (this.f13750k0 == 1) {
                                            if (!o1.u.a0()) {
                                                this.f13754m0 = true;
                                                o1.u.z();
                                            }
                                        } else if (o1.u.a0() && this.f13754m0) {
                                            l0.b0.l0(6, 0);
                                            l0.b0.l0(6, 1);
                                            this.f13754m0 = false;
                                        }
                                    } else if (this.f13750k0 == 1) {
                                        if (!o1.u.V()) {
                                            this.f13754m0 = true;
                                            o1.u.j();
                                        }
                                    } else if (o1.u.V() && this.f13754m0) {
                                        l0.b0.l0(6, 0);
                                        l0.b0.l0(6, 1);
                                        this.f13754m0 = false;
                                    }
                                }
                            }
                            break;
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                        case 58:
                        case 59:
                            if (this.f13750k0 != ((bArr[i66] >> 1) & 1)) {
                                i8 = (bArr[i66] >> 1) & 1;
                                this.f13750k0 = i8;
                                if (i8 == 0) {
                                    u0.d.R2(10);
                                    u0.d.S2(10);
                                    u0.d.T2(10);
                                    u0.d.U2(10);
                                    u0.d.D2(10);
                                    u0.d.E2(10);
                                    u0.d.F2(10);
                                    u0.d.G2(10);
                                }
                                i9 = nt.f8637c;
                                if (i9 != 67) {
                                    switch (i9) {
                                        case 57:
                                        case 58:
                                        case 59:
                                            if (!qt.k0()) {
                                                if (this.f7886a.f8317l == 1) {
                                                    if (this.f13750k0 == 1) {
                                                        if (!o1.u.a0()) {
                                                            this.f13754m0 = true;
                                                            o1.u.z();
                                                        }
                                                    } else if (o1.u.a0()) {
                                                        l0.b0.l0(6, 0);
                                                        l0.b0.l0(6, 1);
                                                        this.f13754m0 = false;
                                                    }
                                                } else if (this.f13750k0 == 1) {
                                                    if (!o1.u.V()) {
                                                        this.f13754m0 = true;
                                                        o1.u.j();
                                                    }
                                                } else if (o1.u.V()) {
                                                    l0.b0.l0(6, 0);
                                                    l0.b0.l0(6, 1);
                                                    this.f13754m0 = false;
                                                }
                                            }
                                    }
                                } else if (!qt.k0()) {
                                    if (this.f7886a.f8317l == 1) {
                                        if (this.f13750k0 == 1) {
                                            if (!o1.u.a0()) {
                                                this.f13754m0 = true;
                                                o1.u.z();
                                            }
                                        } else if (o1.u.a0()) {
                                            l0.b0.l0(6, 0);
                                            l0.b0.l0(6, 1);
                                            this.f13754m0 = false;
                                        }
                                    } else if (this.f13750k0 == 1) {
                                        if (!o1.u.V()) {
                                            this.f13754m0 = true;
                                            o1.u.j();
                                        }
                                    } else if (o1.u.V()) {
                                        l0.b0.l0(6, 0);
                                        l0.b0.l0(6, 1);
                                        this.f13754m0 = false;
                                    }
                                }
                            }
                            break;
                        default:
                            switch (i68) {
                                case 69:
                                case 71:
                                case 72:
                                case 73:
                                    if (this.f13750k0 != ((bArr[i66] >> 1) & 1)) {
                                        i8 = (bArr[i66] >> 1) & 1;
                                        this.f13750k0 = i8;
                                        if (i8 == 0) {
                                            u0.d.R2(10);
                                            u0.d.S2(10);
                                            u0.d.T2(10);
                                            u0.d.U2(10);
                                            u0.d.D2(10);
                                            u0.d.E2(10);
                                            u0.d.F2(10);
                                            u0.d.G2(10);
                                        }
                                        i9 = nt.f8637c;
                                        if (i9 != 67) {
                                            switch (i9) {
                                                case 57:
                                                case 58:
                                                case 59:
                                                    if (!qt.k0()) {
                                                        if (this.f7886a.f8317l == 1) {
                                                            if (this.f13750k0 == 1) {
                                                                if (!o1.u.a0()) {
                                                                    this.f13754m0 = true;
                                                                    o1.u.z();
                                                                }
                                                            } else if (o1.u.a0()) {
                                                                l0.b0.l0(6, 0);
                                                                l0.b0.l0(6, 1);
                                                                this.f13754m0 = false;
                                                            }
                                                        } else if (this.f13750k0 == 1) {
                                                            if (!o1.u.V()) {
                                                                this.f13754m0 = true;
                                                                o1.u.j();
                                                            }
                                                        } else if (o1.u.V()) {
                                                            l0.b0.l0(6, 0);
                                                            l0.b0.l0(6, 1);
                                                            this.f13754m0 = false;
                                                        }
                                                    }
                                            }
                                        } else if (!qt.k0()) {
                                            if (this.f7886a.f8317l == 1) {
                                                if (this.f13750k0 == 1) {
                                                    if (!o1.u.a0()) {
                                                        this.f13754m0 = true;
                                                        o1.u.z();
                                                    }
                                                } else if (o1.u.a0()) {
                                                    l0.b0.l0(6, 0);
                                                    l0.b0.l0(6, 1);
                                                    this.f13754m0 = false;
                                                }
                                            } else if (this.f13750k0 == 1) {
                                                if (!o1.u.V()) {
                                                    this.f13754m0 = true;
                                                    o1.u.j();
                                                }
                                            } else if (o1.u.V()) {
                                                l0.b0.l0(6, 0);
                                                l0.b0.l0(6, 1);
                                                this.f13754m0 = false;
                                            }
                                        }
                                    }
                                    break;
                                case 70:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                    if (this.f13750k0 != ((bArr[i66] >> 1) & 1)) {
                                        this.f13750k0 = (bArr[i66] >> 1) & 1;
                                        if (!qt.k0()) {
                                            if (this.f7886a.f8317l == 1) {
                                                if (this.f13750k0 == 1) {
                                                    if (!o1.u.a0()) {
                                                        this.f13754m0 = true;
                                                        o1.u.z();
                                                    }
                                                } else if (o1.u.a0()) {
                                                    l0.b0.l0(6, 0);
                                                    l0.b0.l0(6, 1);
                                                    this.f13754m0 = false;
                                                }
                                            } else if (this.f13750k0 == 1) {
                                                if (!o1.u.V()) {
                                                    this.f13754m0 = true;
                                                    o1.u.j();
                                                }
                                            } else if (o1.u.V()) {
                                                l0.b0.l0(6, 0);
                                                l0.b0.l0(6, 1);
                                                this.f13754m0 = false;
                                            }
                                        }
                                    }
                                    break;
                            }
                            break;
                    }
                } else if (this.f13750k0 != ((bArr[i66] >> 1) & 1)) {
                    i8 = (bArr[i66] >> 1) & 1;
                    this.f13750k0 = i8;
                    if (i8 == 0) {
                        u0.d.R2(10);
                        u0.d.S2(10);
                        u0.d.T2(10);
                        u0.d.U2(10);
                        u0.d.D2(10);
                        u0.d.E2(10);
                        u0.d.F2(10);
                        u0.d.G2(10);
                    }
                    i9 = nt.f8637c;
                    if (i9 != 67) {
                        switch (i9) {
                            case 57:
                            case 58:
                            case 59:
                                if (!qt.k0()) {
                                    if (this.f7886a.f8317l == 1) {
                                        if (this.f13750k0 == 1) {
                                            if (!o1.u.a0()) {
                                                this.f13754m0 = true;
                                                o1.u.z();
                                            }
                                        } else if (o1.u.a0() && this.f13754m0) {
                                            l0.b0.l0(6, 0);
                                            l0.b0.l0(6, 1);
                                            this.f13754m0 = false;
                                        }
                                    } else if (this.f13750k0 == 1) {
                                        if (!o1.u.V()) {
                                            this.f13754m0 = true;
                                            o1.u.j();
                                        }
                                    } else if (o1.u.V() && this.f13754m0) {
                                        l0.b0.l0(6, 0);
                                        l0.b0.l0(6, 1);
                                        this.f13754m0 = false;
                                    }
                                }
                                break;
                        }
                    } else if (!qt.k0()) {
                        if (this.f7886a.f8317l == 1) {
                            if (this.f13750k0 == 1) {
                                if (!o1.u.a0()) {
                                    this.f13754m0 = true;
                                    o1.u.z();
                                }
                            } else if (o1.u.a0()) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                                this.f13754m0 = false;
                            }
                        } else if (this.f13750k0 == 1) {
                            if (!o1.u.V()) {
                                this.f13754m0 = true;
                                o1.u.j();
                            }
                        } else if (o1.u.V()) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                            this.f13754m0 = false;
                        }
                    }
                }
                qt.y0(122, (b26 >> 2) & 3);
                qt.y0(107, i67);
                qt.y0(108, (b26 >> 0) & 1);
                break;
            case 38:
                if (nt.a() && !this.f13769u) {
                    qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 540);
                    break;
                }
                break;
            case 39:
                if (nt.a()) {
                    if (bArr[i2 + 1] == 8) {
                        int i69 = i2 + 3;
                        byte b27 = bArr[i69];
                        int i70 = i2 + 4;
                        byte b28 = bArr[i70];
                        int i71 = i2 + 5;
                        byte b29 = bArr[i71];
                        A0 = o0.a(b27 & 255, 0, 30);
                        qt.y0(123, bArr[i2 + 2]);
                        qt.y0(124, bArr[i69]);
                        qt.y0(125, bArr[i70]);
                        qt.y0(126, bArr[i71]);
                        qt.y0(127, bArr[i2 + 6]);
                        qt.y0(128, bArr[i2 + 7]);
                        qt.y0(129, bArr[i2 + 8]);
                        qt.y0(130, bArr[i2 + 9]);
                    } else {
                        byte b30 = bArr[i2 + 2];
                        byte b31 = bArr[i2 + 3];
                        this.f13741g = b30 & 255;
                        int i72 = 0;
                        while (true) {
                            iArr3 = this.f13743h;
                            if (i72 < iArr3.length) {
                                int i73 = this.f13741g;
                                if (i73 != iArr3[i72][0]) {
                                    i72++;
                                } else if (i73 != 0) {
                                    this.f13739f = i72;
                                }
                            }
                        }
                        int i74 = this.f13741g;
                        if (i74 == 17) {
                            for (int i75 = 0; i75 < (b31 & 255); i75++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        } else if (i74 != 18) {
                            int i76 = b31 & 255;
                            if (i76 == 1) {
                                if (i72 < iArr3.length) {
                                    l0.b0.l0(iArr3[i72][1], 0);
                                }
                            } else if (i76 == 0) {
                                int i77 = this.f13739f;
                                if (i77 < iArr3.length && i77 != 255) {
                                    l0.b0.l0(iArr3[i77][1], 1);
                                }
                                this.f13739f = 255;
                            }
                        } else {
                            for (int i78 = 0; i78 < (b31 & 255); i78++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        }
                    }
                }
                break;
            case 40:
                if (nt.f8633a == 589875) {
                    int i79 = i2 + 2;
                    qt.y0(29, (bArr[i79] >> 3) & 7);
                    qt.y0(30, (bArr[i79] >> 0) & 7);
                } else {
                    byte b32 = bArr[i2 + 2];
                    byte b33 = bArr[i2 + 3];
                    this.f13747j = b32 & 255;
                    int i80 = 0;
                    while (true) {
                        iArr4 = this.f13749k;
                        if (i80 < iArr4.length) {
                            int i81 = this.f13747j;
                            if (i81 != iArr4[i80][0]) {
                                i80++;
                            } else if (i81 != 0) {
                                this.f13745i = i80;
                            }
                        }
                    }
                    int i82 = this.f13747j;
                    if (i82 == 64) {
                        for (int i83 = 0; i83 < (b33 & 255); i83++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (i82 == 65) {
                        for (int i84 = 0; i84 < (b33 & 255); i84++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    } else if (i82 == 80) {
                        for (int i85 = 0; i85 < (b33 & 255); i85++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (i82 != 81) {
                        int i86 = b33 & 255;
                        if (i86 == 1) {
                            if (i80 < iArr4.length) {
                                l0.b0.l0(iArr4[i80][1], 0);
                            }
                        } else if (i86 == 0) {
                            int i87 = this.f13745i;
                            if (i87 < iArr4.length && i87 != 255) {
                                l0.b0.l0(iArr4[i87][1], 1);
                            }
                            this.f13745i = 255;
                        }
                    } else {
                        for (int i88 = 0; i88 < (b33 & 255); i88++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                }
                break;
            case 41:
                byte b34 = bArr[i2 + 2];
                byte b35 = bArr[i2 + 3];
                if (b34 == 2 && b35 != (i10 = this.I)) {
                    if (b35 > i10) {
                        for (int i89 = 0; i89 < b35 - this.I; i89++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b35 < i10) {
                        for (int i90 = 0; i90 < this.I - b35; i90++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.I = b35;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.o0(this.f13770u0);
        qt.q0(this.f13773w);
        o1.y yVar = y0.g.f18094d;
        yVar.d(this.f13774x);
        y0.g.f18095e.d(this.f13774x);
        w0.e.f17815a.d(this.f13773w);
        o1.h.f16865a.d(this.f13742g0);
        qt.q0(this.f13762q0);
        o1.y yVar2 = u0.c.f17386m;
        yVar2.d(this.f13758o0);
        u0.c.f17379f.d(this.H);
        yVar2.d(this.K);
        l0.b0.p0(this.f13760p0);
        l0.b0.p0(this.L);
        yVar.d(this.A);
        l0.b0.p0(this.f13748j0);
        l0.b0.p0(this.f13744h0);
        y0.g.f18110t.d(this.O);
        h0.d.f2462a.d(this.Q);
        qt.q0(this.M);
        u0.c.f17374a.d(this.f13766s0);
        this.B.j();
        qt.o0(this.G);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 162) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 1280) / a.f.w();
                int i3 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 152, 9, 1, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0, 0, 0, 0);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 152, 9, 0, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0, 0, 0, 0);
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 0:
                z.k.s(227, 198, 2, 2, 0);
                break;
            case 1:
                z.k.s(227, 198, 2, 2, 1);
                break;
            case 2:
                if (T2(iArr, 1)) {
                    z.k.s(227, 198, 2, 0, iArr[0]);
                }
                break;
            case 3:
                if (iArr != null) {
                    this.f13746i0 = iArr[0] == 1;
                }
                break;
            case 4:
                G3(new byte[]{46, -57, 6, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3], (byte) iArr[4], (byte) iArr[5], 0});
                if (iArr[0] == 0 && iArr[1] == 0 && iArr[2] == 0 && iArr[3] == 0 && iArr[4] == 0 && iArr[5] == 0) {
                    a.i.a0(100L);
                    G3(new byte[]{46, -112, 1, 33, 0});
                }
                this.f13756n0 = 1;
                break;
            case 5:
                z.k.s(227, 239, 3, 125, 75, iArr[0]);
                break;
            case 6:
                z.k.s(227, 166, 3, iArr[0], iArr[1], iArr[2]);
                break;
            case 7:
                int i4 = iArr[0];
                if (i4 == 0) {
                    D3(iArr[1]);
                } else if (i4 == 2) {
                    C3(iArr[1]);
                } else if (i4 == 3) {
                    E3(iArr[1]);
                } else {
                    z.k.s(227, 198, 2, iArr[0], iArr[1]);
                }
                break;
            case 8:
                z.k.s(227, 160, 2, iArr[0], iArr[1]);
                break;
            case 9:
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                break;
            case 10:
                G3(new byte[]{46, -88, 2, (byte) iArr[0], (byte) iArr[1], 0});
                break;
            case 11:
                z.k.s(227, 168, 2, iArr[0], iArr[1]);
                break;
            case 12:
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                break;
            case 13:
                z.k.s(227, 152, 9, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0);
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            B0 = C0[o0.a(i2, 0, 36)];
        }
    }

    public final void a3() {
        if (u0.b.f17347o == 1) {
            z.k.s(227, 208, 2, 17, 8);
            return;
        }
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.f17797i;
            int i4 = w0.d.f17796h;
            if (i4 == 0 || i4 == 1) {
                z.k.s(227, 208, 5, 17, 5, i3 % 100, (i3 % 10000) / 100, i3 / 10000);
            }
            switch (i4) {
                case 65536:
                case 65537:
                case 65538:
                    int i5 = w0.d.f17797i * 10;
                    z.k.s(227, 208, 5, 17, 4, i5 % 100, (i5 % 10000) / 100, i5 / 10000);
                    break;
            }
        }
        if (i2 == 2 || i2 == 3) {
            z.k.s(227, 208, 2, 17, 1);
            return;
        }
        switch (i2) {
            case 8:
            case 10:
                int i6 = u0.b.s3;
                int i7 = u0.b.t3;
                z.k.s(227, 208, 7, 17, 3, i6 % 100, i6 / 100, i7 / BatchedScanSettings.MAX_INTERVAL_SEC, (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i7 % 60);
                break;
            case 9:
                int i8 = u0.b.s3;
                int i9 = u0.b.t3;
                z.k.s(227, 208, 7, 17, 6, i8 % 100, i8 / 100, i9 / BatchedScanSettings.MAX_INTERVAL_SEC, (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i9 % 60);
                break;
            default:
                z.k.s(227, 208, 2, 17, 7);
                break;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f13761q + bArr.length > 1024) {
            this.f13761q = 0;
            this.f13763r = 0;
            this.f13765s = 0;
        }
        System.arraycopy(bArr, 0, this.f13759p, this.f13761q, bArr.length);
        int length = this.f13761q + bArr.length;
        this.f13761q = length;
        int i5 = this.f13765s;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13759p[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13765s;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13759p[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f13759p;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f13763r = this.f13765s + 1;
            } else {
                this.f13763r = 1;
            }
            this.f13765s = 0;
        }
        int i7 = this.f13761q - 2;
        while (true) {
            i2 = this.f13763r;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13759p;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f13765s = i8;
                int i9 = i8 + i2 + 3;
                this.f13765s = i9;
                if (i9 >= this.f13761q) {
                    this.f13765s = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f13765s;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f13759p[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f13759p;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f13763r;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f13763r = this.f13765s;
                } else {
                    this.f13763r++;
                }
                this.f13765s = 0;
            }
            this.f13763r++;
        }
        if (i2 != 0) {
            int i12 = this.f13761q - i2;
            this.f13761q = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13759p;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13763r = 0;
        }
    }

    public final void b3() {
        int i2;
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            z.k.s(227, 208, 3, 17, 2, 0);
        } else {
            z.k.s(227, 208, 3, 17, 2, i2);
        }
    }

    public final int c3(int i2) {
        if (i2 > 360) {
            i2 %= MediaProperties.HEIGHT_360;
        }
        if (i2 < 0) {
            i2 = 360 - Math.abs(i2 % MediaProperties.HEIGHT_360);
        }
        double d2 = i2;
        if ((d2 <= 22.5d && i2 >= 0) || (d2 >= 337.5d && i2 <= 360)) {
            return 0;
        }
        if (d2 > 22.5d && d2 < 67.5d) {
            return 2;
        }
        if (d2 >= 67.5d && d2 <= 112.5d) {
            return 4;
        }
        if (d2 > 112.5d && d2 < 157.5d) {
            return 6;
        }
        if (d2 >= 157.5d && d2 <= 202.5d) {
            return 8;
        }
        if (d2 > 202.5d && d2 < 247.5d) {
            return 10;
        }
        if (d2 < 247.5d || d2 > 292.5d) {
            return (d2 <= 292.5d || d2 >= 337.5d) ? 15 : 14;
        }
        return 12;
    }

    public final void d3() {
        int i2 = this.Y;
        if (i2 < 0 || i2 >= f13729z0.length) {
            return;
        }
        int i3 = this.Z;
        if (i3 == 0 && this.V == 0) {
            return;
        }
        int i4 = this.U * 10;
        int i5 = this.T * 10;
        z.k.s(227, 162, 16, ((i3 << 6) & 64) | ((this.f13730a0 << 7) & 128), c3(this.V), (i4 >> 8) & 255, i4 & 255, (i5 >> 8) & 255, i5 & 255, f13729z0[this.Y], 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }

    public final void init() {
        D0.f(0, new u(0, 100));
    }
}
