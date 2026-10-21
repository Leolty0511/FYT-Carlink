package com.android.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RemoteViews;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
@RemoteViews.RemoteView
public class MediaNotificationView extends FrameLayout {
    private View mActions;
    private View mHeader;
    private int mImagePushIn;
    private View mMainColumn;
    private final int mNotificationContentImageMarginEnd;
    private final int mNotificationContentMarginEnd;
    private ImageView mRightIcon;

    public MediaNotificationView(Context context) {
        this(context, null);
    }

    private void resetHeaderIndention() {
        if (this.mHeader.getPaddingEnd() != this.mNotificationContentMarginEnd) {
            View view = this.mHeader;
            view.setPaddingRelative(view.getPaddingStart(), this.mHeader.getPaddingTop(), this.mNotificationContentMarginEnd, this.mHeader.getPaddingBottom());
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mHeader.getLayoutParams();
        marginLayoutParams.setMarginEnd(0);
        if (marginLayoutParams.getMarginEnd() != 0) {
            marginLayoutParams.setMarginEnd(0);
            this.mHeader.setLayoutParams(marginLayoutParams);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mRightIcon = (ImageView) findViewById(R.id.right_icon);
        this.mActions = findViewById(R.id.media_actions);
        this.mHeader = findViewById(R.id.notification_header);
        this.mMainColumn = findViewById(R.id.notification_main_column);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.mImagePushIn > 0) {
            ImageView imageView = this.mRightIcon;
            imageView.layout(imageView.getLeft() + this.mImagePushIn, this.mRightIcon.getTop(), this.mRightIcon.getRight() + this.mImagePushIn, this.mRightIcon.getBottom());
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        boolean z2 = false;
        boolean z3 = this.mRightIcon.getVisibility() != 8;
        if (!z3) {
            resetHeaderIndention();
        }
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        this.mImagePushIn = 0;
        if (z3 && mode != 0) {
            int size = View.MeasureSpec.getSize(i2) - this.mActions.getMeasuredWidth();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mRightIcon.getLayoutParams();
            int marginEnd = marginLayoutParams.getMarginEnd();
            int iMax = size - marginEnd;
            int measuredHeight = getMeasuredHeight();
            if (iMax > measuredHeight) {
                iMax = measuredHeight;
            } else if (iMax < measuredHeight) {
                iMax = Math.max(0, iMax);
                this.mImagePushIn = measuredHeight - iMax;
            }
            if (marginLayoutParams.width != measuredHeight || marginLayoutParams.height != measuredHeight) {
                marginLayoutParams.width = measuredHeight;
                marginLayoutParams.height = measuredHeight;
                this.mRightIcon.setLayoutParams(marginLayoutParams);
                z2 = true;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.mMainColumn.getLayoutParams();
            int i4 = iMax + marginEnd;
            int i5 = this.mNotificationContentMarginEnd + i4;
            if (i5 != marginLayoutParams2.getMarginEnd()) {
                marginLayoutParams2.setMarginEnd(i5);
                this.mMainColumn.setLayoutParams(marginLayoutParams2);
                z2 = true;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.mHeader.getLayoutParams();
            if (marginLayoutParams3.getMarginEnd() != i4) {
                marginLayoutParams3.setMarginEnd(i4);
                this.mHeader.setLayoutParams(marginLayoutParams3);
                z2 = true;
            }
            if (this.mHeader.getPaddingEnd() != this.mNotificationContentImageMarginEnd) {
                View view = this.mHeader;
                view.setPaddingRelative(view.getPaddingStart(), this.mHeader.getPaddingTop(), this.mNotificationContentImageMarginEnd, this.mHeader.getPaddingBottom());
                z2 = true;
            }
        }
        if (z2) {
            super.onMeasure(i2, i3);
        }
    }

    public MediaNotificationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaNotificationView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public MediaNotificationView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mNotificationContentMarginEnd = context.getResources().getDimensionPixelSize(R.dimen.notification_content_margin_end);
        this.mNotificationContentImageMarginEnd = context.getResources().getDimensionPixelSize(R.dimen.notification_content_image_margin_end);
    }
}
