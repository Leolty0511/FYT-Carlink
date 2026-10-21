package com.google.android.projection.sink.embedded;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.projection.sink.embedded.service.BackgroundService;

/* JADX INFO: loaded from: classes3.dex */
public class BootServiceStarter extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        String action = intent.getAction();
        action.getClass();
        if (action.equals(Intent.ACTION_BOOT_COMPLETED)) {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
                return;
            }
        } else if (!action.equals(Intent.ACTION_MY_PACKAGE_REPLACED)) {
            return;
        }
        context.startService(new Intent().setComponent(new ComponentName(context, (Class<?>) BackgroundService.class)).putExtra(BackgroundService.EXTRA_START_REASON, BackgroundService.EXTRA_START_REASON_RFCOMM));
    }
}
