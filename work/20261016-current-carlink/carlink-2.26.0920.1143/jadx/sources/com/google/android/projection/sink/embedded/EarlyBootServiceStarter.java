package com.google.android.projection.sink.embedded;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.projection.sink.embedded.service.EarlyBootService;

/* JADX INFO: loaded from: classes3.dex */
public class EarlyBootServiceStarter extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (Intent.ACTION_LOCKED_BOOT_COMPLETED.equals(intent.getAction()) && !EarlyBootService.launchBackgroundServiceIfBluetoothEnabled(context)) {
            context.startService(new Intent(context, (Class<?>) EarlyBootService.class));
        }
    }
}
