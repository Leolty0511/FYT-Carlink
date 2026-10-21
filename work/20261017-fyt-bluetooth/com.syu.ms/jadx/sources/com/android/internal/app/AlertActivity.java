package com.android.internal.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
public abstract class AlertActivity extends Activity implements DialogInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AlertController f750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AlertController.b f751b;

    public void a() {
        this.f751b.a(this.f750a);
        this.f750a.u();
    }

    @Override // android.content.DialogInterface
    public void cancel() {
        finish();
    }

    @Override // android.content.DialogInterface
    public void dismiss() {
        if (isFinishing()) {
            return;
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f750a = new AlertController(this, this, getWindow());
        this.f751b = new AlertController.b(this);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.f750a.v(i2, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (this.f750a.w(i2, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }
}
