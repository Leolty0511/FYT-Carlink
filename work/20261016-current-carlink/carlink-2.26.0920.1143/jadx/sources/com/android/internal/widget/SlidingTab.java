package com.android.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTab extends ViewGroup {
    private static final int ANIM_DURATION = 250;
    private static final int ANIM_TARGET_TIME = 500;
    private static final boolean DBG = false;
    private static final int HORIZONTAL = 0;
    private static final String LOG_TAG = "SlidingTab";
    private static final float THRESHOLD = 0.6666667f;
    private static final int TRACKING_MARGIN = 50;
    private static final int VERTICAL = 1;
    private static final long VIBRATE_LONG = 40;
    private static final long VIBRATE_SHORT = 30;
    private static final AudioAttributes VIBRATION_ATTRIBUTES = new AudioAttributes.Builder().setContentType(4).setUsage(13).build();
    private boolean mAnimating;
    private final Animation.AnimationListener mAnimationDoneListener;
    private Slider mCurrentSlider;
    private final float mDensity;
    private int mGrabbedState;
    private boolean mHoldLeftOnTransition;
    private boolean mHoldRightOnTransition;
    private final Slider mLeftSlider;
    private OnTriggerListener mOnTriggerListener;
    private final int mOrientation;
    private Slider mOtherSlider;
    private final Slider mRightSlider;
    private float mThreshold;
    private final Rect mTmpRect;
    private boolean mTracking;
    private boolean mTriggered;
    private Vibrator mVibrator;

    public interface OnTriggerListener {
        public static final int LEFT_HANDLE = 1;
        public static final int NO_HANDLE = 0;
        public static final int RIGHT_HANDLE = 2;

        void onGrabbedStateChange(View view, int i2);

        void onTrigger(View view, int i2);
    }

    public static class Slider {
        public static final int ALIGN_BOTTOM = 3;
        public static final int ALIGN_LEFT = 0;
        public static final int ALIGN_RIGHT = 1;
        public static final int ALIGN_TOP = 2;
        public static final int ALIGN_UNKNOWN = 4;
        private static final int STATE_ACTIVE = 2;
        private static final int STATE_NORMAL = 0;
        private static final int STATE_PRESSED = 1;
        private int alignment_value;
        private final ImageView tab;
        private final ImageView target;
        private final TextView text;
        private int currentState = 0;
        private int alignment = 4;

        public Slider(ViewGroup viewGroup, int i2, int i3, int i4) throws Throwable {
            ImageView imageView = new ImageView(viewGroup.getContext());
            this.tab = imageView;
            imageView.setBackgroundResource(i2);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView.setScaleType(scaleType);
            imageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            TextView textView = new TextView(viewGroup.getContext());
            this.text = textView;
            textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
            textView.setBackgroundResource(i3);
            textView.setTextAppearance(viewGroup.getContext(), R.style.TextAppearance_SlidingTabNormal);
            ImageView imageView2 = new ImageView(viewGroup.getContext());
            this.target = imageView2;
            imageView2.setImageResource(i4);
            imageView2.setScaleType(scaleType);
            imageView2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            imageView2.setVisibility(4);
            viewGroup.addView(imageView2);
            viewGroup.addView(imageView);
            viewGroup.addView(textView);
        }

        public int getTabHeight() {
            return this.tab.getMeasuredHeight();
        }

        public int getTabWidth() {
            return this.tab.getMeasuredWidth();
        }

        public void hide() {
            int i2;
            int i3;
            int top;
            int i4;
            int left;
            int i5 = this.alignment;
            int i6 = 0;
            boolean z2 = i5 == 0 || i5 == 1;
            if (z2) {
                if (i5 == 0) {
                    i4 = this.alignment_value;
                    left = this.tab.getRight();
                } else {
                    i4 = this.alignment_value;
                    left = this.tab.getLeft();
                }
                i2 = i4 - left;
            } else {
                i2 = 0;
            }
            if (!z2) {
                if (this.alignment == 2) {
                    i3 = this.alignment_value;
                    top = this.tab.getBottom();
                } else {
                    i3 = this.alignment_value;
                    top = this.tab.getTop();
                }
                i6 = i3 - top;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, i2, 0.0f, i6);
            translateAnimation.setDuration(250L);
            translateAnimation.setFillAfter(true);
            this.tab.startAnimation(translateAnimation);
            this.text.startAnimation(translateAnimation);
            this.target.setVisibility(4);
        }

        public void hideTarget() {
            this.target.clearAnimation();
            this.target.setVisibility(4);
        }

        public void layout(int i2, int i3, int i4, int i5, int i6) {
            this.alignment = i6;
            Drawable background = this.tab.getBackground();
            int intrinsicWidth = background.getIntrinsicWidth();
            int intrinsicHeight = background.getIntrinsicHeight();
            Drawable drawable = this.target.getDrawable();
            int intrinsicWidth2 = drawable.getIntrinsicWidth();
            int intrinsicHeight2 = drawable.getIntrinsicHeight();
            int i7 = i4 - i2;
            int i8 = i5 - i3;
            float f2 = i7;
            int i9 = intrinsicWidth / 2;
            int i10 = (((int) (f2 * SlidingTab.THRESHOLD)) - intrinsicWidth2) + i9;
            int i11 = ((int) (f2 * 0.3333333f)) - i9;
            int i12 = i7 - intrinsicWidth;
            int i13 = i12 / 2;
            int i14 = i13 + intrinsicWidth;
            if (i6 == 0 || i6 == 1) {
                int i15 = (i8 - intrinsicHeight2) / 2;
                int i16 = intrinsicHeight2 + i15;
                int i17 = (i8 - intrinsicHeight) / 2;
                int i18 = (i8 + intrinsicHeight) / 2;
                if (i6 == 0) {
                    this.tab.layout(0, i17, intrinsicWidth, i18);
                    this.text.layout(0 - i7, i17, 0, i18);
                    this.text.setGravity(5);
                    this.target.layout(i10, i15, intrinsicWidth2 + i10, i16);
                    this.alignment_value = i2;
                    return;
                }
                this.tab.layout(i12, i17, i7, i18);
                this.text.layout(i7, i17, i7 + i7, i18);
                this.target.layout(i11, i15, i11 + intrinsicWidth2, i16);
                this.text.setGravity(48);
                this.alignment_value = i4;
                return;
            }
            int i19 = (i7 - intrinsicWidth2) / 2;
            int i20 = (i7 + intrinsicWidth2) / 2;
            float f3 = i8;
            int i21 = intrinsicHeight / 2;
            int i22 = (((int) (SlidingTab.THRESHOLD * f3)) + i21) - intrinsicHeight2;
            int i23 = ((int) (f3 * 0.3333333f)) - i21;
            if (i6 == 2) {
                this.tab.layout(i13, 0, i14, intrinsicHeight);
                this.text.layout(i13, 0 - i8, i14, 0);
                this.target.layout(i19, i22, i20, intrinsicHeight2 + i22);
                this.alignment_value = i3;
                return;
            }
            this.tab.layout(i13, i8 - intrinsicHeight, i14, i8);
            this.text.layout(i13, i8, i14, i8 + i8);
            this.target.layout(i19, i23, i20, intrinsicHeight2 + i23);
            this.alignment_value = i5;
        }

        public void measure(int i2, int i3) {
            int size = View.MeasureSpec.getSize(i2);
            int size2 = View.MeasureSpec.getSize(i3);
            this.tab.measure(View.MeasureSpec.makeSafeMeasureSpec(size, 0), View.MeasureSpec.makeSafeMeasureSpec(size2, 0));
            this.text.measure(View.MeasureSpec.makeSafeMeasureSpec(size, 0), View.MeasureSpec.makeSafeMeasureSpec(size2, 0));
        }

        public void reset(boolean z2) {
            int i2;
            int i3;
            int bottom;
            int i4;
            int i5;
            int right;
            setState(0);
            this.text.setVisibility(0);
            TextView textView = this.text;
            textView.setTextAppearance(textView.getContext(), R.style.TextAppearance_SlidingTabNormal);
            this.tab.setVisibility(0);
            this.target.setVisibility(4);
            int i6 = this.alignment;
            boolean z3 = true;
            if (i6 != 0 && i6 != 1) {
                z3 = false;
            }
            if (z3) {
                if (i6 == 0) {
                    i5 = this.alignment_value;
                    right = this.tab.getLeft();
                } else {
                    i5 = this.alignment_value;
                    right = this.tab.getRight();
                }
                i2 = i5 - right;
            } else {
                i2 = 0;
            }
            if (z3) {
                i4 = 0;
            } else {
                if (this.alignment == 2) {
                    i3 = this.alignment_value;
                    bottom = this.tab.getTop();
                } else {
                    i3 = this.alignment_value;
                    bottom = this.tab.getBottom();
                }
                i4 = i3 - bottom;
            }
            if (z2) {
                TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, i2, 0.0f, i4);
                translateAnimation.setDuration(250L);
                translateAnimation.setFillAfter(false);
                this.text.startAnimation(translateAnimation);
                this.tab.startAnimation(translateAnimation);
                return;
            }
            if (z3) {
                this.text.offsetLeftAndRight(i2);
                this.tab.offsetLeftAndRight(i2);
            } else {
                this.text.offsetTopAndBottom(i4);
                this.tab.offsetTopAndBottom(i4);
            }
            this.text.clearAnimation();
            this.tab.clearAnimation();
            this.target.clearAnimation();
        }

        public void setBarBackgroundResource(int i2) {
            this.text.setBackgroundResource(i2);
        }

        public void setHintText(int i2) {
            this.text.setText(i2);
        }

        public void setIcon(int i2) throws Throwable {
            this.tab.setImageResource(i2);
        }

        public void setState(int i2) {
            this.text.setPressed(i2 == 1);
            this.tab.setPressed(i2 == 1);
            if (i2 == 2) {
                int[] iArr = {16842914};
                if (this.text.getBackground().isStateful()) {
                    this.text.getBackground().setState(iArr);
                }
                if (this.tab.getBackground().isStateful()) {
                    this.tab.getBackground().setState(iArr);
                }
                TextView textView = this.text;
                textView.setTextAppearance(textView.getContext(), R.style.TextAppearance_SlidingTabActive);
            } else {
                TextView textView2 = this.text;
                textView2.setTextAppearance(textView2.getContext(), R.style.TextAppearance_SlidingTabNormal);
            }
            this.currentState = i2;
        }

        public void setTabBackgroundResource(int i2) {
            this.tab.setBackgroundResource(i2);
        }

        public void setTarget(int i2) throws Throwable {
            this.target.setImageResource(i2);
        }

        public void show(boolean z2) {
            int width;
            int height = 0;
            this.text.setVisibility(0);
            this.tab.setVisibility(0);
            if (z2) {
                int i2 = this.alignment;
                boolean z3 = true;
                if (i2 != 0 && i2 != 1) {
                    z3 = false;
                }
                if (z3) {
                    width = i2 == 0 ? this.tab.getWidth() : -this.tab.getWidth();
                } else {
                    width = 0;
                }
                if (!z3) {
                    height = this.alignment == 2 ? this.tab.getHeight() : -this.tab.getHeight();
                }
                TranslateAnimation translateAnimation = new TranslateAnimation(-width, 0.0f, -height, 0.0f);
                translateAnimation.setDuration(250L);
                this.tab.startAnimation(translateAnimation);
                this.text.startAnimation(translateAnimation);
            }
        }

        public void showTarget() {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(500L);
            this.target.startAnimation(alphaAnimation);
            this.target.setVisibility(0);
        }

        public void startAnimation(Animation animation, Animation animation2) {
            this.tab.startAnimation(animation);
            this.text.startAnimation(animation2);
        }

        public void updateDrawableStates() {
            setState(this.currentState);
        }
    }

    public SlidingTab(Context context) {
        this(context, null);
    }

    private void cancelGrab() {
        this.mTracking = false;
        this.mTriggered = false;
        this.mOtherSlider.show(true);
        this.mCurrentSlider.reset(false);
        this.mCurrentSlider.hideTarget();
        this.mCurrentSlider = null;
        this.mOtherSlider = null;
        setGrabbedState(0);
    }

    private void dispatchTriggerEvent(int i2) {
        vibrate(VIBRATE_LONG);
        OnTriggerListener onTriggerListener = this.mOnTriggerListener;
        if (onTriggerListener != null) {
            onTriggerListener.onTrigger(this, i2);
        }
    }

    private boolean isHorizontal() {
        return this.mOrientation == 0;
    }

    private void log(String str) {
        Log.d(LOG_TAG, str);
    }

    private void moveHandle(float f2, float f3) {
        ImageView imageView = this.mCurrentSlider.tab;
        TextView textView = this.mCurrentSlider.text;
        if (isHorizontal()) {
            int left = (((int) f2) - imageView.getLeft()) - (imageView.getWidth() / 2);
            imageView.offsetLeftAndRight(left);
            textView.offsetLeftAndRight(left);
        } else {
            int top = (((int) f3) - imageView.getTop()) - (imageView.getHeight() / 2);
            imageView.offsetTopAndBottom(top);
            textView.offsetTopAndBottom(top);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimationDone() {
        resetView();
        this.mAnimating = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetView() {
        this.mLeftSlider.reset(false);
        this.mRightSlider.reset(false);
    }

    private void setGrabbedState(int i2) {
        if (i2 != this.mGrabbedState) {
            this.mGrabbedState = i2;
            OnTriggerListener onTriggerListener = this.mOnTriggerListener;
            if (onTriggerListener != null) {
                onTriggerListener.onGrabbedStateChange(this, i2);
            }
        }
    }

    private synchronized void vibrate(long j2) {
        boolean z2 = true;
        if (Settings.System.getIntForUser(this.mContext.getContentResolver(), Settings.System.HAPTIC_FEEDBACK_ENABLED, 1, -2) == 0) {
            z2 = false;
        }
        if (z2) {
            if (this.mVibrator == null) {
                this.mVibrator = (Vibrator) getContext().getSystemService(Context.VIBRATOR_SERVICE);
            }
            this.mVibrator.vibrate(j2, VIBRATION_ATTRIBUTES);
        }
    }

    private boolean withinView(float f2, float f3, View view) {
        return (isHorizontal() && f3 > -50.0f && f3 < ((float) (view.getHeight() + 50))) || (!isHorizontal() && f2 > -50.0f && f2 < ((float) (view.getWidth() + 50)));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        if (this.mAnimating) {
            return false;
        }
        this.mLeftSlider.tab.getHitRect(this.mTmpRect);
        int i2 = (int) x2;
        int i3 = (int) y2;
        boolean zContains = this.mTmpRect.contains(i2, i3);
        this.mRightSlider.tab.getHitRect(this.mTmpRect);
        boolean zContains2 = this.mTmpRect.contains(i2, i3);
        if (!this.mTracking && !zContains && !zContains2) {
            return false;
        }
        if (action == 0) {
            this.mTracking = true;
            this.mTriggered = false;
            vibrate(VIBRATE_SHORT);
            if (zContains) {
                this.mCurrentSlider = this.mLeftSlider;
                this.mOtherSlider = this.mRightSlider;
                this.mThreshold = isHorizontal() ? 0.6666667f : 0.3333333f;
                setGrabbedState(1);
            } else {
                this.mCurrentSlider = this.mRightSlider;
                this.mOtherSlider = this.mLeftSlider;
                this.mThreshold = isHorizontal() ? 0.3333333f : 0.6666667f;
                setGrabbedState(2);
            }
            this.mCurrentSlider.setState(1);
            this.mCurrentSlider.showTarget();
            this.mOtherSlider.hide();
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        if (z2) {
            this.mLeftSlider.layout(i2, i3, i4, i5, isHorizontal() ? 0 : 3);
            this.mRightSlider.layout(i2, i3, i4, i5, isHorizontal() ? 1 : 2);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int iMax;
        int iMax2;
        View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        this.mLeftSlider.measure(i2, i3);
        this.mRightSlider.measure(i2, i3);
        int tabWidth = this.mLeftSlider.getTabWidth();
        int tabWidth2 = this.mRightSlider.getTabWidth();
        int tabHeight = this.mLeftSlider.getTabHeight();
        int tabHeight2 = this.mRightSlider.getTabHeight();
        if (isHorizontal()) {
            iMax = Math.max(size, tabWidth + tabWidth2);
            iMax2 = Math.max(tabHeight, tabHeight2);
        } else {
            iMax = Math.max(tabWidth, tabHeight2);
            iMax2 = Math.max(size2, tabHeight + tabHeight2);
        }
        setMeasuredDimension(iMax, iMax2);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0095  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mTracking) {
            int action = motionEvent.getAction();
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (action != 1) {
                if (action != 2) {
                    if (action == 3) {
                        cancelGrab();
                    }
                } else if (withinView(x2, y2, this)) {
                    moveHandle(x2, y2);
                    if (!isHorizontal()) {
                        x2 = y2;
                    }
                    float width = this.mThreshold * (isHorizontal() ? getWidth() : getHeight());
                    boolean z2 = !isHorizontal() ? this.mCurrentSlider != this.mLeftSlider ? x2 <= width : x2 >= width : this.mCurrentSlider != this.mLeftSlider ? x2 >= width : x2 <= width;
                    if (!this.mTriggered && z2) {
                        this.mTriggered = true;
                        this.mTracking = false;
                        this.mCurrentSlider.setState(2);
                        boolean z3 = this.mCurrentSlider == this.mLeftSlider;
                        dispatchTriggerEvent(z3 ? 1 : 2);
                        startAnimating(z3 ? this.mHoldLeftOnTransition : this.mHoldRightOnTransition);
                        setGrabbedState(0);
                    }
                } else {
                    cancelGrab();
                }
            } else {
                cancelGrab();
            }
        }
        return this.mTracking || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (view != this || i2 == 0 || this.mGrabbedState == 0) {
            return;
        }
        cancelGrab();
    }

    public void reset(boolean z2) {
        this.mLeftSlider.reset(z2);
        this.mRightSlider.reset(z2);
        if (z2) {
            return;
        }
        this.mAnimating = false;
    }

    public void setHoldAfterTrigger(boolean z2, boolean z3) {
        this.mHoldLeftOnTransition = z2;
        this.mHoldRightOnTransition = z3;
    }

    public void setLeftHintText(int i2) {
        if (isHorizontal()) {
            this.mLeftSlider.setHintText(i2);
        }
    }

    public void setLeftTabResources(int i2, int i3, int i4, int i5) throws Throwable {
        this.mLeftSlider.setIcon(i2);
        this.mLeftSlider.setTarget(i3);
        this.mLeftSlider.setBarBackgroundResource(i4);
        this.mLeftSlider.setTabBackgroundResource(i5);
        this.mLeftSlider.updateDrawableStates();
    }

    public void setOnTriggerListener(OnTriggerListener onTriggerListener) {
        this.mOnTriggerListener = onTriggerListener;
    }

    public void setRightHintText(int i2) {
        if (isHorizontal()) {
            this.mRightSlider.setHintText(i2);
        }
    }

    public void setRightTabResources(int i2, int i3, int i4, int i5) throws Throwable {
        this.mRightSlider.setIcon(i2);
        this.mRightSlider.setTarget(i3);
        this.mRightSlider.setBarBackgroundResource(i4);
        this.mRightSlider.setTabBackgroundResource(i5);
        this.mRightSlider.updateDrawableStates();
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 != getVisibility() && i2 == 4) {
            reset(false);
        }
        super.setVisibility(i2);
    }

    public void startAnimating(final boolean z2) {
        final int i2;
        this.mAnimating = true;
        Slider slider = this.mCurrentSlider;
        final int i3 = 0;
        if (isHorizontal()) {
            int right = slider.tab.getRight();
            int width = slider.tab.getWidth();
            int left = slider.tab.getLeft();
            int width2 = getWidth();
            if (z2) {
                width = 0;
            }
            i3 = slider == this.mRightSlider ? -((right + width2) - width) : ((width2 - left) + width2) - width;
            i2 = 0;
        } else {
            int top = slider.tab.getTop();
            int bottom = slider.tab.getBottom();
            int height = slider.tab.getHeight();
            int height2 = getHeight();
            if (z2) {
                height = 0;
            }
            i2 = slider == this.mRightSlider ? (top + height2) - height : -(((height2 - bottom) + height2) - height);
        }
        float f2 = i3;
        float f3 = i2;
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, f2, 0.0f, f3);
        translateAnimation.setDuration(250L);
        translateAnimation.setInterpolator(new LinearInterpolator());
        translateAnimation.setFillAfter(true);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, f2, 0.0f, f3);
        translateAnimation2.setDuration(250L);
        translateAnimation2.setInterpolator(new LinearInterpolator());
        translateAnimation2.setFillAfter(true);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.android.internal.widget.SlidingTab.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                Animation alphaAnimation;
                if (z2) {
                    int i4 = i3;
                    int i5 = i2;
                    alphaAnimation = new TranslateAnimation(i4, i4, i5, i5);
                    alphaAnimation.setDuration(1000L);
                    SlidingTab.this.mAnimating = false;
                } else {
                    alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
                    alphaAnimation.setDuration(250L);
                    SlidingTab.this.resetView();
                }
                alphaAnimation.setAnimationListener(SlidingTab.this.mAnimationDoneListener);
                SlidingTab.this.mLeftSlider.startAnimation(alphaAnimation, alphaAnimation);
                SlidingTab.this.mRightSlider.startAnimation(alphaAnimation, alphaAnimation);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        slider.hideTarget();
        slider.startAnimation(translateAnimation, translateAnimation2);
    }

    public SlidingTab(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHoldLeftOnTransition = true;
        this.mHoldRightOnTransition = true;
        this.mGrabbedState = 0;
        this.mTriggered = false;
        this.mAnimationDoneListener = new Animation.AnimationListener() { // from class: com.android.internal.widget.SlidingTab.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                SlidingTab.this.onAnimationDone();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.mTmpRect = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingTab);
        this.mOrientation = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mDensity = getResources().getDisplayMetrics().density;
        this.mLeftSlider = new Slider(this, R.drawable.jog_tab_left_generic, R.drawable.jog_tab_bar_left_generic, R.drawable.jog_tab_target_gray);
        this.mRightSlider = new Slider(this, R.drawable.jog_tab_right_generic, R.drawable.jog_tab_bar_right_generic, R.drawable.jog_tab_target_gray);
    }
}
