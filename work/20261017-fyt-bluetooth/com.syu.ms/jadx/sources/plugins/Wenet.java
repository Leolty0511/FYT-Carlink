package plugins;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import u0.b;

/* JADX INFO: loaded from: classes2.dex */
public class Wenet extends BroadcastReceiver {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Wenet f17065d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17066a = "com.wedrive.android.action.WENET_SHOW";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17067b = "com.wedrive.android.action.WENET_HIDE";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17068c = false;

    public static Wenet Y() {
        if (f17065d == null) {
            f17065d = new Wenet();
        }
        return f17065d;
    }

    public void X(Context context) {
        if (this.f17068c) {
            context.unregisterReceiver(this);
        }
    }

    public void Z(Context context) {
        IntentFilter intentFilter = new IntentFilter("com.wedrive.android.action.WENET_SHOW");
        intentFilter.addAction("com.wedrive.android.action.WENET_HIDE");
        context.registerReceiver(this, intentFilter);
        this.f17068c = true;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent == null ? " " : intent.getAction();
        if ("com.wedrive.android.action.WENET_SHOW".equals(action)) {
            b.f17311c.c(3);
        } else if ("com.wedrive.android.action.WENET_HIDE".equals(action)) {
            b.f17311c.c(-1);
        }
    }
}
