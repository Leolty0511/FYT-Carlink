package com.syu.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;

/* JADX INFO: loaded from: classes.dex */
public class BatteryReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int battery;
        int value = intent.getIntExtra("android.bluetooth.headsetclient.extra.BATTERY_LEVEL", -1);
        if (value > -1 && App_Bt.mPhoneBatterty != (battery = Math.min(5, Math.max(1, value)))) {
            App_Bt.mPhoneBatterty = battery;
            for (InterfaceBt interfaceBv : App_Bt.mInterfaceBt) {
                interfaceBv.updatePhoneBattery(App_Bt.mPhoneBatterty);
            }
        }
    }
}
