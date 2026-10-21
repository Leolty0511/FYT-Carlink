package com.syu.bt;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.lsec.core.frame.app.MyApplication;
import com.syu.app.ipc.Ipc_New;
import com.syu.bt.act.ActBt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.SpeechUtil;

/* JADX INFO: loaded from: classes.dex */
public class BtAct extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!App_Bt.includePage(App_Bt.sPage)) {
            MyApplication.sPage_WillBe = 10003;
        } else {
            MyApplication.sPage_WillBe = App_Bt.sPage;
        }
        Log.d("gdy6", "00 onCreate:" + MyApplication.sPage_WillBe + " bFirstBtAvPage = " + App_Bt.bFirstBtAvPage);
        MyApplication.sPage_WillBe = App_Bt.getInstance().mySharePreference2.getIntValue("page_id", 10003);
        Log.d("gdy6", "11 onCreate:" + MyApplication.sPage_WillBe + " bFirstPairPage = " + App_Bt.bFirstPairPage + " isInCall = " + Ipc_New.isInCall());
        if (App_Bt.bIsLauncher_2Ico && MyApplication.sPage_WillBe == 10010) {
            MyApplication.sPage_WillBe = 10003;
        }
        Log.d("gdy6", "22 onCreate:" + MyApplication.sPage_WillBe + " bFirstPairPage = " + App_Bt.bFirstPairPage + " isInCall = " + Ipc_New.isInCall());
        if (Ipc_New.isInCall()) {
            MyApplication.sPage_WillBe = 10003;
        }
        if (App_Bt.bDownloading) {
            MyApplication.sPage_WillBe = FinalBtCtrl.Page_Contact;
        }
        if (App_Bt.bFirstPairPage) {
            if (App_Bt.bFirstPairPage2) {
                App_Bt.phoneState = App_Bt.getInstance().mySharePreference2.getIntValue("phoneState", App_Bt.phoneState);
                Log.d("gdy6", "22 onCreate: sPage_WillBe = " + MyApplication.sPage_WillBe + " phoneState = " + App_Bt.phoneState);
                if (App_Bt.phoneState == 0) {
                    if (MyApplication.sPage_WillBe != 10011) {
                        MyApplication.sPage_WillBe = FinalBtCtrl.Page_Pair;
                    }
                } else if (App_Bt.getInstance().mIpcObj.isCalling()) {
                    MyApplication.sPage_WillBe = 10003;
                }
                if (App_Bt.bDownloading) {
                    MyApplication.sPage_WillBe = FinalBtCtrl.Page_Contact;
                }
                Log.d("gdy6", "33 onCreate:sPage_WillBe = " + MyApplication.sPage_WillBe + " phoneState = " + App_Bt.phoneState);
            } else if (!App_Bt.getInstance().mIpcObj.isCalling()) {
                MyApplication.sPage_WillBe = FinalBtCtrl.Page_Pair;
            }
        }
        if (App_Bt.bFirstBtAvPage) {
            MyApplication.sPage_WillBe = FinalBtCtrl.Page_Av;
        }
        Intent intent = getIntent();
        if (intent != null) {
            String strAction = intent.getAction();
            if (!TextUtils.isEmpty(strAction)) {
                if ("btav".equals(intent.getStringExtra("launcher"))) {
                    MyApplication.myApp.startAct("com.syu.btav");
                    finish();
                    return;
                } else if (Manifest.permission.bt.equals(strAction)) {
                    String strExtra = intent.getStringExtra(Manifest.permission.bt);
                    if (!TextUtils.isEmpty(strExtra)) {
                        if (strExtra.equals(SpeechUtil.KEY_CONTACT)) {
                            MyApplication.sPage_WillBe = FinalBtCtrl.Page_Contact;
                        } else if (strExtra.equals("history") || strExtra.equals("historyAccept") || strExtra.equals("historyDismiss")) {
                            MyApplication.sPage_WillBe = FinalBtCtrl.Page_History;
                        }
                    }
                }
            }
        }
        if (App_Bt.bHideBtDial) {
            MyApplication.sPage_WillBe = FinalBtCtrl.Page_Av;
        }
        if (App_Bt.bNo_Pair && MyApplication.sPage_WillBe == 10012) {
            MyApplication.sPage_WillBe = FinalBtCtrl.Page_Set;
        }
        Log.d("gdy6", " 44 onCreate: sPage_WillBe = " + MyApplication.sPage_WillBe + " bHideBtDial = " + App_Bt.bHideBtDial);
        MyApplication.myApp.startAct(ActBt.class);
        finish();
    }
}
