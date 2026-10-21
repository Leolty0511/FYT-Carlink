package com.android.internal.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class NetInitiatedActivity extends AlertActivity implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f833c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f834d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f835e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f836f = 6;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public BroadcastReceiver f837g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f838h = new b();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.d("NetInitiatedActivity", "NetInitiatedReceiver onReceive: " + intent.getAction());
            if (intent.getAction() == "android.intent.action.NETWORK_INITIATED_VERIFY") {
                NetInitiatedActivity.this.f(intent);
            }
        }
    }

    public class b extends Handler {
        public b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            if (NetInitiatedActivity.this.f833c != -1) {
                NetInitiatedActivity netInitiatedActivity = NetInitiatedActivity.this;
                netInitiatedActivity.g(netInitiatedActivity.f835e);
            }
            NetInitiatedActivity.this.finish();
        }
    }

    public final void f(Intent intent) {
        this.f833c = intent.getIntExtra("notif_id", -1);
        Log.d("NetInitiatedActivity", "handleNIVerify action: " + intent.getAction());
    }

    public final void g(int i2) {
        Log.d("NetInitiatedActivity", "sendUserResponse, response: " + i2);
        ((LocationManager) getSystemService("location")).sendNiResponse(this.f833c, i2);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        if (i2 == -1) {
            g(1);
        }
        if (i2 == -2) {
            g(2);
        }
        finish();
        this.f833c = -1;
    }

    @Override // com.android.internal.app.AlertActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        AlertController.b bVar = this.f751b;
        Context applicationContext = getApplicationContext();
        bVar.f782c = 17302232;
        bVar.f785f = intent.getStringExtra("title");
        bVar.f787h = intent.getStringExtra("message");
        bVar.f788i = String.format(applicationContext.getString(17040611), new Object[0]);
        bVar.f789j = this;
        bVar.f790k = String.format(applicationContext.getString(17040612), new Object[0]);
        bVar.f791l = this;
        this.f833c = intent.getIntExtra("notif_id", -1);
        this.f834d = intent.getIntExtra("timeout", this.f836f);
        this.f835e = intent.getIntExtra("default_resp", 1);
        Log.d("NetInitiatedActivity", "onCreate() : notificationId: " + this.f833c + " timeout: " + this.f834d + " default_response:" + this.f835e);
        Handler handler = this.f838h;
        handler.sendMessageDelayed(handler.obtainMessage(1), (long) (this.f834d * 1000));
        a();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        Log.d("NetInitiatedActivity", "onPause");
        unregisterReceiver(this.f837g);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Log.d("NetInitiatedActivity", "onResume");
        registerReceiver(this.f837g, new IntentFilter("android.intent.action.NETWORK_INITIATED_VERIFY"));
    }
}
