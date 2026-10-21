package com.android.internal.widget;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes3.dex */
public class BackgroundFallback {
    private Drawable mBackgroundFallback;

    /* JADX WARN: Code duplicated, block: B:21:0x0045  */
    public void draw(ViewGroup viewGroup, ViewGroup viewGroup2, Canvas canvas, View view) {
        if (hasFallback()) {
            int width = viewGroup.getWidth();
            int height = viewGroup.getHeight();
            int childCount = viewGroup2.getChildCount();
            int iMin = height;
            int iMin2 = width;
            int iMax = 0;
            int iMax2 = 0;
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup2.getChildAt(i2);
                Drawable background = childAt.getBackground();
                if (childAt == view) {
                    if (background != null || !(childAt instanceof ViewGroup) || ((ViewGroup) childAt).getChildCount() != 0) {
                        iMin2 = Math.min(iMin2, childAt.getLeft());
                        iMin = Math.min(iMin, childAt.getTop());
                        iMax = Math.max(iMax, childAt.getRight());
                        iMax2 = Math.max(iMax2, childAt.getBottom());
                    }
                } else if (childAt.getVisibility() == 0 && background != null && background.getOpacity() == -1) {
                    iMin2 = Math.min(iMin2, childAt.getLeft());
                    iMin = Math.min(iMin, childAt.getTop());
                    iMax = Math.max(iMax, childAt.getRight());
                    iMax2 = Math.max(iMax2, childAt.getBottom());
                }
            }
            if (iMin2 >= iMax || iMin >= iMax2) {
                return;
            }
            if (iMin > 0) {
                this.mBackgroundFallback.setBounds(0, 0, width, iMin);
                this.mBackgroundFallback.draw(canvas);
            }
            if (iMin2 > 0) {
                this.mBackgroundFallback.setBounds(0, iMin, iMin2, height);
                this.mBackgroundFallback.draw(canvas);
            }
            if (iMax < width) {
                this.mBackgroundFallback.setBounds(iMax, iMin, width, height);
                this.mBackgroundFallback.draw(canvas);
            }
            if (iMax2 < height) {
                this.mBackgroundFallback.setBounds(iMin2, iMax2, iMax, height);
                this.mBackgroundFallback.draw(canvas);
            }
        }
    }

    public boolean hasFallback() {
        return this.mBackgroundFallback != null;
    }

    public void setDrawable(Drawable drawable) {
        this.mBackgroundFallback = drawable;
    }
}
