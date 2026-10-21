package k0;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.media.SoundPool;
import android.net.dhcp.DhcpPacket;
import android.os.DropBoxManager;
import android.os.RemoteException;
import android.provider.CalendarContract;
import android.util.Log;
import app.App;
import com.syu.ms.R;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class et extends lt {
    public byte[][] A;
    public byte[] B;
    public int C;
    public Runnable D;
    public Runnable E;
    public long F;
    public long G;
    public int H;
    public int I;
    public int J;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f4996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte f4997c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte f4998d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f4999e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f5000f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f5001g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f5002h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f5003i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5004j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5005k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5006l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5007m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5008n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5009o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5010p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5011q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5012r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5013s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public SoundPool f5014t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f5015u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f5016v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f5017w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f5018x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f5019y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f5020z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                y0.j.a3().Z0(22, new int[]{1}, null, null);
                Log.d(DropBoxManager.EXTRA_TAG, "-------申请播放提示音---");
                et etVar = et.this;
                if (etVar.f5015u == 1) {
                    etVar.f5014t.play(u0.b.K3, 1.0f, 1.0f, 0, 1, 1.0f);
                    Log.d("sound", "播放提示音---");
                }
                et etVar2 = et.this;
                int i2 = etVar2.f5015u + 1;
                etVar2.f5015u = i2;
                if (i2 > 3) {
                    return;
                }
                o1.l.a().postDelayed(this, 1000L);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(65, u0.b.K3);
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f5023a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte f5024b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f5025c;

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f5025c + 1;
            this.f5025c = i2;
            if (i2 < 20) {
                return;
            }
            if (i2 <= 40) {
                this.f5023a = new byte[]{35, 8, (byte) (i2 % 4), 1, 0, 0, 0, 0, 0, 0};
            } else {
                if (i2 >= 60) {
                    if (i2 >= 100) {
                        this.f5025c = 0;
                        return;
                    }
                    return;
                }
                this.f5023a = new byte[]{35, 8, (byte) (i2 % 4), 0, 0, 0, 0, 0, 0, 0};
            }
            et etVar = et.this;
            byte[] bArr = this.f5023a;
            etVar.U2(bArr, 0, bArr.length);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            et etVar = et.this;
            if (etVar.f5020z) {
                etVar.f5020z = false;
                etVar.o3();
                o1.b0.i("十分钟计时---");
                o1.l.a().removeCallbacks(this);
                o1.l.a().postDelayed(this, 600000L);
                return;
            }
            o1.l.a().removeCallbacks(this);
            int i2 = 0;
            while (true) {
                et etVar2 = et.this;
                byte[][] bArr = etVar2.A;
                if (i2 >= bArr.length) {
                    return;
                }
                if (etVar2.l3(bArr[i2][0], bArr[i2][1])) {
                    et.this.o3();
                    o1.b0.i("十分钟计时---");
                    o1.l.a().postDelayed(this, 600000L);
                }
                i2++;
            }
        }
    }

    public et() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8317l = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        this.f5016v = -1;
        this.f5017w = new a();
        this.f5019y = new b();
        this.A = new byte[][]{new byte[]{-1, 0, 0, 0, 0, 0, 0}, new byte[]{-1, 0, 0, 0, 0, 0, 0}, new byte[]{-1, 0, 0, 0, 0, 0, 0}, new byte[]{-1, 0, 0, 0, 0, 0, 0}};
        this.B = new byte[]{0, 0};
        this.D = new c();
        this.E = new d();
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        m3();
        qt.y0(68, 0);
        qt.y0(69, 0);
        qt.y0(70, 1);
        this.f5018x = y0.f.L;
        SoundPool soundPool = new SoundPool(5, 3, 5);
        this.f5014t = soundPool;
        soundPool.load(App.c(), R.raw.please_mind_your_keys_cn, 1);
        this.f5014t.load(App.c(), R.raw.please_mind_your_keys_en, 1);
        u0.c.f17397x.a(this.f5019y, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        switch (bArr[i2]) {
            case 33:
                byte b2 = bArr[i2 + 2];
                this.f4996b = b2;
                this.f4997c = bArr[i2 + 3];
                this.f4998d = bArr[i2 + 4];
                this.f4999e = bArr[i2 + 5];
                this.f5000f = bArr[i2 + 6];
                this.f5001g = bArr[i2 + 7];
                this.f5002h = bArr[i2 + 8];
                this.f5003i = bArr[i2 + 9];
                qt.y0(12, (b2 >> 6) & 1);
                this.f5004j = 0;
                this.f5005k = 0;
                this.f5006l = 0;
                byte b3 = this.f4996b;
                int i4 = (b3 >> 3) & 7;
                if (i4 == 0) {
                    this.f5005k = 1;
                } else if (i4 == 1) {
                    this.f5005k = 1;
                    this.f5006l = 1;
                } else if (i4 == 2) {
                    this.f5006l = 1;
                } else if (i4 == 3) {
                    this.f5006l = 1;
                    this.f5004j = 1;
                }
                qt.y0(13, (b3 >> 5) & 1);
                qt.y0(19, (this.f4996b >> 3) & 3);
                qt.y0(18, this.f5004j);
                qt.y0(16, this.f5005k);
                qt.y0(17, this.f5006l);
                qt.y0(24, (this.f4996b >> 2) & 1);
                qt.y0(14, (this.f4996b >> 1) & 1);
                qt.y0(15, (this.f4999e >> 5) & 1);
                qt.y0(22, this.f4999e & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(21, this.f5000f & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(11, (this.f5001g >> 3) & 1);
                break;
            case 34:
                qt.y0(69, 1);
                byte b4 = bArr[i2 + 2];
                this.f4996b = b4;
                this.f4997c = bArr[i2 + 3];
                if (this.f5013s != ((b4 >> 4) & 15) && (((b4 >> 4) & 15) == 3 || ((b4 >> 4) & 15) == 4)) {
                    this.f5015u = 0;
                    o1.l.a().post(this.f5017w);
                }
                this.f5013s = (this.f4996b >> 4) & 15;
                if (this.f5016v != (this.f4997c & DhcpPacket.DHCP_DOMAIN_NAME)) {
                    o1.b0.i(", 标志警告：" + (this.f4997c & DhcpPacket.DHCP_DOMAIN_NAME));
                    this.f5016v = this.f4997c & DhcpPacket.DHCP_DOMAIN_NAME;
                }
                qt.y0(63, (this.f4996b >> 4) & 15);
                qt.y0(64, this.f4997c & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
            case 35:
                o1.b0.h(bArr, i2, i3);
                qt.y0(70, 1);
                byte b5 = bArr[i2 + 2];
                this.f4996b = b5;
                byte b6 = bArr[i2 + 3];
                this.f4997c = b6;
                this.f4998d = bArr[i2 + 4];
                this.f4999e = bArr[i2 + 5];
                this.f5000f = bArr[i2 + 6];
                this.f5001g = bArr[i2 + 7];
                this.f5002h = bArr[i2 + 8];
                this.f5003i = bArr[i2 + 9];
                if (h3(b5, b6)) {
                    this.f5020z = true;
                    o1.b0.i("新的警报信息，需要提醒");
                    o1.l.a().post(this.E);
                }
                byte b7 = this.f4996b;
                int i5 = b7 & DhcpPacket.DHCP_DOMAIN_NAME;
                this.f5007m = i5;
                this.f5008n = (b7 >> 5) & 7;
                this.f5009o = (b7 >> 4) & 1;
                if (i5 <= 3) {
                    byte[][] bArr2 = this.A;
                    bArr2[i5][0] = b7;
                    bArr2[i5][1] = this.f4997c;
                    bArr2[i5][2] = this.f4998d;
                    bArr2[i5][3] = this.f4999e;
                    bArr2[i5][4] = this.f5000f;
                    bArr2[i5][5] = this.f5001g;
                    bArr2[i5][6] = this.f5002h;
                    p3(bArr2[i5], false);
                    break;
                }
                break;
            case 36:
                qt.y0(7, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
                break;
            case 37:
                this.f4996b = bArr[i2 + 2];
                qt.y0(68, 1);
                qt.y0(66, (this.f4996b >> 4) & 15);
                qt.y0(67, this.f4996b & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17397x.d(this.f5019y);
        o1.l.a().removeCallbacks(this.E);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 73) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        o1.b0.i("cmdcode:" + i2);
        if (i2 == 0) {
            if (f3(iArr, 2)) {
                if (iArr[1] == 1) {
                    this.F = System.currentTimeMillis();
                    o1.b0.i("按下时间：" + this.F);
                } else if (iArr[1] == 0) {
                    this.G = System.currentTimeMillis();
                    o1.b0.i("-------抬起时间：" + this.G + " 间隔时间：" + (this.G - this.F));
                }
                o1.b0.i("发送空调命令：" + iArr[0] + ", 触摸状态：" + iArr[1]);
                z.k.s(227, 129, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (f3(iArr, 1)) {
                z.k.s(227, 145, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (f3(iArr, 3)) {
                this.J = iArr[0];
                this.H = (iArr[1] * 800) / 1024;
                this.I = (iArr[2] * 480) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                o1.b0.i("发送坐标 x：" + iArr[1] + " y:" + iArr[2] + " 触摸状态：" + iArr[0]);
                c3(iArr[0], this.H, this.I);
                if (iArr[1] < 510 || iArr[1] > 580 || iArr[2] < 530 || iArr[2] > 580) {
                    return;
                }
                n3(0);
                return;
            }
            return;
        }
        if (i2 == 3) {
            o1.b0.i("打开360全景");
            n3(1);
            return;
        }
        if (i2 != 4) {
            return;
        }
        int i3 = 0;
        while (true) {
            byte[][] bArr = this.A;
            if (i3 > bArr.length) {
                return;
            }
            if (bArr[i3][0] == -1) {
                m3();
                return;
            }
            Log.d("ui", "C_CMD_UPDATE_TPMS " + i3);
            p3(this.A[i3], true);
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            i3++;
        }
    }

    public final void c3(int i2, int i3, int i4) {
        z.k.s(227, 130, 6, 0, i2 << 4, (byte) ((i3 >> 8) & 255), (byte) (i3 & 255), (byte) ((i4 >> 8) & 255), (byte) (i4 & 255));
    }

    public String d3() {
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

    public final boolean e3(int i2) {
        return i2 == 1;
    }

    public final boolean f3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final boolean g3(int i2) {
        return i2 == 1 || i2 == 2;
    }

    public final boolean h3(byte b2, byte b3) {
        if ((b2 & DhcpPacket.DHCP_DOMAIN_NAME) > 3) {
            return false;
        }
        int i2 = b2 & 3;
        byte[][] bArr = this.A;
        byte[] bArr2 = bArr[i2];
        this.B = bArr2;
        if (bArr[i2][0] != -1 && b2 == bArr2[0] && b3 == bArr2[1]) {
            return false;
        }
        if (bArr[i2][0] == -1) {
            o1.b0.i("-----------第一次赋值");
        } else {
            o1.b0.i("------------状态发生改变");
        }
        return l3(b2, b3);
    }

    public final boolean i3(int i2) {
        return i2 == 2;
    }

    public final boolean j3(int i2) {
        return i2 == 1 || i2 == 2;
    }

    public final boolean k3(int i2) {
        return i2 == 1 || i2 == 2;
    }

    public final boolean l3(byte b2, byte b3) {
        StringBuilder sb = new StringBuilder();
        sb.append("系统状态：");
        int i2 = (b2 >> 5) & 7;
        sb.append(i3(i2));
        sb.append(" 电池电量：");
        int i3 = (b3 >> 6) & 3;
        sb.append(e3(i3));
        sb.append(" 温度：");
        int i4 = (b3 >> 4) & 3;
        sb.append(j3(i4));
        sb.append(" 胎压：");
        int i5 = (b3 >> 2) & 3;
        sb.append(k3(i5));
        sb.append(" 是否漏气：");
        int i6 = b3 & 3;
        sb.append(g3(i6));
        o1.b0.i(sb.toString());
        return i3(i2) || e3(i3) || j3(i4) || k3(i5) || g3(i6);
    }

    public final void m3() {
        qt.y0(52, -1);
        qt.y0(53, -1);
        qt.y0(62, -1);
        qt.y0(71, -1);
    }

    public void n3(int i2) {
        if (i2 != 0) {
            z.k.s(1, 0, 121);
        } else {
            z.k.s(1, 0, 120);
        }
    }

    public final void o3() {
        if (d3().equals("com.syu.canbus.lianyun.ActivityTpms")) {
            o1.b0.i("已经在胎压界面");
            return;
        }
        o1.b0.i("=====================跳转胎压界面");
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.canbus.lianyun.ActivityTpms"));
        o1.u.e(intent);
        if (this.C == 0) {
            this.C = 1;
        } else {
            this.C = 0;
        }
        qt.y0(72, this.C);
    }

    public final boolean p3(byte[] bArr, boolean z2) {
        if (bArr != null && bArr.length >= 7) {
            this.f5007m = bArr[0] & DhcpPacket.DHCP_DOMAIN_NAME;
            this.f5011q = (bArr[1] >> 4) & 3;
            this.f5012r = (bArr[1] >> 2) & 3;
            this.f5010p = (bArr[1] >> 6) & 3;
            qt.y0(71, ((bArr[0] << 8) & 65280) | (bArr[1] & 255));
            int i2 = this.f5008n;
            if (i2 != 1 && i2 != 2 && this.f5009o != 1) {
                qt.y0(52, (this.f5007m << 24) | (this.f5011q << 16) | ((bArr[4] & 255) << 4) | ((bArr[5] & 240) >> 4));
                qt.y0(53, ((bArr[3] & 240) >> 4) | ((bArr[2] & 255) << 4) | (this.f5007m << 24) | (this.f5012r << 16));
                qt.y0(62, (bArr[6] & 255) | (this.f5007m << 24) | (this.f5010p << 16));
                return true;
            }
        }
        return false;
    }
}
