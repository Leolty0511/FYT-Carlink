package com.syu.bt.util;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.lsec.core.frame.app.MyApplication;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class SpeechUtil {
    public static final String ACTION_TMP_CONTACTS = "com.fyt.speech.temp_contact";
    public static final String ACTION_TO_BT = "com.syu.bt.local.cmd";
    public static final int CMD_PHONE_CONTACT = 20;
    public static final int CMD_PHONE_CUT = 25;
    public static final int CMD_PHONE_DIAL = 22;
    public static final int CMD_PHONE_HANG = 23;
    public static final int CMD_PHONE_LINK = 24;
    public static final int CMD_PHONE_NUMBER = 21;
    public static final String CONTACTS_KEY = "contacts";
    public static final String KEY_CMD_CODE = "cmdCode";
    public static final String KEY_CONTACT = "contact";
    public static final String KEY_EXTRA = "extra";
    public static final String KEY_NUMBER = "number";
    public static final String TMP_CONTACTS_KEY = "tmp_contacts";

    public static void startTmpService(Context ctx, String contacts) {
        Bundle bundle = new Bundle();
        bundle.putString(CONTACTS_KEY, contacts);
        Intent mIntent = new Intent(ACTION_TMP_CONTACTS);
        mIntent.putExtras(bundle);
        mIntent.setPackage(MyApplication.myApp.getPackageName());
        MyApplication.myApp.startServiceSafely(mIntent);
        if (TextUtils.isEmpty(contacts)) {
            SpUtil.clear();
        } else {
            SpUtil.putString(TMP_CONTACTS_KEY, contacts.toString());
        }
    }

    public static void clearTmpContacts(Context ctx) {
        String tmpContacts = SpUtil.getString(TMP_CONTACTS_KEY);
        if (!TextUtils.isEmpty(tmpContacts)) {
            startTmpService(ctx, null);
        }
    }

    private static void dialOut(String number) {
        if (TextUtils.isEmpty(number)) {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_match_number_fail"));
        } else {
            App_Bt.getInstance().mIpcObj.dialOut(number);
        }
    }

    public static void funcAnswer() {
        if (Bt_IpcObj.isAppIdBtPhone() && Bt_IpcObj.isRing()) {
            Bt_IpcObj.dial();
        }
    }

    public static void funcHangUp() {
        if (Bt_IpcObj.isInCall()) {
            Bt_IpcObj.hang();
        }
    }

    public static void funcUnBindBt() {
        if (Bt_IpcObj.isConnect()) {
            Bt_IpcObj.cut();
        }
    }

    public static void funcBindBt() {
        if (!Bt_IpcObj.isConnect()) {
            Bt_IpcObj.link();
        }
    }

    public static void funcDialNumber(String number) {
        if (!TextUtils.isEmpty(number)) {
            dialOut(number);
        }
    }

    public static void funcDialName(String name) {
        if (!TextUtils.isEmpty(name)) {
            String number = App_Bt.mBtInfo.queryNumberByName(name);
            if (TextUtils.isEmpty(number)) {
                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_match_number_fail"));
            } else {
                dialOut(number);
            }
        }
    }

    public static void funcError() {
        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_cmd_invalid"));
    }
}
