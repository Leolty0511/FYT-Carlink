package com.syu.bt;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.syu.app.ipc.Bt_IpcObj;

/* JADX INFO: loaded from: classes.dex */
public class PhoneActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        Uri uri;
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        if (intent != null && (uri = intent.getData()) != null) {
            String Number = uri.getSchemeSpecificPart();
            if (Bt_IpcObj.isConnect()) {
                App_Bt.getInstance().mIpcObj.dialOut(Number);
            }
        }
        finish();
    }
}
