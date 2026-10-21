package com.android.internal.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.Slog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.widget.TextView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
public class TooltipPopup {
    private static final String TAG = "TooltipPopup";
    private final View mContentView;
    private final Context mContext;
    private final WindowManager.LayoutParams mLayoutParams;
    private final TextView mMessageView;
    private final int[] mTmpAnchorPos;
    private final int[] mTmpAppPos;
    private final Rect mTmpDisplayFrame;

    public TooltipPopup(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.mLayoutParams = layoutParams;
        this.mTmpDisplayFrame = new Rect();
        this.mTmpAnchorPos = new int[2];
        this.mTmpAppPos = new int[2];
        this.mContext = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.tooltip, (ViewGroup) null);
        this.mContentView = viewInflate;
        this.mMessageView = (TextView) viewInflate.findViewById(16908299);
        layoutParams.setTitle(context.getString(R.string.tooltip_popup_title));
        layoutParams.packageName = context.getOpPackageName();
        layoutParams.type = 1005;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation_Tooltip;
        layoutParams.flags = 24;
    }

    private void computePosition(View view, int i2, int i3, boolean z2, WindowManager.LayoutParams layoutParams) {
        int height;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.mContext.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i2 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.mContext.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
            height = i3 + dimensionPixelOffset2;
            i4 = i3 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i4 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.mContext.getResources().getDimensionPixelOffset(z2 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
        View windowView = WindowManagerGlobal.getInstance().getWindowView(view.getApplicationWindowToken());
        if (windowView == null) {
            Slog.e(TAG, "Cannot find app view");
            return;
        }
        windowView.getWindowVisibleDisplayFrame(this.mTmpDisplayFrame);
        windowView.getLocationOnScreen(this.mTmpAppPos);
        view.getLocationOnScreen(this.mTmpAnchorPos);
        int[] iArr = this.mTmpAnchorPos;
        int i5 = iArr[0];
        int[] iArr2 = this.mTmpAppPos;
        int i6 = i5 - iArr2[0];
        iArr[0] = i6;
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.f211x = (i6 + i2) - (this.mTmpDisplayFrame.width() / 2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.mContentView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        int measuredHeight = this.mContentView.getMeasuredHeight();
        int i7 = this.mTmpAnchorPos[1];
        int i8 = ((i4 + i7) - dimensionPixelOffset3) - measuredHeight;
        int i9 = i7 + height + dimensionPixelOffset3;
        if (z2) {
            if (i8 >= 0) {
                layoutParams.f212y = i8;
                return;
            } else {
                layoutParams.f212y = i9;
                return;
            }
        }
        if (measuredHeight + i9 <= this.mTmpDisplayFrame.height()) {
            layoutParams.f212y = i9;
        } else {
            layoutParams.f212y = i8;
        }
    }

    public View getContentView() {
        return this.mContentView;
    }

    public void hide() {
        if (isShowing()) {
            ((WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE)).removeView(this.mContentView);
        }
    }

    public boolean isShowing() {
        return this.mContentView.getParent() != null;
    }

    public void show(View view, int i2, int i3, boolean z2, CharSequence charSequence) {
        if (isShowing()) {
            hide();
        }
        this.mMessageView.setText(charSequence);
        computePosition(view, i2, i3, z2, this.mLayoutParams);
        ((WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE)).addView(this.mContentView, this.mLayoutParams);
    }
}
