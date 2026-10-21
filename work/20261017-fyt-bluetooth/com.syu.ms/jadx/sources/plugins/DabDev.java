package plugins;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import app.App;
import c.d;
import c.e;
import java.util.ArrayList;
import java.util.Iterator;
import o1.u;
import u0.c;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class DabDev extends BroadcastReceiver {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static ArrayList<String> f17042f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static DabDev f17043g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17044a = 45;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17045b = 46;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f17046c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f17047d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17048e = false;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f17049a = -1;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = (4 == u0.b.D && u0.b.f17306a0 == 1) ? 1 : 0;
            if (this.f17049a != i2) {
                this.f17049a = i2;
                if (i2 == 1) {
                    k.s(1, 0, 212);
                } else {
                    k.s(1, 0, 211);
                }
            }
        }
    }

    public class b extends d {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x002c  */
        @Override // c.d
        public boolean b(int i2) {
            boolean z2 = false;
            if (u0.b.D != 4) {
                return false;
            }
            Intent intent = new Intent("com.microntek.irkeyDown");
            if (i2 != 87) {
                if (i2 == 88) {
                    intent.putExtra("keyCode", DabDev.this.f17044a);
                }
                if (z2) {
                    App.c().sendBroadcast(intent);
                }
                return z2;
            }
            intent.putExtra("keyCode", DabDev.this.f17045b);
            z2 = true;
            if (z2) {
                App.c().sendBroadcast(intent);
            }
            return z2;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        f17042f = arrayList;
        arrayList.add("com.ex.dabplayer.pad");
        f17042f.add("com.ex.yhxdabw8.pad");
        f17042f.add("com.ex.dabplayer");
        f17042f.add("com.zoulou.dab");
    }

    public static DabDev X() {
        if (f17043g == null) {
            f17043g = new DabDev();
        }
        return f17043g;
    }

    public static boolean Y(String str) {
        return f17042f.contains(str);
    }

    public static boolean Z() {
        Iterator<String> it = f17042f.iterator();
        boolean zK0 = false;
        while (it.hasNext()) {
            zK0 = u.k0(App.c(), it.next());
            if (zK0) {
                break;
            }
        }
        return zK0;
    }

    public void a0(Context context) {
        IntentFilter intentFilter = new IntentFilter("com.ex.dabplayer.pad");
        intentFilter.addAction("com.ex.yhxdabw8.pad");
        context.registerReceiver(this, intentFilter);
        this.f17048e = true;
        if (u.k0(App.c(), a.b.f25m)) {
            return;
        }
        c.f17386m.a(this.f17046c, 0);
        c.f17374a.a(this.f17046c, 1);
        e.d().i(87, this.f17047d);
        e.d().i(88, this.f17047d);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras;
        String action = intent == null ? " " : intent.getAction();
        if (("com.ex.dabplayer.pad".equals(action) || "com.ex.yhxdabw8.pad".equals(action)) && (extras = intent.getExtras()) != null && "enter".equals(extras.getString("state"))) {
            u0.b.f17311c.c(4);
        }
    }
}
