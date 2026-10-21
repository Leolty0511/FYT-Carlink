package com.syu.bt.act;

import android.app.Activity;
import android.os.Bundle;
import com.lsec.core.frame.app.MyApplication;
import com.syu.bt.data.FinalBtCtrl;

/* JADX INFO: loaded from: classes.dex */
public class ActBtHistory extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MyApplication.sPage_WillBe = FinalBtCtrl.Page_History;
        MyApplication.myApp.startAct(ActBt.class);
        finish();
    }
}
