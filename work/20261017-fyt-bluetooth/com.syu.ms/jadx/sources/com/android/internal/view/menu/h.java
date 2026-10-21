package com.android.internal.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class h extends c implements SubMenu {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public c f1403y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public d f1404z;

    public h(Context context, c cVar, d dVar) {
        super(context);
        this.f1403y = cVar;
        this.f1404z = dVar;
    }

    @Override // com.android.internal.view.menu.c
    public boolean A() {
        return this.f1403y.A();
    }

    @Override // com.android.internal.view.menu.c
    public void H(c.a aVar) {
        this.f1403y.H(aVar);
    }

    public Menu U() {
        return this.f1403y;
    }

    @Override // com.android.internal.view.menu.c
    public boolean e(d dVar) {
        return this.f1403y.e(dVar);
    }

    @Override // com.android.internal.view.menu.c
    public boolean f(c cVar, MenuItem menuItem) {
        return super.f(cVar, menuItem) || this.f1403y.f(cVar, menuItem);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f1404z;
    }

    @Override // com.android.internal.view.menu.c
    public boolean i(d dVar) {
        return this.f1403y.i(dVar);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.M(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.P(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.Q(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f1404z.setIcon(drawable);
        return this;
    }

    @Override // com.android.internal.view.menu.c, android.view.Menu
    public void setQwertyMode(boolean z2) {
        this.f1403y.setQwertyMode(z2);
    }

    @Override // com.android.internal.view.menu.c
    public c x() {
        return this.f1403y;
    }

    @Override // com.android.internal.view.menu.c
    public boolean z() {
        return this.f1403y.z();
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i2) {
        return (SubMenu) super.L(i2);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i2) {
        return (SubMenu) super.O(i2);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i2) {
        this.f1404z.setIcon(i2);
        return this;
    }
}
