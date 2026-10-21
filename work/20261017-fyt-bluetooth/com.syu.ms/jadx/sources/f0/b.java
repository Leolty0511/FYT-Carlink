package f0;

import android.net.ProxyProperties;
import android.util.Log;
import android.util.SparseIntArray;
import com.syu.jni.ToolsJni;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import module.sound.AudioDevice;
import o1.h0;
import o1.n;
import o1.p;
import o1.s0;
import o1.x;
import y0.e;
import y0.f;

/* JADX INFO: loaded from: classes.dex */
public class b extends f0.a {
    public static final int[] Q = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    public static final int[] R = {0, 1, 2, 3, 4, 5, 7, 10};
    public static final int[] S = {0, 0, 0};
    public static final int[] T = {1, 2000, 4};
    public static final int[] U = {2, 80, 4};
    public static final int[] V = {3, 5000, 4};
    public static final int[] W = {4, 2000, 4};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public SparseIntArray f1862i;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public c f1876w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public h0 f1877x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public n f1878y;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public SparseIntArray f1860g = new SparseIntArray(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SparseIntArray f1861h = new SparseIntArray(4);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SparseIntArray f1863j = new SparseIntArray(4);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[][] f1864k = {new int[]{255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255}, new int[]{255, 252, i.a.Theme_actionModeWebSearchDrawable, 235, 227, 219, 211, 204, 197, 190, 183, 177, 171, 165, 159, 154, 149, 144, 139, 135, 130, 126, 123, 119, 116, 113, 110, 108, 106, 104, 102, 101, 99, 98, 98, 97, 96}, new int[]{255, 233, 224, 215, 206, 197, 189, 181, 173, 166, 159, 152, 145, 139, 133, 127, 121, 116, 111, 106, 101, 97, 93, 89, 86, 83, 80, 77, 75, 72, 71, 69, 68, 67, 66, 65, 64}, new int[]{255, 213, 203, 193, 183, 174, 165, 157, 148, 140, 132, 125, 118, 111, 104, 98, 92, 86, 80, 75, 70, 66, 61, 57, 54, 50, 47, 44, 41, 39, 37, 35, 34, 33, 32, 31, 30}, new int[]{255, 202, 191, 180, 169, 159, 149, 140, 131, 122, 113, 105, 98, 90, 83, 77, 71, 65, 59, 54, 49, 45, 41, 37, 34, 31, 29, 26, 25, 23, 22, 21, 20, 19, 18, 17, 16}, new int[]{255, 191, 176, 163, 150, 137, 126, 115, 104, 94, 85, 76, 68, 61, 54, 48, 42, 37, 33, 29, 26, 24, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8}, new int[]{255, 180, 166, 152, 139, 126, 114, 103, 93, 83, 74, 66, 58, 51, 45, 39, 35, 30, 27, 24, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6}, new int[]{255, 161, 147, 133, 121, 109, 98, 87, 78, 69, 61, 53, 47, 41, 36, 31, 27, 24, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4}, new int[]{255, 141, 127, 115, 103, 92, 82, 72, 63, 56, 48, 42, 37, 32, 28, 25, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2}, new int[]{255, 131, 118, 106, 95, 84, 74, 65, 57, 50, 43, 37, 32, 28, 25, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1}, new int[]{255, 121, 109, 97, 86, 76, 66, 58, 50, 44, 38, 33, 28, 25, 23, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int[] f1865l = {255, 115, 89, 67, 50, 37, 34, 32, 30, 28, 24};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f1866m = {255, 32, 30, 28, 26, 24, 22, 20, 18, 16, 14};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1867n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1868o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1869p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1870q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int[] f1871r = {0, 0};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int[] f1872s = {0, 0};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1873t = 7;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1874u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1875v = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f1879z = ProxyProperties.LOCAL_EXCL_LIST;
    public String A = ProxyProperties.LOCAL_EXCL_LIST;
    public String B = ProxyProperties.LOCAL_EXCL_LIST;
    public String C = ProxyProperties.LOCAL_EXCL_LIST;
    public String D = ProxyProperties.LOCAL_EXCL_LIST;
    public String E = ProxyProperties.LOCAL_EXCL_LIST;
    public int F = 0;
    public int G = 0;
    public boolean H = false;
    public boolean I = false;
    public int[] J = {-1, 0, 0};
    public int[] K = {-1, 0, 0};
    public int[] L = {-1, 0, 0};
    public int[] M = {-1, 0, 0};
    public int[] N = {-1, 0, 0};
    public int[] O = {-1, 0, 0};
    public final p P = new a();

    public class a implements p {
        public a() {
        }

        @Override // o1.p
        public void d(Object obj) {
            try {
                int iIntValue = ((Integer) obj).intValue();
                AudioDevice audioDeviceW = AudioDevice.W();
                Log.e("HiFi", "changeAppId appId: " + iIntValue + " device: " + audioDeviceW);
                if (audioDeviceW == null) {
                    return;
                }
                b bVar = b.this;
                int iJ0 = audioDeviceW.j0(iIntValue);
                boolean z2 = true;
                if (iJ0 != 1) {
                    z2 = false;
                }
                bVar.y(z2);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: f0.b$b, reason: collision with other inner class name */
    public class RunnableC0039b implements Runnable {
        public RunnableC0039b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            boolean z2 = bVar.f1870q;
            if (!z2) {
                bVar.f(true);
                s0.C(50L);
            }
            b.this.P.d(Integer.valueOf(u0.b.D));
            u0.c.f17374a.d(this);
            if (z2) {
                return;
            }
            b.this.f(false);
        }
    }

    public b(n nVar) {
        this.f1862i = new SparseIntArray(4);
        this.f1853e = 0;
        this.f1878y = nVar;
        c cVarX2 = c.X2();
        this.f1876w = cVarX2;
        this.f1877x = cVarX2.M2();
        this.f1862i = new SparseIntArray(4);
    }

    public void A(int i2) {
        if (this.f1869p) {
            int[] iArr = this.L;
            if (iArr[2] == i2 || i2 < 0 || i2 > 8) {
                return;
            }
            iArr[2] = i2;
            x(1, iArr[0], iArr[1], i2);
        }
    }

    public void B(int i2) {
        if (!this.f1869p || i2 < 0 || i2 > 4) {
            return;
        }
        int[] iArrCopyOf = Arrays.copyOf(S, 3);
        if (this.L[0] != i2) {
            if (i2 == 0) {
                this.L = iArrCopyOf;
            } else if (i2 == 1) {
                int[] iArrI = this.f1877x.i(18);
                if (iArrI == null || iArrI.length != 3) {
                    this.L = Arrays.copyOf(T, 3);
                } else {
                    this.L = iArrI;
                }
            } else if (i2 == 2) {
                int[] iArrI2 = this.f1877x.i(19);
                if (iArrI2 == null || iArrI2.length != 3) {
                    this.L = Arrays.copyOf(U, 3);
                } else {
                    this.L = iArrI2;
                }
            } else if (i2 == 3) {
                int[] iArrI3 = this.f1877x.i(20);
                if (iArrI3 == null || iArrI3.length != 3) {
                    this.L = Arrays.copyOf(V, 3);
                } else {
                    this.L = iArrI3;
                }
            } else if (i2 == 4) {
                int[] iArrI4 = this.f1877x.i(21);
                if (iArrI4 == null || iArrI4.length != 3) {
                    this.L = Arrays.copyOf(W, 3);
                } else {
                    this.L = iArrI4;
                }
            }
        }
        int[] iArr = this.L;
        x(1, iArr[0], iArr[1], iArr[2]);
    }

    public void C(int i2) {
        if (this.f1869p) {
            int[] iArr = this.J;
            if (iArr[1] == i2) {
                return;
            }
            int i3 = iArr[1];
            int i4 = iArr[0];
            if (i4 == 1 ? i2 < 250 || i2 > 4000 : i4 == 2 ? i2 < 20 || i2 > 250 : i4 == 3 ? i2 < 4000 || i2 > 20000 : i4 != 4 || i2 < 20 || i2 > 20000) {
                i2 = i3;
            }
            iArr[1] = i2;
            x(0, iArr[0], i2, iArr[2]);
        }
    }

    public void D(int i2) {
        if (this.f1869p) {
            int[] iArr = this.J;
            if (iArr[2] == i2 || i2 < 0 || i2 > 8) {
                return;
            }
            iArr[2] = i2;
            x(0, iArr[0], iArr[1], i2);
        }
    }

    public void E(int i2) {
        if ((this.f1869p || i2 >= 0) && i2 <= 4) {
            int[] iArrCopyOf = Arrays.copyOf(S, 3);
            if (this.J[0] != i2) {
                if (i2 == 0) {
                    this.J = iArrCopyOf;
                } else if (i2 == 1) {
                    int[] iArrI = this.f1877x.i(14);
                    if (iArrI == null || iArrI.length != 3) {
                        this.J = Arrays.copyOf(T, 3);
                    } else {
                        this.J = iArrI;
                    }
                } else if (i2 == 2) {
                    int[] iArrI2 = this.f1877x.i(15);
                    if (iArrI2 == null || iArrI2.length != 3) {
                        this.J = Arrays.copyOf(U, 3);
                    } else {
                        this.J = iArrI2;
                    }
                } else if (i2 == 3) {
                    int[] iArrI3 = this.f1877x.i(16);
                    if (iArrI3 == null || iArrI3.length != 3) {
                        this.J = Arrays.copyOf(V, 3);
                    } else {
                        this.J = iArrI3;
                    }
                } else if (i2 == 4) {
                    int[] iArrI4 = this.f1877x.i(17);
                    if (iArrI4 == null || iArrI4.length != 3) {
                        this.J = Arrays.copyOf(W, 3);
                    } else {
                        this.J = iArrI4;
                    }
                }
            }
            int[] iArr = this.J;
            x(0, iArr[0], iArr[1], iArr[2]);
        }
    }

    public void F(int i2) {
        if (this.I) {
            int[] iArr = this.N;
            if (iArr[1] == i2) {
                return;
            }
            int i3 = iArr[1];
            int i4 = iArr[0];
            if (i4 == 1 ? i2 < 250 || i2 > 4000 : i4 == 2 ? i2 < 20 || i2 > 250 : i4 == 3 ? i2 < 4000 || i2 > 20000 : i4 != 4 || i2 < 20 || i2 > 20000) {
                i2 = i3;
            }
            iArr[1] = i2;
            x(2, iArr[0], i2, iArr[2]);
        }
    }

    public void G(int i2) {
        if (this.I) {
            int[] iArr = this.N;
            if (iArr[2] == i2 || i2 < 0 || i2 > 8) {
                return;
            }
            iArr[2] = i2;
            x(2, iArr[0], iArr[1], i2);
        }
    }

    public void H(int i2) {
        if (!this.I || i2 < 0 || i2 > 4) {
            return;
        }
        int[] iArrCopyOf = Arrays.copyOf(S, 3);
        if (this.N[0] != i2) {
            int iM = m(2, i2);
            if (i2 == 0) {
                this.N = iArrCopyOf;
            } else if (i2 == 1) {
                int[] iArrI = this.f1877x.i(iM);
                if (iArrI == null || iArrI.length != 3) {
                    this.N = Arrays.copyOf(T, 3);
                } else {
                    this.N = iArrI;
                }
            } else if (i2 == 2) {
                int[] iArrI2 = this.f1877x.i(iM);
                if (iArrI2 == null || iArrI2.length != 3) {
                    this.N = Arrays.copyOf(U, 3);
                } else {
                    this.N = iArrI2;
                }
            } else if (i2 == 3) {
                int[] iArrI3 = this.f1877x.i(iM);
                if (iArrI3 == null || iArrI3.length != 3) {
                    this.N = Arrays.copyOf(V, 3);
                } else {
                    this.N = iArrI3;
                }
            } else if (i2 == 4) {
                int[] iArrI4 = this.f1877x.i(iM);
                if (iArrI4 == null || iArrI4.length != 3) {
                    this.N = Arrays.copyOf(W, 3);
                } else {
                    this.N = iArrI4;
                }
            }
        }
        int[] iArr = this.N;
        x(2, iArr[0], iArr[1], iArr[2]);
    }

    public void I(int i2, int i3) {
        if (!this.f1869p || i3 < 0 || i3 > 36) {
            return;
        }
        if (i2 != 0) {
            if (i2 == 3 || i2 == 5 || i2 == 7 || i2 == 9 || i2 == 20) {
                R(i2, i3);
                return;
            }
            return;
        }
        if (i3 != this.f1867n) {
            this.f1867n = i3;
            this.f1877x.q(0, i3);
            this.f1877x.e(0);
        }
        R(3, i3);
        R(7, i3);
        R(5, i3);
        R(9, i3);
        R(20, i3);
    }

    public final void J(int i2, int i3) {
        if (!this.f1869p || i3 < 0 || i3 > 10 || i3 == this.f1862i.get(i2, -1)) {
            return;
        }
        Q(i2, i3);
    }

    public final void K() {
        Log.e("HiFi", "00 setup  iis last: " + this.f1851c + " DataMain.sAppId: " + u0.b.D);
        e eVar = f.f18034b;
        if (eVar instanceof AudioDevice) {
            this.f1851c = ((AudioDevice) eVar).j0(u0.b.D) == 1;
            Log.e("HiFi", "01 setup  iis current: " + this.f1851c);
            T(14, !this.f1851c ? 1 : 0, 2);
            ToolsJni.cmd_251_Normal_Io_Set(12, !this.f1851c ? 1 : 0);
        }
        Log.e("HiFi", "02 setup  vol: " + this.f1868o);
        I(0, this.f1868o);
        SparseIntArray sparseIntArrayK = this.f1877x.k(12);
        Log.e("HiFi", "sparseIntArray: " + sparseIntArrayK.toString());
        Q(20, sparseIntArrayK.get(20, 10));
        Q(3, sparseIntArrayK.get(3, 10));
        Q(7, sparseIntArrayK.get(7, 10));
        Q(5, sparseIntArrayK.get(5, 10));
        Q(9, sparseIntArrayK.get(9, 10));
        E(this.f1877x.h(10, 0));
        B(this.f1877x.h(11, 0));
    }

    public int L(int i2, int i3) {
        return this.f1864k[i2][i3];
    }

    public void M(int i2, int i3) {
        if (this.I) {
            int i4 = -1;
            if (i2 != 5) {
                switch (i2) {
                    case 9:
                        i4 = 2;
                        break;
                    case 10:
                        i4 = 4;
                        break;
                    case 11:
                        i4 = 3;
                        break;
                }
            } else {
                i4 = 1;
            }
            if (i4 >= 0) {
                Log.e("HiFi", "updateAmpSpeaker speaker:" + i2 + " channel:" + i4 + " gain:" + i3);
                T(32, i4, i3);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001a  */
    /* JADX WARN: Code duplicated, block: B:16:0x0020  */
    /* JADX WARN: Code duplicated, block: B:17:0x0022  */
    /* JADX WARN: Code duplicated, block: B:23:0x0033  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:? A[RETURN, SYNTHETIC] */
    public final void N(int i2) {
        boolean z2;
        int i3;
        boolean z3;
        boolean z4;
        boolean z5 = this.f1869p;
        if (!z5 || this.G == i2) {
            if (z5 || this.G <= 0) {
                z2 = false;
            } else {
                this.G = 0;
            }
            if (z2) {
                int i4 = this.G;
                i3 = i4 & 1;
                if (i3 == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.H = z3;
                int i5 = (i4 >> 1) & 1;
                int i6 = (i4 >> 2) & 1;
                if (i3 != 1 && i5 == 1 && i6 == 1) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                Log.e("HiFi", "updateAmpStatus hasAmp:" + i3 + " ampInited:" + i5 + " ak7604Status:" + i6);
                this.f1876w.a3(11, 1, i3, i5, i6);
                if (!this.H && (!s0.t(this.C) || !s0.t(this.D) || !s0.t(this.E))) {
                    this.C = ProxyProperties.LOCAL_EXCL_LIST;
                    this.D = ProxyProperties.LOCAL_EXCL_LIST;
                    this.E = ProxyProperties.LOCAL_EXCL_LIST;
                    int[] iArr = this.f1871r;
                    iArr[0] = -1;
                    iArr[1] = -1;
                    int[] iArr2 = this.f1872s;
                    iArr2[0] = -1;
                    iArr2[1] = -1;
                }
                if (z4 != this.I) {
                    this.I = z4;
                    if (z4) {
                        n();
                    }
                }
            }
        }
        this.G = i2;
        z2 = true;
        if (z2) {
            int i7 = this.G;
            i3 = i7 & 1;
            if (i3 == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.H = z3;
            int i8 = (i7 >> 1) & 1;
            int i9 = (i7 >> 2) & 1;
            if (i3 != 1) {
                z4 = false;
            } else {
                z4 = false;
            }
            Log.e("HiFi", "updateAmpStatus hasAmp:" + i3 + " ampInited:" + i8 + " ak7604Status:" + i9);
            this.f1876w.a3(11, 1, i3, i8, i9);
            if (!this.H) {
                this.C = ProxyProperties.LOCAL_EXCL_LIST;
                this.D = ProxyProperties.LOCAL_EXCL_LIST;
                this.E = ProxyProperties.LOCAL_EXCL_LIST;
                int[] iArr3 = this.f1871r;
                iArr3[0] = -1;
                iArr3[1] = -1;
                int[] iArr4 = this.f1872s;
                iArr4[0] = -1;
                iArr4[1] = -1;
            }
            if (z4 != this.I) {
                this.I = z4;
                if (z4) {
                    n();
                }
            }
        }
    }

    public final void O(int i2) {
        if (this.F != i2) {
            this.F = i2;
            int i3 = i2 & 1;
            int i4 = (i2 >> 1) & 1;
            int i5 = (i2 >> 2) & 1;
            int i6 = (i2 >> 3) & 1;
            boolean z2 = ((i2 >> 4) & 1) == 1;
            if (i3 == 1) {
                if (z2 != this.f1869p) {
                    this.f1869p = z2;
                    if (z2 && this.f1850b) {
                        K();
                    }
                }
                if (!z2 && this.f1850b) {
                    T(1, 1);
                }
            }
            Log.e("HiFi", "updateHiFiStatus inited:" + i3 + " core1Status:" + i4 + " core2Status:" + i5 + " core3Status:" + i6 + " powerOn:" + z2 + " hiFiDevStatus:" + this.F);
            this.f1876w.a3(11, 0, i3, i4, i5, i6);
        }
    }

    public void P(int i2, int i3) {
        if (this.f1869p) {
            int i4 = -1;
            if (i2 == 3) {
                i4 = 1;
            } else if (i2 == 5) {
                i4 = 3;
            } else if (i2 == 7) {
                i4 = 2;
            } else if (i2 == 9) {
                i4 = 4;
            } else if (i2 == 20) {
                i4 = 5;
            }
            if (i4 >= 0) {
                Log.e("HiFi", "updateSpeaker speaker:" + i2 + " channel:" + i4 + " gain:" + i3);
                T(20, i4, i3);
            }
        }
    }

    public final void Q(int i2, int i3) {
        this.f1862i.put(i2, i3);
        this.f1877x.s(12, this.f1862i);
        this.f1877x.e(12);
        P(i2, L(Q[i3], this.f1870q ? 0 : this.f1867n));
        this.f1876w.a3(16, i2, i3);
    }

    public final void R(int i2, int i3) {
        int i4 = this.f1860g.get(i2, 0);
        int i5 = this.f1870q ? 0 : i3;
        int i6 = Q[this.f1862i.get(i2, 10)];
        if (i4 != i5) {
            this.f1860g.put(i2, i5);
            P(i2, L(i6, i5));
            this.f1876w.a3(1, i2, i3);
        }
    }

    public void S(int i2) {
        if (this.f1868o != i2) {
            this.f1868o = i2;
        }
        Log.e("HiFi", "volume() ======>>  isMute : " + this.f1870q + " value:" + i2 + " isHiFiPowerOn:" + this.f1869p);
        if (this.f1869p) {
            I(0, i2);
        }
    }

    public int T(int i2, int... iArr) {
        return this.f1878y.d(70, new int[]{i2}, iArr);
    }

    @Override // f0.a
    public void a() {
        u0.c.f17375b.d(this.P);
        T(1, 0);
        Log.e("HiFi", "=== >> deInit");
        int[] iArr = this.J;
        iArr[0] = -1;
        iArr[1] = 0;
        iArr[2] = 0;
        int[] iArr2 = this.L;
        iArr2[0] = -1;
        iArr2[1] = 0;
        iArr2[2] = 0;
        int[] iArr3 = this.N;
        iArr3[0] = -1;
        iArr3[1] = 0;
        iArr3[2] = 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // f0.a
    public boolean c(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 1) {
            if (i2 != 12) {
                switch (i2) {
                    case 14:
                        if (s0.h(iArr, 1)) {
                            v(iArr[0], iArr[1]);
                        }
                        break;
                    case 15:
                        if (s0.h(iArr, 0)) {
                            if (iArr[0] == 0) {
                                k();
                            } else if (iArr[0] == 1) {
                                j();
                            }
                        }
                        break;
                    case 16:
                        if (s0.h(iArr, 1)) {
                            J(iArr[0], iArr[1]);
                        }
                        break;
                    case 17:
                        if (s0.h(iArr, 2)) {
                            if (iArr[0] == 0) {
                                int i3 = iArr[1];
                                if (i3 == 0) {
                                    if (s0.h(iArr, 4)) {
                                        x(iArr[0], iArr[2], iArr[3], iArr[4]);
                                    }
                                } else if (i3 == 1) {
                                    E(iArr[2]);
                                } else if (i3 == 2) {
                                    C(iArr[2]);
                                } else if (i3 == 3) {
                                    D(iArr[2]);
                                }
                            } else if (iArr[0] == 1) {
                                int i4 = iArr[1];
                                if (i4 == 0) {
                                    if (s0.h(iArr, 4)) {
                                        x(iArr[0], iArr[2], iArr[3], iArr[4]);
                                    }
                                } else if (i4 == 1) {
                                    B(iArr[2]);
                                } else if (i4 == 2) {
                                    z(iArr[2]);
                                } else if (i4 == 3) {
                                    A(iArr[2]);
                                }
                            } else if (iArr[0] == 2) {
                                int i5 = iArr[1];
                                if (i5 == 0) {
                                    if (s0.h(iArr, 4)) {
                                        x(iArr[0], iArr[2], iArr[3], iArr[4]);
                                    }
                                } else if (i5 == 1) {
                                    H(iArr[2]);
                                } else if (i5 == 2) {
                                    F(iArr[2]);
                                } else if (i5 == 3) {
                                    G(iArr[2]);
                                }
                            }
                        }
                        break;
                }
            } else if (s0.h(iArr, 3)) {
                u(iArr[0], iArr[2], iArr[3]);
            }
        } else if (s0.h(iArr, 1)) {
            I(iArr[0], iArr[1]);
        }
        return false;
    }

    @Override // f0.a
    public boolean d() {
        Log.e("HiFi", "=== >> init");
        return true;
    }

    @Override // f0.a
    public void e() {
        s();
        if (this.F > 0) {
            t();
            r();
            if (this.H) {
                q();
            }
        }
    }

    @Override // f0.a
    public void f(boolean z2) {
        super.f(z2);
        if (z2 && f.K0 == 16) {
            z2 = false;
        }
        Log.e("HiFi", "mute() ======>>  isMute : " + this.f1870q + " toMute:" + z2);
        this.f1870q = z2;
        if (this.f1869p) {
            int[] iArr = new int[1];
            iArr[0] = z2 ? 255 : 0;
            T(3, iArr);
            S(this.f1867n);
        }
        if (this.I) {
            int i2 = this.f1863j.get(10, Integer.MIN_VALUE);
            if (i2 != Integer.MIN_VALUE) {
                w(10, i2, true);
            }
            int i3 = this.f1863j.get(11, Integer.MIN_VALUE);
            if (i3 != Integer.MIN_VALUE) {
                w(11, i3, true);
            }
            int i4 = this.f1863j.get(5, Integer.MIN_VALUE);
            if (i4 != Integer.MIN_VALUE) {
                w(5, i4, true);
            }
            int i5 = this.f1863j.get(9, Integer.MIN_VALUE);
            if (i5 != Integer.MIN_VALUE) {
                w(9, i5, true);
            }
        }
    }

    @Override // f0.a
    public void g() {
        this.f1876w.a3(0, this.f1853e);
        Log.e("HiFi", "onInitialize DataMain.sAppId: " + u0.b.D + " isHiFiPowerOn: " + this.f1869p);
        if (!this.f1869p) {
            T(1, 1);
        }
        this.P.d(Integer.valueOf(u0.b.D));
        u0.c.f17375b.a(this.P);
        u0.c.f17374a.a(new RunnableC0039b(), 0);
    }

    @Override // f0.a
    public boolean h(y.b bVar, int i2) {
        x xVarL2 = this.f1876w.L2();
        if (xVarL2 == null) {
            return false;
        }
        switch (i2) {
            case 1:
                xVarL2.G(bVar, i2, 0, this.f1867n);
                break;
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
            case 8:
                break;
            case 4:
            case 15:
            default:
                return false;
            case 9:
                xVarL2.G(bVar, i2, this.f1874u, this.f1875v);
                break;
            case 10:
                xVarL2.H(bVar, i2, new int[]{0}, null, new String[]{this.f1879z, this.A, this.B});
                xVarL2.H(bVar, i2, new int[]{1}, null, new String[]{this.C, this.D, this.E});
                break;
            case 11:
                int i3 = this.F;
                xVarL2.G(bVar, i2, 0, i3 & 1, (i3 >> 1) & 1, (i3 >> 2) & 1, (i3 >> 3) & 1);
                int i4 = this.G;
                xVarL2.G(bVar, i2, 1, i4 & 1, (i4 >> 1) & 1, (i4 >> 2) & 1);
                break;
            case 12:
                int[] iArr = this.f1871r;
                xVarL2.G(bVar, i2, 10, 3, iArr[0], iArr[1]);
                int[] iArr2 = this.f1872s;
                xVarL2.G(bVar, i2, 11, 3, iArr2[0], iArr2[1]);
                break;
            case 13:
                xVarL2.G(bVar, i2, this.f1873t);
                break;
            case 14:
                xVarL2.G(bVar, i2, 5, this.f1861h.get(5, 10));
                xVarL2.G(bVar, i2, 9, this.f1861h.get(9, 10));
                xVarL2.G(bVar, i2, 10, this.f1861h.get(10, 5));
                xVarL2.G(bVar, i2, 11, this.f1861h.get(11, 5));
                break;
            case 16:
                Log.e("HiFi", " SPEAKER_GAIN mSpeakersGain: " + this.f1862i);
                xVarL2.G(bVar, i2, 20, this.f1862i.get(20, 10));
                xVarL2.G(bVar, i2, 3, this.f1862i.get(3, 10));
                xVarL2.G(bVar, i2, 7, this.f1862i.get(7, 10));
                xVarL2.G(bVar, i2, 5, this.f1862i.get(5, 10));
                xVarL2.G(bVar, i2, 9, this.f1862i.get(9, 10));
                break;
            case 17:
                int[] iArr3 = this.K;
                xVarL2.G(bVar, i2, 0, 0, iArr3[0], iArr3[1], iArr3[2]);
                int[] iArr4 = this.M;
                xVarL2.G(bVar, i2, 1, 0, iArr4[0], iArr4[1], iArr4[2]);
                int[] iArr5 = this.O;
                xVarL2.G(bVar, i2, 2, 0, iArr5[0], iArr5[1], iArr5[2]);
                break;
        }
        return true;
    }

    @Override // f0.a
    public void i(int i2, int i3, int i4) {
        S(i2);
    }

    public void j() {
        this.f1877x.v(7);
        u(10, 10, 250);
        this.f1877x.v(8);
        u(11, 200, 5000);
        this.f1877x.v(5);
        v(10, 5);
        this.f1877x.v(6);
        v(11, 5);
        this.f1877x.v(26);
        v(5, 10);
        this.f1877x.v(27);
        v(9, 10);
        this.f1877x.v(13);
        this.f1877x.v(22);
        this.f1877x.v(23);
        this.f1877x.v(24);
        this.f1877x.v(25);
        int[] iArr = this.N;
        iArr[0] = -1;
        iArr[1] = 0;
        iArr[2] = 4;
        H(0);
    }

    public void k() {
        this.f1877x.v(12);
        J(20, 10);
        J(3, 10);
        J(7, 10);
        J(5, 10);
        J(9, 10);
        this.f1877x.v(10);
        this.f1877x.v(14);
        this.f1877x.v(15);
        this.f1877x.v(16);
        this.f1877x.v(17);
        int[] iArr = this.J;
        iArr[0] = -1;
        iArr[1] = 0;
        iArr[2] = 4;
        E(0);
        this.f1877x.v(11);
        this.f1877x.v(18);
        this.f1877x.v(19);
        this.f1877x.v(20);
        this.f1877x.v(21);
        int[] iArr2 = this.L;
        iArr2[0] = -1;
        iArr2[1] = 0;
        iArr2[2] = 4;
        B(0);
    }

    public final int l(int i2) {
        if (i2 == 0) {
            return 10;
        }
        if (i2 == 1) {
            return 11;
        }
        return i2 == 2 ? 13 : -1;
    }

    public final int m(int i2, int i3) {
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 3) {
                    if (i3 == 4) {
                        if (i2 == 0) {
                            return 17;
                        }
                        if (i2 == 1) {
                            return 21;
                        }
                        if (i2 == 2) {
                            return 25;
                        }
                    }
                } else {
                    if (i2 == 0) {
                        return 16;
                    }
                    if (i2 == 1) {
                        return 20;
                    }
                    if (i2 == 2) {
                        return 24;
                    }
                }
            } else {
                if (i2 == 0) {
                    return 15;
                }
                if (i2 == 1) {
                    return 19;
                }
                if (i2 == 2) {
                    return 23;
                }
            }
        } else {
            if (i2 == 0) {
                return 14;
            }
            if (i2 == 1) {
                return 18;
            }
            if (i2 == 2) {
                return 22;
            }
        }
        return -1;
    }

    public final void n() {
        if (this.I) {
            Log.e("HiFi", "======>>> initAmp");
            v(10, this.f1877x.h(5, 5));
            int[] iArrI = this.f1877x.i(7);
            if (iArrI == null) {
                iArrI = new int[]{10, 250};
            }
            u(10, iArrI[0], iArrI[1]);
            v(11, this.f1877x.h(6, 5));
            int[] iArrI2 = this.f1877x.i(8);
            if (iArrI2 == null) {
                iArrI2 = new int[]{200, 5000};
            }
            u(11, iArrI2[0], iArrI2[1]);
            v(5, this.f1877x.h(26, 10));
            v(9, this.f1877x.h(27, 10));
            H(this.f1877x.h(13, 0));
        }
    }

    public int o(int i2) {
        return this.f1878y.g(70, i2);
    }

    public int[] p(int i2, int i3) {
        return this.f1878y.e(i3, 70, false, i2);
    }

    public final void q() {
        boolean z2;
        if (s0.t(this.C)) {
            this.C = new String(s0.r(p(197, o(196))), StandardCharsets.US_ASCII);
            z2 = true;
        } else {
            z2 = false;
        }
        if (s0.t(this.D)) {
            this.D = new String(s0.r(p(199, o(198))), StandardCharsets.US_ASCII);
            z2 = true;
        }
        if (s0.t(this.E)) {
            this.E = new String(s0.r(p(201, o(200))), StandardCharsets.US_ASCII);
            z2 = true;
        }
        if (z2) {
            Log.e("HiFi", "ampHardVersion:" + this.C + "  ampSoftVersion:" + this.D + "  ampTimeVersion:" + this.E);
            this.f1876w.H0(10, new int[]{1}, null, new String[]{this.C, this.D, this.E});
        }
    }

    public final void r() {
        boolean z2;
        int[] iArrP = p(13, 2);
        if (s0.h(iArrP, 1)) {
            int i2 = iArrP[0] & 255;
            int i3 = iArrP[1] & 255;
            if (i2 != this.f1874u) {
                this.f1874u = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (i3 != this.f1875v) {
                this.f1875v = i3;
                z2 = true;
            }
            if (z2) {
                Log.e("HiFi", "mCurrentAudioFreq:" + this.f1874u + "  mCurrentMulNumber:" + this.f1875v);
                this.f1876w.a3(9, this.f1874u, this.f1875v);
            }
        }
    }

    public final void s() {
        int[] iArrP = p(160, 2);
        Log.e("HiFi", "DEVICE_STATUS : " + Arrays.toString(s0.s(iArrP)));
        if (s0.h(iArrP, 0)) {
            O(iArrP[0]);
        }
        if (s0.h(iArrP, 1)) {
            N(iArrP[1]);
        }
    }

    public final void t() {
        boolean z2;
        if (s0.t(this.f1879z)) {
            this.f1879z = new String(s0.r(p(133, o(132))), StandardCharsets.US_ASCII);
            z2 = true;
        } else {
            z2 = false;
        }
        if (s0.t(this.A)) {
            this.A = new String(s0.r(p(135, o(134))), StandardCharsets.US_ASCII);
            z2 = true;
        }
        if (s0.t(this.B)) {
            this.B = new String(s0.r(p(137, o(136))), StandardCharsets.US_ASCII);
            z2 = true;
        }
        if (z2) {
            Log.e("HiFi", "hardVersion:" + this.f1879z + "  softVersion:" + this.A + "  timeVersion:" + this.B);
            this.f1876w.H0(10, new int[]{0}, null, new String[]{this.f1879z, this.A, this.B});
        }
    }

    public void u(int i2, int i3, int i4) {
        if (this.I) {
            if (i2 != 10) {
                if (i2 == 11 && i4 > i3) {
                    int[] iArr = this.f1872s;
                    if (iArr[0] == i3 && iArr[1] == i4) {
                        return;
                    }
                    iArr[0] = i3;
                    iArr[1] = i4;
                    this.f1877x.r(8, iArr);
                    T(34, s0.c(i3, 0), s0.c(i3, 1), s0.c(i4, 0), s0.c(i4, 1));
                    this.f1876w.a3(12, i2, 3, i3, i4);
                    return;
                }
                return;
            }
            if (i4 > i3) {
                int[] iArr2 = this.f1871r;
                if (iArr2[0] == i3 && iArr2[1] == i4) {
                    return;
                }
                iArr2[0] = i3;
                iArr2[1] = i4;
                int iC = s0.c(i3, 0);
                int iC2 = s0.c(i3, 1);
                int iC3 = s0.c(i4, 0);
                int iC4 = s0.c(i4, 1);
                this.f1877x.r(7, this.f1871r);
                T(36, iC, iC2, iC3, iC4);
                this.f1876w.a3(12, i2, 3, i3, i4);
            }
        }
    }

    public void v(int i2, int i3) {
        if (i3 < 0 || i3 > 10) {
            return;
        }
        int i4 = -1;
        if (this.f1863j.get(i2, -1) != i3) {
            this.f1863j.put(i2, i3);
            if (i2 != 5) {
                switch (i2) {
                    case 9:
                        i4 = 27;
                        break;
                    case 10:
                        i4 = 5;
                        break;
                    case 11:
                        i4 = 6;
                        break;
                }
            } else {
                i4 = 26;
            }
            if (i4 >= 0) {
                this.f1877x.q(i4, i3);
                this.f1877x.e(i4);
            }
        }
        w(i2, i3, false);
    }

    public void w(int i2, int i3, boolean z2) {
        Log.e("HiFi", "setAmpVolume speaker:" + i2 + " volume:" + i3 + " isMute : " + this.f1870q);
        if (!this.I || i3 < 0 || i3 > 10) {
            return;
        }
        int i4 = this.f1861h.get(i2, -1);
        int i5 = this.f1870q ? 0 : i3;
        if (i2 != 5) {
            switch (i2) {
                case 10:
                case 11:
                    if (i4 != i3 || z2) {
                        this.f1861h.put(i2, i5);
                        M(i2, this.f1866m[i5]);
                        this.f1876w.a3(14, i2, i3);
                    }
                    break;
            }
        }
        if (i4 != i5 || z2) {
            this.f1861h.put(i2, i5);
            M(i2, this.f1865l[i5]);
            this.f1876w.a3(14, i2, i3);
        }
    }

    public void x(int i2, int i3, int i4, int i5) {
        int[] iArr;
        int i6;
        boolean z2;
        if (i2 == 0) {
            iArr = this.K;
            i6 = 24;
        } else if (i2 == 1) {
            iArr = this.M;
            i6 = 26;
        } else if (i2 != 2) {
            iArr = null;
            i6 = Integer.MIN_VALUE;
        } else {
            iArr = this.O;
            i6 = 28;
        }
        if (i6 == Integer.MIN_VALUE || iArr == null) {
            return;
        }
        if (iArr[0] != i3) {
            iArr[0] = i3;
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z3 = z2;
        if (i3 != 0) {
            if (iArr[1] != i4) {
                iArr[1] = i4;
                z2 = true;
            }
            if (iArr[2] != i5) {
                iArr[2] = i5;
                z2 = true;
            }
        } else {
            iArr[1] = 0;
            iArr[2] = 0;
        }
        if (z2) {
            int iC = s0.c(iArr[1], 0);
            int iC2 = s0.c(iArr[1], 1);
            Log.e("HiFi", "setFilter reg:" + i6 + " mode:" + iArr[0] + " freq:" + iArr[1] + " gain:" + iArr[2]);
            T(i6, iArr[0], iC, iC2, (iArr[2] - 4) + 100);
            this.f1876w.a3(17, i2, 0, iArr[0], iArr[1], iArr[2]);
            int iM = m(i2, i3);
            this.f1877x.r(iM, iArr);
            this.f1877x.e(iM);
            if (z3) {
                int iL = l(i2);
                this.f1877x.q(iL, i3);
                this.f1877x.e(iL);
            }
        }
    }

    public void y(boolean z2) {
        Log.e("HiFi", "00 setOutputIIS  iis last: " + this.f1851c + " ==>>> iis :" + z2);
        if (this.f1851c != z2) {
            Log.e("HiFi", "01 setOutputIIS  iis last: " + this.f1851c + " ==>>> iis :" + z2);
            this.f1851c = z2;
            T(14, !z2 ? 1 : 0, 2);
            ToolsJni.cmd_251_Normal_Io_Set(12, !this.f1851c ? 1 : 0);
            a.f.f().setParameters(this.f1851c ? "extdsp_play=1" : "extdsp_play=0");
        }
    }

    public void z(int i2) {
        if (this.f1869p) {
            int[] iArr = this.L;
            if (iArr[1] == i2) {
                return;
            }
            int i3 = iArr[1];
            int i4 = iArr[0];
            if (i4 == 1 ? i2 < 250 || i2 > 4000 : i4 == 2 ? i2 < 20 || i2 > 250 : i4 == 3 ? i2 < 4000 || i2 > 20000 : i4 != 4 || i2 < 20 || i2 > 20000) {
                i2 = i3;
            }
            iArr[1] = i2;
            x(1, iArr[0], i2, iArr[2]);
        }
    }
}
