package com.android.internal.app;

import android.app.Activity;
import android.app.IUiModeManager;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class DisableCarModeActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            IUiModeManager.Stub.asInterface(ServiceManager.getService(Context.UI_MODE_SERVICE)).disableCarMode(1);
        } catch (RemoteException e2) {
            Log.e("DisableCarModeActivity", "Failed to disable car mode", e2);
        }
        finish();
    }
}
