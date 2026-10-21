package c;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothClass;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.UrlQuerySanitizer;
import android.net.dhcp.DhcpPacket;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import app.App;
import k0.nt;
import k0.qt;
import k0.rt;
import module.sound.AudioDevice;
import o1.d0;
import o1.n0;
import o1.o0;
import o1.s0;
import o1.u;
import plugins.ZLink;
import util.log.LogType;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
public class c extends c.d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c.e f347g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SparseArray<SparseIntArray> f345e = new SparseArray<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f349i = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SparseArray<n> f346f = new SparseArray<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public App f348h = App.c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            int i3 = (i2 == 4 || i2 == 5 || i2 == 3 || (ZLink.Y().d0() && ZLink.Y().f17072c)) ? 6 : 88;
            c.e.d().b();
            c.e.d().c(i3);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = (h0.c.E == 4 || (ZLink.Y().d0() && ZLink.Y().f17072c)) ? 5 : 87;
            c.e.d().b();
            c.e.d().c(i2);
        }
    }

    /* JADX INFO: renamed from: c.c$c, reason: collision with other inner class name */
    public class RunnableC0013c implements Runnable {
        public RunnableC0013c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iJ3 = u0.i.l3().j3();
            int i2 = h0.c.E;
            int i3 = 5;
            if (i2 != 4 && i2 != 5 && i2 != 3 && ((!h1.a.d().f() || iJ3 <= 0) && (!ZLink.Y().d0() || !ZLink.Y().f17072c))) {
                i3 = 85;
            } else if (iJ3 > 0 && iJ3 != 1) {
                i3 = 6;
            }
            c.e.d().b();
            c.e.d().c(i3);
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f353a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ long f354b;

        public d(int i2, long j2) {
            this.f353a = i2;
            this.f354b = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.r(this.f353a, 1, 0, SystemClock.uptimeMillis(), this.f354b);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.b(85);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.b(88);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.b(87);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.b(88);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.b(87);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.b(88);
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.b(87);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            int i3 = (i2 == 4 || i2 == 5 || i2 == 3 || (ZLink.Y().d0() && ZLink.Y().f17072c)) ? 6 : 87;
            c.e.d().b();
            c.e.d().c(i3);
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = (h0.c.E == 4 || (ZLink.Y().d0() && ZLink.Y().f17072c)) ? 5 : 88;
            c.e.d().b();
            c.e.d().c(i2);
        }
    }

    public class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f365a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f366b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f367c;

        public n(String str, String str2, String str3) {
            this.f365a = str;
            this.f366b = str2;
            this.f367c = str3;
        }
    }

    public c() {
        this.f347g = null;
        this.f347g = c.e.d();
        m();
        i();
    }

    public void A(int i2, Runnable runnable) {
        int i3 = u0.b.D;
        if (nt.f8655p == 0) {
            u0.d.y1();
        } else if (i3 == 9 || i3 == 10) {
            runnable.run();
        } else {
            u0.d.I3(60, i2);
        }
    }

    public void B(int i2) {
        int i3 = y0.f.f18037c;
        if (i3 > 0) {
            y0.h.u0(Math.max(i3 - i2, 0));
        }
    }

    public void C(int i2) {
        if (y0.f.f18037c < y0.f.f18049g) {
            y0.h.u0(Math.min(y0.f.f18037c + i2, y0.f.f18049g));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:212:0x045a  */
    /* JADX WARN: Code duplicated, block: B:213:0x045e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0091  */
    /* JADX WARN: Switch 'out' block B:212:0x045a for B:51:0x00c5 already processed. Defaulting to fallback option. */
    @Override // c.d
    public boolean b(int i2) {
        boolean z2;
        h0.f fVar;
        int i3 = u0.b.D;
        boolean z3 = u0.b.f17306a0 == 1;
        boolean z4 = u0.b.f17320f == 1;
        boolean z5 = u0.b.n4 != 1;
        boolean z6 = u0.b.f17368x == 1;
        int i4 = h0.c.G;
        Log.e("Mcu", "acc : " + z3 + "  mcu : " + z4 + "  sleep:" + z5 + " anyboot:" + z6 + " keyCode:" + i2);
        if (i2 == 555) {
            if (!z5 && !z3) {
                u(1, 0, 1);
                u(1, 170, 145);
            } else if (z4) {
                z2 = false;
            } else {
                u(1, 0, 1);
            }
            z2 = true;
        } else if (z4 || !z6) {
            z2 = false;
        } else {
            u(1, 0, 1);
            z2 = true;
        }
        if (z2 || !z4) {
            return true;
        }
        if (i2 == 24) {
            y0.h.u0(-6);
            y0.h.u0(-1);
        } else if (i2 == 25) {
            y0.h.u0(-6);
            y0.h.u0(-2);
        } else if (i2 == 113 || i2 == 114) {
            q(i2);
        } else if (i2 == 126 || i2 == 127) {
            l(i2, i3);
        } else if (i2 == 129) {
            o0.e.f16766b.f();
        } else if (i2 != 130) {
            switch (i2) {
                case 3:
                case 4:
                case 19:
                case 20:
                case 21:
                case 22:
                    q(i2);
                    break;
                case 5:
                    g();
                    break;
                case 6:
                    j();
                    break;
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                    break;
                default:
                    switch (i2) {
                        case 28:
                        case 67:
                        case 522:
                        case 533:
                            break;
                        case 82:
                            q(i2);
                            break;
                        case 187:
                            u.z0();
                            break;
                        case 512:
                            return x(4);
                        case 513:
                            return x(1);
                        case 514:
                            return x(2);
                        case 515:
                            return x(3);
                        case 516:
                            return x(5);
                        case 517:
                            return x(6);
                        case 518:
                            return x(8);
                        case 519:
                            return x(9);
                        case BluetoothClass.Device.PHONE_CORDLESS /* 520 */:
                            int i5 = p0.b.f17024f;
                            if (i5 == 1) {
                                u.H();
                            } else if (i5 == 2) {
                                u.d();
                            }
                            break;
                        case 521:
                            u.y();
                            break;
                        case 523:
                            u.O();
                            break;
                        case BluetoothClass.Device.PHONE_SMART /* 524 */:
                            u.W0();
                            break;
                        case 525:
                            u.U0();
                            break;
                        case 526:
                            u.u();
                            break;
                        case 527:
                            u0.d.Q1(1);
                            break;
                        case BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY /* 528 */:
                            u.a1();
                            break;
                        case 529:
                            u.h();
                            break;
                        case 530:
                            u.v();
                            break;
                        case 531:
                            if (!u.n0()) {
                                u.x0();
                            } else {
                                w0.d.f17790b.x(-1);
                            }
                            break;
                        case BluetoothClass.Device.PHONE_ISDN /* 532 */:
                            u0.d.D1();
                            break;
                        case 534:
                            u.x();
                            break;
                        case 535:
                            u.A();
                            break;
                        case 536:
                            u.V0();
                            break;
                        case 537:
                            return x(7);
                        case 538:
                            u.M();
                            break;
                        case 539:
                            u.y0();
                            break;
                        case 540:
                            u.A0();
                            break;
                        case 541:
                            h();
                            break;
                        case 587:
                            this.f370b.postDelayed(new a(), 50L);
                            break;
                        case 588:
                            this.f370b.postDelayed(new b(), 50L);
                            break;
                        case 589:
                            u0.d.H1();
                            break;
                        case 590:
                        case 591:
                        case 592:
                        case 593:
                        case 594:
                        case 595:
                        case 596:
                        case 597:
                        case 598:
                        case 599:
                        case CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR /* 600 */:
                        case 601:
                        case 602:
                        case 603:
                        case 604:
                        case 605:
                        case 606:
                        case 607:
                        case 608:
                        case 609:
                        case 610:
                        case 611:
                        case 612:
                        case 613:
                        case 614:
                        case 622:
                            u0.d.I3(135, i2 - 590);
                            break;
                        case 615:
                            u.J0("com.syu.rearcamera");
                            break;
                        case 616:
                        case 617:
                        case 618:
                        case 621:
                        case 623:
                        case 624:
                        case 625:
                        case 626:
                        case 627:
                        case 628:
                        case 629:
                        case 630:
                        case 631:
                        case 632:
                        case 635:
                        case 636:
                        case 637:
                        case 639:
                        case DisplayMetrics.DENSITY_XXXHIGH /* 640 */:
                            u0.d.I3(133, i2);
                            break;
                        case 619:
                            u.J0("com.syu.hicar");
                            break;
                        case 620:
                            a.i.C(u0.b.J1);
                            f.b.f1841d.f1844c.c(u0.b.J1, false);
                            f.b.f1841d.f1844c.a(u0.b.J1, false, -1, -1);
                            break;
                        case 633:
                            u0.i.l3().d4();
                            break;
                        case 634:
                            this.f370b.postDelayed(new RunnableC0013c(), 50L);
                            break;
                        case 642:
                            this.f370b.post(new Runnable() { // from class: c.b
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f344a.f();
                                }
                            });
                            break;
                        case 643:
                            this.f370b.post(new Runnable() { // from class: c.a
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f343a.k();
                                }
                            });
                            break;
                        case 1045:
                            u.S0("com.syu.carlink");
                            break;
                        case 1046:
                            u0.i.l3().e4();
                            break;
                        case 1047:
                            App.c().sendBroadcast(new Intent("com.syu.screenshot"));
                            break;
                        default:
                            switch (i2) {
                                case 84:
                                    if (i3 != 1) {
                                        q(i2);
                                    } else {
                                        w0.d.f17790b.v(2);
                                    }
                                    break;
                                case 85:
                                case 86:
                                case 87:
                                case 88:
                                case 89:
                                case 90:
                                    l(i2, i3);
                                    break;
                                case 91:
                                    y0.h.u0(-5);
                                    y0.h.u0(-6);
                                    break;
                                default:
                                    switch (i2) {
                                        case 400:
                                            y0.h.u0(-6);
                                            C(2);
                                            break;
                                        case 401:
                                            y0.h.u0(-6);
                                            B(2);
                                            break;
                                        case 402:
                                            y0.h.u0(-6);
                                            C(3);
                                            break;
                                        case 403:
                                            y0.h.u0(-6);
                                            B(3);
                                            break;
                                        case UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL /* 404 */:
                                            y0.h.u0(-1);
                                            break;
                                        case UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL /* 405 */:
                                            y0.h.u0(-2);
                                            break;
                                        default:
                                            switch (i2) {
                                                case 543:
                                                    if (!u.n0()) {
                                                        u.x0();
                                                    } else {
                                                        w0.d.f17790b.x(-3);
                                                    }
                                                    break;
                                                case 544:
                                                    if (!u.n0()) {
                                                        u.x0();
                                                    } else {
                                                        w0.d.f17790b.x(-2);
                                                    }
                                                    break;
                                                case 545:
                                                    u.J();
                                                    break;
                                                case 546:
                                                    break;
                                                case 547:
                                                    A(0, new e());
                                                    break;
                                                case 548:
                                                    A(1, new f());
                                                    break;
                                                case 549:
                                                    A(2, new g());
                                                    break;
                                                case 550:
                                                    A(3, new h());
                                                    break;
                                                case 551:
                                                    A(4, new i());
                                                    break;
                                                case 552:
                                                    A(5, new j());
                                                    break;
                                                case 553:
                                                    A(6, new k());
                                                    break;
                                                default:
                                                    i0.c cVarD = null;
                                                    switch (i2) {
                                                        case 555:
                                                            u0.d.U1(2);
                                                            break;
                                                        case 556:
                                                            if (u0.b.f17332j != 0) {
                                                                u0.d.N(0);
                                                            } else {
                                                                u0.d.N(1);
                                                            }
                                                            break;
                                                        case 557:
                                                            u.G0();
                                                            break;
                                                        case 558:
                                                            u0.d.u3(2);
                                                            break;
                                                        case 559:
                                                            rt.a3().Y2(1003, new int[]{1}, null, null);
                                                            s0.C(10L);
                                                            rt.a3().Y2(1003, new int[]{0}, null, null);
                                                            break;
                                                        case 560:
                                                            u.L();
                                                            break;
                                                        case 561:
                                                            z();
                                                            break;
                                                        case 562:
                                                            y();
                                                            break;
                                                        case 563:
                                                            if (i3 == 1) {
                                                                w0.d.f17790b.k();
                                                            }
                                                            break;
                                                        case 564:
                                                            if (i3 == 1) {
                                                                w0.d.f17790b.h();
                                                            }
                                                            break;
                                                        case 565:
                                                            if (i3 == 1) {
                                                                w0.d.f17790b.B();
                                                            }
                                                            break;
                                                        case 566:
                                                            if (i3 == 4) {
                                                                o0.e.f16766b.t();
                                                            }
                                                            break;
                                                        case 567:
                                                            if (i3 == 4) {
                                                                o0.e.f16766b.s(2);
                                                            }
                                                            break;
                                                        case 568:
                                                            y0.h.T(2);
                                                            break;
                                                        case 569:
                                                            u0.d.Q(-4);
                                                            break;
                                                        case 570:
                                                            u0.d.Q(-5);
                                                            break;
                                                        case 571:
                                                            try {
                                                                float f2 = Settings.System.getFloat(App.c().getContentResolver(), Settings.System.FONT_SCALE);
                                                                float f3 = 1.25f;
                                                                if (f2 >= 1.25f) {
                                                                    f3 = f2 < 1.35f ? 1.35f : f2 >= 1.35f ? 1.0f : f2;
                                                                }
                                                                if (f2 != f3) {
                                                                    Log.e("Gestrue", String.format("font scale : %.2f, fontScale: %.2f", Float.valueOf(f2), Float.valueOf(f3)));
                                                                    Settings.System.putFloat(App.c().getContentResolver(), Settings.System.FONT_SCALE, f3);
                                                                }
                                                            } catch (Settings.SettingNotFoundException e2) {
                                                                e2.printStackTrace();
                                                            }
                                                            break;
                                                        case 572:
                                                            AudioDevice.W().N();
                                                            break;
                                                        case 573:
                                                            b.a.e().j(0);
                                                            break;
                                                        case 574:
                                                            this.f370b.postDelayed(new l(), 50L);
                                                            break;
                                                        case 575:
                                                            this.f370b.postDelayed(new m(), 50L);
                                                            break;
                                                        case 576:
                                                            j0.b bVarA3 = h0.g.Y2().a3();
                                                            if (bVarA3 != null && (cVarD = bVarA3.D()) == null) {
                                                                cVarD = bVarA3.B();
                                                            }
                                                            if (cVarD != null && cVarD.x() == 3) {
                                                                cVarD.F0(h0.c.U != 1 ? 1 : 0);
                                                            } else {
                                                                int i6 = h0.c.E;
                                                                if (i6 != 0 && i6 != 1 && (fVar = h0.c.f2425b) != null) {
                                                                    fVar.W(h0.c.U != 1 ? 1 : 0);
                                                                } else if (ZLink.Y().d0()) {
                                                                    ZLink.Y().i0(DhcpPacket.MAX_LENGTH);
                                                                }
                                                            }
                                                            break;
                                                        case 577:
                                                            u0.i.l3().x3(1);
                                                            break;
                                                        default:
                                                            if (i2 <= 30000) {
                                                                return false;
                                                            }
                                                            u0.d.I3(133, i2);
                                                            break;
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            l(i2, i3);
        }
        return true;
    }

    @Override // c.d
    public boolean c(int i2, int i3) {
        return i2 == 555 && i3 == 20;
    }

    public final void f() {
        int i2 = (h0.c.E == 4 || (h1.a.d().f() && u0.i.l3().j3() == 1) || (ZLink.Y().d0() && ZLink.Y().f17072c)) ? 5 : BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY;
        c.e.d().b();
        c.e.d().c(i2);
    }

    public void g() {
        boolean z2 = SystemProperties.getBoolean("syu.bt.show.pip", false);
        boolean zW = u.W();
        boolean z3 = u0.b.D == 3;
        a.f.p().t(LogType.ZLINK, "HANDLE ==>> CALL EVENT : CALL pipBt: " + z2 + " topBt: " + zW + " btav: " + z3 + "  DataBt.sKeyDialHandle:" + h0.c.f2442j0);
        j0.b bVarA3 = h0.g.Y2().a3();
        int i2 = h0.c.f2442j0;
        if (i2 != 0) {
            if (i2 == 1) {
                if (bVarA3 == null) {
                    int i3 = h0.c.E;
                    if (i3 == 5 || i3 == 3) {
                        h0.c.f2425b.h(1);
                        return;
                    }
                    if ((z2 || u0.b.f17347o == 1) && h0.c.E == 4) {
                        h0.c.f2425b.h(0);
                        return;
                    } else if (!zW || z3) {
                        u.r();
                        return;
                    } else {
                        h0.c.f2425b.h(0);
                        return;
                    }
                }
                i0.c cVarA = bVarA3.A();
                if (cVarA != null && (cVarA.x() == 6 || cVarA.x() == 4)) {
                    cVarA.H(1);
                    return;
                }
                if ((z2 || u0.b.f17347o == 1) && cVarA != null && cVarA.x() == 5) {
                    cVarA.H(0);
                    return;
                }
                if (!zW || z3) {
                    u.r();
                    return;
                } else {
                    if (cVarA != null) {
                        cVarA.H(0);
                        return;
                    }
                    return;
                }
            }
            if (i2 != 2 && i2 != 3) {
                return;
            }
        }
        if (bVarA3 == null) {
            if ((z2 || u0.b.f17347o == 1) && h0.c.E == 4) {
                h0.c.f2425b.h(0);
                return;
            } else if (!zW || z3) {
                u.r();
                return;
            } else {
                h0.c.f2425b.h(0);
                return;
            }
        }
        i0.c cVarA2 = bVarA3.A();
        if ((z2 || u0.b.f17347o == 1) && cVarA2 != null && cVarA2.x() == 5) {
            cVarA2.H(0);
            return;
        }
        if (!zW || z3) {
            u.r();
        } else if (cVarA2 != null) {
            cVarA2.H(0);
        }
    }

    public void h() {
        int[] iArr = u0.b.f17366w == 0 ? u0.b.V2 : u0.b.W2;
        int length = iArr.length;
        u0.d.V(o0.a(iArr[((n0.c(iArr, u0.b.K) + length) - 1) % length], 0, u0.b.Q));
    }

    public void i() {
        v(28, 2, 28);
        v(28, 2, 28);
        v(7, 2, 2);
        v(8, 2, 3);
        v(9, 2, 4);
        v(10, 2, 5);
        v(11, 2, 6);
        v(12, 2, 7);
        v(13, 2, 8);
        v(14, 2, 9);
        v(15, 2, 10);
        v(16, 2, 11);
        v(81, 2, 12);
        v(17, 2, 13);
        v(18, 2, 14);
        v(7, 6, 20);
        v(8, 6, 11);
        v(9, 6, 12);
        v(10, 6, 13);
        v(11, 6, 14);
        v(12, 6, 15);
        v(13, 6, 16);
        v(14, 6, 17);
        v(15, 6, 18);
        v(16, 6, 19);
        v(7, 4, 0);
        v(8, 4, 1);
        v(9, 4, 2);
        v(10, 4, 3);
        v(11, 4, 4);
        v(12, 4, 5);
        v(13, 4, 6);
        v(14, 4, 7);
        v(15, 4, 8);
        v(16, 4, 9);
        v(7, 7, 0);
        v(8, 7, 1);
        v(9, 7, 2);
        v(10, 7, 3);
        v(11, 7, 4);
        v(12, 7, 5);
        v(13, 7, 6);
        v(14, 7, 7);
        v(15, 7, 8);
        v(16, 7, 9);
        v(7, 8, 0);
        v(8, 8, 1);
        v(9, 8, 2);
        v(10, 8, 3);
        v(11, 8, 4);
        v(12, 8, 5);
        v(13, 8, 6);
        v(14, 8, 7);
        v(15, 8, 8);
        v(16, 8, 9);
        v(7, 9, 0);
        v(8, 9, 1);
        v(9, 9, 2);
        v(10, 9, 3);
        v(11, 9, 4);
        v(12, 9, 5);
        v(13, 9, 6);
        v(14, 9, 7);
        v(15, 9, 8);
        v(16, 9, 9);
        v(8, 1, 1);
        v(9, 1, 2);
        v(10, 1, 3);
        v(11, 1, 4);
        v(12, 1, 5);
        v(13, 1, 6);
        v(126, 8, 0);
        v(127, 8, 2);
        v(85, 8, 1);
        v(86, 8, 3);
        v(87, 8, 5);
        v(88, 8, 4);
        v(89, 8, 7);
        v(90, 8, 6);
        v(66, 8, 1);
        v(126, 7, 0);
        v(127, 7, 2);
        v(85, 7, 1);
        v(86, 7, 3);
        v(87, 7, 5);
        v(88, 7, 4);
        v(89, 7, 7);
        v(90, 7, 6);
        v(66, 7, 1);
        v(126, 9, 0);
        v(127, 9, 2);
        v(85, 9, 1);
        v(86, 9, 3);
        v(87, 9, 5);
        v(88, 9, 4);
        v(89, 9, 7);
        v(90, 9, 6);
        v(66, 9, 1);
        v(126, 4, 126);
        v(127, 4, 127);
        v(85, 4, 85);
        v(86, 4, 86);
        v(87, 4, 87);
        v(88, 4, 88);
        v(89, 4, 89);
        v(90, 4, 90);
        v(66, 4, 85);
        v(126, 3, 126);
        v(127, 3, 127);
        v(85, 3, 85);
        v(66, 3, 85);
        v(86, 3, 86);
        v(87, 3, 87);
        v(88, 3, 88);
        v(87, 6, 87);
        v(88, 6, 88);
        v(87, 1, 87);
        v(88, 1, 88);
        v(89, 1, 561);
        v(90, 1, 562);
        v(126, 1, 563);
        v(85, 1, 84);
        v(87, 13, 87);
        v(88, 13, 88);
        v(87, 11, 87);
        v(88, 11, 88);
    }

    public void j() {
        j0.b bVarA3 = h0.g.Y2().a3();
        if (bVarA3 == null) {
            if (h0.c.E == 4) {
                h0.c.f2425b.z();
                return;
            } else {
                h0.c.f2425b.e();
                return;
            }
        }
        i0.c cVarA = bVarA3.A();
        if (cVarA != null) {
            if (cVarA.x() == 5) {
                cVarA.R();
            } else {
                cVarA.B();
            }
        }
    }

    public final void k() {
        int iJ3 = u0.i.l3().j3();
        int i2 = h0.c.E;
        int i3 = (i2 == 5 || i2 == 4 || i2 == 3 || (h1.a.d().f() && iJ3 == 2) || (ZLink.Y().d0() && ZLink.Y().f17072c)) ? 6 : 91;
        c.e.d().b();
        c.e.d().c(i3);
    }

    public void l(int i2, int i3) {
        SparseIntArray sparseIntArray = this.f345e.get(i2, null);
        Integer numValueOf = Integer.valueOf(sparseIntArray == null ? i2 : sparseIntArray.get(i3, -1));
        if (i2 != 28) {
            if (i2 != 130 && i2 != 66) {
                if (i2 != 67) {
                    if (i2 != 126 && i2 != 127) {
                        switch (i2) {
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                                break;
                            default:
                                switch (i2) {
                                    case 85:
                                    case 86:
                                    case 87:
                                    case 88:
                                    case 89:
                                    case 90:
                                        break;
                                    default:
                                        n(numValueOf, i2);
                                        break;
                                }
                        }
                    }
                }
                if (i3 != 1 && numValueOf.intValue() >= 0 && numValueOf.intValue() <= 6) {
                    w0.d.f17790b.z(numValueOf.intValue());
                    return;
                }
                if (i3 != 6 && numValueOf.intValue() >= 0) {
                    d1.d.f1569b.h(numValueOf.intValue());
                    return;
                }
                if (i3 != 4 && numValueOf.intValue() >= 0) {
                    o0.e.f16766b.D(numValueOf.intValue());
                    return;
                }
                if (i3 != 2 && numValueOf.intValue() >= 0) {
                    h0.c.f2425b.h(numValueOf.intValue());
                    return;
                } else {
                    if (i3 == 7 || numValueOf.intValue() < 0) {
                        n(numValueOf, i2);
                    }
                    return;
                }
            }
            if (i3 == 1 && numValueOf.intValue() >= 0) {
                if (numValueOf.intValue() == 87) {
                    w0.d.f17790b.c();
                    return;
                }
                if (numValueOf.intValue() == 88) {
                    w0.d.f17790b.g();
                    return;
                }
                if (numValueOf.intValue() == 565) {
                    w0.d.f17790b.B();
                    return;
                }
                if (numValueOf.intValue() == 564) {
                    w0.d.f17790b.h();
                    return;
                }
                if (numValueOf.intValue() == 562) {
                    y();
                    return;
                } else if (numValueOf.intValue() == 561) {
                    z();
                    return;
                } else {
                    if (numValueOf.intValue() == 84) {
                        w0.d.f17790b.v(2);
                        return;
                    }
                    return;
                }
            }
            if (i3 == 6 && numValueOf.intValue() >= 0) {
                if (numValueOf.intValue() == 87) {
                    d1.d.f1569b.c();
                    return;
                } else {
                    if (numValueOf.intValue() == 88) {
                        d1.d.f1569b.g();
                        return;
                    }
                    return;
                }
            }
            if (i3 != 3 || numValueOf.intValue() < 0) {
                if (i3 != 4 || numValueOf.intValue() < 0) {
                    if (numValueOf.intValue() < 0 || !(i3 == 13 || i3 == 11)) {
                        n(numValueOf, i2);
                        return;
                    } else if (numValueOf.intValue() == 87) {
                        qt.d();
                        return;
                    } else {
                        if (numValueOf.intValue() == 88) {
                            qt.e();
                            return;
                        }
                        return;
                    }
                }
                int iIntValue = numValueOf.intValue();
                if (iIntValue == 126) {
                    o0.e.f16766b.o();
                    return;
                }
                if (iIntValue == 127) {
                    o0.e.f16766b.n();
                    return;
                }
                switch (iIntValue) {
                    case 85:
                        o0.e.f16766b.p();
                        break;
                    case 86:
                        o0.e.f16766b.x();
                        break;
                    case 87:
                        o0.e.f16766b.l();
                        break;
                    case 88:
                        o0.e.f16766b.r();
                        break;
                    case 89:
                        o0.e.f16766b.i();
                        break;
                    case 90:
                        o0.e.f16766b.j();
                        break;
                }
            }
            j0.b bVarA3 = h0.g.Y2().a3();
            if (bVarA3 != null) {
                int iIntValue2 = numValueOf.intValue();
                if (iIntValue2 == 126) {
                    bVarA3.J();
                    return;
                }
                if (iIntValue2 == 127) {
                    bVarA3.I();
                    return;
                }
                switch (iIntValue2) {
                    case 85:
                        bVarA3.K();
                        break;
                    case 86:
                        bVarA3.M();
                        break;
                    case 87:
                        bVarA3.H();
                        break;
                    case 88:
                        bVarA3.L();
                        break;
                }
            }
            int iIntValue3 = numValueOf.intValue();
            if (iIntValue3 == 126) {
                h0.c.f2425b.w();
                return;
            }
            if (iIntValue3 == 127) {
                h0.c.f2425b.E();
                return;
            }
            switch (iIntValue3) {
                case 85:
                    h0.c.f2425b.p();
                    break;
                case 86:
                    h0.c.f2425b.k();
                    break;
                case 87:
                    h0.c.f2425b.V();
                    break;
                case 88:
                    h0.c.f2425b.i();
                    break;
            }
        }
        if (i3 == 2 && numValueOf.intValue() >= 0) {
            h0.c.f2425b.C(1);
            return;
        }
        if (i3 == 2 && numValueOf.intValue() >= 0) {
            h0.c.f2425b.C(0);
            return;
        }
        if (i3 != 1) {
        }
        if (i3 != 6) {
        }
        if (i3 != 4) {
        }
        if (i3 != 2) {
        }
        if (i3 == 7) {
        }
        n(numValueOf, i2);
    }

    public void m() {
        if (u.Q()) {
            this.f346f.append(1, new n(a.b.f22j, "com.syu.radio", null));
            this.f346f.append(3, new n(a.b.f22j, "com.syu.btav", null));
            this.f346f.append(8, new n(a.b.f22j, "com.syu.music", null));
            this.f346f.append(7, new n(a.b.f22j, "com.syu.online", null));
        } else {
            this.f346f.append(1, new n("com.syu.radio", "com.syu.radio", null));
            this.f346f.append(3, new n("com.syu.bt", "com.syu.btav", null));
            this.f346f.append(8, new n("com.syu.music", "com.syu.music", null));
        }
        this.f346f.append(4, new n("com.syu.dvd", "com.syu.dvd", null));
        this.f346f.append(2, new n("com.syu.bt", "com.syu.bt", null));
        this.f346f.append(5, new n("com.syu.av", "com.syu.av", null));
        this.f346f.append(9, new n("com.syu.video", "com.syu.video", null));
    }

    public void n(Integer num, int i2) {
        int i3 = u0.b.D;
        if ((i3 == 8 || i3 == 9 || i3 == 7) && num.intValue() >= 0) {
            u0.d.I3(37, i3, num.intValue());
        } else {
            s(i2);
        }
    }

    public void o(int i2) {
        z.c.f18181a.c();
        if (s0.j(a.b.f21i, u.Y0())) {
            u0.d.I3(37, -1, 5);
            return;
        }
        if (i2 == 8 || i2 == 9) {
            u0.d.I3(37, i2, 5);
        } else if (i2 != 13) {
            s(87);
        } else {
            qt.d();
        }
    }

    public void p(int i2) {
        z.c.f18182b.c();
        if (s0.j(a.b.f21i, u.Y0())) {
            u0.d.I3(37, -1, 4);
            return;
        }
        if (i2 == 8 || i2 == 9) {
            u0.d.I3(37, i2, 4);
        } else if (i2 != 13) {
            s(88);
        } else {
            qt.e();
        }
    }

    public void q(int i2) {
        a.f.p().t(LogType.ZLINK, "sendKeyEvent ===============>>>> keyCode ");
        long jUptimeMillis = SystemClock.uptimeMillis();
        r(i2, 0, 0, jUptimeMillis, jUptimeMillis);
        o1.m.a().postDelayed(new d(i2, jUptimeMillis), 80L);
    }

    public void r(int i2, int i3, int i4, long j2, long j3) {
        KeyEvent keyEvent = new KeyEvent(j3, j2, i3, i2, 0, 0, -1, 0, i4 | 8 | 64, 257);
        if (i2 == 3) {
            d0.e(KeyEvent.class.getName(), keyEvent, "setDisplayId", new Class[]{Integer.TYPE}, 0);
        }
        s0.B(keyEvent, 0);
    }

    public void s(int i2) {
        t(0, i2);
        t(1, i2);
    }

    public void t(int i2, int i3) {
        Intent intent = new Intent(Intent.ACTION_MEDIA_BUTTON);
        KeyEvent keyEvent = new KeyEvent(i2, i3);
        int iN = u.N(u0.b.B3);
        String str = u0.b.B3;
        if (str == null || !str.contains("kuwo") || iN >= 4400) {
            a.f.f().dispatchMediaKeyEvent(keyEvent);
        } else {
            intent.putExtra(Intent.EXTRA_KEY_EVENT, keyEvent);
            App.c().sendBroadcast(intent);
        }
    }

    public void u(int... iArr) {
        z.k.s(iArr);
    }

    public void v(int i2, int i3, int i4) {
        synchronized (this.f345e) {
            boolean z2 = this.f345e.indexOfKey(i2) >= 0;
            SparseIntArray sparseIntArray = this.f345e.get(i2, new SparseIntArray());
            sparseIntArray.put(i3, i4);
            if (!z2) {
                this.f345e.put(i2, sparseIntArray);
            }
        }
    }

    public void w(Context context, String str, String str2, String str3) {
        Intent launchIntentForPackage;
        if (!s0.t(str)) {
            launchIntentForPackage = new Intent(str);
            if (!s0.t(str2)) {
                launchIntentForPackage.setPackage(str2);
            }
        } else if (s0.t(str2)) {
            launchIntentForPackage = null;
        } else if (s0.t(str3)) {
            launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str2);
        } else {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(str2, str3));
            launchIntentForPackage = intent;
        }
        if (launchIntentForPackage != null) {
            launchIntentForPackage.addFlags(270532608);
            try {
                context.startActivity(launchIntentForPackage);
            } catch (Exception unused) {
            }
        }
    }

    public boolean x(int i2) {
        n nVar = this.f346f.get(i2);
        boolean z2 = nVar != null;
        if (z2) {
            w(this.f348h, nVar.f366b, nVar.f365a, nVar.f367c);
        }
        return z2;
    }

    public void y() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.U;
            if (i3 == 1) {
                w0.d.f17790b.g();
            } else {
                if (i3 != 4) {
                    return;
                }
                w0.d.f17790b.d();
                return;
            }
        }
        if (i2 == 6) {
            d1.d.f1569b.g();
            return;
        }
        if (i2 == 3) {
            j0.b bVarA3 = h0.g.Y2().a3();
            if (bVarA3 != null) {
                bVarA3.L();
                return;
            } else {
                h0.c.f2425b.i();
                return;
            }
        }
        if (i2 == 4) {
            o0.e.f16766b.i();
            return;
        }
        switch (i2) {
            case 8:
            case 9:
            case 10:
                p(i2);
                break;
        }
    }

    public void z() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.T;
            if (i3 == 0) {
                w0.d.f17790b.c();
            } else {
                if (i3 != 3) {
                    return;
                }
                w0.d.f17790b.i();
                return;
            }
        }
        if (i2 == 6) {
            d1.d.f1569b.c();
            return;
        }
        if (i2 == 3) {
            j0.b bVarA3 = h0.g.Y2().a3();
            if (bVarA3 != null) {
                bVarA3.H();
                return;
            } else {
                h0.c.f2425b.V();
                return;
            }
        }
        if (i2 == 4) {
            o0.e.f16766b.j();
            return;
        }
        switch (i2) {
            case 8:
            case 9:
            case 10:
                o(i2);
                break;
        }
    }
}
