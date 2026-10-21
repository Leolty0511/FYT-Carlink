package o1;

import android.content.ContentResolver;
import android.provider.Settings;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class n0 {
    public static boolean a() {
        String strY0 = u.Y0();
        return !(a.i.r(strY0) || strY0.equals("com.syu.video") || strY0.equals("com.syu.av") || strY0.equals(a.b.f25m) || h0.c.G != 0 || u0.b.f17320f == 0 || u0.b.f17306a0 == 0 || u0.b.f17347o == 1);
    }

    public static void b() {
        if (u0.b.f17366w == 0) {
            u0.d.P(u0.b.L);
            int i2 = u0.b.Q2;
            int i3 = u0.b.P2;
            d(i3 + (((u0.b.K * (i2 - i3)) + 50) / 100));
            return;
        }
        u0.d.P(u0.b.M);
        int i4 = u0.b.S2;
        int i5 = u0.b.R2;
        d(i5 + (((u0.b.K * (i4 - i5)) + 50) / 100));
    }

    public static int c(int[] iArr, int i2) {
        int length = iArr.length;
        int i3 = 0;
        while (i3 < length && i2 > iArr[i3]) {
            i3++;
        }
        return i3;
    }

    public static void d(int i2) {
        try {
            int iM = s0.m("ro.build.version.sdk", 16);
            if (iM < 31) {
                if (iM < 29) {
                    new j1.c("setBacklightBrightness").g(a.f.r()).d(Integer.valueOf(i2)).a();
                    return;
                } else {
                    new j1.c("setTemporaryBrightness").g(a.f.h()).d(Integer.valueOf(Math.max(1, Math.min(i2, 255)))).a();
                    return;
                }
            }
            int iMax = Math.max(1, Math.min(i2, 255));
            ContentResolver contentResolver = App.c().getContentResolver();
            try {
                if (Settings.System.getInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS_MODE) == 1) {
                    Settings.System.putInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS_MODE, 0);
                }
            } catch (Settings.SettingNotFoundException e2) {
                e2.printStackTrace();
            }
            try {
                if (Settings.System.getInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS, iMax) != iMax) {
                    Settings.System.putInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS, iMax);
                }
            } catch (Exception unused) {
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
