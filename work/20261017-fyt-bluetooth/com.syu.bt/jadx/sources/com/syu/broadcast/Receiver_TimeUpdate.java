package com.syu.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.lsec.core.ipc.module.main.Main;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;

/* JADX INFO: loaded from: classes.dex */
public class Receiver_TimeUpdate extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        new Thread(new Runnable() { // from class: com.syu.broadcast.Receiver_TimeUpdate.1
            @Override // java.lang.Runnable
            public void run() {
                Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.broadcast.Receiver_TimeUpdate.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (App_Bt.getInstance().isAppTop()) {
                            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                                interfaceBt.updateSystemTime();
                            }
                        }
                    }
                });
            }
        }).start();
    }
}
