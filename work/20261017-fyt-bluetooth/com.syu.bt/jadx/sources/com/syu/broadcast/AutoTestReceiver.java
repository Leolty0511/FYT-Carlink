package com.syu.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.app.ipc.Ipc_New;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;

/* JADX INFO: loaded from: classes.dex */
public class AutoTestReceiver extends BroadcastReceiver {

    public class Runnable_UpdatePin implements Runnable {
        String strPin;

        public Runnable_UpdatePin(String strPin) {
            this.strPin = strPin;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.updatePin(this.strPin);
            }
        }
    }

    public class Runnable_clearContact implements Runnable {
        int data0;

        public Runnable_clearContact(int data0) {
            this.data0 = data0;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent rspIntent = new Intent("com.syu.autotest.bt_recv");
            if (Bt_IpcObj.isConnect() && !Bt_IpcObj.isPairing()) {
                if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                    if (App_Bt.mInterfaceBt.size() > 0) {
                        for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                            interfaceBt.ClearAllContact(false);
                        }
                        rspIntent.putExtra("data1", 0);
                    } else {
                        rspIntent.putExtra("data1", 1);
                    }
                } else {
                    rspIntent.putExtra("data1", 0);
                }
            } else {
                rspIntent.putExtra("data1", 1);
            }
            rspIntent.putExtra("data0", this.data0);
            try {
                MyApplication.myApp.sendBroadcast(rspIntent);
            } catch (Exception e) {
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) throws Throwable {
        int data0 = intent.getIntExtra("data0", -1);
        int data1 = intent.getIntExtra("data1", -1);
        String str0 = intent.getStringExtra("str0");
        Intent rspIntent = new Intent("com.syu.autotest.bt_recv");
        try {
            switch (data0) {
                case 1:
                    switch (data1) {
                        case 1:
                            Bt_IpcObj.setBtSwitch(true);
                            Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.broadcast.AutoTestReceiver.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                                        interfaceBt.setSwitch(true);
                                    }
                                }
                            });
                            break;
                        case 2:
                            Bt_IpcObj.setBtSwitch(false);
                            Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.broadcast.AutoTestReceiver.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                                        interfaceBt.setSwitch(false);
                                    }
                                }
                            });
                            break;
                    }
                    if (data1 == 1 || data1 == 2) {
                        rspIntent.putExtra("data0", data0);
                        rspIntent.putExtra("data1", data1);
                        MyApplication.myApp.sendBroadcast(rspIntent);
                    }
                    break;
                case 2:
                    Runnable run = null;
                    switch (data1) {
                        case 0:
                            run = MyService.mRunnable_goPageContact;
                            break;
                        case 1:
                            run = MyService.mRunnable_goPageSet;
                            break;
                        case 3:
                            run = MyService.mRunnable_goPageDial;
                            break;
                        case 4:
                            run = MyService.mRunnable_goPageSet;
                            break;
                        case 5:
                            run = MyService.mRunnable_goPageHistory;
                            break;
                    }
                    if (run != null) {
                        Main.postRunnable_Ui(true, run);
                        rspIntent.putExtra("data0", data0);
                        rspIntent.putExtra("data1", data1);
                        MyApplication.myApp.sendBroadcast(rspIntent);
                    }
                    break;
                case 3:
                    String mac = Bt.sDevAddr;
                    if (!TextUtils.isEmpty(mac)) {
                        String mac2 = mac.replace(":", FinalChip.BSP_PLATFORM_Null);
                        if (mac2.length() == 12) {
                            rspIntent.putExtra("str0", mac2);
                        } else {
                            rspIntent.putExtra("str0", (String) null);
                        }
                    } else {
                        rspIntent.putExtra("str0", (String) null);
                    }
                    rspIntent.putExtra("data0", data0);
                    rspIntent.putExtra("data1", data1);
                    MyApplication.myApp.sendBroadcast(rspIntent);
                    break;
                case 4:
                    if (str0 != null && str0.length() == 4 && isNumeric(str0)) {
                        Bt_IpcObj.setDevPin(str0);
                        Main.postRunnable_Ui(false, new Runnable_UpdatePin(str0));
                        App_Bt app_Bt = App_Bt.getInstance();
                        App_Bt.getInstance();
                        app_Bt.SaveConfig(App_Bt.getDiyName(), str0);
                        rspIntent.putExtra("data1", 0);
                        rspIntent.putExtra("str0", str0);
                    } else {
                        rspIntent.putExtra("data1", 1);
                        App_Bt.getInstance();
                        rspIntent.putExtra("str0", App_Bt.getDiyPin());
                    }
                    rspIntent.putExtra("data0", data0);
                    MyApplication.myApp.sendBroadcast(rspIntent);
                    break;
                case 5:
                    switch (data1) {
                        case 1:
                            if (Bt.DATA[9] == 4) {
                                Ipc_New.dial();
                                rspIntent.putExtra("data1", 2);
                            } else {
                                rspIntent.putExtra("data1", 0);
                            }
                            break;
                        case 2:
                            if (Bt_IpcObj.isInCall()) {
                                Bt_IpcObj.hang();
                                rspIntent.putExtra("data1", 3);
                            } else {
                                rspIntent.putExtra("data1", 0);
                            }
                            break;
                    }
                    rspIntent.putExtra("data0", data0);
                    MyApplication.myApp.sendBroadcast(rspIntent);
                    break;
                case 7:
                    if (data1 >= 0 && data1 <= 10) {
                        App_Bt.getInstance().mIpcObj.sendCmdVolBal(2, data1);
                        rspIntent.putExtra("data1", 0);
                        rspIntent.putExtra("str0", String.valueOf(data1));
                    } else {
                        rspIntent.putExtra("data1", 1);
                        rspIntent.putExtra("str0", String.valueOf(App_Bt.iPhoneMicSet));
                    }
                    rspIntent.putExtra("data0", data0);
                    MyApplication.myApp.sendBroadcast(rspIntent);
                    break;
                case 8:
                    if (Ipc_New.isPhoneConnect()) {
                        rspIntent.putExtra("data1", 0);
                    } else {
                        rspIntent.putExtra("data1", 1);
                    }
                    rspIntent.putExtra("data0", data0);
                    MyApplication.myApp.sendBroadcast(rspIntent);
                    break;
                case 10:
                    if (str0 != null) {
                        Log.d("name", " 11 AutoTestReceiver setDevName  str0 = " + str0);
                        Bt_IpcObj.setDevName(str0);
                        Main.postRunnable_Ui(false, new Runnable_UpdatePin(str0));
                        App_Bt app_Bt2 = App_Bt.getInstance();
                        App_Bt.getInstance();
                        app_Bt2.SaveConfig(str0, App_Bt.getDiyPin());
                        rspIntent.putExtra("data1", 0);
                        rspIntent.putExtra("str0", str0);
                    } else {
                        rspIntent.putExtra("data1", 1);
                        App_Bt.getInstance();
                        rspIntent.putExtra("str0", App_Bt.getDiyName());
                    }
                    rspIntent.putExtra("data0", data0);
                    MyApplication.myApp.sendBroadcast(rspIntent);
                    break;
                case 11:
                    if (Bt_IpcObj.isConnect() && !Bt_IpcObj.isPairing()) {
                        Bt_IpcObj.downloadBook();
                        rspIntent.putExtra("data1", 1);
                    } else {
                        rspIntent.putExtra("data1", 0);
                    }
                    rspIntent.putExtra("data0", data0);
                    MyApplication.myApp.sendBroadcast(rspIntent);
                    break;
                case 13:
                    Main.postRunnable_Ui(false, new Runnable_clearContact(data0));
                    break;
                case 14:
                    if (Ipc_New.isTalk()) {
                        rspIntent.putExtra("data1", 0);
                    } else {
                        rspIntent.putExtra("data1", 1);
                    }
                    rspIntent.putExtra("data0", data0);
                    MyApplication.myApp.sendBroadcast(rspIntent);
                    break;
            }
        } catch (Exception e) {
        }
    }

    private boolean isNumeric(String str) {
        int i = str.length();
        do {
            i--;
            if (i < 0) {
                return true;
            }
        } while (Character.isDigit(str.charAt(i)));
        return false;
    }
}
