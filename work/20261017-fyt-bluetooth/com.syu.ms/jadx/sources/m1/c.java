package m1;

import a.i;
import android.content.pm.PackageManager;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.util.Log;
import android.util.SparseIntArray;
import app.App;
import base.Configure;
import e.d;
import h0.e;
import k0.nt;
import k0.qt;
import o0.g;
import o1.g0;
import o1.o0;
import o1.s0;
import y0.f;
import y0.h;
import y0.j;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static SparseIntArray f13519a = new SparseIntArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f13520b;

    public class a extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String strD = c.d(1, null);
            u0.b.A3 = strD;
            if (strD != null) {
                c.f(1, null);
            }
            if (c.f13520b == null && a.b.f14d0 == 0) {
                return;
            }
            while (!m1.a.f13514c) {
                i.a0(1000L);
            }
            b.f13518a.c();
            if (c.f13520b != null) {
                c.f(0, c.f13520b);
                String unused = c.f13520b = null;
            }
        }
    }

    public static int c(int i2, int i3) {
        return m1.a.f13517f.b(i2, i3);
    }

    public static String d(int i2, String str) {
        return m1.a.f13517f.c(i2, str);
    }

    public static int e(int i2, int i3) {
        m1.a.f13517f.e(i2, i3);
        return i3;
    }

    public static void f(int i2, String str) {
        m1.a.f13517f.f(i2, str);
    }

    public static void g(int i2, int i3) {
        m1.a.f13517f.g(i2, i3);
    }

    public static void h(int i2, String str) {
        m1.a.f13517f.h(i2, str);
    }

    public static void i(int i2) {
        f13519a.put(i2, 1);
    }

    public static void j(boolean z2) {
        for (int i2 = 0; i2 < 36; i2++) {
            f.f18041d0[i2] = c(i2 + 10, f.f18044e0[i2]);
        }
        for (int i3 = 0; i3 < 36; i3++) {
            f.f18053h0[i3] = c(i3 + 46, f.f18056i0[i3]);
        }
        for (int i4 = 0; i4 < 36; i4++) {
            f.f18060k0[i4] = c(i4 + 230, f.f18062l0[i4]);
        }
        if (!z2) {
            for (int i5 = 0; i5 < 36; i5++) {
                e(i5 + 10, f.f18041d0[i5]);
            }
            for (int i6 = 0; i6 < 36; i6++) {
                e(i6 + 46, f.f18053h0[i6]);
            }
            for (int i7 = 0; i7 < 36; i7++) {
                e(i7 + 230, f.f18060k0[i7]);
            }
        }
        h.J();
    }

    public static boolean k(int i2) {
        return f13519a.get(i2, 0) == 1;
    }

    public static void l(boolean z2) {
        for (int i2 = 0; i2 < 34; i2++) {
            int[] iArr = d.f1621a;
            iArr[i2] = c(i2 + 339, d.f1622b[i2]);
            u0.d.I3(64, i2, iArr[i2]);
        }
        if (z2) {
            return;
        }
        for (int i3 = 0; i3 < 34; i3++) {
            e(i3 + 339, d.f1621a[i3]);
        }
    }

    public static void m() {
        g0 g0Var = new g0("app_store", DhcpPacket.MAX_LENGTH);
        m1.a.f13517f = g0Var;
        g0Var.a();
    }

    public static void n() {
        Log.e("bootA", "============================>>> 000000");
        int iK = i.k("sys.app_id", -1);
        if (iK >= 0) {
            u0.b.M2.d(iK);
        }
        try {
            f13520b = a.f.q().getApplicationInfo(App.c().getPackageName(), 128).metaData.getString("compile", "1");
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        if (f13520b == null) {
            f13520b = "0";
        }
        if (f13520b.equals(d(0, "0"))) {
            f13520b = null;
        }
        j(true);
        r(true);
        q(true);
        l(true);
        p(true);
        u0.b.M2.d(c(2, 0));
        new a().start();
    }

    public static void o(int i2, int i3) {
        if (i2 < 0 || i2 >= 128) {
            return;
        }
        int[] iArr = m1.a.f13513b;
        if (iArr[i2] != i3) {
            iArr[i2] = i3;
            k.s(9, 1, 0, 1, (i2 >> 8) & 255, i2 & 255, i3 & 255);
        }
    }

    public static void p(boolean z2) {
        try {
            u0.d.F0(d(385, SystemProperties.get("sys.syu.reserving_service_pkg", "com.syu.us")), d(386, SystemProperties.get("sys.syu.reserving_service_action", ProxyProperties.LOCAL_EXCL_LIST)));
        } catch (Exception unused) {
        }
        u0.i iVarL3 = u0.i.l3();
        iVarL3.f4(d(387, SystemProperties.get("sys.syu.third_dvr", ProxyProperties.LOCAL_EXCL_LIST)));
        iVarL3.o4(c(223, s0.m("ro.build.remember_type", 1)));
        u0.d.k2(d(130, SystemProperties.get("ro.fyt.navi_package", u0.b.K1)));
        if (z2) {
            g.j(d(131, null));
        }
        u0.d.D(c(132, i.k("ro.fyt.backcar_mirror", u0.b.f17358s)));
        u0.d.i2(c(133, i.k("ro.fyt.navi_onboot", u0.b.B)));
        h.c0(c(134, i.k("ro.fyt.navi_mix", f.Q)));
        h.d0(c(135, i.k("ro.fyt.nonavi_mix", f.N)));
        qt.O(c(136, i.k("ro.fyt.driver_onright", nt.X)));
        qt.C(c(137, i.k("ro.fyt.air_window", nt.V)));
        u0.d.R(c(138, i.k("ro.fyt.bright_level_day", u0.b.T2)));
        u0.d.T(c(139, i.k("ro.fyt.bright_level_night", u0.b.U2)));
        u0.d.x(c(140, i.k("ro.fyt.auto_blackscreen", u0.b.S)));
        e.e(c(141, i.k("ro.fyt.auto_pick", h0.c.B)));
        g.g(c(143, i.k("ro.fyt.dvd_enable", o0.e.f16776g)));
        qt.N(c(142, i.k("ro.fyt.door_window", nt.T)));
        h.n(c(146, i.k("ro.fyt.backcar_percent", f.T)));
        u0.d.e0(c(148, i.k("ro.fyt.cutacc_lcdc", u0.b.f17365v0)));
        u0.d.k0(c(149, i.k("ro.fyt.eclink", u0.b.f17369x0)));
        u0.d.z(c(150, i.k("ro.fyt.aux", u0.b.G0)));
        qt.s0(c(151, i.k("ro.fyt.sync", 1)));
        if (u0.b.E1) {
            u0.i.l3().f3(u0.b.F0 == 1 ? 0 : 1);
        }
        u0.d.p3(c(152, i.k("ro.fyt.sleep_airplane", u0.b.K0)));
        h.k0(c(153, i.k("ro.fyt.spectrum", f.V)));
        e.u(c(154, i.k("ro.fyt.btring_percent", h0.c.f2428c0)));
        u0.d.L(c(155, i.k("ro.mtu.backcar_360camera", 0)));
        u0.d.B(c(156, i.k("ro.mtu.360camera_enable", 0)));
        u0.d.l3(c(157, i.k("ro.fyt.flash_write", 0)));
        h.n0(c(170, i.k("ro.fyt.subwoof", f.W0)));
        u0.d.O3(c(172, i.k("ro.fyt.usb_enable", u0.b.f17313c1)));
        if (u0.b.w4 == 1) {
            u0.d.q(c(158, i.k("ro.fyt.anykey_boot", u0.b.f17370y)));
        }
        if (u0.b.y4 == 1) {
            u0.d.m2(c(160, i.k("ro.fyt.osd_time", u0.b.W)));
        }
        if (f.f18042d1 == 1) {
            h.l(c(161, i.k("ro.fyt.backcar_mute", f.f18087y)));
        }
        if (f.f18036b1 == 1) {
            h.C(c(162, i.k("ro.fyt.defvol_boot_enable", f.A)));
        }
        if (f.f18039c1 == 1) {
            h.A(c(163, i.k("ro.fyt.defvol_boot", f.D)));
        }
        if (f.Z0 == 1) {
            j jVarA3 = j.a3();
            jVarA3.k3(Math.min(36, c(388, i.k("sys.syu.extra_call_def_volume", 18))));
            Log.e("bootA", "===========>>>   shared Load boot DataSound.sExtraCallVol ===  " + f.f18043e);
            jVarA3.j3(Math.min(36, c(381, i.k("sys.syu.bluetooth_def_volume", 18))));
            Log.e("bootA", "===========>>>   shared Load boot DataSound.sBtVol ===  " + f.f18040d);
            int iC = c(163, i.k("ro.fyt.defvol_boot", f.D));
            int iMin = Math.min(g.e.m() ? 36 : iC, c(380, iC));
            jVarA3.m3(iMin);
            Log.e("bootA", "===========>>>   shared DataSound.mSysVol ===  " + f.f18046f + "  defVol === " + iC + "  vol === " + iMin + " DataChip.notInCar() = " + g.e.m());
            h.t0(u0.b.D == 2 ? f.f18040d : f.f18046f);
        }
        if (f.f18045e1 == 1) {
            h.a0(c(164, i.k("ro.fyt.navimix_enable", f.K)));
        }
        if (f.f18048f1 == 1) {
            h.q(c(165, i.k("ro.fyt.beep_enable", f.f18075s)));
            h.r(f.f18073r);
        }
        if (f.f18051g1 == 1) {
            h.S(c(166, i.k("ro.fyt.loud_enable", f.F)));
        }
        if (f.f18054h1 == 1) {
            h.j(c(167, i.k("ro.fyt.amp_enable", f.I)));
            h.k(f.H);
        }
        if (u0.b.z4 == 1) {
            u0.d.F(c(168, i.k("ro.fyt.backcar_radar_enable", u0.b.H)));
        }
        if (u0.b.A4 == 1) {
            u0.d.H(c(169, i.k("ro.fyt.backcar_track_enable", u0.b.J)));
        }
        if (p0.b.f17028j == 1) {
            p0.c.a(c(173, i.k("ro.fyt.dvr_type", p0.b.f17027i)));
        }
        int iC2 = c(383, u0.b.f17352p1);
        u0.b.f17352p1 = iC2;
        u0.d.I3(117, iC2);
        u0.d.A0(c(384, i.k("persist.sys.ahd", u0.b.s1)));
        if (u0.b.B4 == 1) {
            a1.c.a(c(177, 0));
            w0.d.f17790b.u(c(178, 0));
        }
        u0.d.Q3(c(174, i.k("ro.fyt.video_aux_tv", 0)));
        u0.d.w(c(196, i.k("ro.fyt.audio_tv_ipod", 0)));
        u0.i.l3().s4(d(215, s0.o("ro.syu.voice_def", ProxyProperties.LOCAL_EXCL_LIST)));
        if (k(197)) {
            u0.d.f1(c(197, s0.m("ro.syu.lamplet_by_time", 0)));
        }
        if (k(198)) {
            w0.f.a(c(198, s0.m("ro.syu.air_line_alwayson", 0)));
        }
        if (k(199)) {
            u0.d.r2(c(199, s0.m("ro.syu.panel_key_enable", 0)));
        }
        if (u0.b.x4 == 1) {
            u0.d.y0(c(159, s0.m("ro.syu.handbrake_enable", 0)));
            u0.d.z0(u0.b.f17341m);
        }
        if (k(210)) {
            u0.d.H0(c(210, Configure.Property.HOST_BACKCAR_ENABLE.d(1)));
        }
        h0.g.Y2().X2(c(214, s0.m("ro.syu.callpipshow", h0.c.V)) == 1);
        j.a3().i3(c(1000, s0.m("persist.syu.fmsender.volume", 0)));
    }

    public static void q(boolean z2) {
        for (int i2 = 0; i2 < 48; i2++) {
            int[] iArr = f.f18086x0;
            iArr[i2] = o0.a(i.k("ro.fyt.def.sb." + h.f0(i2), iArr[i2]), 0, 20);
            if (f.Z0 == 1) {
                f.f18084w0[i2] = iArr[i2];
            }
            h.g0(i2, c(i2 + 82, iArr[i2]));
        }
    }

    public static void r(boolean z2) {
        for (int i2 = 0; i2 < 36; i2++) {
            f.f18074r0[i2] = c(i2 + 266, f.f18076s0[i2]);
        }
        for (int i3 = 0; i3 < 36; i3++) {
            f.f18080u0[i3] = c(i3 + 302, f.f18082v0[i3]);
        }
        if (!z2) {
            for (int i4 = 0; i4 < 36; i4++) {
                e(i4 + 266, f.f18074r0[i4]);
            }
            for (int i5 = 0; i5 < 36; i5++) {
                e(i5 + 302, f.f18080u0[i5]);
            }
        }
        h.L();
    }
}
