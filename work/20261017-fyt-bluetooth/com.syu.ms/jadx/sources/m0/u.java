package m0;

import android.net.dhcp.DhcpPacket;
import android.util.Log;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class u extends m0.a implements o1.q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f13421a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13422b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13423c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13424d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13425e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13426f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13427g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f13428h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f13429i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f13430j;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f13431a = {-52, DhcpPacket.DHCP_LEASE_TIME, 1, -32, 1, -31};

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u.this.f13426f != 0) {
                d.i(this);
                return;
            }
            Log.d("CAN", "reqUpgradeMode");
            u.Q2(u.this);
            if (u.this.f13427g == 4) {
                u.this.f13427g = 0;
                d.g();
            } else {
                d.m(this.f13431a);
            }
            o1.k.a().postDelayed(this, 1000L);
        }
    }

    public u() {
        byte[] bArr = new byte[135];
        this.f13428h = bArr;
        bArr[0] = -52;
        bArr[1] = DhcpPacket.DHCP_LEASE_TIME;
        bArr[2] = -126;
        bArr[3] = -29;
        this.f13430j = new a();
    }

    public static /* synthetic */ int Q2(u uVar) {
        int i2 = uVar.f13427g;
        uVar.f13427g = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        this.f13426f = -1;
        b.f13172e = 0;
    }

    @Override // m0.a, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public void R2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == -32) {
            if (this.f13426f == 0) {
                this.f13426f = 1;
                d.m(new byte[]{-52, DhcpPacket.DHCP_LEASE_TIME, 1, -31, 1, -30});
                Log.d("CAN", "UP STEP 1");
                d.j(2, 1);
                return;
            }
            return;
        }
        if (b2 == -18) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("VERSION = ");
                int i4 = i2 + 1;
                int i5 = i3 - 1;
                sb.append(new String(bArr, i4, i5, "UTF-8"));
                Log.d("CAN", sb.toString());
                if (new String(bArr, i4, i5, "UTF-8").contains("ERROR")) {
                    if (b.f13172e == 1) {
                        d.j(2, 4);
                        b.f13172e = 0;
                    }
                } else if (b.f13172e == 1) {
                    d.j(2, 3);
                }
                return;
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (b2 == -30) {
            if (this.f13426f == 1) {
                this.f13426f = 2;
                d.m(new byte[]{-52, DhcpPacket.DHCP_LEASE_TIME, 1, -30, -1, -31});
                Log.d("CAN", "UP STEP 2");
                d.j(2, 1);
                return;
            }
            return;
        }
        if (b2 == -29 && this.f13426f >= 2) {
            int i6 = i2 + 1;
            int i7 = i2 + 2;
            int i8 = ((bArr[i6] << 8) & 65280) | (bArr[i7] & 255);
            if (i8 < 400) {
                byte[] bArr2 = this.f13428h;
                bArr2[4] = bArr[i6];
                bArr2[5] = bArr[i7];
                System.arraycopy(this.f13429i, i8 * 128, bArr2, 6, 128);
                byte b3 = 0;
                for (int i9 = 2; i9 < 134; i9++) {
                    b3 = (byte) (b3 + this.f13428h[i9]);
                }
                byte[] bArr3 = this.f13428h;
                bArr3[134] = (byte) (b3 - 1);
                d.m(bArr3);
                int i10 = i8 + 1;
                Log.d("CAN", String.format("%d/%d", Integer.valueOf(i10), 400));
                if (i8 == 399) {
                    Log.d("CAN", "UP FINISH");
                }
                d.j(2, 2);
                d.j(1, 100);
                d.j(0, (i10 * 100) / 400);
            }
        }
    }

    public final void S2(String str) throws Throwable {
        if (str == null) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    int iAvailable = fileInputStream2.available();
                    if (iAvailable != 0 && iAvailable >= 51200) {
                        byte[] bArr = new byte[iAvailable];
                        this.f13429i = bArr;
                        fileInputStream2.read(bArr);
                        try {
                            fileInputStream2.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        Log.d("CAN", "requestUpdate");
                        b.f13172e = 1;
                        d.g();
                        this.f13427g = 0;
                        this.f13426f = 0;
                        d.b(this.f13430j);
                        return;
                    }
                    Log.d("CAN", "size error");
                    d.j(2, 5);
                    try {
                        fileInputStream2.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                } catch (Exception e4) {
                    e = e4;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    Log.d("CAN", e.getMessage());
                    d.j(2, 4);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e7) {
                e = e7;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // m0.a, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        if (i2 == 0 && M2(strArr, 1)) {
            S2(strArr[0]);
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        z.a.f18173x.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13423c + bArr.length > 1024) {
            this.f13423c = 0;
            this.f13424d = 0;
            this.f13425e = 0;
        }
        System.arraycopy(bArr, 0, this.f13421a, this.f13423c, bArr.length);
        int length = this.f13423c + bArr.length;
        this.f13423c = length;
        int i5 = this.f13425e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13421a[2];
            int i6 = 3;
            while (true) {
                i4 = this.f13425e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13421a[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 - 1);
            byte[] bArr2 = this.f13421a;
            if (b3 == bArr2[i4]) {
                R2(bArr2, 3, i4 - 3);
                this.f13424d = this.f13425e + 1;
            } else {
                this.f13424d = 2;
            }
            this.f13425e = 0;
        }
        int i7 = this.f13423c - 2;
        while (true) {
            i2 = this.f13424d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13421a;
            if (bArr3[i2] == -52 && bArr3[i2 + 1] == 51) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f13425e = i8;
                int i9 = i8 + i2 + 4;
                this.f13425e = i9;
                if (i9 >= this.f13423c) {
                    this.f13425e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 2];
                int i10 = i2 + 3;
                while (true) {
                    i3 = this.f13425e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f13421a[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 - 1);
                byte[] bArr4 = this.f13421a;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f13424d;
                    R2(bArr4, i11 + 3, (i3 - i11) - 3);
                    this.f13424d = this.f13425e;
                } else {
                    this.f13424d++;
                }
                this.f13425e = 0;
            }
            this.f13424d++;
        }
        if (i2 != 0) {
            int i12 = this.f13423c - i2;
            this.f13423c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13421a;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13424d = 0;
        }
    }
}
