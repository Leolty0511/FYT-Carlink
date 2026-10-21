package com.syu.bt.util;

import android.content.ComponentName;
import android.content.Intent;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public class AppInfo {
    public boolean bCanUninstall = false;
    public Drawable icon;
    public Intent intent;
    public String packageName;
    public CharSequence title;

    public final void setActivity(ComponentName className, int launchFlags) {
        this.intent = new Intent("android.intent.action.MAIN");
        this.intent.addCategory("android.intent.category.LAUNCHER");
        this.intent.setComponent(className);
        this.intent.setFlags(launchFlags);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof AppInfo)) {
            return false;
        }
        AppInfo that = (AppInfo) o;
        return this.title.equals(that.title) && this.intent.getComponent().getClassName().equals(that.intent.getComponent().getClassName());
    }

    public int hashCode() {
        int result = this.title != null ? this.title.hashCode() : 0;
        String name = this.intent.getComponent().getClassName();
        return (result * 31) + (name != null ? name.hashCode() : 0);
    }
}
