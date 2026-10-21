package com.android.internal.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.IPowerManager;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Slog;
import android.view.WindowManager;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class ShutdownCountdownActivity extends Activity {
    private static final int SHUTDOWN_FOR_OVERHEAT_FLAG = 1;
    private static final String TAG = "ShutdownCountdownActivity";
    private AlertDialog mDialog;
    private IPowerManager mPm;
    private PowerManager.WakeLock mWakeLock;
    private int mSeconds = 15;
    private int mSecondsForOverheat = 3;
    private Handler mHandler = new Handler();
    private Runnable mShutdownAction = new Runnable() { // from class: com.android.internal.app.ShutdownCountdownActivity.1
        @Override // java.lang.Runnable
        public void run() {
            ShutdownCountdownActivity.access$010(ShutdownCountdownActivity.this);
            if (ShutdownCountdownActivity.this.mDialog != null) {
                if (ShutdownCountdownActivity.this.mSeconds > 0) {
                    ShutdownCountdownActivity.this.mDialog.setMessage(ShutdownCountdownActivity.this.getResources().getQuantityString(R.plurals.shutdown_after_seconds_plurals, ShutdownCountdownActivity.this.mSeconds, Integer.valueOf(ShutdownCountdownActivity.this.mSeconds)));
                } else {
                    ShutdownCountdownActivity.this.mDialog.setMessage(ShutdownCountdownActivity.this.getString(R.string.shutdown_confirm));
                }
            }
            if (ShutdownCountdownActivity.this.mSeconds > 0) {
                ShutdownCountdownActivity.this.mHandler.postDelayed(ShutdownCountdownActivity.this.mShutdownAction, 1000L);
            } else {
                ShutdownCountdownActivity.this.mHandler.post(new Runnable() { // from class: com.android.internal.app.ShutdownCountdownActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Slog.i(ShutdownCountdownActivity.TAG, "ShutdownThread->shutdown");
                        try {
                            if (ShutdownCountdownActivity.this.mDialog != null) {
                                ShutdownCountdownActivity.this.mDialog.dismiss();
                            }
                            ShutdownCountdownActivity.this.mPm.shutdown(false, "timer", false);
                        } catch (RemoteException unused) {
                        }
                    }
                });
            }
        }
    };
    private Runnable mShutdownForOverheat = new Runnable() { // from class: com.android.internal.app.ShutdownCountdownActivity.2
        @Override // java.lang.Runnable
        public void run() {
            ShutdownCountdownActivity.access$510(ShutdownCountdownActivity.this);
            if (ShutdownCountdownActivity.this.mDialog != null) {
                if (ShutdownCountdownActivity.this.mSecondsForOverheat > 0) {
                    ShutdownCountdownActivity.this.mDialog.setMessage(ShutdownCountdownActivity.this.getResources().getQuantityString(R.plurals.overheat_shutdown_after_seconds_plurals, ShutdownCountdownActivity.this.mSecondsForOverheat, Integer.valueOf(ShutdownCountdownActivity.this.mSecondsForOverheat)));
                } else {
                    ShutdownCountdownActivity.this.mDialog.setMessage(ShutdownCountdownActivity.this.getString(R.string.shutdown_confirm));
                }
            }
            if (ShutdownCountdownActivity.this.mSecondsForOverheat > 0) {
                ShutdownCountdownActivity.this.mHandler.postDelayed(ShutdownCountdownActivity.this.mShutdownForOverheat, 1000L);
            } else {
                ShutdownCountdownActivity.this.mHandler.post(new Runnable() { // from class: com.android.internal.app.ShutdownCountdownActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Slog.i(ShutdownCountdownActivity.TAG, "ShutdownThread->shutdown");
                        try {
                            if (ShutdownCountdownActivity.this.mDialog != null) {
                                ShutdownCountdownActivity.this.mDialog.dismiss();
                            }
                            ShutdownCountdownActivity.this.mPm.shutdown(false, "timer", false);
                        } catch (RemoteException unused) {
                        }
                    }
                });
            }
        }
    };

    public static /* synthetic */ int access$010(ShutdownCountdownActivity shutdownCountdownActivity) {
        int i2 = shutdownCountdownActivity.mSeconds;
        shutdownCountdownActivity.mSeconds = i2 - 1;
        return i2;
    }

    public static /* synthetic */ int access$510(ShutdownCountdownActivity shutdownCountdownActivity) {
        int i2 = shutdownCountdownActivity.mSecondsForOverheat;
        shutdownCountdownActivity.mSecondsForOverheat = i2 - 1;
        return i2;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        Slog.i(TAG, "onCreate(): mAction=" + intent.getAction());
        this.mPm = IPowerManager.Stub.asInterface(ServiceManager.getService(Context.POWER_SERVICE));
        getWindow().addFlags(6815872);
        getWindow().getDecorView().setAlpha(0.0f);
        this.mWakeLock = ((PowerManager) getSystemService(Context.POWER_SERVICE)).newWakeLock(1, "ShutdownActivity");
        Slog.i(TAG, "Countdown dialog need power wake lock to show countdown normally ,acquire mWakeLock");
        this.mWakeLock.acquire();
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this, 16973940).create();
        this.mDialog = alertDialogCreate;
        alertDialogCreate.getWindow().setBackgroundDrawableResource(17170445);
        this.mDialog.setTitle(R.string.power_off);
        if (intent.getIntExtra("ShutdownDueToOverheat", 0) == 1) {
            if (this.mSecondsForOverheat > 0) {
                AlertDialog alertDialog = this.mDialog;
                Resources resources = getResources();
                int i2 = this.mSecondsForOverheat;
                alertDialog.setMessage(resources.getQuantityString(R.plurals.overheat_shutdown_after_seconds_plurals, i2, Integer.valueOf(i2)));
            } else {
                this.mDialog.setMessage(getString(R.string.shutdown_confirm));
            }
            this.mDialog.setCancelable(false);
            this.mDialog.getWindow().getAttributes().setTitle("ShutdownTiming");
            this.mDialog.getWindow().setType(WindowManager.LayoutParams.TYPE_KEYGUARD_DIALOG);
            this.mDialog.show();
            this.mHandler.postDelayed(this.mShutdownForOverheat, 1000L);
            return;
        }
        if (this.mSeconds > 0) {
            AlertDialog alertDialog2 = this.mDialog;
            Resources resources2 = getResources();
            int i3 = this.mSeconds;
            alertDialog2.setMessage(resources2.getQuantityString(R.plurals.shutdown_after_seconds_plurals, i3, Integer.valueOf(i3)));
        } else {
            this.mDialog.setMessage(getString(R.string.shutdown_confirm));
        }
        this.mDialog.setButton(-3, getText(17039360), new DialogInterface.OnClickListener() { // from class: com.android.internal.app.ShutdownCountdownActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i4) {
                ShutdownCountdownActivity.this.mHandler.removeCallbacks(ShutdownCountdownActivity.this.mShutdownAction);
                dialogInterface.cancel();
                ShutdownCountdownActivity.this.finish();
            }
        });
        this.mDialog.setCancelable(false);
        this.mDialog.getWindow().getAttributes().setTitle("ShutdownTiming");
        this.mDialog.getWindow().setType(WindowManager.LayoutParams.TYPE_KEYGUARD_DIALOG);
        this.mDialog.show();
        this.mHandler.postDelayed(this.mShutdownAction, 1000L);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.mDialog = null;
        }
        if (this.mWakeLock != null) {
            Slog.i(TAG, "Countdown dialog dismiss - release mWakeLock.");
            this.mWakeLock.release();
        }
    }
}
