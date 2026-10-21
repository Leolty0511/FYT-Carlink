package android.app;

import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import com.android.internal.R;

/* JADX INFO: loaded from: classes.dex */
public class ActivityOptionsHelper {
    private static final String KEY_ANIM_TYPE_OVERRIDE = "sprd:activity.animTypeOverride";
    public static final int TRANSIT_ANIM_TYPE_CUSTOM_SCALEUP = 1;
    private static final int TRANSIT_ANIM_TYPE_MAX = 2;
    public static final int TRANSIT_ANIM_TYPE_NORMAL = 0;
    private static ThreadLocal<AnimationHelper> sAnimationHelperLocal = new ThreadLocal<>();
    private static boolean sLoaded = false;
    private static int sOverrideAnimationType;

    public static class AnimationHelper {
        private static AnimationHelper sPending;
        private int mOverrideAnimationType = 0;
        private int mNextTransitionType = -1;

        private static float computePivot(int i2, float f2) {
            float f3 = f2 - 1.0f;
            return Math.abs(f3) < 1.0E-4f ? i2 : (-i2) / f3;
        }

        public static Animation createOverrideAnimation(AnimationHelper animationHelper, int i2, boolean z2, int i3, int i4, AnimationParameters animationParameters) {
            Animation alphaAnimation;
            if (animationHelper == null) {
                return null;
            }
            if (animationHelper.getOverrideAnimationType() != 1) {
                Log.d("AnimationHelper", "Not developed yet");
                return null;
            }
            android.accessibilityservice.c.z("createOverrideAnimation enter ", z2, "AnimationHelper");
            if (z2) {
                ScaleAnimation scaleAnimation = new ScaleAnimation(0.75f, 1.0f, 0.75f, 1.0f, computePivot(animationParameters.nextAppTransitionStartX, animationParameters.nextAppTransitionStartWidth / i3), computePivot(animationParameters.nextAppTransitionStartY, animationParameters.nextAppTransitionStartHeight / i4));
                scaleAnimation.setInterpolator(animationParameters.decelerateInterpolator);
                AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation2.setInterpolator(animationParameters.linearOutSlowInInterpolator);
                AnimationSet animationSet = new AnimationSet(false);
                animationSet.addAnimation(scaleAnimation);
                animationSet.addAnimation(alphaAnimation2);
                animationSet.setDetachWallpaper(true);
                alphaAnimation = animationSet;
            } else if (z2) {
                alphaAnimation = new AlphaAnimation(1.0f, 1.0f);
            } else {
                new ScaleAnimation(1.0f, 1.08f, 1.0f, 1.08f, 1, 0.5f, 1, 0.5f).setInterpolator(animationParameters.decelerateInterpolator);
                AlphaAnimation alphaAnimation3 = new AlphaAnimation(1.0f, 1.0f);
                alphaAnimation3.setInterpolator(animationParameters.decelerateInterpolator);
                AnimationSet animationSet2 = new AnimationSet(false);
                animationSet2.addAnimation(alphaAnimation3);
                animationSet2.setDetachWallpaper(true);
                alphaAnimation = animationSet2;
            }
            alphaAnimation.setDuration(150L);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setInterpolator(animationParameters.decelerateInterpolator);
            alphaAnimation.initialize(i3, i4, i3, i4);
            return alphaAnimation;
        }

        public static AnimationHelper ensureHelper(AnimationHelper animationHelper) {
            if (animationHelper != null) {
                return animationHelper;
            }
            AnimationHelper animationHelper2 = new AnimationHelper();
            animationHelper2.clear();
            return animationHelper2;
        }

        public void clear() {
            this.mOverrideAnimationType = 0;
            this.mNextTransitionType = -1;
        }

        public int getNextTransitionType() {
            return this.mNextTransitionType;
        }

        public int getOverrideAnimationType() {
            return this.mOverrideAnimationType;
        }

        public void setNextTransitionType(int i2) {
            this.mNextTransitionType = i2;
        }

        public void setOverrideAnimationType(int i2) {
            this.mOverrideAnimationType = i2;
        }

        public boolean shouldOverrideAnimation() {
            int i2 = this.mOverrideAnimationType;
            return i2 > 0 && i2 < 2;
        }
    }

    public static class AnimationParameters {
        public Interpolator decelerateInterpolator;
        public Interpolator linearOutSlowInInterpolator;
        public int nextAppTransitionStartHeight;
        public int nextAppTransitionStartWidth;
        public int nextAppTransitionStartX;
        public int nextAppTransitionStartY;
    }

    public static void appendAdditionalOptions(ActivityOptions activityOptions, Bundle bundle) {
        if (activityOptions == null || bundle == null) {
            return;
        }
        activityOptions.animTypeOverride = bundle.getInt(KEY_ANIM_TYPE_OVERRIDE, 0);
    }

    private static void ensureConfigurations() {
        if (sLoaded) {
            return;
        }
        int integer = Resources.getSystem().getInteger(R.integer.config_overrideAppTransitionAnimationType);
        sOverrideAnimationType = integer;
        if (integer < 0 || integer >= 2) {
            sOverrideAnimationType = 0;
        }
        sLoaded = true;
    }

    public static AnimationHelper getAnimationHelper() {
        ThreadLocal<AnimationHelper> threadLocal = sAnimationHelperLocal;
        if (threadLocal != null) {
            return threadLocal.get();
        }
        return null;
    }

    public static int getOverrideAppTransitionAnimationType() {
        ensureConfigurations();
        return sOverrideAnimationType;
    }

    public static Bundle overrideOptsBundle(View view, Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        int overrideAppTransitionAnimationType = getOverrideAppTransitionAnimationType();
        if (overrideAppTransitionAnimationType != 1 || view == null) {
            return bundle;
        }
        if (bundle.getInt(ActivityOptions.KEY_ANIM_TYPE) != 2) {
            bundle = ActivityOptions.makeScaleUpAnimation(view, 0, 0, view.getMeasuredWidth(), view.getMeasuredHeight()).toBundle();
        }
        bundle.putInt(KEY_ANIM_TYPE_OVERRIDE, overrideAppTransitionAnimationType);
        return bundle;
    }

    public static void setAnimationHelper(ActivityOptions activityOptions) {
        if (activityOptions == null) {
            sAnimationHelperLocal.set(null);
            return;
        }
        AnimationHelper animationHelper = new AnimationHelper();
        animationHelper.setOverrideAnimationType(activityOptions.animTypeOverride);
        sAnimationHelperLocal.set(animationHelper);
    }
}
