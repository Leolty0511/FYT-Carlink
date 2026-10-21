package com.android.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.widget.ImageView;
import android.widget.RemoteViews;
import libcore.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
@RemoteViews.RemoteView
public class CachingIconView extends ImageView {
    private int mDesiredVisibility;
    private boolean mForceHidden;
    private boolean mInternalSetDrawable;
    private String mLastPackage;
    private int mLastResId;

    public CachingIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private String normalizeIconPackage(Icon icon) {
        if (icon == null) {
            return null;
        }
        String resPackage = icon.getResPackage();
        if (TextUtils.isEmpty(resPackage) || resPackage.equals(this.mContext.getPackageName())) {
            return null;
        }
        return resPackage;
    }

    private synchronized void resetCache() {
        this.mLastResId = 0;
        this.mLastPackage = null;
    }

    private synchronized boolean testAndSetCache(Icon icon) {
        boolean z2 = false;
        if (icon != null) {
            if (icon.getType() == 2) {
                String strNormalizeIconPackage = normalizeIconPackage(icon);
                if (this.mLastResId != 0 && icon.getResId() == this.mLastResId && Objects.equal(strNormalizeIconPackage, this.mLastPackage)) {
                    z2 = true;
                }
                this.mLastPackage = strNormalizeIconPackage;
                this.mLastResId = icon.getResId();
                return z2;
            }
        }
        resetCache();
        return false;
    }

    private void updateVisibility() {
        int i2 = this.mDesiredVisibility;
        if (i2 == 0 && this.mForceHidden) {
            i2 = 4;
        }
        super.setVisibility(i2);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        resetCache();
    }

    public void setForceHidden(boolean z2) {
        this.mForceHidden = z2;
        updateVisibility();
    }

    @Override // android.widget.ImageView
    @RemotableViewMethod
    public void setImageBitmap(Bitmap bitmap) {
        resetCache();
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (!this.mInternalSetDrawable) {
            resetCache();
        }
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    @RemotableViewMethod(asyncImpl = "setImageIconAsync")
    public void setImageIcon(Icon icon) {
        if (testAndSetCache(icon)) {
            return;
        }
        this.mInternalSetDrawable = true;
        super.setImageIcon(icon);
        this.mInternalSetDrawable = false;
    }

    @Override // android.widget.ImageView
    public Runnable setImageIconAsync(Icon icon) {
        resetCache();
        return super.setImageIconAsync(icon);
    }

    @Override // android.widget.ImageView
    @RemotableViewMethod(asyncImpl = "setImageResourceAsync")
    public void setImageResource(int i2) throws Throwable {
        if (testAndSetCache(i2)) {
            return;
        }
        this.mInternalSetDrawable = true;
        super.setImageResource(i2);
        this.mInternalSetDrawable = false;
    }

    @Override // android.widget.ImageView
    public Runnable setImageResourceAsync(int i2) {
        resetCache();
        return super.setImageResourceAsync(i2);
    }

    @Override // android.widget.ImageView
    @RemotableViewMethod(asyncImpl = "setImageURIAsync")
    public void setImageURI(Uri uri) throws Throwable {
        resetCache();
        super.setImageURI(uri);
    }

    @Override // android.widget.ImageView
    public Runnable setImageURIAsync(Uri uri) {
        resetCache();
        return super.setImageURIAsync(uri);
    }

    @Override // android.widget.ImageView, android.view.View
    @RemotableViewMethod
    public void setVisibility(int i2) {
        this.mDesiredVisibility = i2;
        updateVisibility();
    }

    private synchronized boolean testAndSetCache(int i2) {
        boolean z2;
        z2 = false;
        if (i2 != 0) {
            try {
                int i3 = this.mLastResId;
                if (i3 != 0 && i2 == i3 && this.mLastPackage == null) {
                    z2 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mLastPackage = null;
        this.mLastResId = i2;
        return z2;
    }
}
