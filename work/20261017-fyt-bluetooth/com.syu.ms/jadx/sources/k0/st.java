package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class st extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        intent.getExtras();
        if ("net.easyconn.android.mirror.in".equals(action) || "net.easyconn.iphone.inner.mirror.in".equals(action) || "net.easyconn.iphone.mirror.in".equals(action)) {
            pt.f9360a = 0;
        } else if ("net.easyconn.android.mirror.out".equals(action) || "net.easyconn.iphone.inner.mirror.out".equals(action) || "net.easyconn.iphone.mirror.out".equals(action)) {
            pt.f9360a = 1;
        } else if ("net.easyconn.drivemodeche.checkstatus".equals(action)) {
            if (pt.f9363d) {
                App.c().sendBroadcast(new Intent("net.easyconn.drivemode.closed"));
            } else {
                App.c().sendBroadcast(new Intent("net.easyconn.drivemode.opened"));
            }
        }
        Log.d("xx5", " BroadcastReceiver = " + action);
        if ("com.syu.autotest.radio_recv".equals(action) || "com.syu.autotest.media_recv".equals(action) || "com.syu.autotest.bt_recv".equals(action)) {
            return;
        }
        "com.syu.autotest.set_recv".equals(action);
    }
}
