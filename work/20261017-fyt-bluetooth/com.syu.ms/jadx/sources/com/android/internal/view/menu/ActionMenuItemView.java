package com.android.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends TextView implements g.a, View.OnClickListener, View.OnLongClickListener, ActionMenuView.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f1258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CharSequence f1259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Drawable f1260c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c.b f1261d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1262e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1263f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1264g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1265h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1266i;

    @Override // com.android.internal.view.menu.ActionMenuView.a
    public boolean a() {
        return h();
    }

    @Override // com.android.internal.view.menu.g.a
    public void b(d dVar, int i2) {
        this.f1258a = dVar;
        setIcon(dVar.getIcon());
        setTitle(dVar.f(this));
        setId(dVar.getItemId());
        setVisibility(dVar.isVisible() ? 0 : 8);
        setEnabled(dVar.isEnabled());
    }

    @Override // com.android.internal.view.menu.ActionMenuView.a
    public boolean c() {
        return h() && this.f1258a.getIcon() == null;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // com.android.internal.view.menu.g.a
    public boolean e() {
        return true;
    }

    @Override // com.android.internal.view.menu.g.a
    public d getItemData() {
        return this.f1258a;
    }

    public boolean h() {
        return !TextUtils.isEmpty(getText());
    }

    public final void i() {
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(this.f1259b);
        if (this.f1260c != null && (!this.f1258a.u() || (!this.f1262e && !this.f1263f))) {
            z2 = false;
        }
        setText(z3 & z2 ? this.f1259b : null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        c.b bVar = this.f1261d;
        if (bVar != null) {
            bVar.d(this.f1258a);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1262e = getContext().getResources().getBoolean(17891398);
        i();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (h()) {
            return false;
        }
        int[] iArr = new int[2];
        Rect rect = new Rect();
        getLocationOnScreen(iArr);
        getWindowVisibleDisplayFrame(rect);
        Context context = getContext();
        int width = getWidth();
        int height = getHeight();
        int i2 = iArr[1] + (height / 2);
        int i3 = context.getResources().getDisplayMetrics().widthPixels;
        Toast toastMakeText = Toast.makeText(context, this.f1258a.getTitle(), 0);
        if (i2 < rect.height()) {
            toastMakeText.setGravity(8388661, (i3 - iArr[0]) - (width / 2), height);
        } else {
            toastMakeText.setGravity(81, 0, height);
        }
        toastMakeText.show();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        if (View.MeasureSpec.getMode(i3) == Integer.MIN_VALUE) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), 1073741824);
        }
        boolean zH = h();
        if (zH && (i4 = this.f1265h) >= 0) {
            super.setPadding(i4, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, this.f1264g) : this.f1264g;
        if (mode != 1073741824 && this.f1264g > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i3);
        }
        if (zH || this.f1260c == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f1260c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence contentDescription = getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            return;
        }
        accessibilityEvent.getText().add(contentDescription);
    }

    public void setCheckable(boolean z2) {
    }

    public void setChecked(boolean z2) {
    }

    public void setExpandedFormat(boolean z2) {
        if (this.f1263f != z2) {
            this.f1263f = z2;
            d dVar = this.f1258a;
            if (dVar != null) {
                dVar.b();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f1260c = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i2 = this.f1266i;
            if (intrinsicWidth > i2) {
                intrinsicHeight = (int) (intrinsicHeight * (i2 / intrinsicWidth));
                intrinsicWidth = i2;
            }
            if (intrinsicHeight > i2) {
                intrinsicWidth = (int) (intrinsicWidth * (i2 / intrinsicHeight));
            } else {
                i2 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i2);
        }
        setCompoundDrawables(drawable, null, null, null);
        i();
    }

    public void setItemInvoker(c.b bVar) {
        this.f1261d = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
        this.f1265h = i2;
        super.setPadding(i2, i3, i4, i5);
    }

    public void setTitle(CharSequence charSequence) {
        this.f1259b = charSequence;
        setContentDescription(charSequence);
        i();
    }
}
