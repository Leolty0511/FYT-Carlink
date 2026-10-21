package c1;

import android.app.ActivityManager;
import android.content.Intent;
import android.os.RemoteException;
import android.util.Log;
import app.App;
import java.util.List;
import k0.nt;
import o1.l0;
import o1.q;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class n extends p implements q {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f570j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f571k = 5;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f572l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f573b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f574c = new int[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f575d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f576e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f577f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public l0 f578g = new l0();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Runnable f579h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f580i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.Q2();
            if (n.f571k < 4) {
                n.this.Y2(113, n.f571k);
                a.f.p().s(" ** sendCmd(0x71,mDelay) TICK  mDelay= " + n.f571k);
                if (n.f571k == 0) {
                    int unused = n.f571k = 5;
                }
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            c1.b.i(7, n.f572l);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().u("11111  mReSend  standby_time = " + n.f570j);
            if (n.f570j != 0) {
                n.U2();
                byte[] bArr = {85, -86, 63, 0, 0, 0, 0, 63};
                z.a.f18155f.i(bArr);
                o1.j.b(o1.l.a(), n.this.f580i, 1000L);
                a.f.p().x("2222  mReSend  standby_time = " + n.f570j + "发送 数据 ：", bArr, 0, 8);
            }
            if (n.f570j > 10) {
                int unused = n.f570j = 0;
                c1.b.i(6, 1);
            }
        }
    }

    public static /* synthetic */ int Q2() {
        int i2 = f571k;
        f571k = i2 - 1;
        return i2;
    }

    public static /* synthetic */ int U2() {
        int i2 = f570j;
        f570j = i2 + 1;
        return i2;
    }

    public static void V2(int i2) {
        Log.d("LG", "controlwindowscontrolwindows");
        if (i2 == 1) {
            Z2(1);
            return;
        }
        if (i2 == 2) {
            Z2(2);
            return;
        }
        if (i2 == 3) {
            Z2(3);
            return;
        }
        if (i2 == 4) {
            Z2(4);
            return;
        }
        if (i2 == 5) {
            Z2(5);
            return;
        }
        if (i2 == 6) {
            Z2(6);
            return;
        }
        if (i2 == 7) {
            Z2(7);
            return;
        }
        if (i2 == 8) {
            Z2(8);
            return;
        }
        if (i2 == 9) {
            Z2(9);
            return;
        }
        if (i2 == 10) {
            Z2(10);
        } else if (i2 == 11) {
            Z2(15);
        } else if (i2 == 12) {
            Z2(16);
        }
    }

    public static String W2() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void Z2(int i2) {
        byte[] bArr = new byte[6];
        bArr[0] = 46;
        bArr[1] = -103;
        bArr[2] = 2;
        bArr[3] = (byte) i2;
        bArr[4] = -1;
        for (int i3 = 1; i3 < 6; i3++) {
            bArr[5] = (byte) (bArr[5] + (bArr[i3] & 255));
        }
        Log.d("LG", "sendCmdobdsendCmdobd =");
        z.a.f18155f.i(bArr);
    }

    public static void a3(int i2) {
        f572l = i2;
        a.f.p().v(" 333    动力澎湃    setMode = " + i2);
        try {
            if (!W2().equals("com.syu.driver.DriverActivity")) {
                Intent intent = new Intent();
                intent.setClassName("com.syu.driver", "com.syu.driver.DriverActivity");
                intent.addCategory(Intent.CATEGORY_DEFAULT);
                intent.setFlags(268435456);
                App.c().startActivity(intent);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        o1.k.a().postDelayed(new b(), 1000L);
    }

    @Override // c1.p
    public void L2() {
        try {
            Z0(0, null, null, null);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        z.a.f18165p.e(null);
    }

    public final void X2(byte[] bArr, int i2, int i3) {
        this.f578g.a();
        c1.b.i(1, bArr[i2]);
        c1.b.i(2, bArr[i2 + 1]);
        c1.b.i(3, bArr[i2 + 2]);
        c1.b.i(4, bArr[i2 + 3]);
        c1.b.i(5, bArr[i2 + 4]);
        c1.b.i(6, 0);
        a.f.p().x("  服务发送  Mode Data :", bArr, i2, i3);
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 1 || i2 > 7) {
            return;
        }
        x.v(bVar, i2, nt.f8645g[i2]);
    }

    public final void Y2(int... iArr) {
        int i2;
        int length = iArr.length + 3;
        byte[] bArr = new byte[length];
        bArr[0] = 85;
        bArr[1] = -86;
        int i3 = 0;
        while (true) {
            if (i3 >= iArr.length) {
                break;
            }
            bArr[2 + i3] = (byte) iArr[i3];
            i3++;
        }
        int i4 = length - 1;
        bArr[i4] = 0;
        for (i2 = 2; i2 < i4; i2++) {
            bArr[i4] = (byte) (bArr[i4] + bArr[i2]);
        }
        Log.d("dlpp", " server send dlpp cmds = " + length);
        z.a.f18155f.i(bArr);
        if (iArr[0] == 63) {
            f570j = 1;
            o1.j.e(o1.l.a(), this.f580i);
            o1.j.b(o1.l.a(), this.f580i, 1000L);
            a.f.p().x("00000  sendCmd  standby_time = " + f570j + "发送 数据 ：", bArr, 0, length);
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Log.d("dlpp", "CMD   cmdCode" + i2);
        if (i2 != 1 || iArr == null) {
            return;
        }
        Y2(iArr);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        a.f.p().x("服务收到盒子数据   **  ", bArr, 0, bArr.length);
        Log.d("dlpp", " server recv dlpp data = " + bArr.length);
        if (this.f575d + bArr.length > 1024) {
            this.f575d = 0;
            this.f576e = 0;
            this.f577f = 0;
        }
        System.arraycopy(bArr, 0, this.f573b, this.f575d, bArr.length);
        int length = this.f575d + bArr.length;
        this.f575d = length;
        int i4 = this.f577f;
        if (i4 != 0) {
            if (i4 >= length) {
                return;
            }
            byte b2 = this.f573b[0];
            int i5 = 1;
            while (true) {
                i3 = this.f577f;
                if (i5 >= i3) {
                    break;
                }
                b2 = (byte) (b2 + this.f573b[i5]);
                i5++;
            }
            byte[] bArr2 = this.f573b;
            if (b2 == bArr2[i3]) {
                X2(bArr2, 4, i3 - 4);
                this.f576e = this.f577f + 1;
            } else {
                this.f576e = 3;
            }
            this.f577f = 0;
        }
        int i6 = this.f575d - 3;
        while (true) {
            i2 = this.f576e;
            if (i2 >= i6) {
                break;
            }
            byte[] bArr3 = this.f573b;
            if (bArr3[i2] == 85 && bArr3[i2 + 1] == -86) {
                this.f577f = 8;
                int i7 = 8 + (i2 - 1);
                this.f577f = i7;
                if (i7 >= this.f575d) {
                    this.f577f = i7 - i2;
                    break;
                }
                byte b3 = bArr3[i2 + 2];
                for (int i8 = i2 + 3; i8 < this.f577f; i8++) {
                    b3 = (byte) (b3 + this.f573b[i8]);
                }
                a.f.p().s("checksum :" + ((int) b3) + " ,  DATA[mChecksumIndex] : " + ((int) this.f573b[this.f577f]));
                byte[] bArr4 = this.f573b;
                int i9 = this.f577f;
                if (b3 == bArr4[i9]) {
                    int i10 = this.f576e;
                    X2(bArr4, i10 + 2, (i9 - i10) - 3);
                    this.f576e = this.f577f;
                    if (f570j > 0) {
                        f570j = 0;
                    }
                } else {
                    this.f576e += 2;
                }
                this.f577f = 0;
            }
            this.f576e++;
        }
        if (i2 != 0) {
            int i11 = this.f575d - i2;
            this.f575d = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f573b;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f576e = 0;
        }
    }
}
