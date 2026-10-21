package com.google.android.projection.sink.embedded.service;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.IBinder;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.projection.sink.embedded.AndroidAutoHeadunitLog;

/* JADX INFO: loaded from: classes3.dex */
public class EarlyBootService extends Service {
    private static final String TAG = AndroidAutoHeadunitLog.getTag("EarlyBootService");
    private boolean initialized;
    private final BroadcastReceiver mUserUnlockedReceiver = new BroadcastReceiver() { // from class: com.google.android.projection.sink.embedded.service.EarlyBootService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Intent.ACTION_USER_UNLOCKED.equals(intent.getAction())) {
                if (!EarlyBootService.launchBackgroundServiceIfBluetoothEnabled(context)) {
                    Log.d(EarlyBootService.TAG, "User unlocked, but no available BT adapter.  Skipping start.");
                }
                EarlyBootService.this.stopSelf();
            }
        }
    };

    public static boolean launchBackgroundServiceIfBluetoothEnabled(Context context) {
        BluetoothAdapter defaultAdapter;
        UserManager userManager = (UserManager) context.getSystemService(UserManager.class);
        if ((Build.VERSION.SDK_INT >= 24 && (userManager == null || !userManager.isUserUnlocked())) || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null || !defaultAdapter.isEnabled()) {
            return false;
        }
        context.startService(new Intent().setComponent(new ComponentName(context, (Class<?>) BackgroundService.class)).putExtra(BackgroundService.EXTRA_START_REASON, BackgroundService.EXTRA_START_REASON_RFCOMM));
        return true;
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.i(TAG, "Waiting for android.intent.action.USER_UNLOCKED");
        registerReceiver(this.mUserUnlockedReceiver, new IntentFilter(Intent.ACTION_USER_UNLOCKED));
        this.initialized = true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.initialized) {
            unregisterReceiver(this.mUserUnlockedReceiver);
            this.initialized = false;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        return 2;
    }
}
