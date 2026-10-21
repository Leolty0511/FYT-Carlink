package v0;

import android.hardware.camera2.utils.CameraBinderDecorator;
import android.net.dhcp.DhcpPacket;
import o1.b0;
import o1.q;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class j extends m implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f17757a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17758b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17759c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17760d = 0;

    public final void M2(byte[] bArr, int i2, int i3) {
        b0.h(bArr, i2, i3);
        switch (bArr[i2]) {
            case -96:
                byte b2 = bArr[i2 + 1];
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 4];
                d.c(0, (b2 >> 4) & 15);
                d.c(1, b2 & DhcpPacket.DHCP_DOMAIN_NAME);
                d.c(2, (b3 >> 4) & 15);
                d.c(3, b3 & DhcpPacket.DHCP_DOMAIN_NAME);
                d.c(4, (b4 >> 4) & 15);
                d.c(5, b4 & DhcpPacket.DHCP_DOMAIN_NAME);
                d.c(6, (b5 >> 4) & 15);
                d.c(7, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
            case CameraBinderDecorator.EOPNOTSUPP /* -95 */:
                byte b6 = bArr[i2 + 1];
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                byte b9 = bArr[i2 + 4];
                d.c(8, (b6 >> 4) & 15);
                d.c(9, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
                d.c(10, (b7 >> 4) & 15);
                d.c(11, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
                d.c(12, (b8 >> 4) & 15);
                d.c(13, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
                d.c(14, (b9 >> 4) & 15);
                d.c(15, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
            case -94:
                d.c(16, bArr[i2 + 1] & 255);
                break;
        }
    }

    public byte[] N2(byte... bArr) {
        byte[] bArr2 = new byte[bArr.length + 4];
        bArr2[0] = 90;
        bArr2[1] = -91;
        bArr2[2] = (byte) bArr.length;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr2[i2 + 3] = bArr[i2];
        }
        return bArr2;
    }

    public synchronized void O2(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length > 2) {
                int length = bArr.length - 1;
                byte b2 = bArr[0];
                for (int i2 = 1; i2 <= length; i2++) {
                    b2 = (byte) (b2 + bArr[i2]);
                }
                bArr[length] = (byte) (b2 & 255);
                z.a.f18156g.i(bArr);
            }
        }
    }

    @Override // v0.m, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 > 16) {
            return;
        }
        x.v(bVar, i2, b.f17731f[i2]);
    }

    @Override // v0.m, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            O2(N2(-96, 0));
        } else if (i2 == 1) {
            O2(N2(-95, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3]));
        } else {
            if (i2 != 2) {
                return;
            }
            O2(N2(-94, 0, 0, 0, 0));
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            try {
                Thread.sleep(100L);
                return;
            } catch (InterruptedException e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (this.f17758b + bArr.length > 1024) {
            this.f17758b = 0;
            this.f17759c = 0;
            this.f17760d = 0;
        }
        System.arraycopy(bArr, 0, this.f17757a, this.f17758b, bArr.length);
        int length = this.f17758b + bArr.length;
        this.f17758b = length;
        int i5 = this.f17760d;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f17757a[2];
            int i6 = 3;
            while (true) {
                i4 = this.f17760d;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f17757a[i6]);
                i6++;
            }
            byte[] bArr2 = this.f17757a;
            if (b2 == bArr2[i4]) {
                M2(bArr2, 3, i4 - 3);
                this.f17759c = this.f17760d + 1;
            } else {
                this.f17759c = 2;
            }
            this.f17760d = 0;
        }
        int i7 = this.f17758b - 2;
        while (true) {
            i2 = this.f17759c;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f17757a;
            if (bArr3[i2] == 90 && bArr3[i2 + 1] == -91) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f17760d = i8;
                int i9 = i8 + i2 + 3;
                this.f17760d = i9;
                if (i9 >= this.f17758b) {
                    this.f17760d = i9 - i2;
                    break;
                }
                byte b3 = bArr3[i2 + 2];
                int i10 = i2 + 3;
                while (true) {
                    i3 = this.f17760d;
                    if (i10 >= i3) {
                        break;
                    }
                    b3 = (byte) (b3 + this.f17757a[i10]);
                    i10++;
                }
                byte[] bArr4 = this.f17757a;
                if (b3 == bArr4[i3]) {
                    int i11 = this.f17759c;
                    M2(bArr4, i11 + 3, (i3 - i11) - 3);
                    this.f17759c = this.f17760d;
                } else {
                    this.f17759c++;
                }
                this.f17760d = 0;
            }
            this.f17759c++;
        }
        if (i2 != 0) {
            int i12 = this.f17758b - i2;
            this.f17758b = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f17757a;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f17759c = 0;
        }
    }

    public String toString() {
        return "OBD_0002_GPSHeat";
    }
}
