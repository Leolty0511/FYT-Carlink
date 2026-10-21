package com.syu.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.lsec.core.ipc.module.main.Main;
import com.syu.app.ipc.Bt_IpcObj;

/* JADX INFO: loaded from: classes.dex */
public class CarPlayReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String status = intent.getStringExtra("status");
        String phoneType = intent.getStringExtra("phoneType");
        if (status != null && phoneType != null) {
            if (Main.mConf_PlatForm == 7 || Main.mConf_PlatForm == 8) {
                if (status.equalsIgnoreCase("CONNECTED") && phoneType.equalsIgnoreCase("ios_carplay")) {
                    if (Bt_IpcObj.isConnect()) {
                        Bt_IpcObj.cut();
                    }
                } else if (status.equalsIgnoreCase("DISCONNECTED")) {
                    phoneType.equalsIgnoreCase("ios_carplay");
                }
            }
        }
    }
}
