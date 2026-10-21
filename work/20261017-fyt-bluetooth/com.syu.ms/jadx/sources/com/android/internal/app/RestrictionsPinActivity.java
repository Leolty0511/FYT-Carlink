package com.android.internal.app;

import android.content.Context;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.UserManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class RestrictionsPinActivity extends AlertActivity implements View.OnClickListener, TextWatcher, TextView.OnEditorActionListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public UserManager f959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EditText f961e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f962f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Button f963g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Button f964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f965i = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RestrictionsPinActivity.this.f(-1)) {
                RestrictionsPinActivity.this.f962f.setVisibility(4);
            }
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void c() {
        AlertController.b bVar = this.f751b;
        bVar.f785f = getString(17040869);
        View viewInflate = ((LayoutInflater) getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(17367177, (ViewGroup) null);
        bVar.f801v = viewInflate;
        this.f962f = (TextView) viewInflate.findViewById(16909080);
        this.f961e = (EditText) bVar.f801v.findViewById(16909079);
        this.f963g = (Button) bVar.f801v.findViewById(16909082);
        this.f964h = (Button) bVar.f801v.findViewById(16909081);
        this.f961e.addTextChangedListener(this);
        this.f963g.setOnClickListener(this);
        this.f964h.setOnClickListener(this);
    }

    public void d() {
        int iCheckRestrictionsChallenge = this.f959c.checkRestrictionsChallenge(this.f961e.getText().toString());
        if (iCheckRestrictionsChallenge == -1) {
            setResult(-1);
            finish();
        } else if (iCheckRestrictionsChallenge >= 0) {
            this.f962f.setText(17040871);
            this.f962f.setVisibility(0);
            f(iCheckRestrictionsChallenge);
            this.f961e.setText(ProxyProperties.LOCAL_EXCL_LIST);
        }
    }

    public void e(boolean z2) {
        this.f963g.setEnabled(z2);
    }

    public final boolean f(int i2) {
        if (i2 < 0) {
            i2 = this.f959c.checkRestrictionsChallenge(null);
        }
        boolean z2 = true;
        if (i2 >= 200) {
            if (i2 <= 60000) {
                int i3 = (i2 + 200) / 1000;
                this.f962f.setText(String.format(getResources().getQuantityString(18022424, i3), Integer.valueOf(i3)));
            } else {
                this.f962f.setText(17040878);
            }
            this.f962f.setVisibility(0);
            this.f961e.setText(ProxyProperties.LOCAL_EXCL_LIST);
            this.f961e.postDelayed(this.f965i, Math.min(1000, i2));
            z2 = false;
        } else {
            this.f962f.setText(17040871);
        }
        this.f961e.setEnabled(z2);
        e(z2);
        return z2;
    }

    public boolean g() {
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f963g) {
            d();
        } else if (view == this.f964h) {
            setResult(0);
            finish();
        }
    }

    @Override // com.android.internal.app.AlertActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        UserManager userManager = (UserManager) getSystemService(Context.USER_SERVICE);
        this.f959c = userManager;
        this.f960d = userManager.hasRestrictionsChallenge();
        c();
        a();
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        d();
        return true;
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        e(false);
        if (this.f959c.hasRestrictionsChallenge()) {
            this.f962f.setVisibility(4);
            this.f961e.setOnEditorActionListener(this);
            f(-1);
        } else if (g()) {
            setResult(-1);
            finish();
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        Editable text = this.f961e.getText();
        e(text != null && text.length() >= 4);
    }
}
