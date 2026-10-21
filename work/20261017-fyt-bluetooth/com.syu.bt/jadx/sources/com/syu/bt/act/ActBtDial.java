package com.syu.bt.act;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import com.lsec.core.frame.app.MyApplication;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class ActBtDial extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getIntent() != null) {
            String strAction = getIntent().getAction();
            if ("com.syu.bt.favrorite".equals(strAction)) {
                App_Bt.bJumpFavorite = true;
            }
        }
        MyApplication.sPage_WillBe = 10003;
        Log.d("gdy", "11 ActBtDial: sPage_WillBe = " + MyApplication.sPage_WillBe + " App_Bt.bIsLauncher_2Ico = " + App_Bt.bIsLauncher_2Ico);
        MyApplication.myApp.startAct(ActBt.class);
        finish();
    }
}
