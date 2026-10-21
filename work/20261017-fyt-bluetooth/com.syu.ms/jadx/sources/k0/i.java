package k0;

import android.net.dhcp.DhcpPacket;

/* JADX INFO: loaded from: classes2.dex */
public class i extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6193c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6194d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{10, 5}, new int[]{13, 32}, new int[]{14, 33}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f6195e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6196f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i iVar = i.this;
            byte b2 = (byte) (iVar.f6195e + 1);
            iVar.f6195e = b2;
            if (b2 > 5) {
                l0.b0.o0(iVar.f6196f);
                i.this.f6195e = (byte) 0;
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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 114) {
            if (nt.a()) {
                this.f6193c = bArr[i2 + 4] & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f6194d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f6193c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f6192b = i4;
                        break;
                    }
                    i4++;
                }
                if (this.f6193c != 0) {
                    if (i4 >= iArr.length || (b2 = this.f6195e) != 0) {
                        return;
                    }
                    this.f6195e = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i4][1], 0);
                    l0.b0.a(this.f6196f);
                    return;
                }
                int i6 = this.f6192b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                    l0.b0.o0(this.f6196f);
                    this.f6195e = (byte) 0;
                }
                this.f6192b = 255;
                return;
            }
            return;
        }
        if (b3 != 115) {
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        qt.y0(10, (b4 >> 6) & 1);
        int i7 = (b4 >> 4) & 3;
        if (i7 == 3) {
            qt.y0(12, 2);
        } else {
            int[] iArr2 = new int[1];
            iArr2[0] = i7 == 0 ? 0 : 1;
            qt.y0(12, iArr2);
        }
        qt.y0(13, (b4 >> 3) & 1);
        qt.y0(11, (b5 >> 6) & 3);
        qt.y0(16, (b5 >> 5) & 1);
        qt.y0(65, (b5 >> 4) & 1);
        int i8 = i2 + 4;
        byte b6 = bArr[i8];
        if (b6 == -1) {
            qt.y0(27, -3);
        } else if (b6 == 0) {
            qt.y0(27, -1);
        } else if (b6 != 1) {
            qt.y0(27, ((bArr[i8] & 127) * 10) + (((bArr[i8] >> 7) & 1) * 5));
        } else {
            qt.y0(27, -2);
        }
        byte b7 = bArr[i2 + 6];
        qt.y0(20, (b7 >> 6) & 1);
        qt.y0(19, (b7 >> 5) & 1);
        qt.y0(18, (b7 >> 4) & 1);
        qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
        if (nt.a()) {
            int i9 = bArr[i2 + 8] & 127;
            int i10 = i9 >= 40 ? ((i9 - 40) * 10) + 1000 : 1000 - ((40 - i9) * 10);
            if (i10 > 600) {
                u0.d.A3(i10);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
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
