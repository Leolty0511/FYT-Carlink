package k0;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.Log;
import android.util.TimedRemoteCaller;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import app.App;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class kt extends lt implements o1.r {
    public static int M = 0;
    public static boolean N = true;
    public static boolean O = false;
    public static boolean P = false;
    public static int[] Q = {194, 190, 186, 182, 178, 174, 170, 166, 162, 160, 158, 156, 155, 153, 151, 149, 148, 147, 146, 145, 144, 143, 142, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123};
    public static Runnable R = new c();
    public static Toast S = null;
    public static int[] T = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 10, 11, 1, 1, 1, 1, 12, 13, 14, 15};
    public int A;
    public int B;
    public int C;
    public int D;
    public Runnable E;
    public Runnable F;
    public Runnable G;
    public long H;
    public int I;
    public int J;
    public int K;
    public int L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public i f7414d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f7418h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f7419i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f7420j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f7421k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte f7422l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f7423m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte f7424n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte f7425o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public byte f7426p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f7427q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f7428r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f7429s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f7430t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f7434x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f7435y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public st f7436z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f7412b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f7413c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7415e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7416f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f7417g = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int[] f7431u = {2, 3, 4, 5, 1, 6, 7};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f7432v = 7;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public byte f7433w = DhcpPacket.DHCP_DOMAIN_NAME;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kt.M = 1000;
            kt.u3("姝ｅ湪鎷疯礉Log鏁版嵁");
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = kt.this.f7413c;
            if (str != null) {
                kt.u3(str);
            }
        }
    }

    public class c implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (kt.O) {
                    kt.M = 3;
                    kt.u3("Log鏁版嵁鎷疯礉宸插畬鎴�");
                } else {
                    kt.M = 3;
                    kt.u3("Log鏁版嵁鎷疯礉澶辫触");
                }
                kt.S.show();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean unused = kt.N = true;
            kt.O = false;
            pt.g("/mnt/sdcard/ServerDieLog.txt", "/mnt/usb_storage4/yundu");
            pt.g("/data/anr/traces.txt", "/mnt/usb_storage4/yundu");
            pt.g("/mnt/sdcard/crash", "/mnt/usb_storage4/yundu/crash");
            o1.m.a().postDelayed(new a(), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public class d extends TimerTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Timer f7440a;

        public d(Timer timer) {
            this.f7440a = timer;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            kt.S.show();
            int i2 = kt.M - 1;
            kt.M = i2;
            if (i2 <= 0) {
                kt.S.cancel();
                this.f7440a.cancel();
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kt ktVar = kt.this;
            ktVar.o3(ktVar.f7434x);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kt ktVar = kt.this;
            int i2 = ktVar.B + 1;
            ktVar.B = i2;
            if (i2 > 31) {
                ktVar.B = 0;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!kt.P) {
                qt.y0(104, kt.this.f7412b.b(1, 0));
                qt.y0(103, kt.this.f7412b.b(5, 0));
                qt.y0(99, kt.this.f7412b.b(2, 0));
                qt.y0(120, kt.this.f7412b.b(7, 0));
                z.k.s(227, 44, kt.this.f7412b.b(3, 0));
                z.k.s(227, 43, kt.this.f7412b.b(1, 0));
                z.k.s(227, 42, kt.this.f7412b.b(5, 0));
                return;
            }
            qt.y0(107, 0);
            kt.this.f7412b.e(3, 0);
            kt.this.f7412b.e(1, 1);
            z.k.s(227, 43, 1);
            qt.y0(104, 1);
            kt.this.f7412b.e(5, 1);
            z.k.s(227, 42, 1);
            qt.y0(103, 1);
            qt.y0(99, 1);
            kt.this.f7412b.e(2, 1);
            qt.y0(120, 0);
            kt.this.f7412b.e(7, 0);
            boolean unused = kt.P = false;
        }
    }

    public class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f7444a = new Time();

        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f7444a = time;
            time.setToNow();
            long millis = this.f7444a.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (kt.this.H == millis && kt.this.I == zIs24HourFormat) {
                return;
            }
            kt.this.H = millis;
            kt.this.I = zIs24HourFormat ? 1 : 0;
            Time time2 = this.f7444a;
            z.k.s(227, 36, (byte) time2.hour, (byte) time2.minute, (byte) time2.second);
        }
    }

    public class i extends BroadcastReceiver {
        public i() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i2;
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action)) {
                if ("com.fyt.systemui.remove".equals(action) && "com.autonavi.amapauto".equals(extras.getString("pkg"))) {
                    kt.this.L = 0;
                    z.k.s(227, 67, 0);
                    return;
                }
                return;
            }
            if (extras != null) {
                try {
                    if (extras.getInt("KEY_TYPE") == 10019 && ((i2 = extras.getInt("EXTRA_STATE")) == 2 || i2 == 9 || i2 == 12)) {
                        kt.this.L = 0;
                        z.k.s(227, 67, 0);
                    }
                    if (extras.getInt("KEY_TYPE") != 10001 || kt.this.L == extras.getInt("ICON")) {
                        return;
                    }
                    kt.this.L = extras.getInt("ICON");
                    z.k.s(227, 67, kt.T[kt.this.L]);
                } catch (Exception e2) {
                    Log.e("mxnavi", "楂樺痉鍦板浘鍙戝嚭鐨勫\ue1f1鑸\ue045柟鍚戝弬鏁伴敊璇\ue224紒锛侊紒");
                    e2.printStackTrace();
                }
            }
        }

        public /* synthetic */ i(kt ktVar, a aVar) {
            this();
        }
    }

    public kt() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8318m = new int[]{33, 34, 36, 37, 38, 39, 41, 42, 55, 57, 58};
        this.f7435y = new e();
        this.A = 0;
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = new f();
        this.F = new g();
        this.G = new h();
        this.H = -1L;
        this.I = -1;
        this.J = 0;
        this.K = 0;
        this.L = 0;
    }

    public static Process m3() {
        File file = new File("/system/xbin/ru");
        return file.exists() ? Runtime.getRuntime().exec(file.getAbsolutePath()) : Runtime.getRuntime().exec("su");
    }

    public static Process n3(String str) throws Throwable {
        Process processM3 = m3();
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(processM3.getOutputStream());
            try {
                dataOutputStream2.writeBytes(str + "\n");
                dataOutputStream2.writeBytes("exit $?\n");
                try {
                    dataOutputStream2.close();
                } catch (IOException unused) {
                }
                return processM3;
            } catch (Throwable th) {
                th = th;
                dataOutputStream = dataOutputStream2;
                if (dataOutputStream != null) {
                    try {
                        dataOutputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void s3() throws InterruptedException {
        n3("chmod 666 /dev/alarm").waitFor();
    }

    public static void t3(int i2, int i3) throws InterruptedException, IOException {
        s3();
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, i2);
        calendar.set(12, i3);
        calendar.set(13, 0);
        long timeInMillis = calendar.getTimeInMillis();
        if (timeInMillis / 1000 < 2147483647L) {
            SystemClock.setCurrentTimeMillis(timeInMillis);
        }
        if (Calendar.getInstance().getTimeInMillis() - timeInMillis > 1000) {
            throw new IOException("failed to set Time.");
        }
    }

    public static void u3(String str) {
        Log.d("gdy", " showToast Show_Str = " + str);
        if (S == null) {
            Toast toastMakeText = Toast.makeText(App.c(), str, 1);
            S = toastMakeText;
            LinearLayout linearLayout = (LinearLayout) toastMakeText.getView();
            linearLayout.setWeightSum(600.0f);
            linearLayout.setMinimumHeight(200);
            TextView textView = (TextView) S.getView().findViewById(R.id.message);
            textView.setTextColor(-1);
            textView.setTextSize(30.0f);
            textView.setPadding(0, 70, 0, 0);
            S.setGravity(48, 0, 150);
        }
        Toast toast = S;
        if (toast != null) {
            toast.setText(str);
        }
        Timer timer = new Timer();
        timer.schedule(new d(timer), 0L, InputMethodManager.INPUT_METHOD_NOT_RESPONDING_TIMEOUT);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        super.O2(iArr);
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = 0;
        int i3 = iArr[0];
        int i4 = iArr[0];
        int i5 = iArr[1];
        if (i4 == 33) {
            this.J = nt.f8645g[23];
            if (i5 != 1) {
                l3(5, 0);
                qt.y0(121, 1);
            }
            l3(5, 1);
            qt.y0(121, 0);
            if (p3()) {
                qt.y0(121, 8);
                return;
            } else {
                qt.y0(121, 255);
                return;
            }
        }
        if (i4 == 34) {
            this.J = nt.f8645g[11];
            if (i5 == 1) {
                l3(0, 1);
                return;
            } else {
                l3(0, 0);
                return;
            }
        }
        if (i4 == 41) {
            int i6 = nt.f8645g[19];
            this.J = i6;
            if (i5 == 1) {
                if (i6 <= 15) {
                    int i7 = i6 + 1;
                    this.J = i7;
                    l3(8, i7);
                    return;
                }
                return;
            }
            if (i6 > 1) {
                int i8 = i6 - 1;
                this.J = i8;
                l3(8, i8);
                return;
            }
            return;
        }
        if (i4 == 42) {
            int i9 = nt.f8645g[19];
            this.J = i9;
            if (i5 == 1) {
                if (i9 <= 15) {
                    int i10 = i9 + 1;
                    this.J = i10;
                    l3(8, i10);
                    return;
                }
                return;
            }
            if (i9 > 1) {
                int i11 = i9 - 1;
                this.J = i11;
                l3(8, i11);
                return;
            }
            return;
        }
        if (i4 == 55) {
            int i12 = iArr[1] + 1;
            if (i12 >= 16) {
                i2 = 16;
            } else if (i12 >= 0) {
                i2 = i12;
            }
            l3(8, i2);
            return;
        }
        if (i4 == 57) {
            this.J = nt.f8645g[22];
            if (i5 == 1) {
                l3(7, 1);
                return;
            } else {
                l3(7, 0);
                return;
            }
        }
        if (i4 == 58) {
            int i13 = iArr[1] & 255;
            if (i13 <= 7) {
                l3(6, i13);
                return;
            }
            return;
        }
        switch (i4) {
            case 36:
                this.J = nt.f8645g[20];
                if (i5 != 1) {
                    l3(2, 0);
                } else {
                    l3(2, 1);
                }
                break;
            case 37:
                this.J = nt.f8645g[13];
                if (i5 != 1) {
                    l3(1, 0);
                } else {
                    l3(1, 1);
                }
                break;
            case 38:
                this.J = nt.f8645g[12];
                if (i5 != 1) {
                    l3(4, 0);
                } else {
                    l3(4, 1);
                }
                break;
            case 39:
                int i14 = nt.f8645g[18];
                this.J = i14;
                if (i5 == -2) {
                    if (i14 > 0) {
                        this.J = i14 - 1;
                    }
                    l3(6, this.J);
                } else if (i5 == -1) {
                    if (i14 < 7) {
                        this.J = i14 + 1;
                    }
                    l3(6, this.J);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.G);
        z.k.s(227, 39, 16);
        z.k.s(227, 39, 23);
        z.k.s(227, 39, 25);
        qt.y0(123, 1);
        this.f7414d = new i(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        intentFilter.addAction("com.fyt.systemui.remove");
        App.c().registerReceiver(this.f7414d, intentFilter);
        File file = new File("/mnt/sdcard/crash");
        if (file.exists() && pt.k(file) > 30) {
            pt.h(file);
        }
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("net.easyconn.android.mirror.in");
        intentFilter2.addAction("net.easyconn.android.mirror.out");
        intentFilter2.addAction("net.easyconn.iphone.inner.mirror.in");
        intentFilter2.addAction("net.easyconn.iphone.inner.mirror.out");
        intentFilter2.addAction("net.easyconn.iphone.mirror.in");
        intentFilter2.addAction("net.easyconn.iphone.mirror.out");
        this.f7436z = new st();
        App.c().registerReceiver(this.f7436z, intentFilter2);
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        z.k.s(227, 36, (byte) time.hour, (byte) time.minute, (byte) time.second);
        this.f7412b.a();
        o1.m.a().postDelayed(this.F, 2000L);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2;
        byte b3 = bArr[i2];
        if (b3 == -86) {
            int i4 = i2 + 1;
            pt.o(bArr, i4, bArr[i4]);
            return;
        }
        int i5 = 0;
        if (b3 == 25) {
            qt.y0(5, (bArr[i2 + 15] == 0 ? 0 : 1) | ((bArr[i2 + 11] == 0 ? 0 : 1) << 4) | ((bArr[i2 + 12] == 0 ? 0 : 1) << 3) | ((bArr[i2 + 13] == 0 ? 0 : 1) << 2) | ((bArr[i2 + 14] == 0 ? 0 : 1) << 1));
            return;
        }
        if (b3 != 65) {
            if (b3 == 68 || b3 == 32) {
                qt.y0(122, bArr[i2 + 1]);
                return;
            }
            if (b3 != 33) {
                switch (b3) {
                    case 16:
                        byte b4 = bArr[i2 + 1];
                        this.f7418h = b4;
                        this.f7419i = bArr[i2 + 2];
                        this.f7420j = bArr[i2 + 3];
                        this.f7421k = bArr[i2 + 4];
                        this.f7422l = bArr[i2 + 5];
                        this.f7423m = bArr[i2 + 6];
                        this.f7424n = bArr[i2 + 7];
                        this.f7425o = bArr[i2 + 8];
                        qt.y0(85, b4 & 31);
                        qt.y0(37, ((this.f7420j << 8) & 65280) | (this.f7421k & 255));
                        qt.y0(38, ((this.f7422l << 8) & 65280) | (this.f7423m & 255));
                        qt.y0(86, this.f7425o & 1);
                        break;
                    case 17:
                        byte b5 = bArr[i2 + 1];
                        this.f7418h = b5;
                        byte b6 = bArr[i2 + 2];
                        this.f7419i = b6;
                        byte b7 = bArr[i2 + 3];
                        this.f7420j = b7;
                        this.f7421k = bArr[i2 + 4];
                        this.f7422l = bArr[i2 + 5];
                        this.f7423m = bArr[i2 + 6];
                        this.f7424n = bArr[i2 + 7];
                        this.f7425o = bArr[i2 + 8];
                        this.f7426p = bArr[i2 + 9];
                        int i6 = (int) (((double) (((b5 << 8) & 65280) | (b6 & 255))) * 0.05625d);
                        if (b7 == 0) {
                            qt.y0(7, i6);
                        }
                        if (u0.b.f17341m != 1) {
                            u0.d.x0(1);
                        } else if (i6 > 15) {
                            u0.d.x0(0);
                        } else if (i6 <= 10) {
                            u0.d.x0(1);
                        }
                        int i7 = y0.f.C0;
                        break;
                    case 18:
                        int i8 = (int) ((((double) ((bArr[i2 + 2] & 255) | ((bArr[i2 + 1] << 8) & 65280))) * 0.05d) - 600.0d);
                        if (i8 > 600) {
                            i8 = 600;
                        } else if (i8 < -600) {
                            i8 = -600;
                        }
                        qt.y0(57, i8);
                        break;
                    case 19:
                        this.f7418h = bArr[i2 + 1];
                        break;
                    case 20:
                        byte b8 = bArr[i2 + 1];
                        this.f7418h = b8;
                        byte b9 = bArr[i2 + 2];
                        this.f7419i = b9;
                        this.f7420j = bArr[i2 + 3];
                        this.f7421k = bArr[i2 + 4];
                        this.f7422l = bArr[i2 + 5];
                        this.f7423m = bArr[i2 + 6];
                        this.f7424n = bArr[i2 + 7];
                        this.f7425o = bArr[i2 + 8];
                        qt.y0(42, (((b8 << 8) & 65280) | (b9 & 255)) / 10);
                        break;
                    case 21:
                        byte b10 = bArr[i2 + 1];
                        this.f7418h = b10;
                        byte b11 = bArr[i2 + 2];
                        this.f7419i = b11;
                        byte b12 = bArr[i2 + 3];
                        this.f7420j = b12;
                        this.f7421k = bArr[i2 + 4];
                        this.f7422l = bArr[i2 + 5];
                        this.f7423m = bArr[i2 + 6];
                        this.f7424n = bArr[i2 + 7];
                        int i9 = (b10 * 3600) + (b11 * DhcpPacket.DHCP_VENDOR_CLASS_ID) + b12;
                        if (!r3()) {
                            qt.y0(49, i9);
                        }
                        byte b13 = this.f7418h;
                        if (b13 < 0 || b13 > 23 || (b2 = this.f7419i) < 0 || b2 > 59) {
                            this.f7417g = false;
                        } else {
                            this.f7417g = true;
                        }
                        if (b13 == 0 && this.f7419i == 0) {
                            this.f7417g = false;
                        }
                        if (r3()) {
                            this.f7417g = false;
                        }
                        if (this.f7417g) {
                            this.f7417g = false;
                            try {
                                t3(this.f7418h, this.f7419i);
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            } catch (InterruptedException e3) {
                                e3.printStackTrace();
                            }
                        }
                        int i10 = (this.f7421k * 5) + 25;
                        int[] iArr = new int[1];
                        if (i10 == 25) {
                            i10 = -1;
                        }
                        iArr[0] = i10;
                        qt.y0(50, iArr);
                        int[] iArr2 = new int[1];
                        byte b14 = this.f7422l;
                        iArr2[0] = b14 <= 10 ? b14 : (byte) 10;
                        qt.y0(51, iArr2);
                        qt.y0(118, this.f7423m & 1);
                        qt.y0(119, this.f7424n & 255);
                        break;
                    case 22:
                        if (i3 >= 16) {
                            byte b15 = bArr[i2 + 1];
                            this.f7418h = b15;
                            this.f7419i = bArr[i2 + 2];
                            this.f7420j = bArr[i2 + 3];
                            this.f7421k = bArr[i2 + 4];
                            this.f7422l = bArr[i2 + 5];
                            this.f7423m = bArr[i2 + 6];
                            this.f7424n = bArr[i2 + 7];
                            this.f7425o = bArr[i2 + 8];
                            this.f7426p = bArr[i2 + 10];
                            byte b16 = bArr[i2 + 14];
                            qt.y0(11, b15 & 255);
                            qt.y0(13, this.f7419i & 255);
                            qt.y0(20, this.f7420j & 255);
                            this.f7428r = 0;
                            this.f7429s = 0;
                            this.f7430t = 0;
                            byte b17 = this.f7421k;
                            int i11 = b17 & 255;
                            if (i11 == 0) {
                                this.f7429s = 1;
                            } else if (i11 == 1) {
                                this.f7429s = 1;
                                this.f7430t = 1;
                            } else if (i11 == 2) {
                                this.f7430t = 1;
                            } else if (i11 == 3) {
                                this.f7428r = 1;
                                this.f7430t = 1;
                            }
                            qt.y0(17, b17 & 255);
                            qt.y0(14, this.f7428r);
                            qt.y0(15, this.f7429s);
                            qt.y0(16, this.f7430t);
                            qt.y0(12, this.f7422l & 255);
                            qt.y0(23, this.f7423m & 255);
                            int i12 = this.f7425o & 255;
                            this.f7427q = i12;
                            if (i12 < 0) {
                                this.f7427q = 0;
                            } else if (i12 > 7) {
                                this.f7427q = 7;
                            }
                            qt.y0(18, this.f7427q);
                            qt.y0(22, this.f7426p & 255);
                            qt.y0(19, b16 & 255);
                            if ((bArr[i2 + 17] & 255) != 2) {
                                qt.y0(121, 1);
                            } else {
                                qt.y0(121, 0);
                                if (!p3()) {
                                    qt.y0(121, 255);
                                } else {
                                    qt.y0(121, 8);
                                }
                            }
                            break;
                        }
                        break;
                    default:
                        switch (b3) {
                            case 28:
                                this.f7434x = null;
                                if (bArr[i2 + 1] == 1) {
                                    this.f7434x = "璇峰叧闂\ue15d綅缃\ue1be伅";
                                } else if (bArr[i2 + 2] == 1) {
                                    this.f7434x = "璇疯俯鍒跺姩鍚\ue21a姩";
                                } else if (bArr[i2 + 3] == 1) {
                                    this.f7434x = "璇锋寕椹昏溅妗ｅ惎鍔�";
                                } else if (bArr[i2 + 4] == 1) {
                                    this.f7434x = "璇锋寕椹昏溅妗�";
                                } else if (bArr[i2 + 5] == 1) {
                                    this.f7434x = "鐢垫満杩囩儹  璇锋敞鎰�";
                                } else if (bArr[i2 + 6] == 1) {
                                    this.f7434x = "鍔ㄥ姏绯荤粺鍑嗗\ue62c灏辩华";
                                } else if (bArr[i2 + 7] == 1) {
                                    this.f7434x = "缁\ue161埅涓嶈冻  璇峰厖鐢�";
                                } else if (bArr[i2 + 8] == 1) {
                                    this.f7434x = "璇风郴濂藉畨鍏ㄥ甫";
                                } else if (bArr[i2 + 9] == 1) {
                                    this.f7434x = "鎮ㄥ凡瓒呴��  璇峰噺閫熸參琛�";
                                } else if (bArr[i2 + 10] == 1) {
                                    this.f7434x = "杞﹂棬鏈\ue044叧  璇锋敞鎰�";
                                }
                                if (this.f7434x != null) {
                                    v3();
                                    o1.l.a().removeCallbacks(this.f7435y);
                                    o1.l.a().postDelayed(this.f7435y, 500L);
                                }
                                break;
                            case 29:
                                byte b18 = bArr[i2 + 1];
                                this.f7418h = b18;
                                byte b19 = bArr[i2 + 2];
                                this.f7419i = b19;
                                if (b18 != 6) {
                                    if (b19 == 0 || b19 == 1) {
                                        i5 = 3;
                                    } else if (b19 == 2) {
                                        i5 = 5;
                                    } else if (b19 == 3) {
                                        i5 = 1000000000;
                                    }
                                    if (M == 0) {
                                        M = i5;
                                        if (b18 == 1) {
                                            this.f7413c = "杞\ue219欢鍗囩骇杩囩▼涓\ue168紝璇峰嬁鍏抽棴杞﹁締鐢垫簮";
                                        } else if (b18 == 2) {
                                            this.f7413c = "绌鸿皟鑷\ue044姩娓呮磥宸ヤ綔涓�";
                                        } else if (b18 == 3) {
                                            this.f7413c = "璇ヨ溅杈嗙洰鍓嶄笉鏀\ue21b寔姝ゅ姛鑳�";
                                        } else if (b18 == 4) {
                                            this.f7413c = "濡傞渶鍚\ue21a姩绌鸿皟锛岃\ue1ec纭\ue1bb繚鐐圭伀寮�鍏冲湪ACC ON鎸�";
                                        } else if (b18 == 5 || b18 == 7) {
                                            this.f7413c = "鐢变簬鐢垫簮鐢靛帇涓嶇ǔ瀹氾紝绯荤粺 3s 鍚庡叧灞�";
                                        }
                                        o1.m.a().postDelayed(new b(), 100L);
                                    } else {
                                        M = i5;
                                    }
                                } else {
                                    if (N) {
                                        N = false;
                                        o1.m.a().postDelayed(new a(), 100L);
                                    }
                                    o1.l.a().removeCallbacks(R);
                                    o1.l.a().postDelayed(R, 2000L);
                                }
                                break;
                            case 30:
                                byte b20 = bArr[i2 + 1];
                                this.f7418h = b20;
                                this.f7434x = null;
                                if (b20 == 0) {
                                    this.f7434x = "鍚\ue21a姩璇疯俯鍒跺姩";
                                } else if (b20 == 1) {
                                    this.f7434x = "璇锋寕椹昏溅鎸″惎鍔�";
                                } else if (b20 == 2) {
                                    this.f7434x = "璇锋寕椹昏溅鎸�";
                                } else if (b20 == 3) {
                                    this.f7434x = "鐢垫満杩囩儹璇锋敞鎰�";
                                } else if (b20 == 4) {
                                    this.f7434x = "缁\ue161埅涓嶈冻璇峰厖鐢�";
                                } else if (b20 == 5) {
                                    this.f7434x = "璇风郴濂藉畨鍏ㄥ甫";
                                } else if (b20 == 6) {
                                    this.f7434x = "鎮ㄥ凡瓒呴�熻\ue1ec鍑忛�熸參琛�";
                                } else if (b20 == 7) {
                                    this.f7434x = "杞﹂棬鏈\ue044叧璇锋敞鎰�";
                                }
                                if (this.f7434x != null) {
                                    v3();
                                    o1.l.a().removeCallbacks(this.f7435y);
                                    o1.l.a().postDelayed(this.f7435y, 500L);
                                }
                                break;
                        }
                        break;
                }
                return;
            }
        }
        int i13 = i2 + 1;
        qt.y0(123, bArr[i13]);
        Log.d("accc", "MainServer U_PEDESTRIAN_REMINDER    b_reminder = " + ((int) bArr[i13]));
    }

    @Override // k0.lt
    public void W2() {
        this.f7412b.j();
        if (this.f7436z != null) {
            App.c().unregisterReceiver(this.f7436z);
        }
        qt.q0(this.G);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 150) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 1:
                if (q3(iArr, 1)) {
                    z.k.s(227, 32, iArr[0]);
                    Log.i("LLL", "C_CMD_BATTERY : 0xE3, 0x20, " + iArr[0]);
                }
                break;
            case 2:
                if (q3(iArr, 1)) {
                    int[] iArr2 = new int[3];
                    iArr2[0] = 227;
                    iArr2[1] = 35;
                    iArr2[2] = iArr[0] <= 0 ? 0 : 1;
                    z.k.s(iArr2);
                }
                break;
            case 3:
                if (q3(iArr, 1)) {
                    z.k.s(227, 37, iArr[0], iArr[1]);
                }
                break;
            case 4:
                if (q3(iArr, 1)) {
                    z.k.s(227, 38, iArr[0]);
                }
                break;
            case 5:
                if (q3(iArr, 1)) {
                    z.k.s(227, 39, iArr[0]);
                }
                break;
            case 6:
                if (q3(iArr, 1)) {
                    z.k.s(227, 40, iArr[0]);
                }
                break;
            case 7:
                if (q3(iArr, 2)) {
                    z.k.s(227, 36, iArr[0], iArr[1], 0);
                    Log.i("LLL", "C_CMD_TIME_SETTINGS : 0xE3, 0x24, " + iArr[0] + " ," + iArr[1]);
                }
                break;
            case 8:
                if (q3(iArr, 1)) {
                    z.k.s(227, 41, iArr[0]);
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 45, iArr[0]);
                    Log.i("LLL", "C_CMD_DRIVE_NONSLIP : 0xE3, 0x2D, " + iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(99, iArr[0]);
                    this.f7412b.e(2, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(103, iArr[0]);
                    this.f7412b.e(5, iArr[0]);
                    z.k.s(227, 42, iArr[0]);
                    Log.i("LLL", "C_CMD_AIR_AUTOClEAN : 0xE3, 0x2A, " + iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(104, iArr[0]);
                    this.f7412b.e(1, iArr[0]);
                    z.k.s(227, 43, iArr[0]);
                    Log.i("LLL", "C_CMD_INCAR_AUTOVENTILATION : 0xE3, 0x2B, " + iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(107, iArr[0]);
                    this.f7412b.e(3, iArr[0]);
                    z.k.s(227, 44, iArr[0]);
                    Log.i("LLL", "C_CMD_INCAR_AUTOLOCK : 0xE3, 0x2C, " + iArr[0]);
                    break;
                }
                break;
            case 15:
                if (q3(iArr, 9)) {
                    z.k.s(227, 66, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8]);
                }
                break;
            case 16:
                if (q3(iArr, 1)) {
                    Log.i("LLL", "C_CMD_AUTOHOLD : 0xE3, 0x31, " + iArr[0]);
                    z.k.s(227, 49, iArr[0]);
                }
                break;
            case 17:
                if (q3(iArr, 1)) {
                    Log.i("LLL", "C_CMD_HAC : 0xE3, 0x2E, " + iArr[0]);
                    z.k.s(227, 46, iArr[0]);
                }
                break;
            case 18:
                if (q3(iArr, 2)) {
                    Log.i("LLL", "C_CMD_HAC : 0xE3, 0x32, " + iArr[0] + " " + iArr[1]);
                    z.k.s(227, 50, iArr[0], iArr[1]);
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(120, iArr[0]);
                    this.f7412b.e(7, iArr[0]);
                    Log.i("QQQQ", "ints[0] :" + iArr[0]);
                    break;
                }
                break;
            case 20:
                if (q3(iArr, 1)) {
                    Log.i("LLL", "C_CARINFO_AUTO_PARK : 0xE3, 0x38, " + iArr[0] + ProxyProperties.LOCAL_EXCL_LIST + iArr[1]);
                    this.f7412b.e(8, iArr[0]);
                    z.k.s(227, 56, iArr[0], iArr[1]);
                }
                break;
            case 21:
                int[] iArr3 = new int[3];
                iArr3[0] = 227;
                iArr3[1] = 68;
                iArr3[2] = iArr[0] == 1 ? 170 : 85;
                z.k.s(iArr3);
                break;
            case 22:
                z.k.s(227, 65, iArr[0]);
                qt.y0(123, iArr[0]);
                break;
        }
    }

    public final void l3(int i2, int i3) {
        int[] iArr = {0, 0, 0, 0, 0, 0, 0, 0, 0};
        iArr[i2] = i3 + 1;
        z.k.s(227, 66, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8]);
    }

    public final void o3(String str) {
        Intent intent = new Intent("com.syu.execute_tts");
        intent.putExtra("raw_text", str);
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    public boolean p3() {
        if (u0.b.f17347o == 1) {
            return false;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.home2", "com.syu.home.AirActivity");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
        return true;
    }

    public final boolean q3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public boolean r3() {
        return Settings.System.getInt(App.c().getContentResolver(), "gps_auto_time", 1) == 1;
    }

    public void v3() {
        Intent intent = new Intent("com.syu.cancle_tts");
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    @Override // o1.r
    public void z1(byte[] bArr, int i2, int i3) {
        U2(bArr, i2, i3);
    }
}
