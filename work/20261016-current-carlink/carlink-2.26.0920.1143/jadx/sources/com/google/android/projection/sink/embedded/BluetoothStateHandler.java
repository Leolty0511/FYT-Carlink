package com.google.android.projection.sink.embedded;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.projection.sink.embedded.service.BackgroundService;

/* JADX INFO: loaded from: classes3.dex */
public class BluetoothStateHandler extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (BluetoothAdapter.ACTION_STATE_CHANGED.equals(intent.getAction())) {
            int intExtra = intent.getIntExtra(BluetoothAdapter.EXTRA_STATE, Integer.MIN_VALUE);
            if (intExtra == 11 || intExtra == 12) {
                context.startService(new Intent().setComponent(new ComponentName(context, (Class<?>) BackgroundService.class)).putExtra(BackgroundService.EXTRA_START_REASON, BackgroundService.EXTRA_START_REASON_RFCOMM));
            }
        }
    }
}
