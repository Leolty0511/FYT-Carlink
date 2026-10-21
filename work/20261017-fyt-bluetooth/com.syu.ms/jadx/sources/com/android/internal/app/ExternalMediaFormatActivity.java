package com.android.internal.app;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.storage.StorageVolume;
import android.util.Log;
import com.android.internal.os.storage.ExternalStorageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class ExternalMediaFormatActivity extends AlertActivity implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public StorageVolume f819c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public BroadcastReceiver f820d = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Log.d("ExternalMediaFormatActivity", "got action " + action);
            if (action == Intent.ACTION_MEDIA_REMOVED || action == Intent.ACTION_MEDIA_CHECKING || action == Intent.ACTION_MEDIA_MOUNTED || action == Intent.ACTION_MEDIA_SHARED) {
                ExternalMediaFormatActivity.this.finish();
            }
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        if (i2 == -1) {
            Intent intent = new Intent("com.android.internal.os.storage.FORMAT_ONLY");
            intent.setComponent(ExternalStorageFormatter.f1193i);
            intent.putExtra(StorageVolume.EXTRA_STORAGE_VOLUME, this.f819c);
            startService(intent);
        }
        finish();
    }

    @Override // com.android.internal.app.AlertActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AlertController.b bVar = this.f751b;
        bVar.f782c = R.drawable.stat_sys_warning;
        bVar.f785f = getString(17040506);
        bVar.f787h = getString(17040507);
        bVar.f788i = getString(17040508);
        bVar.f789j = this;
        bVar.f790k = getString(R.string.cancel);
        bVar.f791l = this;
        a();
        this.f819c = (StorageVolume) getIntent().getParcelableExtra(StorageVolume.EXTRA_STORAGE_VOLUME);
        Log.d("ExternalMediaFormatActivity", "onCreate!-------volume =" + this.f819c.getPath());
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        unregisterReceiver(this.f820d);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_MEDIA_REMOVED);
        intentFilter.addAction(Intent.ACTION_MEDIA_CHECKING);
        intentFilter.addAction(Intent.ACTION_MEDIA_MOUNTED);
        intentFilter.addAction(Intent.ACTION_MEDIA_SHARED);
        registerReceiver(this.f820d, intentFilter);
    }
}
