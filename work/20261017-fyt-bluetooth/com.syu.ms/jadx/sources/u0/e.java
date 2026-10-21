package u0;

import android.graphics.Paint;
import o1.b0;
import o1.f0;
import o1.k;
import o1.p0;
import o1.q;
import z.j;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static byte[] f17419a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int[] f17420b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f17421c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f17422d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f17423e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static f0 f17424f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f17425g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final q f17426h = new b();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f17427a;

        public a(int i2) {
            this.f17427a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (e.class) {
                if (e.f17422d == 1) {
                    byte[] unused = e.f17419a = null;
                    int[] unused2 = e.f17420b = null;
                    if (e.f17425g) {
                        a.f.p().s("请求升级超时，升级失败，MCU未进入升级模式");
                    }
                    d.I3(48, 7);
                } else if (e.f17422d > 1) {
                    e.b();
                    if (e.f17425g) {
                        a.f.p().s("请求进入升级模式 sTryReqTick = " + e.f17422d);
                    }
                    d.I3(48, 4);
                    int i2 = this.f17427a;
                    if (i2 == 0) {
                        e.h(235, 0, 32);
                    } else if (i2 == 1) {
                        e.h(235, 0, 33);
                    }
                    k.a().postDelayed(this, 1000L);
                }
            }
        }
    }

    public class b extends j {
        @Override // z.j
        public void a(byte[] bArr, int i2, int i3) {
            if (e.f17425g) {
                a.f.p().s("TO ARM" + b0.d(bArr, i2, i3));
            }
            if (bArr[i2] != -22) {
                return;
            }
            e.j(bArr, i2 + 1, i3 - 1);
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            d.I3(48, 6);
        }
    }

    public static /* synthetic */ int b() {
        int i2 = f17422d - 1;
        f17422d = i2;
        return i2;
    }

    public static void h(int... iArr) {
        byte[] bArrB = z.k.b(iArr);
        if (bArrB != null) {
            z.a.f18151b.i(bArrB);
            if (f17425g) {
                a.f.p().s("TO MCU" + b0.d(bArrB, 0, bArrB.length));
            }
        }
    }

    public static synchronized void i(String str, int i2) {
        if (f17419a != null) {
            return;
        }
        byte[] bArrF = p0.f(str);
        if (bArrF == null) {
            if (f17425g) {
                a.f.p().s("读取文件错误");
            }
            d.I3(48, 0);
            return;
        }
        byte b2 = 0;
        for (byte b3 : bArrF) {
            b2 = (byte) (b2 + b3);
        }
        if (b2 != -1) {
            if (f17425g) {
                a.f.p().s("客户信息错误");
            }
            d.I3(48, 2);
            return;
        }
        f17419a = bArrF;
        f17420b = new int[((bArrF.length - 1) + 255) >> 8];
        f17421c = 0;
        f17422d = 11;
        if (f17425g) {
            a.f.p().s("请求进入升级模式 sTryReqTick = " + f17422d);
        }
        d.I3(48, 4);
        if (i2 == 0) {
            h(235, 0, 32);
        } else if (i2 == 1) {
            h(235, 0, 33);
        }
        z.a.f18161l.a(true);
        m0.b.f13172e = 1;
        a.i.a0(100L);
        d.I3(48, 4);
        f0 f0Var = new f0();
        f17424f = f0Var;
        f0Var.d(z.a.f18151b, f17426h);
        k.a().postDelayed(new a(i2), 1000L);
    }

    public static void j(byte[] bArr, int i2, int i3) {
        synchronized (e.class) {
            f17422d = 0;
        }
        int i4 = i2 + 1;
        int iC = p0.c(bArr[i2], bArr[i4]);
        byte[] bArr2 = f17419a;
        if (iC <= 61440) {
            int i5 = iC << 8;
            if (bArr2 != null && i5 < bArr2.length - 1) {
                int length = (bArr2.length - 1) - i5;
                if (length > 256) {
                    length = 256;
                }
                int[] iArr = new int[261];
                iArr[0] = 236;
                iArr[1] = bArr[i2];
                iArr[2] = bArr[i4];
                int[] iArr2 = f17420b;
                iArr[3] = (iArr2.length >> 8) & 255;
                iArr[4] = iArr2.length & 255;
                for (int i6 = 0; i6 < length; i6++) {
                    iArr[i6 + 5] = bArr2[i5 + i6];
                }
                while (length < 256) {
                    iArr[length + 5] = 255;
                    length++;
                }
                int[] iArr3 = f17420b;
                if (iArr3[iC] == 0) {
                    iArr3[iC] = 1;
                    f17421c++;
                }
                h(iArr);
                if (f17425g) {
                    a.f.p().s("开始发送升级文件 sBlockIndex = " + f17421c + " ;sBlockFlag.length = " + f17420b.length);
                }
                d.I3(48, 5, f17421c, f17420b.length);
            }
            if (f17423e != 0) {
                f17423e = 0;
                a.f.k().m("mcu_need_upgrade");
                return;
            }
            return;
        }
        switch (iC) {
            case 61441:
            case 61442:
            case 61444:
            case 61445:
                f17420b = null;
                f17419a = null;
                if (f17423e != 0) {
                    f17423e = 0;
                    a.f.k().m("mcu_need_upgrade");
                }
                f0 f0Var = f17424f;
                if (f0Var != null) {
                    f0Var.b();
                    f17424f = null;
                }
                m0.b.f13172e = 0;
                a.i.a0(100L);
                z.a.f18161l.a(false);
                switch (iC) {
                    case 61441:
                        if (f17425g) {
                            a.f.p().s("升级失败，客户信息错误");
                        }
                        d.I3(48, 2);
                        return;
                    case 61442:
                        if (f17425g) {
                            a.f.p().s("升级失败，文件大小错误");
                        }
                        d.I3(48, 1);
                        return;
                    case 61443:
                    default:
                        return;
                    case 61444:
                        if (f17425g) {
                            a.f.p().s("升级失败，未知错误");
                        }
                        d.I3(48, 7);
                        return;
                    case 61445:
                        if (f17425g) {
                            a.f.p().s("升级完成");
                        }
                        h(235, 0, 0);
                        k.a().postDelayed(new c(), 500L);
                        return;
                }
            case 61443:
                if (f17423e == 0) {
                    f17423e = 1;
                    f17420b = null;
                    f17419a = null;
                    f0 f0Var2 = f17424f;
                    if (f0Var2 != null) {
                        f0Var2.b();
                        f17424f = null;
                    }
                    a.f.k().l(0, "mcu_need_upgrade", "AMP程序不完整,用Stm32udAMP.bin升级文件重新升级AMP", Paint.Align.CENTER, 30, -1, 40, 2147483392);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
