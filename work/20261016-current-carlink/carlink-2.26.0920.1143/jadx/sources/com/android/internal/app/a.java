package com.android.internal.app;

import android.view.View;
import android.widget.AdapterView;
import com.android.internal.widget.ResolverDrawerLayout;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements ResolverDrawerLayout.OnDismissedListener, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AccessibilityButtonChooserActivity f360b;

    public /* synthetic */ a(AccessibilityButtonChooserActivity accessibilityButtonChooserActivity) {
        this.f360b = accessibilityButtonChooserActivity;
    }

    @Override // com.android.internal.widget.ResolverDrawerLayout.OnDismissedListener
    public final void onDismissed() {
        this.f360b.finish();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        this.f360b.lambda$onCreate$0(adapterView, view, i2, j2);
    }
}
