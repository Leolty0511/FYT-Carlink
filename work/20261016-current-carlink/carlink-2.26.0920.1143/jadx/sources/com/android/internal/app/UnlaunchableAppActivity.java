package com.android.internal.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.UserManager;
import android.service.notification.ZenModeConfig;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class UnlaunchableAppActivity extends Activity implements DialogInterface.OnDismissListener, DialogInterface.OnClickListener {
    private static final String EXTRA_UNLAUNCHABLE_REASON = "unlaunchable_reason";
    private static final String TAG = "UnlaunchableAppActivity";
    private static final int UNLAUNCHABLE_REASON_QUIET_MODE = 1;
    private int mReason;
    private IntentSender mTarget;
    private int mUserId;

    private static final Intent createBaseIntent() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(ZenModeConfig.SYSTEM_AUTHORITY, UnlaunchableAppActivity.class.getName()));
        intent.setFlags(276824064);
        return intent;
    }

    public static Intent createInQuietModeDialogIntent(int i2) {
        Intent intentCreateBaseIntent = createBaseIntent();
        intentCreateBaseIntent.putExtra(EXTRA_UNLAUNCHABLE_REASON, 1);
        intentCreateBaseIntent.putExtra(Intent.EXTRA_USER_HANDLE, i2);
        return intentCreateBaseIntent;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        IntentSender intentSender;
        if (this.mReason == 1 && i2 == -1 && UserManager.get(this).trySetQuietModeDisabled(this.mUserId, this.mTarget) && (intentSender = this.mTarget) != null) {
            try {
                startIntentSenderForResult(intentSender, -1, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException unused) {
            }
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        Intent intent = getIntent();
        this.mReason = intent.getIntExtra(EXTRA_UNLAUNCHABLE_REASON, -1);
        this.mUserId = intent.getIntExtra(Intent.EXTRA_USER_HANDLE, -10000);
        this.mTarget = (IntentSender) intent.getParcelableExtra(Intent.EXTRA_INTENT);
        if (this.mUserId == -10000) {
            Log.wtf(TAG, "Invalid user id: " + this.mUserId + ". Stopping.");
            finish();
            return;
        }
        if (this.mReason != 1) {
            Log.wtf(TAG, "Invalid unlaunchable type: " + this.mReason);
            finish();
            return;
        }
        String string = getResources().getString(R.string.work_mode_off_title);
        String string2 = getResources().getString(R.string.work_mode_off_message);
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.unlaunchable_app_activity, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.unlaunchable_app_title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.unlaunchable_app_message);
        textView.setText(string);
        textView2.setText(string2);
        AlertDialog.Builder onDismissListener = new AlertDialog.Builder(this).setView(viewInflate).setOnDismissListener(this);
        if (this.mReason == 1) {
            onDismissListener.setPositiveButton(R.string.work_mode_turn_on, this).setNegativeButton(17039360, (DialogInterface.OnClickListener) null);
        } else {
            onDismissListener.setPositiveButton(17039370, (DialogInterface.OnClickListener) null);
        }
        onDismissListener.show();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        finish();
    }

    public static Intent createInQuietModeDialogIntent(int i2, IntentSender intentSender) {
        Intent intentCreateInQuietModeDialogIntent = createInQuietModeDialogIntent(i2);
        intentCreateInQuietModeDialogIntent.putExtra(Intent.EXTRA_INTENT, intentSender);
        return intentCreateInQuietModeDialogIntent;
    }
}
