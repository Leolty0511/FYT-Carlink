package com.android.internal.app;

import android.R;
import android.app.Activity;
import android.app.ActivityManagerNative;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class HeavyWeightSwitcherActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public IntentSender f822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f825d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public View.OnClickListener f827f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View.OnClickListener f828g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public View.OnClickListener f829h = new c();

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ActivityManagerNative.getDefault().moveTaskToFront(HeavyWeightSwitcherActivity.this.f825d, 0, null);
            } catch (RemoteException unused) {
            }
            HeavyWeightSwitcherActivity.this.finish();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ActivityManagerNative.getDefault().finishHeavyWeightApp();
            } catch (RemoteException unused) {
            }
            try {
                HeavyWeightSwitcherActivity heavyWeightSwitcherActivity = HeavyWeightSwitcherActivity.this;
                if (heavyWeightSwitcherActivity.f823b) {
                    heavyWeightSwitcherActivity.startIntentSenderForResult(heavyWeightSwitcherActivity.f822a, -1, null, 33554432, 33554432, 0);
                } else {
                    heavyWeightSwitcherActivity.startIntentSenderForResult(heavyWeightSwitcherActivity.f822a, -1, null, 0, 0, 0);
                }
            } catch (IntentSender.SendIntentException e2) {
                Log.w("HeavyWeightSwitcherActivity", "Failure starting", e2);
            }
            HeavyWeightSwitcherActivity.this.finish();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HeavyWeightSwitcherActivity.this.finish();
        }
    }

    public void a(int i2, Drawable drawable) {
        if (drawable != null) {
            ((ImageView) findViewById(i2)).setImageDrawable(drawable);
        }
    }

    public void b(int i2, int i3, int i4, String str, int i5, int i6) {
        String str2 = this.f824c;
        CharSequence charSequenceLoadLabel = ProxyProperties.LOCAL_EXCL_LIST;
        Drawable drawableLoadIcon = null;
        if (str2 != null) {
            try {
                ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(str, 0);
                charSequenceLoadLabel = applicationInfo.loadLabel(getPackageManager());
                drawableLoadIcon = applicationInfo.loadIcon(getPackageManager());
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        a(i2, drawableLoadIcon);
        c(i3, getString(i5, charSequenceLoadLabel));
        c(i4, getText(i6));
    }

    public void c(int i2, CharSequence charSequence) {
        ((TextView) findViewById(i2)).setText(charSequence);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(3);
        this.f822a = (IntentSender) getIntent().getParcelableExtra("intent");
        this.f823b = getIntent().getBooleanExtra("has_result", false);
        this.f824c = getIntent().getStringExtra("cur_app");
        this.f825d = getIntent().getIntExtra("cur_task", 0);
        this.f826e = getIntent().getStringExtra("new_app");
        setContentView(17367112);
        b(16908985, 16908986, 16908987, this.f824c, 17040412, 17040413);
        b(16908989, 16908990, 16908991, this.f826e, 17040414, 17040415);
        findViewById(16908984).setOnClickListener(this.f827f);
        findViewById(16908988).setOnClickListener(this.f828g);
        findViewById(16908958).setOnClickListener(this.f829h);
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(R.attr.alertDialogIcon, typedValue, true);
        getWindow().setFeatureDrawableResource(3, typedValue.resourceId);
    }
}
