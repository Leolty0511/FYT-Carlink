package com.syu.bt.act;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import com.lsec.core.frame.app.MyApplication;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;

/* JADX INFO: loaded from: classes.dex */
public class ActBtAvStart extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MyApplication.sPage_WillBe = FinalBtCtrl.Page_Av;
        Log.d("gdy", "11 ActBtAvStart: sPage_WillBe = " + MyApplication.sPage_WillBe + " App_Bt.bIsLauncher_2Ico = " + App_Bt.bIsLauncher_2Ico);
        MyApplication.myApp.startAct(ActBt.class);
        finish();
    }
}
