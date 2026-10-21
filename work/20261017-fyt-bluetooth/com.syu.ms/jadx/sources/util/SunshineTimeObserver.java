package util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import app.App;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import m1.c;
import u0.b;
import u0.i;

/* JADX INFO: loaded from: classes2.dex */
public class SunshineTimeObserver extends BroadcastReceiver implements Runnable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static SunshineTimeObserver f17683g = new SunshineTimeObserver();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Date f17684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Date f17685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17686c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Location f17687d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17688e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17689f;

    private SunshineTimeObserver() {
        this.f17684a = null;
        this.f17685b = null;
        this.f17689f = 0;
        try {
            this.f17684a = new Date(c.d(227, ProxyProperties.LOCAL_EXCL_LIST));
            this.f17685b = new Date(c.d(228, ProxyProperties.LOCAL_EXCL_LIST));
        } catch (Exception unused) {
        }
        this.f17689f = (TimeZone.getDefault().getRawOffset() / BatchedScanSettings.MAX_INTERVAL_SEC) / 1000;
        u0.c.f17376c.a(this, 0);
        u0.c.f17386m.a(this, 1);
        Log.e("Qin", "------>> SunshineTimeObserver init : ");
    }

    public void X(double d2, double d3) {
        Y(d2, d3, this.f17689f);
    }

    public void Y(double d2, double d3, int i2) {
        String str;
        String str2;
        Log.e("Qin", "------>> calculateSunshineTime longitude : " + d2 + " latitude: " + d3);
        try {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = (Calendar) calendar.clone();
            str = "Qin";
            try {
                double dAcos = (((((double) ((i2 * 15) + 180)) - d2) - ((Math.acos((-Math.tan(((Math.cos((((double) (calendar.get(6) + 9)) * 6.283185307179586d) / ((double) calendar.getActualMaximum(6))) * (-23.4d)) * 3.141592653589793d) / 180.0d)) * Math.tan((d3 * 3.141592653589793d) / 180.0d)) * 180.0d) / 3.141592653589793d)) * 24.0d) / 360.0d;
                calendar2.set(11, (int) dAcos);
                calendar2.set(12, (int) ((dAcos * 60.0d) % 60.0d));
                calendar2.set(13, 0);
                this.f17684a = calendar2.getTime();
                this.f17685b = c0(dAcos, d2, i2);
                c.f(227, this.f17684a.toString());
                c.f(228, this.f17685b.toString());
                str2 = str;
            } catch (Exception e2) {
                e = e2;
                str2 = str;
                Log.e(str2, "------>> calculateSunshineTime longitude : " + d2 + " latitude: " + d3 + " == >>  Error!!");
                e.printStackTrace();
            }
        } catch (Exception e3) {
            e = e3;
            str = "Qin";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("------>> sunrise : ");
        Date date = this.f17684a;
        String string = WifiEnterpriseConfig.EMPTY_VALUE;
        sb.append(date == null ? WifiEnterpriseConfig.EMPTY_VALUE : date.toString());
        sb.append(" sunset : ");
        Date date2 = this.f17685b;
        if (date2 != null) {
            string = date2.toString();
        }
        sb.append(string);
        Log.e(str2, sb.toString());
    }

    public void Z() {
        Log.e("Qin", "------>> SunshineTimeObserver endObserve : ");
        if (this.f17688e) {
            App.c().unregisterReceiver(this);
            this.f17686c = false;
        }
    }

    public boolean a0(Date date) {
        Date date2 = this.f17684a;
        if (date2 == null || this.f17685b == null) {
            return false;
        }
        return date2.compareTo(date) >= 0 || this.f17685b.compareTo(date) <= 0;
    }

    public void b0() {
        if (this.f17688e) {
            return;
        }
        Log.e("Qin", "------>> SunshineTimeObserver startObserve : ");
        IntentFilter intentFilter = new IntentFilter(Intent.ACTION_TIME_TICK);
        intentFilter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
        intentFilter.addAction(Intent.ACTION_TIME_CHANGED);
        intentFilter.addAction(Intent.ACTION_DATE_CHANGED);
        App.c().registerReceiver(this, intentFilter);
        this.f17688e = true;
    }

    public Date c0(double d2, double d3, int i2) {
        double d4 = ((((((double) (i2 * 15)) - d3) / 180.0d) + 1.0d) * 24.0d) - d2;
        Calendar calendar = (Calendar) Calendar.getInstance().clone();
        calendar.set(11, (int) d4);
        calendar.set(12, (int) ((d4 * 60.0d) % 60.0d));
        calendar.set(13, 0);
        return calendar.getTime();
    }

    public void d0() {
        if (i.l3().h3() == 2) {
            i.l3().C3(this.f17686c ? 1 : 0);
        }
    }

    public void e0() {
        Date time = Calendar.getInstance().getTime();
        boolean zA0 = a0(time);
        Log.e("Qin", "------>> tick " + time + " isNight: " + this.f17686c + " night : " + zA0);
        if (this.f17686c != zA0) {
            this.f17686c = zA0;
            StringBuilder sb = new StringBuilder();
            sb.append("------>> sunrise : ");
            Date date = this.f17684a;
            String string = WifiEnterpriseConfig.EMPTY_VALUE;
            sb.append(date == null ? WifiEnterpriseConfig.EMPTY_VALUE : date.toString());
            sb.append(" sunset : ");
            Date date2 = this.f17685b;
            if (date2 != null) {
                string = date2.toString();
            }
            sb.append(string);
            sb.append(" isNight : ");
            sb.append(this.f17686c);
            Log.e("Qin", sb.toString());
            d0();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(Intent.ACTION_TIME_TICK)) {
            e0();
            return;
        }
        if (intent.getAction().equals(Intent.ACTION_TIMEZONE_CHANGED) || intent.getAction().equals(Intent.ACTION_DATE_CHANGED) || intent.getAction().equals(Intent.ACTION_TIME_CHANGED)) {
            this.f17689f = (TimeZone.getDefault().getRawOffset() / BatchedScanSettings.MAX_INTERVAL_SEC) / 1000;
            Location location = this.f17687d;
            if (location != null) {
                X(location.getLongitude(), this.f17687d.getLatitude());
                e0();
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (b.f17306a0 != 1 || b.f17320f != 1) {
            Z();
        } else {
            d0();
            b0();
        }
    }
}
