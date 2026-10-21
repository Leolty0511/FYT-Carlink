package com.android.internal.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class HeavyWeightSwitcherActivity extends Activity {
    public static final String KEY_CUR_APP = "cur_app";
    public static final String KEY_CUR_TASK = "cur_task";
    public static final String KEY_HAS_RESULT = "has_result";
    public static final String KEY_INTENT = "intent";
    public static final String KEY_NEW_APP = "new_app";
    String mCurApp;
    int mCurTask;
    boolean mHasResult;
    String mNewApp;
    IntentSender mStartIntent;
    private View.OnClickListener mSwitchOldListener = new View.OnClickListener() { // from class: com.android.internal.app.HeavyWeightSwitcherActivity.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ActivityManager.getService().moveTaskToFront(HeavyWeightSwitcherActivity.this.mCurTask, 0, null);
            } catch (RemoteException unused) {
            }
            HeavyWeightSwitcherActivity.this.finish();
        }
    };
    private View.OnClickListener mSwitchNewListener = new View.OnClickListener() { // from class: com.android.internal.app.HeavyWeightSwitcherActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ActivityManager.getService().finishHeavyWeightApp();
            } catch (RemoteException unused) {
            }
            try {
                HeavyWeightSwitcherActivity heavyWeightSwitcherActivity = HeavyWeightSwitcherActivity.this;
                if (heavyWeightSwitcherActivity.mHasResult) {
                    heavyWeightSwitcherActivity.startIntentSenderForResult(heavyWeightSwitcherActivity.mStartIntent, -1, null, 33554432, 33554432, 0);
                } else {
                    heavyWeightSwitcherActivity.startIntentSenderForResult(heavyWeightSwitcherActivity.mStartIntent, -1, null, 0, 0, 0);
                }
            } catch (IntentSender.SendIntentException e2) {
                Log.w("HeavyWeightSwitcherActivity", "Failure starting", e2);
            }
            HeavyWeightSwitcherActivity.this.finish();
        }
    };
    private View.OnClickListener mCancelListener = new View.OnClickListener() { // from class: com.android.internal.app.HeavyWeightSwitcherActivity.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HeavyWeightSwitcherActivity.this.finish();
        }
    };

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(3);
        this.mStartIntent = (IntentSender) getIntent().getParcelableExtra("intent");
        this.mHasResult = getIntent().getBooleanExtra(KEY_HAS_RESULT, false);
        this.mCurApp = getIntent().getStringExtra(KEY_CUR_APP);
        this.mCurTask = getIntent().getIntExtra(KEY_CUR_TASK, 0);
        this.mNewApp = getIntent().getStringExtra(KEY_NEW_APP);
        setContentView(R.layout.heavy_weight_switcher);
        setIconAndText(R.id.old_app_icon, R.id.old_app_action, R.id.old_app_description, this.mCurApp, R.string.old_app_action, R.string.old_app_description);
        setIconAndText(R.id.new_app_icon, R.id.new_app_action, R.id.new_app_description, this.mNewApp, R.string.new_app_action, R.string.new_app_description);
        findViewById(R.id.switch_old).setOnClickListener(this.mSwitchOldListener);
        findViewById(R.id.switch_new).setOnClickListener(this.mSwitchNewListener);
        findViewById(R.id.cancel).setOnClickListener(this.mCancelListener);
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(16843605, typedValue, true);
        getWindow().setFeatureDrawableResource(3, typedValue.resourceId);
    }

    public void setDrawable(int i2, Drawable drawable) {
        if (drawable != null) {
            ((ImageView) findViewById(i2)).setImageDrawable(drawable);
        }
    }

    public void setIconAndText(int i2, int i3, int i4, String str, int i5, int i6) {
        CharSequence charSequenceLoadLabel = "";
        Drawable drawableLoadIcon = null;
        if (this.mCurApp != null) {
            try {
                ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(str, 0);
                charSequenceLoadLabel = applicationInfo.loadLabel(getPackageManager());
                drawableLoadIcon = applicationInfo.loadIcon(getPackageManager());
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        setDrawable(i2, drawableLoadIcon);
        setText(i3, getString(i5, charSequenceLoadLabel));
        setText(i4, getText(i6));
    }

    public void setText(int i2, CharSequence charSequence) {
        ((TextView) findViewById(i2)).setText(charSequence);
    }
}
