package com.android.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes3.dex */
@RemoteViews.RemoteView
public class NotificationExpandButton extends ImageView {
    public NotificationExpandButton(Context context) {
        super(context);
    }

    private void extendRectToMinTouchSize(Rect rect) {
        int i2 = (int) (getResources().getDisplayMetrics().density * 48.0f);
        int i3 = i2 / 2;
        int iCenterX = rect.centerX() - i3;
        rect.left = iCenterX;
        rect.right = iCenterX + i2;
        int iCenterY = rect.centerY() - i3;
        rect.top = iCenterY;
        rect.bottom = iCenterY + i2;
    }

    @Override // android.view.View
    public void getBoundsOnScreen(Rect rect, boolean z2) {
        super.getBoundsOnScreen(rect, z2);
        extendRectToMinTouchSize(rect);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    public NotificationExpandButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NotificationExpandButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public NotificationExpandButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
