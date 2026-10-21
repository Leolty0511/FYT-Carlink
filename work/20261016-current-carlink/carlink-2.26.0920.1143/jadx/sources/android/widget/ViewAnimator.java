package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class ViewAnimator extends FrameLayout {
    boolean mAnimateFirstTime;
    boolean mFirstTime;
    Animation mInAnimation;
    Animation mOutAnimation;
    int mWhichChild;

    public ViewAnimator(Context context) {
        super(context);
        this.mWhichChild = 0;
        this.mFirstTime = true;
        this.mAnimateFirstTime = true;
        initViewAnimator(context, null);
    }

    private void initViewAnimator(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            this.mMeasureAllChildren = true;
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FrameLayout);
        setMeasureAllChildren(typedArrayObtainStyledAttributes.getBoolean(0, true));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        int i3;
        super.addView(view, i2, layoutParams);
        if (getChildCount() == 1) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
        if (i2 < 0 || (i3 = this.mWhichChild) < i2) {
            return;
        }
        setDisplayedChild(i3 + 1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ViewAnimator.class.getName();
    }

    public boolean getAnimateFirstView() {
        return this.mAnimateFirstTime;
    }

    @Override // android.view.View
    public int getBaseline() {
        return getCurrentView() != null ? getCurrentView().getBaseline() : super.getBaseline();
    }

    public View getCurrentView() {
        return getChildAt(this.mWhichChild);
    }

    public int getDisplayedChild() {
        return this.mWhichChild;
    }

    public Animation getInAnimation() {
        return this.mInAnimation;
    }

    public Animation getOutAnimation() {
        return this.mOutAnimation;
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        this.mWhichChild = 0;
        this.mFirstTime = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            removeViewAt(iIndexOfChild);
        }
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i2) {
        super.removeViewAt(i2);
        int childCount = getChildCount();
        if (childCount == 0) {
            this.mWhichChild = 0;
            this.mFirstTime = true;
            return;
        }
        int i3 = this.mWhichChild;
        if (i3 >= childCount) {
            setDisplayedChild(childCount - 1);
        } else if (i3 == i2) {
            setDisplayedChild(i3);
        }
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i2, int i3) {
        super.removeViews(i2, i3);
        if (getChildCount() == 0) {
            this.mWhichChild = 0;
            this.mFirstTime = true;
            return;
        }
        int i4 = this.mWhichChild;
        if (i4 < i2 || i4 >= i2 + i3) {
            return;
        }
        setDisplayedChild(i4);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i2, int i3) {
        removeViews(i2, i3);
    }

    public void setAnimateFirstView(boolean z2) {
        this.mAnimateFirstTime = z2;
    }

    @RemotableViewMethod
    public void setDisplayedChild(int i2) {
        this.mWhichChild = i2;
        if (i2 >= getChildCount()) {
            this.mWhichChild = 0;
        } else if (i2 < 0) {
            this.mWhichChild = getChildCount() - 1;
        }
        boolean z2 = getFocusedChild() != null;
        showOnly(this.mWhichChild);
        if (z2) {
            requestFocus(2);
        }
    }

    public void setInAnimation(Animation animation) {
        this.mInAnimation = animation;
    }

    public void setOutAnimation(Animation animation) {
        this.mOutAnimation = animation;
    }

    @RemotableViewMethod
    public void showNext() {
        setDisplayedChild(this.mWhichChild + 1);
    }

    public void showOnly(int i2, boolean z2) {
        Animation animation;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (i3 == i2) {
                if (z2 && (animation = this.mInAnimation) != null) {
                    childAt.startAnimation(animation);
                }
                childAt.setVisibility(0);
                this.mFirstTime = false;
            } else {
                if (z2 && this.mOutAnimation != null && childAt.getVisibility() == 0) {
                    childAt.startAnimation(this.mOutAnimation);
                } else if (childAt.getAnimation() == this.mInAnimation) {
                    childAt.clearAnimation();
                }
                childAt.setVisibility(8);
            }
        }
    }

    @RemotableViewMethod
    public void showPrevious() {
        setDisplayedChild(this.mWhichChild - 1);
    }

    public void setInAnimation(Context context, int i2) {
        setInAnimation(AnimationUtils.loadAnimation(context, i2));
    }

    public void setOutAnimation(Context context, int i2) {
        setOutAnimation(AnimationUtils.loadAnimation(context, i2));
    }

    public ViewAnimator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mWhichChild = 0;
        this.mFirstTime = true;
        this.mAnimateFirstTime = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewAnimator);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            setInAnimation(context, resourceId);
        }
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        if (resourceId2 > 0) {
            setOutAnimation(context, resourceId2);
        }
        setAnimateFirstView(typedArrayObtainStyledAttributes.getBoolean(2, true));
        typedArrayObtainStyledAttributes.recycle();
        initViewAnimator(context, attributeSet);
    }

    public void showOnly(int i2) {
        showOnly(i2, !this.mFirstTime || this.mAnimateFirstTime);
    }
}
