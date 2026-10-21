package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class d2 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4310c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4311d = {new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{48, 18}, new int[]{49, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4312e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4313f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f4314g = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 4, 144, 48);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        qt.x(this.f4314g);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 16) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 7];
            if (nt.f8637c == 1) {
                if (b3 == 0) {
                    qt.y0(27, -2);
                    qt.y0(28, -2);
                } else if (b3 == -1) {
                    qt.y0(27, -3);
                    qt.y0(28, -3);
                } else {
                    int i4 = ((b3 & 255) * 10) + (b6 & DhcpPacket.DHCP_DOMAIN_NAME);
                    qt.y0(27, i4);
                    qt.y0(28, i4);
                }
            } else if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                if (b3 == 0) {
                    qt.y0(28, -2);
                } else if (b3 == -1) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, ((b3 & 255) * 10) + ((b6 >> 4) & 15));
                }
                if (b7 == 0) {
                    qt.y0(27, -2);
                } else if (b7 == -1) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, ((b7 & 255) * 10) + (b6 & DhcpPacket.DHCP_DOMAIN_NAME));
                }
            } else {
                if (b3 == 0) {
                    qt.y0(27, -2);
                } else if (b3 == -1) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, ((b3 & 255) * 10) + ((b6 >> 4) & 15));
                }
                if (b7 == 0) {
                    qt.y0(28, -2);
                } else if (b7 == -1) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, ((b7 & 255) * 10) + (b6 & DhcpPacket.DHCP_DOMAIN_NAME));
                }
            }
            qt.y0(12, (b4 >> 7) & 1);
            qt.y0(65, (b4 >> 6) & 1);
            qt.y0(16, (b4 >> 5) & 1);
            qt.y0(20, (b4 >> 4) & 1);
            qt.y0(19, (b4 >> 3) & 1);
            qt.y0(13, (b4 >> 2) & 1);
            qt.y0(52, (b4 >> 1) & 1);
            qt.y0(11, (b4 >> 0) & 1);
            qt.y0(14, (b5 >> 5) & 1);
            qt.y0(21, (b5 >> 0) & 15);
            return;
        }
        if (b2 == 48) {
            qt.l(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 5000);
            return;
        }
        if (b2 == 50) {
            if (nt.a()) {
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                int i5 = b8 & 255;
                this.f4312e = i5;
                int i6 = b9 & 255;
                this.f4313f = i6;
                u0.d.R2(l0.e0.o(bArr[i2 + 4], i5, i6));
                u0.d.S2(l0.e0.o(bArr[i2 + 5], this.f4312e, this.f4313f));
                u0.d.T2(l0.e0.o(bArr[i2 + 6], this.f4312e, this.f4313f));
                u0.d.U2(l0.e0.o(bArr[i2 + 7], this.f4312e, this.f4313f));
                return;
            }
            return;
        }
        if (b2 != 18) {
            if (b2 != 19) {
                return;
            }
            byte b10 = bArr[i2 + 2];
            byte b11 = bArr[i2 + 4];
            int i7 = bArr[i2 + 5] & DhcpPacket.DHCP_DOMAIN_NAME;
            if ((b11 & 128) == 0) {
                if (b10 == -2) {
                    qt.y0(27, -1);
                } else if (b10 == -1) {
                    qt.y0(27, -3);
                } else if (b10 != 0) {
                    qt.y0(27, ((b10 & 255) * 10) + i7);
                } else {
                    qt.y0(27, -2);
                }
            }
            byte b12 = bArr[i2 + 3];
            qt.y0(12, (b12 >> 7) & 1);
            qt.y0(65, (b12 >> 6) & 1);
            qt.y0(16, (b12 >> 5) & 1);
            qt.y0(20, (b12 >> 4) & 1);
            qt.y0(19, (b12 >> 3) & 1);
            qt.y0(13, (b12 >> 2) & 1);
            qt.y0(52, (b12 >> 1) & 1);
            qt.y0(11, (b12 >> 0) & 1);
            qt.y0(21, b11 & DhcpPacket.DHCP_DOMAIN_NAME);
            return;
        }
        if (nt.a()) {
            int i8 = bArr[i2 + 2] & 255;
            this.f4310c = i8;
            int i9 = 0;
            while (true) {
                iArr = this.f4311d;
                if (i9 >= iArr.length) {
                    break;
                }
                int i10 = this.f4310c;
                if (i10 == iArr[i9][0]) {
                    if (i10 == 0) {
                        break;
                    }
                    this.f4309b = i9;
                    break;
                }
                i9++;
            }
            if (i8 != 0) {
                if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 0);
                }
            } else {
                int i11 = this.f4309b;
                if (i11 < iArr.length && i11 != 255) {
                    l0.b0.l0(iArr[i11][1], 1);
                }
                this.f4309b = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.o0(this.f4314g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
