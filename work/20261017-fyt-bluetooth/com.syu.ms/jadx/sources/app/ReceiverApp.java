package app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import o1.p0;
import u0.b;
import u0.d;

/* JADX INFO: loaded from: classes.dex */
public class ReceiverApp extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(Intent.ACTION_PACKAGE_ADDED)) {
            Log.i(Context.SYU_SERVICE, "安装了 :" + intent.getData().getSchemeSpecificPart());
            return;
        }
        if (intent.getAction().equals(Intent.ACTION_PACKAGE_REMOVED)) {
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            Log.i(Context.SYU_SERVICE, "卸载了 :" + schemeSpecificPart);
            if (p0.g(b.J1, schemeSpecificPart)) {
                d.k2("null");
            }
        }
    }
}
