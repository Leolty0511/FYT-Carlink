package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.android.internal.R;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class LayoutAnimationController {
    public static final int ORDER_NORMAL = 0;
    public static final int ORDER_RANDOM = 2;
    public static final int ORDER_REVERSE = 1;
    protected Animation mAnimation;
    private float mDelay;
    private long mDuration;
    protected Interpolator mInterpolator;
    private long mMaxDelay;
    private int mOrder;
    protected Random mRandomizer;

    public static class AnimationParameters {
        public int count;
        public int index;
    }

    public LayoutAnimationController(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LayoutAnimation);
        this.mDelay = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(1)).value;
        this.mOrder = typedArrayObtainStyledAttributes.getInt(3, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(2, 0);
        if (resourceId > 0) {
            setAnimation(context, resourceId);
        }
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId2 > 0) {
            setInterpolator(context, resourceId2);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public Animation getAnimation() {
        return this.mAnimation;
    }

    public final Animation getAnimationForView(View view) {
        long startOffset = this.mAnimation.getStartOffset() + getDelayForView(view);
        this.mMaxDelay = Math.max(this.mMaxDelay, startOffset);
        try {
            Animation animationMo36clone = this.mAnimation.mo36clone();
            animationMo36clone.setStartOffset(startOffset);
            return animationMo36clone;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public float getDelay() {
        return this.mDelay;
    }

    public long getDelayForView(View view) {
        AnimationParameters animationParameters = view.getLayoutParams().layoutAnimationParameters;
        if (animationParameters == null) {
            return 0L;
        }
        float duration = this.mDelay * this.mAnimation.getDuration();
        long transformedIndex = (long) (getTransformedIndex(animationParameters) * duration);
        float f2 = duration * animationParameters.count;
        if (this.mInterpolator == null) {
            this.mInterpolator = new LinearInterpolator();
        }
        return (long) (this.mInterpolator.getInterpolation(transformedIndex / f2) * f2);
    }

    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    public int getOrder() {
        return this.mOrder;
    }

    public int getTransformedIndex(AnimationParameters animationParameters) {
        int order = getOrder();
        if (order == 1) {
            return (animationParameters.count - 1) - animationParameters.index;
        }
        if (order != 2) {
            return animationParameters.index;
        }
        if (this.mRandomizer == null) {
            this.mRandomizer = new Random();
        }
        return (int) (this.mRandomizer.nextFloat() * animationParameters.count);
    }

    public boolean isDone() {
        return AnimationUtils.currentAnimationTimeMillis() > (this.mAnimation.getStartTime() + this.mMaxDelay) + this.mDuration;
    }

    public void setAnimation(Context context, int i2) {
        setAnimation(AnimationUtils.loadAnimation(context, i2));
    }

    public void setDelay(float f2) {
        this.mDelay = f2;
    }

    public void setInterpolator(Context context, int i2) {
        setInterpolator(AnimationUtils.loadInterpolator(context, i2));
    }

    public void setOrder(int i2) {
        this.mOrder = i2;
    }

    public void start() {
        this.mDuration = this.mAnimation.getDuration();
        this.mMaxDelay = Long.MIN_VALUE;
        this.mAnimation.setStartTime(-1L);
    }

    public boolean willOverlap() {
        return this.mDelay < 1.0f;
    }

    public void setAnimation(Animation animation) {
        this.mAnimation = animation;
        animation.setFillBefore(true);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public LayoutAnimationController(Animation animation) {
        this(animation, 0.5f);
    }

    public LayoutAnimationController(Animation animation, float f2) {
        this.mDelay = f2;
        setAnimation(animation);
    }
}
