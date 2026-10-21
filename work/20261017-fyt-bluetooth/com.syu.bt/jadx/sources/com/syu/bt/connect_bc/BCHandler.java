package com.syu.bt.connect_bc;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.ipc.module.main.Bt;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;
import com.syu.bt.util.ToastUtil;

/* JADX INFO: loaded from: classes.dex */
public class BCHandler extends Handler {
    public static final String BC_CALL_NUMBER = "CALL_CENTER_NUMBER";
    public static final String BC_RECEIVER_CMD = "BT_RECEIVE_CMD";
    public static final String BC_SEND_ACTION = "com.bdxh.bc.send";
    public static final String BC_SEND_CMD = "BT_SEND_CMD";
    public static final int BT_CONNECTED = 0;
    public static final int BT_NOT_CONNECTED = 1;
    public static final String CALL_RECEIVE_ACTION = "com.bdxh.bc.rec";
    public static final int CALL_STATUS_HAND_UP = 4;
    public static final int CALL_STATUS_INCOMING = 2;
    public static final int CALL_STATUS_OUTCALL = 3;
    public static final int CALL_STATUS_OUTCALLING = 5;
    public static final int HAND_UP_CMD = 1;
    public static final int MAKE_CALL_CMD = 2;
    public static final int SEND_MSG_BTSTATE = 1;
    public static final int SEND_MSG_CALLNUMBUER = 2;
    public static final int SPEAKER_DISABLED_CMD = 8;
    public static final int SPEAKER_ENABLE_CMD = 16;
    static BCHandler mHandler;

    @Override // android.os.Handler
    public void dispatchMessage(Message msg) {
        switch (msg.what) {
            case 1:
                Intent i = new Intent(CALL_RECEIVE_ACTION);
                int cmdCode = Bt_IpcObj.isConnect() ? 0 : 1;
                switch (Bt.DATA[9]) {
                    case 3:
                        cmdCode = 3;
                        break;
                    case 4:
                        cmdCode = 2;
                        break;
                    case 5:
                        cmdCode = 5;
                        break;
                }
                i.putExtra(BC_RECEIVER_CMD, cmdCode);
                try {
                    MyApplication.myApp.sendBroadcast(i);
                } catch (Exception e) {
                }
                break;
        }
        super.dispatchMessage(msg);
    }

    BCHandler(Looper looper) {
        super(looper);
    }

    public static BCHandler getInstance() {
        if (mHandler == null) {
            mHandler = new BCHandler(Looper.getMainLooper());
        }
        return mHandler;
    }

    public static void dialOut(String number) {
        if (TextUtils.isEmpty(number)) {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_match_number_fail"));
        } else {
            App_Bt.getInstance().mIpcObj.dialOut(number);
        }
    }

    public void handleBCCmd(Bundle bundle) {
        int cmd = bundle.getInt(BC_SEND_CMD);
        switch (cmd) {
            case 2:
                String number = bundle.getString(BC_CALL_NUMBER);
                dialOut(number);
                break;
        }
    }
}
