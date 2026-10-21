package com.android.internal.os.storage;

import android.app.ProgressDialog;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Environment;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.storage.IMountService;
import android.os.storage.StorageEventListener;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.util.Log;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class ExternalStorageFormatter extends Service implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ComponentName f1193i = new ComponentName("android", ExternalStorageFormatter.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public StorageVolume f1194a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PowerManager.WakeLock f1197d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IMountService f1195b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public StorageManager f1196c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ProgressDialog f1198e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1199f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1200g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public StorageEventListener f1201h = new a();

    public class a extends StorageEventListener {
        public a() {
        }

        @Override // android.os.storage.StorageEventListener
        public void onStorageStateChanged(String str, String str2, String str3) {
            Log.i("ExternalStorageFormatter", "Received storage state changed notification that " + str + " changed state from " + str2 + " to " + str3);
            ExternalStorageFormatter.this.f();
        }
    }

    public class b extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ IMountService f1203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f1204b;

        public b(IMountService iMountService, String str) {
            this.f1203a = iMountService;
            this.f1204b = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z2 = true;
            try {
                this.f1203a.formatVolume(this.f1204b);
            } catch (Exception unused) {
                Toast.makeText(ExternalStorageFormatter.this, 17040597, 1).show();
                z2 = false;
            }
            if (z2 && ExternalStorageFormatter.this.f1199f) {
                ExternalStorageFormatter.this.sendBroadcast(new Intent("android.intent.action.MASTER_CLEAR"));
                ExternalStorageFormatter.this.stopSelf();
                return;
            }
            if (z2 || !ExternalStorageFormatter.this.f1200g) {
                try {
                    this.f1203a.mountVolume(this.f1204b);
                } catch (RemoteException e2) {
                    Log.w("ExternalStorageFormatter", "Failed talking with mount service", e2);
                }
            } else {
                ExternalStorageFormatter.this.sendBroadcast(new Intent("android.intent.action.MASTER_CLEAR"));
            }
            ExternalStorageFormatter.this.stopSelf();
        }
    }

    public void c(int i2) {
        Toast.makeText(this, i2, 1).show();
        if (this.f1200g) {
            sendBroadcast(new Intent("android.intent.action.MASTER_CLEAR"));
        }
        stopSelf();
    }

    public IMountService d() {
        if (this.f1195b == null) {
            IBinder service = ServiceManager.getService("mount");
            if (service != null) {
                this.f1195b = IMountService.Stub.asInterface(service);
            } else {
                Log.e("ExternalStorageFormatter", "Can't get mount service");
            }
        }
        return this.f1195b;
    }

    public void e(int i2) {
        if (this.f1198e == null) {
            ProgressDialog progressDialog = new ProgressDialog(this);
            this.f1198e = progressDialog;
            progressDialog.setIndeterminate(true);
            this.f1198e.setCancelable(false);
            this.f1198e.getWindow().setType(2003);
            this.f1198e.show();
        }
        this.f1198e.setMessage(getText(i2));
    }

    public void f() {
        StorageVolume storageVolume = this.f1194a;
        String externalStorageState = storageVolume == null ? Environment.getExternalStorageState() : this.f1196c.getVolumeState(storageVolume.getPath());
        if (Environment.MEDIA_MOUNTED.equals(externalStorageState) || Environment.MEDIA_MOUNTED_READ_ONLY.equals(externalStorageState)) {
            e(17040595);
            IMountService iMountServiceD = d();
            StorageVolume storageVolume2 = this.f1194a;
            try {
                iMountServiceD.unmountVolume(storageVolume2 == null ? Environment.getLegacyExternalStorageDirectory().toString() : storageVolume2.getPath(), true, this.f1199f);
                return;
            } catch (RemoteException e2) {
                Log.w("ExternalStorageFormatter", "Failed talking with mount service", e2);
                return;
            }
        }
        if (Environment.MEDIA_NOFS.equals(externalStorageState) || Environment.MEDIA_UNMOUNTED.equals(externalStorageState) || Environment.MEDIA_UNMOUNTABLE.equals(externalStorageState)) {
            e(17040596);
            IMountService iMountServiceD2 = d();
            StorageVolume storageVolume3 = this.f1194a;
            String string = storageVolume3 == null ? Environment.getLegacyExternalStorageDirectory().toString() : storageVolume3.getPath();
            if (iMountServiceD2 != null) {
                new b(iMountServiceD2, string).start();
                return;
            } else {
                Log.w("ExternalStorageFormatter", "Unable to locate IMountService");
                return;
            }
        }
        if (Environment.MEDIA_BAD_REMOVAL.equals(externalStorageState)) {
            c(17040598);
            return;
        }
        if (Environment.MEDIA_CHECKING.equals(externalStorageState)) {
            c(17040599);
            return;
        }
        if (Environment.MEDIA_REMOVED.equals(externalStorageState)) {
            c(17040600);
            return;
        }
        if ("shared".equals(externalStorageState)) {
            c(17040601);
            return;
        }
        c(17040602);
        Log.w("ExternalStorageFormatter", "Unknown storage state: " + externalStorageState);
        stopSelf();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        IMountService iMountServiceD = d();
        StorageVolume storageVolume = this.f1194a;
        try {
            iMountServiceD.mountVolume(storageVolume == null ? Environment.getLegacyExternalStorageDirectory().toString() : storageVolume.getPath());
        } catch (RemoteException e2) {
            Log.w("ExternalStorageFormatter", "Failed talking with mount service", e2);
        }
        stopSelf();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (this.f1196c == null) {
            StorageManager storageManager = (StorageManager) getSystemService(Context.STORAGE_SERVICE);
            this.f1196c = storageManager;
            storageManager.registerListener(this.f1201h);
        }
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) getSystemService(Context.POWER_SERVICE)).newWakeLock(1, "ExternalStorageFormatter");
        this.f1197d = wakeLockNewWakeLock;
        wakeLockNewWakeLock.acquire();
    }

    @Override // android.app.Service
    public void onDestroy() {
        StorageManager storageManager = this.f1196c;
        if (storageManager != null) {
            storageManager.unregisterListener(this.f1201h);
        }
        ProgressDialog progressDialog = this.f1198e;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        this.f1197d.release();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        if ("com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET".equals(intent.getAction())) {
            this.f1199f = true;
        }
        if (intent.getBooleanExtra("always_reset", false)) {
            this.f1200g = true;
        }
        this.f1194a = (StorageVolume) intent.getParcelableExtra(StorageVolume.EXTRA_STORAGE_VOLUME);
        if (this.f1198e != null) {
            return 3;
        }
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.f1198e = progressDialog;
        progressDialog.setIndeterminate(true);
        this.f1198e.setCancelable(true);
        this.f1198e.getWindow().setType(2003);
        if (!this.f1200g) {
            this.f1198e.setOnCancelListener(this);
        }
        f();
        this.f1198e.show();
        return 3;
    }
}
