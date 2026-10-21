package o1;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.content.Context;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.util.Log;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;
import k0.qt;
import n0.j4;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"NewApi"})
public class i implements LocationListener {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final i f16877n = new i();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static boolean f16878o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f16879p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f16880q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f16881r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f16882s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f16883t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f16884u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Location f16885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f16887c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Runnable f16888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f16889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16890f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f16891g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f16892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f16893i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public GpsStatus.NmeaListener f16894j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f16895k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f16896l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f16897m;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.f16883t = -1;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.q();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i iVar = i.this;
            if (iVar.f16886b) {
                iVar.r(iVar.f16885a);
            } else {
                if (i.f16878o) {
                    return;
                }
                iVar.r(null);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.f.f(4)) {
                i.h(i.this);
                if (i.this.f16890f == 30 && u0.b.f17320f == 1) {
                    if (SystemProperties.getBoolean("sys.gps.check.err", false) && j4.f16464b != 90) {
                        u0.d.C3(6);
                    }
                    i.this.f16890f = 0;
                }
            }
        }
    }

    public class e implements GpsStatus.NmeaListener {
        public e() {
        }

        @Override // android.location.GpsStatus.NmeaListener
        public void onNmeaReceived(long j2, String str) {
            String[] strArrSplit = str.split("[,*]");
            if (strArrSplit == null || strArrSplit.length <= 0) {
                return;
            }
            i iVar = i.this;
            iVar.f16892h = iVar.f16893i;
            i.this.f16893i = strArrSplit[0];
            if (strArrSplit[0].equals("$GNGSA")) {
                if (i.this.f16892h.equals("$GNGSA")) {
                    i.this.n(strArrSplit, 1);
                    return;
                } else {
                    i.this.n(strArrSplit, 0);
                    return;
                }
            }
            if (strArrSplit[0].equals("$GPGSA")) {
                i.this.n(strArrSplit, 0);
                return;
            }
            if (strArrSplit[0].equals("$BDGSA")) {
                i.this.n(strArrSplit, 1);
                return;
            }
            if (strArrSplit[0].equals("$GNRMC") || strArrSplit[0].equals("$GPRMC") || strArrSplit[0].equals("$BDRMC")) {
                i.b(strArrSplit);
                return;
            }
            if (strArrSplit[0].equals("$GPGSV")) {
                String str2 = "len=" + strArrSplit.length + " ";
                for (String str3 : strArrSplit) {
                    str2 = str2 + "-" + str3;
                }
                if (strArrSplit.length >= 9) {
                    i.a(strArrSplit);
                }
            }
        }
    }

    public i() {
        a aVar = new a();
        this.f16888d = aVar;
        this.f16889e = new c();
        this.f16890f = 0;
        this.f16891g = new d();
        this.f16893i = ProxyProperties.LOCAL_EXCL_LIST;
        this.f16894j = new e();
        this.f16897m = -1;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (f16878o && jElapsedRealtime > DateUtils.MINUTE_IN_MILLIS) {
            f16878o = false;
        }
        u0.c.f17381h.a(aVar, 1);
        q();
        j0 j0Var = j0.f16915j;
        j0Var.c(this.f16889e);
        j0Var.c(this.f16891g);
    }

    public static void a(String[] strArr) {
        try {
            int i2 = Integer.parseInt(strArr[2]) - 1;
            for (int i3 = 0; i3 < 4; i3++) {
                if (strArr.length > (i3 + 2) * 4) {
                    int i4 = i3 * 4;
                    int i5 = Integer.parseInt(strArr[i4 + 4]);
                    if (i5 < 100) {
                        int[] iArr = u0.b.T1;
                        int i6 = (i2 * 8) + (i3 * 2);
                        iArr[i6] = i5;
                        iArr[i6 + 1] = Integer.parseInt(strArr[i4 + 7]);
                    } else {
                        int[] iArr2 = u0.b.T1;
                        int i7 = (i2 * 8) + (i3 * 2);
                        iArr2[i7] = 0;
                        iArr2[i7 + 1] = 0;
                    }
                } else {
                    int[] iArr3 = u0.b.T1;
                    int i8 = (i2 * 8) + (i3 * 2);
                    iArr3[i8] = 0;
                    iArr3[i8 + 1] = 0;
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void b(String[] strArr) {
        if (strArr.length > 9) {
            v(strArr[3]);
            u(strArr[5]);
            t(strArr[1], strArr[9]);
        }
    }

    public static /* synthetic */ int h(i iVar) {
        int i2 = iVar.f16890f;
        iVar.f16890f = i2 + 1;
        return i2;
    }

    public static i o() {
        return f16877n;
    }

    public static void t(String str, String str2) {
        try {
            Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
            calendar.get(15);
            calendar.get(16);
            if (str.length() <= 5 || str2.length() <= 5) {
                return;
            }
            u0.b.O1 = str2.substring(4, 6).trim() + str2.substring(2, 4).trim() + str2.substring(0, 2).trim() + str.substring(0, 2).trim() + str.substring(2, 4).trim() + str.substring(4, 6).trim();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void u(String str) {
        try {
            if (str.length() > 7) {
                u0.b.N1 = String.format("%03d°%02d′%02d″", Integer.valueOf(Integer.parseInt(str.substring(0, 3))), Integer.valueOf(Integer.parseInt(str.substring(3, 5))), Integer.valueOf(Integer.parseInt(str.substring(6, 8))));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void v(String str) {
        try {
            if (str.length() > 7) {
                u0.b.M1 = String.format("%02d°%02d′%02d″", Integer.valueOf(Integer.parseInt(str.substring(0, 2))), Integer.valueOf(Integer.parseInt(str.substring(2, 4))), Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void n(String[] strArr, int i2) {
        int i3;
        try {
            if (i2 == 0) {
                if (strArr.length > 14) {
                    if (strArr[2] != null && !strArr[2].equals(ProxyProperties.LOCAL_EXCL_LIST)) {
                        try {
                            this.f16896l = Integer.parseInt(strArr[2]);
                        } catch (Exception unused) {
                        }
                    }
                    u0.b.Y1 = 0;
                    for (int i4 = 0; i4 < 12; i4++) {
                        int i5 = i4 + 3;
                        if (strArr[i5] != null) {
                            u0.b.S1[i4] = Integer.parseInt(strArr[i5]);
                            u0.b.Y1++;
                        } else {
                            u0.b.S1[i4] = 0;
                        }
                    }
                }
            } else if (i2 == 1 && strArr.length > 2 && strArr[2] != null && !strArr[2].equals(ProxyProperties.LOCAL_EXCL_LIST)) {
                this.f16895k = Integer.parseInt(strArr[2]);
            }
        } catch (Exception unused2) {
        }
        int i6 = this.f16895k;
        if (i6 == 2 || (i3 = this.f16896l) == 2 || i6 == 3 || i3 == 3) {
            this.f16886b = true;
        } else {
            this.f16886b = false;
        }
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        boolean z2;
        this.f16885a = location;
        Log.e("Gps", " Known Location : " + location);
        Location location2 = this.f16885a;
        if (location2 != null) {
            int bearing = (int) location2.getBearing();
            this.f16885a.getTime();
            this.f16885a.getAltitude();
            u0.b.Q1 = (int) (this.f16885a.getAccuracy() * 100.0f);
            u0.b.R1 = (int) this.f16885a.getAltitude();
            if (u0.b.f17359s0 != bearing) {
                u0.b.f17359s0 = bearing;
                h.f16865a.c();
                qt.y0(1033, u0.b.f17359s0);
            }
            int speed = (int) (this.f16885a.getSpeed() * 3.6f);
            if (u0.b.C1) {
                u0.d.v0(speed);
            }
            int altitude = (int) this.f16885a.getAltitude();
            if (u0.b.f17361t0 != altitude) {
                h.f16867c.c();
                u0.b.f17361t0 = altitude;
                z2 = true;
            } else {
                z2 = false;
            }
            if (!o1.a.f16810h.d()) {
                o1.a.f16810h.a((float) this.f16885a.getAltitude());
            }
            double longitude = this.f16885a.getLongitude();
            if (u0.b.b2 != longitude) {
                h.f16868d.c();
                u0.b.b2 = longitude;
                z2 = true;
            }
            double latitude = this.f16885a.getLatitude();
            if (u0.b.c2 != latitude) {
                h.f16869e.c();
                u0.b.c2 = latitude;
                z2 = true;
            }
            if (z2) {
                float f2 = altitude;
                float fC = o1.a.f16810h.c();
                if (fC != Float.MIN_VALUE) {
                    f2 = fC;
                }
                u0.d.L3(179, (float) longitude, (float) latitude, f2);
            }
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i2, Bundle bundle) {
    }

    public boolean p() {
        return Settings.System.getInt(App.c().getContentResolver(), "gps_auto_time", 0) == 1;
    }

    public final void q() {
        try {
            LocationManager locationManager = (LocationManager) App.c().getSystemService("location");
            if (locationManager != null) {
                locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 1000L, 0.0f, this);
                locationManager.addNmeaListener(this.f16894j);
            }
            if (locationManager == null) {
                l.a().postDelayed(new b(), 1000L);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void r(Location location) {
        if (App.c() == null) {
            return;
        }
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        calendar.get(15);
        long time = (location != null && p()) ? location.getTime() + ((long) (calendar.get(16) + 0)) : System.currentTimeMillis();
        calendar.setTimeInMillis(time);
        int i2 = calendar.get(1);
        int i3 = calendar.get(2) + 1;
        int i4 = calendar.get(5);
        int i5 = calendar.get(11);
        int i6 = calendar.get(12);
        Object[] objArr = (i2 == f16879p && i3 == f16880q && i4 == f16881r && i5 == f16882s && i6 == f16883t) ? false : true;
        f16879p = i2;
        f16880q = i3;
        f16881r = i4;
        f16882s = i5;
        f16883t = i6;
        int i7 = calendar.get(13);
        f16884u = i7;
        if (objArr != false) {
            z.k.s(13, f16879p % 100, f16880q, f16881r, f16882s, f16883t, i7);
        }
        int i8 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
        if (this.f16897m != i8) {
            this.f16897m = i8;
            z.k.s(1, 52, i8);
        }
    }

    public void s(int i2, int i3, int i4, int i5, int i6, int i7) {
        if (f16878o) {
            f16878o = false;
            Calendar calendar = Calendar.getInstance();
            calendar.set(1, i2 + 2000);
            calendar.set(2, i3 > 0 ? i3 - 1 : 0);
            calendar.set(5, i4);
            calendar.set(11, i5);
            calendar.set(12, i6);
            calendar.set(13, i7);
            Log.e("Gps", calendar.toString());
            long timeInMillis = calendar.getTimeInMillis();
            if (timeInMillis / 1000 < 2147483647L) {
                ((AlarmManager) App.c().getSystemService(Context.ALARM_SERVICE)).setTime(timeInMillis);
            }
        }
    }
}
