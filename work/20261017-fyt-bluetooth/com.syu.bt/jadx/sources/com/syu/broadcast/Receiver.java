package com.syu.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.ipc.module.main.Main;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;
import com.syu.bt.connect_bc.BCHandler;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.BtLinkTestUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.SpeechUtil;

/* JADX INFO: loaded from: classes.dex */
public class Receiver extends BroadcastReceiver {
    public static final String ACTION_AMAPASSIST_CMD = "AMAPASSIST_STANDARD_BROADCAST_CMD";
    public static final String ACTION_BTSEND_CMD = "BT_STANDARD_BROADCAST_CMD";
    public static final String REMOVE_BROADCAST = "com.fyt.systemui.remove";
    RunnableHandleAmapAssistCmd mRunnableHandleAmapAssistCmd = null;

    public class RunnableHandleAmapAssistCmd implements Runnable {
        boolean bRun = true;
        Bundle bundle;

        public void stopRun() {
            this.bRun = false;
        }

        public RunnableHandleAmapAssistCmd(Bundle bundle) {
            this.bundle = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.bRun) {
                Receiver.this.handleAmapAssistCmd(this.bundle);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (SpeechUtil.ACTION_TO_BT.equals(action)) {
            Bundle bundle = intent.getExtras();
            if (bundle != null && !bundle.isEmpty()) {
                handleSpeechCmd(bundle);
            } else {
                return;
            }
        } else if (ACTION_AMAPASSIST_CMD.equals(action)) {
            Bundle bundle2 = intent.getExtras();
            if (bundle2 != null && !bundle2.isEmpty()) {
                if (this.mRunnableHandleAmapAssistCmd != null) {
                    this.mRunnableHandleAmapAssistCmd.stopRun();
                    Main.removeRunnable_Ui(this.mRunnableHandleAmapAssistCmd);
                    this.mRunnableHandleAmapAssistCmd = null;
                }
                this.mRunnableHandleAmapAssistCmd = new RunnableHandleAmapAssistCmd(bundle2);
                Main.postRunnable_Ui(false, this.mRunnableHandleAmapAssistCmd);
            } else {
                return;
            }
        } else if (REMOVE_BROADCAST.equals(action)) {
            Bundle bundle3 = intent.getExtras();
            if (bundle3 != null && !bundle3.isEmpty()) {
                handleRemoveTask(bundle3);
            } else {
                return;
            }
        } else if ("android.intent.action.MEDIA_MOUNTED".equals(action)) {
            BtLinkTestUtil.getInstance().testLink();
        } else if (BCHandler.BC_SEND_ACTION.equals(action)) {
            Bundle bundle4 = intent.getExtras();
            if (bundle4 != null && !bundle4.isEmpty()) {
                BCHandler.getInstance().handleBCCmd(bundle4);
            } else {
                return;
            }
        } else if ("android.intent.action.NEW_OUTGOING_CALL".equals(action)) {
            System.out.println("ACTION_NEW_OUTGOING_CALL: " + getResultData());
        } else if (action.equals("launcher3.setcolor")) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.resetColor();
            }
        }
        Log.d("gdy61", " Receiver action = " + action + " ** mIsOldService = " + MyApplication.mIsOldService);
        if (MyApplication.mIsOldService) {
            int cmd = -1;
            if ("com.syu.bt.PageAv".equals(action)) {
                cmd = 4;
            } else if ("com.syu.bt.PageAvForce".equals(action)) {
                cmd = 5;
            } else if ("com.syu.bt.PagePhone".equals(action)) {
                cmd = 3;
            } else if ("com.syu.bt.PagePhoneByKey".equals(action)) {
                cmd = 2;
            } else if ("com.syu.bt.ShowPipPhone".equals(action)) {
                cmd = 1;
            }
            if (cmd >= 0) {
                MyService.handleSeverCmd(cmd);
            }
        }
    }

    private void handleRemoveTask(Bundle bundle) {
        if (MyApplication.myApp.getPackageName().equals(bundle.getString("pkg"))) {
            if (App_Bt.bChangeAppIdWhenTalking) {
                if (Main.DATA[0] == 3 || Main.DATA[0] == 2 || (Main.DATA[0] == 15 && App_Bt.mBtType == 7 && CustomerUtil.isTZYConfig())) {
                    Log.d("null", " ** 00 handleRemoveTask APP_ID_NULL U_APP_ID = " + Main.DATA[0]);
                    if (App_Bt.bBtNoAV) {
                        if (Main.DATA[0] != 3) {
                            Main.requestAppId(0);
                            return;
                        }
                        return;
                    }
                    Main.requestAppId(0);
                    return;
                }
                return;
            }
            App_Bt.getInstance().mIpcObj.requestAppIdNull();
        }
    }

    public void handleAmapAssistCmd(Bundle bundle) {
        if (bundle.containsKey("CMD_DESC") && bundle.containsKey("CMD_TYPE")) {
            int type = bundle.getInt("CMD_TYPE");
            if (type == 10000) {
                String strCmd = bundle.getString("CMD_DESC");
                if (strCmd.startsWith("欢迎使用高德语音助手!")) {
                    App_Bt.getInstance().showFloatBtn(true);
                    return;
                }
                if (strCmd.startsWith("打电话") || strCmd.startsWith("呼叫") || strCmd.startsWith("拨号") || strCmd.startsWith("拨打")) {
                    Log.d("gdy666", " 003 Receiver handleAmapAssistCmd ");
                    App_Bt.getInstance().popBt(true, true);
                    BTUtil.writeLogToFile("handleAmapAssistCmd");
                }
            }
        }
    }

    private void handleSpeechCmd(Bundle b) {
        if (!b.containsKey(SpeechUtil.KEY_CMD_CODE)) {
            String number = b.getString(SpeechUtil.KEY_NUMBER);
            if (!TextUtils.isEmpty(number)) {
                SpeechUtil.funcDialNumber(number);
            } else {
                String contact = b.getString(SpeechUtil.KEY_CONTACT);
                SpeechUtil.funcDialName(contact);
                return;
            }
        }
        int cmdCode = b.getInt(SpeechUtil.KEY_CMD_CODE, -1);
        switch (cmdCode) {
            case -1:
                SpeechUtil.funcError();
                break;
            case 20:
                String msgStr = b.getString(SpeechUtil.KEY_CONTACT);
                SpeechUtil.funcDialName(msgStr);
                break;
            case 21:
                String msgStr2 = b.getString(SpeechUtil.KEY_NUMBER);
                SpeechUtil.funcDialNumber(msgStr2);
                break;
            case 22:
                SpeechUtil.funcAnswer();
                break;
            case 23:
                SpeechUtil.funcHangUp();
                break;
            case 24:
                SpeechUtil.funcBindBt();
                break;
            case 25:
                SpeechUtil.funcUnBindBt();
                break;
        }
    }
}
