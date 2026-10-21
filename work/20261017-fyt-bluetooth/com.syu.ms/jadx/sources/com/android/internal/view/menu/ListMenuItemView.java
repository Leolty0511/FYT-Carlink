package com.android.internal.view.menu;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f1312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImageView f1313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RadioButton f1314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TextView f1315d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CheckBox f1316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f1317f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Drawable f1318g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1319h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Context f1320i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1321j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1322k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LayoutInflater f1323l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1324m;

    private LayoutInflater getInflater() {
        if (this.f1323l == null) {
            this.f1323l = LayoutInflater.from(this.mContext);
        }
        return this.f1323l;
    }

    @Override // com.android.internal.view.menu.g.a
    public void b(d dVar, int i2) {
        this.f1312a = dVar;
        this.f1322k = i2;
        setVisibility(dVar.isVisible() ? 0 : 8);
        setTitle(dVar.f(this));
        setCheckable(dVar.isCheckable());
        k(dVar.t(), dVar.d());
        setIcon(dVar.getIcon());
        setEnabled(dVar.isEnabled());
    }

    @Override // com.android.internal.view.menu.g.a
    public boolean e() {
        return false;
    }

    @Override // com.android.internal.view.menu.g.a
    public d getItemData() {
        return this.f1312a;
    }

    public final void h() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(17367126, (ViewGroup) this, false);
        this.f1316e = checkBox;
        addView(checkBox);
    }

    public final void i() {
        ImageView imageView = (ImageView) getInflater().inflate(17367127, (ViewGroup) this, false);
        this.f1313b = imageView;
        addView(imageView, 0);
    }

    public final void j() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(17367129, (ViewGroup) this, false);
        this.f1314c = radioButton;
        addView(radioButton);
    }

    public void k(boolean z2, char c2) {
        int i2 = (z2 && this.f1312a.t()) ? 0 : 8;
        if (i2 == 0) {
            this.f1317f.setText(this.f1312a.e());
        }
        if (this.f1317f.getVisibility() != i2) {
            this.f1317f.setVisibility(i2);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        setBackgroundDrawable(this.f1318g);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f1315d = textView;
        int i2 = this.f1319h;
        if (i2 != -1) {
            textView.setTextAppearance(this.f1320i, i2);
        }
        this.f1317f = (TextView) findViewById(16909009);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        d dVar = this.f1312a;
        if (dVar == null || !dVar.hasSubMenu()) {
            return;
        }
        accessibilityNodeInfo.setCanOpenPopup(true);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.f1313b != null && this.f1321j) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f1313b.getLayoutParams();
            int i4 = layoutParams.height;
            if (i4 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i4;
            }
        }
        super.onMeasure(i2, i3);
    }

    public void setCheckable(boolean z2) {
        CompoundButton compoundButton;
        View view;
        if (!z2 && this.f1314c == null && this.f1316e == null) {
            return;
        }
        if (this.f1312a.j()) {
            if (this.f1314c == null) {
                j();
            }
            compoundButton = this.f1314c;
            view = this.f1316e;
        } else {
            if (this.f1316e == null) {
                h();
            }
            compoundButton = this.f1316e;
            view = this.f1314c;
        }
        if (!z2) {
            CheckBox checkBox = this.f1316e;
            if (checkBox != null) {
                checkBox.setVisibility(8);
            }
            RadioButton radioButton = this.f1314c;
            if (radioButton != null) {
                radioButton.setVisibility(8);
                return;
            }
            return;
        }
        compoundButton.setChecked(this.f1312a.isChecked());
        int i2 = z2 ? 0 : 8;
        if (compoundButton.getVisibility() != i2) {
            compoundButton.setVisibility(i2);
        }
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        view.setVisibility(8);
    }

    public void setChecked(boolean z2) {
        Checkable checkable;
        if (this.f1312a.j()) {
            if (this.f1314c == null) {
                j();
            }
            checkable = this.f1314c;
        } else {
            if (this.f1316e == null) {
                h();
            }
            checkable = this.f1316e;
        }
        checkable.setChecked(z2);
    }

    public void setForceShowIcon(boolean z2) {
        this.f1324m = z2;
        this.f1321j = z2;
    }

    public void setIcon(Drawable drawable) {
        boolean z2 = this.f1312a.s() || this.f1324m;
        if (z2 || this.f1321j) {
            ImageView imageView = this.f1313b;
            if (imageView == null && drawable == null && !this.f1321j) {
                return;
            }
            if (imageView == null) {
                i();
            }
            if (drawable == null && !this.f1321j) {
                this.f1313b.setVisibility(8);
                return;
            }
            ImageView imageView2 = this.f1313b;
            if (!z2) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.f1313b.getVisibility() != 0) {
                this.f1313b.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f1315d.getVisibility() != 8) {
                this.f1315d.setVisibility(8);
            }
        } else {
            this.f1315d.setText(charSequence);
            if (this.f1315d.getVisibility() != 0) {
                this.f1315d.setVisibility(0);
            }
        }
    }
}
