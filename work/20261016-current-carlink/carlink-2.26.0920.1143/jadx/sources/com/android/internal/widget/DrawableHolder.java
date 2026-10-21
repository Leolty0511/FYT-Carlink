package com.android.internal.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class DrawableHolder implements Animator.AnimatorListener {
    private static final boolean DBG = false;
    public static final DecelerateInterpolator EASE_OUT_INTERPOLATOR = new DecelerateInterpolator();
    private static final String TAG = "DrawableHolder";
    private float mAlpha;
    private ArrayList<ObjectAnimator> mAnimators;
    private BitmapDrawable mDrawable;
    private ArrayList<ObjectAnimator> mNeedToStart;
    private float mScaleX;
    private float mScaleY;
    private float mX;
    private float mY;

    public DrawableHolder(BitmapDrawable bitmapDrawable) {
        this(bitmapDrawable, 0.0f, 0.0f);
    }

    private DrawableHolder addAnimation(ObjectAnimator objectAnimator, boolean z2) {
        if (objectAnimator != null) {
            this.mAnimators.add(objectAnimator);
        }
        this.mNeedToStart.add(objectAnimator);
        return this;
    }

    public ObjectAnimator addAnimTo(long j2, long j3, String str, float f2, boolean z2) {
        if (z2) {
            removeAnimationFor(str);
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, str, f2);
        objectAnimatorOfFloat.setDuration(j2);
        objectAnimatorOfFloat.setStartDelay(j3);
        objectAnimatorOfFloat.setInterpolator(EASE_OUT_INTERPOLATOR);
        addAnimation(objectAnimatorOfFloat, z2);
        return objectAnimatorOfFloat;
    }

    public void clearAnimations() {
        Iterator<ObjectAnimator> it = this.mAnimators.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
        this.mAnimators.clear();
    }

    public void draw(Canvas canvas) {
        if (this.mAlpha <= 0.00390625f) {
            return;
        }
        canvas.save(1);
        canvas.translate(this.mX, this.mY);
        canvas.scale(this.mScaleX, this.mScaleY);
        canvas.translate(getWidth() * (-0.5f), getHeight() * (-0.5f));
        this.mDrawable.setAlpha(Math.round(this.mAlpha * 255.0f));
        this.mDrawable.draw(canvas);
        canvas.restore();
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public BitmapDrawable getDrawable() {
        return this.mDrawable;
    }

    public int getHeight() {
        return this.mDrawable.getIntrinsicHeight();
    }

    public float getScaleX() {
        return this.mScaleX;
    }

    public float getScaleY() {
        return this.mScaleY;
    }

    public int getWidth() {
        return this.mDrawable.getIntrinsicWidth();
    }

    public float getX() {
        return this.mX;
    }

    public float getY() {
        return this.mY;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final /* synthetic */ void onAnimationEnd(Animator animator, boolean z2) {
        android.animation.a.a(this, animator, z2);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    public void removeAnimationFor(String str) {
        for (ObjectAnimator objectAnimator : (ArrayList) this.mAnimators.clone()) {
            if (str.equals(objectAnimator.getPropertyName())) {
                objectAnimator.cancel();
            }
        }
    }

    public void setAlpha(float f2) {
        this.mAlpha = f2;
    }

    public void setScaleX(float f2) {
        this.mScaleX = f2;
    }

    public void setScaleY(float f2) {
        this.mScaleY = f2;
    }

    public void setX(float f2) {
        this.mX = f2;
    }

    public void setY(float f2) {
        this.mY = f2;
    }

    public void startAnimations(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        for (int i2 = 0; i2 < this.mNeedToStart.size(); i2++) {
            ObjectAnimator objectAnimator = this.mNeedToStart.get(i2);
            objectAnimator.addUpdateListener(animatorUpdateListener);
            objectAnimator.addListener(this);
            objectAnimator.start();
        }
        this.mNeedToStart.clear();
    }

    public DrawableHolder(BitmapDrawable bitmapDrawable, float f2, float f3) {
        this.mX = 0.0f;
        this.mY = 0.0f;
        this.mScaleX = 1.0f;
        this.mScaleY = 1.0f;
        this.mAlpha = 1.0f;
        this.mAnimators = new ArrayList<>();
        this.mNeedToStart = new ArrayList<>();
        this.mDrawable = bitmapDrawable;
        this.mX = f2;
        this.mY = f3;
        bitmapDrawable.getPaint().setAntiAlias(true);
        BitmapDrawable bitmapDrawable2 = this.mDrawable;
        bitmapDrawable2.setBounds(0, 0, bitmapDrawable2.getIntrinsicWidth(), this.mDrawable.getIntrinsicHeight());
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.mAnimators.remove(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final /* synthetic */ void onAnimationStart(Animator animator, boolean z2) {
        android.animation.a.b(this, animator, z2);
    }
}
