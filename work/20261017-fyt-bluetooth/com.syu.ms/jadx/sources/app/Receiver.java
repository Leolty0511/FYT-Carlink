package app;

import a.f;
import a.i;
import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import base.Configure;
import e.e;
import o1.c;
import o1.j;
import o1.l;
import o1.u;
import u0.d;
import u0.h;
import y0.g;

/* JADX INFO: loaded from: classes.dex */
public class Receiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c<String> f236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f237c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f238a = ProxyProperties.LOCAL_EXCL_LIST;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (!c0.a.f401a || u0.b.D == 3) {
                return;
            }
            u0.b.f17311c.c(3);
        }
    }

    public static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f239a;

        public b(String str) {
            this.f239a = str;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            e.f1625c.c(this.f239a);
            g.f18102l.c(new String[]{this.f239a, "remove"});
            f.c cVar = f.b.f1841d.f1844c;
            cVar.b(this.f239a, 0);
            cVar.c(this.f239a, false);
        }
    }

    static {
        c<String> cVar = new c<>(-1);
        f236b = cVar;
        cVar.f(Intent.ACTION_BOOT_COMPLETED, 2);
        cVar.f(Intent.ACTION_MEDIA_MOUNTED, 0);
        cVar.f(Intent.ACTION_MEDIA_UNMOUNTED, 1);
        cVar.f(Intent.ACTION_SCREEN_ON, 3);
        cVar.f(Intent.ACTION_SCREEN_OFF, 103);
        cVar.f("com.carnet.vt.a2dp.start", 5);
        cVar.f("com.carnet.vt.a2dp.stop", 6);
        cVar.f("com.eryanet.a2dp.acquire", 5);
        cVar.f("com.eryanet.a2dp.release", 6);
        cVar.f("com.fyt.systemui.remove", 7);
        cVar.f("com.autonavi.action.TELE_NAVIGATION", 8);
        cVar.f("com.android.SYSOBD", 9);
        cVar.f("com.android.ecar.send", 10);
        cVar.f("com.glsx.navi.voip", 11);
        f237c = 0;
    }

    public static void X() {
        if (f.b.f1841d.f1844c.h()) {
            c0.a.f401a = true;
            c0.b.f402a.R(true);
            l.a().postDelayed(new a(), 1000L);
        }
    }

    public static void Y() {
        if (f.b.f1841d.f1844c.h()) {
            c0.a.f401a = false;
            if (u0.b.Z3) {
                if (!u.S("com.tima.carnet.vt")) {
                    if (u0.b.D == 3) {
                        u0.b.f17311c.c(-1);
                    }
                    c0.b.f402a.R(false);
                } else {
                    u0.b.f17311c.c(10);
                    h hVar = u0.b.f17311c;
                    if (hVar instanceof u0.a) {
                        ((u0.a) hVar).i("com.tima.carnet.vt");
                    }
                }
            }
        }
    }

    public static void Z() {
        if (h0.c.E == 2) {
            App.c().sendBroadcast(new Intent("net.easyconn.bt.connected"));
        } else {
            App.c().sendBroadcast(new Intent("net.easyconn.bt.opened"));
        }
    }

    public static void a0(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if ("HideCallUI".equals(str)) {
            h0.c.f2444k0 = true;
        } else if ("BluetoothMakeCall".equals(str)) {
            h0.c.f2444k0 = false;
        }
    }

    public static void b0(int i2) {
        if (f237c != i2) {
            f237c = i2;
            if (i2 != 0) {
                u0.b.f17311c.c(16);
            } else {
                u0.b.f17311c.c(-1);
            }
        }
    }

    public static void c0(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_SCREEN_ON);
        intentFilter.addAction(Intent.ACTION_SCREEN_OFF);
        intentFilter.addAction(Intent.ACTION_MEDIA_UNMOUNTED);
        intentFilter.addAction("com.eryanet.a2dp.acquire");
        intentFilter.addAction("com.eryanet.a2dp.release");
        intentFilter.addAction("com.carnet.vt.a2dp.start");
        intentFilter.addAction("com.carnet.vt.a2dp.stop");
        intentFilter.addAction("com.fyt.systemui.remove");
        intentFilter.addAction("com.android.SYSOBD");
        intentFilter.addAction("com.android.ecar.send");
        intentFilter.addAction("com.glsx.navi.voip");
        intentFilter.addAction("com.zjinnova.zlink");
        intentFilter.addAction("android.intent.action.RADIOTAENTER");
        intentFilter.addAction("android.intent.action.RADIOTAEXIT");
        intentFilter.addAction("com.autonavi.action.TELE_NAVIGATION");
        intentFilter.addAction(BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED);
        intentFilter.setPriority(1000);
        context.registerReceiver(new Receiver(), intentFilter);
        d.k3(f.r().isScreenOn() ? 1 : 0);
    }

    public static void d0(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            String string = extras.getString("pkg");
            Log.e("C7729", "=======================>>>>>   systemUiRemove pkg: " + string);
            if (string != null) {
                j.b(l.a(), new b(string), 1000L);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.e("C7729", "=======================>>>>>   action: " + action);
        if ("android.intent.action.RADIOTAENTER".equals(action)) {
            this.f238a = g1.c.b().f();
            u.x0();
        }
        if ("android.intent.action.RADIOTAEXIT".equals(action)) {
            String str = this.f238a;
            if (str != null) {
                if (!str.equals(i.i())) {
                    u.g(this.f238a);
                    return;
                } else {
                    i.A();
                    u0.b.f17311c.c(u0.b.C);
                    return;
                }
            }
            return;
        }
        if (BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED.equals(action)) {
            if (Configure.Property.BLUETOOTH_TYPE.d(-1) <= 0 || intent.getIntExtra(BluetoothProfile.EXTRA_STATE, 0) != 2) {
                return;
            }
            y0.h.M();
            return;
        }
        int iD = f236b.d(action, -1);
        if (iD == 0) {
            Log.d("DBG", "ACTION_MEDIA_MOUNTED");
            return;
        }
        if (iD == 1) {
            Log.d("DBG", "ACTION_MEDIA_UNMOUNTED");
            return;
        }
        if (iD == 103) {
            d.k3(0);
            return;
        }
        switch (iD) {
            case 3:
                d.k3(1);
                break;
            case 4:
                Z();
                break;
            case 5:
                X();
                break;
            case 6:
                Y();
                break;
            case 7:
                d0(intent);
                break;
            case 8:
                u.t0();
                break;
            case 9:
                SystemProperties.set("sys.obd", "ddh");
                break;
            case 10:
                a0(intent.getStringExtra("ecarSendKey"));
                break;
            case 11:
                b0(intent.getIntExtra("status", 0));
                break;
            case 12:
                int i2 = u0.b.D;
                if (i2 == 3 || i2 == 10) {
                    u0.b.f17311c.c(0);
                }
                break;
        }
    }
}
