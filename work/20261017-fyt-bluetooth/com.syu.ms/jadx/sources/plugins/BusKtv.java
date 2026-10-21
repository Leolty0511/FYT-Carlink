package plugins;

import a.b;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import app.App;
import o1.s;
import o1.u;
import w0.d;
import y0.j;

/* JADX INFO: loaded from: classes2.dex */
public class BusKtv extends BroadcastReceiver implements s {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f17034g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static BusKtv f17035h = new BusKtv();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17036a = "com.action.ACTION_OPEN_RADIO";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17037b = "com.action.ACTION_ClOSE_RADIO";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17038c = "com.action.ACTION_SET_RADIO_FREQUENCE";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f17039d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17040e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17041f = 0;

    public BusKtv() {
        if (u.k0(App.c(), "com.nwd.radio.my")) {
            j.a3().l3("com.nwd.radio.my");
        }
        if (u.k0(App.c(), "com.aske.carktv.xz")) {
            j.a3().l3("com.aske.carktv.xz");
            b.f13d.a("com.aske.carktv.xz", this);
        }
    }

    public static BusKtv X() {
        return f17035h;
    }

    @Override // o1.s
    public void R(boolean z2) {
        boolean z3 = this.f17040e;
        if (z3 != z2) {
            if (z3) {
                if (u0.b.D == 1) {
                    int i2 = u0.b.C;
                    int i3 = this.f17041f;
                    if (i2 == i3) {
                        u0.b.f17311c.c(i3);
                    }
                }
                f17034g = false;
                this.f17041f = 0;
            } else {
                this.f17041f = u0.b.D;
                f17034g = true;
                u0.b.f17311c.c(1);
                d.f17790b.l(1, 8700);
            }
            this.f17040e = z2;
        }
    }

    public void Y(Context context) {
        if (this.f17039d) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter("com.action.ACTION_OPEN_RADIO");
        intentFilter.addAction("com.action.ACTION_SET_RADIO_FREQUENCE");
        context.registerReceiver(this, intentFilter);
        this.f17039d = true;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int intExtra;
        String action = intent.getAction();
        if ("com.action.ACTION_OPEN_RADIO".equals(action)) {
            if (f17034g) {
                return;
            }
            this.f17041f = u0.b.D;
            f17034g = true;
            u0.b.f17311c.c(1);
            int intExtra2 = intent.getIntExtra("extra_radio_frequence", -1);
            if (intExtra2 > 0) {
                d.f17790b.l(1, intExtra2);
                return;
            }
            return;
        }
        if ("com.action.ACTION_SET_RADIO_FREQUENCE".equals(action)) {
            if (!f17034g && (intExtra = intent.getIntExtra("extra_radio_frequence", -1)) > 0) {
                d.f17790b.l(1, intExtra);
                return;
            }
            return;
        }
        if ("com.action.ACTION_ClOSE_RADIO".equals(action)) {
            if (u0.b.D == 1) {
                int i2 = u0.b.C;
                int i3 = this.f17041f;
                if (i2 == i3) {
                    u0.b.f17311c.c(i3);
                }
            }
            f17034g = false;
            this.f17041f = 0;
        }
    }
}
