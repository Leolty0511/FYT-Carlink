package com.syu.bt.ctrl;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import com.lsec.core.util.data.FinalCanbus;
import com.lsec.core.util.data.FinalTpms;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class CircleMenuLayout extends ViewGroup {
    private static final int FLINGABLE_VALUE = 300;
    private static final int NOCLICK_VALUE = 3;
    private static final float RADIO_DEFAULT_CHILD_DIMENSION = 0.2f;
    private static final float RADIO_PADDING_LAYOUT = 0.083333336f;
    private float RADIO_DEFAULT_CENTERITEM_DIMENSION;
    Drawable bkDrawable;
    CircleMenuView circle;
    private boolean isFling;
    private long mDownTime;
    public HashMap<String, Drawable> mDrawables;
    private AutoFlingRunnable mFlingRunnable;
    private int mFlingableValue;
    private String[] mItemImgs;
    private float mLastX;
    private float mLastY;
    private int mMenuItemCount;
    private OnMenuItemClickListener mOnMenuItemClickListener;
    private OnMenuItemLongClickListener mOnMenuItemLongClickListener;
    private float mPadding;
    private int mRadius;
    private double mStartAngle;
    private float mTmpAngle;
    Drawable pointDrawable;

    public interface OnMenuItemClickListener {
        void itemClick(View view, int i);
    }

    public interface OnMenuItemLongClickListener {
        void itemLongClick(View view, int i);
    }

    public CircleMenuLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.RADIO_DEFAULT_CENTERITEM_DIMENSION = 0.33333334f;
        this.mFlingableValue = 300;
        this.mStartAngle = 54.0d;
        this.mDrawables = new HashMap<>();
        setPadding(0, 0, 0, 0);
    }

    public CircleMenuLayout(Context context) {
        this(context, null);
    }

    public CircleMenuLayout(Context context, Drawable bk, Drawable point, String[] resIds) {
        ViewGroup.LayoutParams layoutParams;
        super(context);
        this.RADIO_DEFAULT_CENTERITEM_DIMENSION = 0.33333334f;
        this.mFlingableValue = 300;
        this.mStartAngle = 54.0d;
        this.mDrawables = new HashMap<>();
        if (bk != null) {
            this.bkDrawable = bk;
        }
        if (point != null) {
            this.pointDrawable = point;
        }
        setMenuItemIconsAndTexts(resIds);
        this.circle = new CircleMenuView(context, point);
        ViewGroup.LayoutParams laParams = new ViewGroup.LayoutParams(-2, -2);
        LinearLayout layout = new LinearLayout(getContext());
        layout.setGravity(17);
        if (BTUtil.getInstance().getWindowManeger()[0] >= 1920) {
            layoutParams = new LinearLayout.LayoutParams(FinalTpms.U_CNT_MAX, FinalTpms.U_CNT_MAX);
        } else {
            layoutParams = new LinearLayout.LayoutParams(400, 400);
        }
        this.circle.setLayoutParams(layoutParams);
        layout.setId(FinalBtCtrl.Page_Av);
        addView(layout, laParams);
        layout.addView(this.circle);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int resWidth;
        int resHeight;
        int width = View.MeasureSpec.getSize(widthMeasureSpec);
        int widthMode = View.MeasureSpec.getMode(widthMeasureSpec);
        int height = View.MeasureSpec.getSize(heightMeasureSpec);
        int heightMode = View.MeasureSpec.getMode(heightMeasureSpec);
        if (widthMode != 1073741824 || heightMode != 1073741824) {
            resWidth = getSuggestedMinimumWidth();
            if (resWidth == 0) {
                resWidth = getDefaultWidth();
            }
            resHeight = getSuggestedMinimumHeight();
            if (resHeight == 0) {
                resHeight = getDefaultWidth();
            }
        } else {
            resHeight = Math.min(width, height);
            resWidth = resHeight;
        }
        if (this.bkDrawable != null) {
            resWidth = this.bkDrawable.getIntrinsicWidth();
            resHeight = this.bkDrawable.getIntrinsicHeight();
            Log.d("HJT", "resWidth:" + resWidth + "resHeight:" + resHeight);
            if (BTUtil.getInstance().getWindowManeger()[0] >= 1920) {
                resWidth = FinalTpms.U_CNT_MAX;
                resHeight = FinalTpms.U_CNT_MAX;
            }
        }
        setMeasuredDimension(resWidth, resHeight);
        this.mRadius = Math.max(getMeasuredWidth(), getMeasuredHeight());
        Log.d("HJT", "mRadius:" + this.mRadius + "resWidth:" + resWidth + "resHeight:" + resHeight);
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            if (child.getVisibility() != 8) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (this.mRadius * this.RADIO_DEFAULT_CENTERITEM_DIMENSION), 1073741824);
                child.measure(makeMeasureSpec, makeMeasureSpec);
            }
        }
        this.mPadding = RADIO_PADDING_LAYOUT * this.mRadius;
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener mOnMenuItemClickListener) {
        this.mOnMenuItemClickListener = mOnMenuItemClickListener;
    }

    public void setOnMenuItemLongClickListener(OnMenuItemLongClickListener mOnMenuItemLongClickListener) {
        this.mOnMenuItemLongClickListener = mOnMenuItemLongClickListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int layoutRadius = this.mRadius;
        int childCount = getChildCount();
        int cWidth = (int) (layoutRadius * RADIO_DEFAULT_CHILD_DIMENSION);
        float angleDelay = FinalCanbus.CAR_WC2_2012Prado / (getChildCount() - 1);
        double angle = this.mStartAngle % 360.0d;
        for (int i = 0; i < childCount; i++) {
            View child = getChildAt(i);
            if (child.getId() == 10010) {
                if (BTUtil.getInstance().getWindowManeger()[0] >= 1920) {
                    child.layout(0, 0, FinalTpms.U_CNT_MAX, FinalTpms.U_CNT_MAX);
                } else {
                    child.layout(0, 0, 400, 400);
                }
            } else if (child.getId() == 10163) {
                double angle2 = angle - 8.0d;
                float tmp = (layoutRadius / 2.0f) - (cWidth / 2);
                int left = (layoutRadius / 2) + ((int) Math.round((((double) tmp) * Math.cos(Math.toRadians(angle2))) - ((double) (0.5f * cWidth))));
                int top = (layoutRadius / 2) + ((int) Math.round((((double) tmp) * Math.sin(Math.toRadians(angle2))) - ((double) (0.5f * cWidth))));
                child.layout(left, top, left + cWidth, top + cWidth);
                angle = angle2 + ((double) angleDelay);
            } else {
                float tmp2 = (layoutRadius / 2.0f) - (cWidth / 2);
                int left2 = (layoutRadius / 2) + ((int) Math.round((((double) tmp2) * Math.cos(Math.toRadians(angle))) - ((double) (0.5f * cWidth))));
                int top2 = (layoutRadius / 2) + ((int) Math.round((((double) tmp2) * Math.sin(Math.toRadians(angle))) - ((double) (0.5f * cWidth))));
                child.layout(left2, top2, left2 + cWidth, top2 + cWidth);
                angle += (double) angleDelay;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000c. Please report as an issue. */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        event.getX();
        event.getY();
        switch (event.getAction()) {
        }
        return super.dispatchTouchEvent(event);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }

    private float getAngle(float xTouch, float yTouch) {
        double x = ((double) xTouch) - (((double) this.mRadius) / 2.0d);
        double y = ((double) yTouch) - (((double) this.mRadius) / 2.0d);
        return (float) ((Math.asin(y / Math.hypot(x, y)) * 180.0d) / 3.141592653589793d);
    }

    private int getQuadrant(float x, float y) {
        int tmpX = (int) (x - (this.mRadius / 2));
        int tmpY = (int) (y - (this.mRadius / 2));
        if (tmpX >= 0) {
            return tmpY >= 0 ? 4 : 1;
        }
        return tmpY >= 0 ? 3 : 2;
    }

    public void setMenuItemIconsAndTexts(String[] resIds) {
        this.mItemImgs = resIds;
        if (resIds != null) {
            this.mMenuItemCount = resIds.length;
            addMenuItems();
        }
    }

    public void setMenuItemLayoutId(int mMenuItemLayoutId) {
    }

    private void addMenuItems() {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams laParams = new ViewGroup.LayoutParams(-2, -2);
        for (int i = 0; i < this.mMenuItemCount; i++) {
            Button btn = new Button(getContext());
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setGravity(17);
            btn.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath(this.mItemImgs[i], this.mDrawables, null));
            final int j = getButtonId(this.mItemImgs[i]);
            btn.setId(j);
            linearLayout.setId(j);
            btn.setOnClickListener(new View.OnClickListener() { // from class: com.syu.bt.ctrl.CircleMenuLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (CircleMenuLayout.this.circle != null) {
                        CircleMenuLayout.this.circle.reDrawPicByNum(j);
                    }
                    if (CircleMenuLayout.this.mOnMenuItemClickListener != null) {
                        CircleMenuLayout.this.mOnMenuItemClickListener.itemClick(v, j);
                    }
                }
            });
            btn.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.syu.bt.ctrl.CircleMenuLayout.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View arg0) {
                    if (CircleMenuLayout.this.circle != null) {
                        CircleMenuLayout.this.circle.reDrawPicByNum(j);
                    }
                    if (CircleMenuLayout.this.mOnMenuItemLongClickListener == null) {
                        return false;
                    }
                    CircleMenuLayout.this.mOnMenuItemLongClickListener.itemLongClick(arg0, j);
                    return true;
                }
            });
            if (BTUtil.getInstance().getWindowManeger()[0] >= 1920) {
                layoutParams = new LinearLayout.LayoutParams(120, 120);
            } else {
                layoutParams = new LinearLayout.LayoutParams(80, 80);
            }
            btn.setLayoutParams(layoutParams);
            addView(linearLayout, laParams);
            linearLayout.addView(btn);
        }
    }

    public void setCircleAngle(int id) {
        if (this.circle != null) {
            this.circle.reDrawPicByNum(id);
        }
    }

    public int getButtonId(String id) {
        if (id.equalsIgnoreCase("bt_dial0")) {
            return FinalBtCtrl.Dial_Btn_0;
        }
        if (id.equalsIgnoreCase("bt_dial1")) {
            return FinalBtCtrl.Dial_Btn_1;
        }
        if (id.equalsIgnoreCase("bt_dial2")) {
            return FinalBtCtrl.Dial_Btn_2;
        }
        if (id.equalsIgnoreCase("bt_dial3")) {
            return FinalBtCtrl.Dial_Btn_3;
        }
        if (id.equalsIgnoreCase("bt_dial4")) {
            return FinalBtCtrl.Dial_Btn_4;
        }
        if (id.equalsIgnoreCase("bt_dial5")) {
            return FinalBtCtrl.Dial_Btn_5;
        }
        if (id.equalsIgnoreCase("bt_dial6")) {
            return FinalBtCtrl.Dial_Btn_6;
        }
        if (id.equalsIgnoreCase("bt_dial7")) {
            return FinalBtCtrl.Dial_Btn_7;
        }
        if (id.equalsIgnoreCase("bt_dial8")) {
            return FinalBtCtrl.Dial_Btn_8;
        }
        if (id.equalsIgnoreCase("bt_dial9")) {
            return FinalBtCtrl.Dial_Btn_9;
        }
        if (id.equalsIgnoreCase("bt_dialx")) {
            return FinalBtCtrl.Dial_Btn_X;
        }
        if (id.equalsIgnoreCase("bt_dialj")) {
            return FinalBtCtrl.Dial_Btn_J;
        }
        if (id.equalsIgnoreCase("bt_dialdial")) {
            return FinalBtCtrl.Dial_View_ShowCall_Btn_Dial;
        }
        return id.equalsIgnoreCase("bt_dialdel") ? FinalBtCtrl.Dial_Btn_Backspace : FinalBtCtrl.Dial_Btn_0;
    }

    public void setFlingableValue(int mFlingableValue) {
        this.mFlingableValue = mFlingableValue;
    }

    public void setPadding(float mPadding) {
        this.mPadding = mPadding;
    }

    private int getDefaultWidth() {
        WindowManager wm = (WindowManager) getContext().getSystemService("window");
        DisplayMetrics outMetrics = new DisplayMetrics();
        wm.getDefaultDisplay().getMetrics(outMetrics);
        return Math.min(outMetrics.widthPixels, outMetrics.heightPixels);
    }

    private class AutoFlingRunnable implements Runnable {
        private float angelPerSecond;

        public AutoFlingRunnable(float velocity) {
            this.angelPerSecond = velocity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((int) Math.abs(this.angelPerSecond)) < 20) {
                CircleMenuLayout.this.isFling = false;
                return;
            }
            CircleMenuLayout.this.isFling = true;
            CircleMenuLayout.this.mStartAngle += (double) (this.angelPerSecond / 30.0f);
            this.angelPerSecond /= 1.0666f;
            CircleMenuLayout.this.postDelayed(this, 30L);
            if (CircleMenuLayout.this.circle != null) {
                CircleMenuLayout.this.circle.reDrawPic(((float) CircleMenuLayout.this.mStartAngle) % 360.0f);
            }
        }
    }
}
