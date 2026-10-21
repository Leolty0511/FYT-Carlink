package android.view.animation;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.BatteryManager;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class AnimationUtils {
    private static final int SEQUENTIALLY = 1;
    private static final int TOGETHER = 0;
    private static ThreadLocal<AnimationState> sAnimationState = new ThreadLocal<AnimationState>() { // from class: android.view.animation.AnimationUtils.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public AnimationState initialValue() {
            return new AnimationState();
        }
    };

    public static class AnimationState {
        boolean animationClockLocked;
        long currentVsyncTimeMillis;
        long lastReportedTimeMillis;

        private AnimationState() {
        }
    }

    private static Animation createAnimationFromXml(Context context, XmlPullParser xmlPullParser) {
        return createAnimationFromXml(context, xmlPullParser, null, Xml.asAttributeSet(xmlPullParser));
    }

    private static Interpolator createInterpolatorFromXml(Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        Interpolator accelerateInterpolator;
        int depth = xmlPullParser.getDepth();
        Interpolator linearInterpolator = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
                String name = xmlPullParser.getName();
                if (name.equals("linearInterpolator")) {
                    linearInterpolator = new LinearInterpolator();
                } else {
                    if (name.equals("accelerateInterpolator")) {
                        accelerateInterpolator = new AccelerateInterpolator(resources, theme, attributeSetAsAttributeSet);
                    } else if (name.equals("decelerateInterpolator")) {
                        accelerateInterpolator = new DecelerateInterpolator(resources, theme, attributeSetAsAttributeSet);
                    } else if (name.equals("accelerateDecelerateInterpolator")) {
                        linearInterpolator = new AccelerateDecelerateInterpolator();
                    } else if (name.equals("cycleInterpolator")) {
                        accelerateInterpolator = new CycleInterpolator(resources, theme, attributeSetAsAttributeSet);
                    } else if (name.equals("anticipateInterpolator")) {
                        accelerateInterpolator = new AnticipateInterpolator(resources, theme, attributeSetAsAttributeSet);
                    } else if (name.equals("overshootInterpolator")) {
                        accelerateInterpolator = new OvershootInterpolator(resources, theme, attributeSetAsAttributeSet);
                    } else if (name.equals("anticipateOvershootInterpolator")) {
                        accelerateInterpolator = new AnticipateOvershootInterpolator(resources, theme, attributeSetAsAttributeSet);
                    } else if (name.equals("bounceInterpolator")) {
                        linearInterpolator = new BounceInterpolator();
                    } else {
                        if (!name.equals("pathInterpolator")) {
                            throw new RuntimeException(c.p(xmlPullParser, new StringBuilder("Unknown interpolator name: ")));
                        }
                        accelerateInterpolator = new PathInterpolator(resources, theme, attributeSetAsAttributeSet);
                    }
                    linearInterpolator = accelerateInterpolator;
                }
            }
        }
        return linearInterpolator;
    }

    private static LayoutAnimationController createLayoutAnimationFromXml(Context context, XmlPullParser xmlPullParser) {
        return createLayoutAnimationFromXml(context, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
    }

    public static long currentAnimationTimeMillis() {
        AnimationState animationState = sAnimationState.get();
        if (animationState.animationClockLocked) {
            return Math.max(animationState.currentVsyncTimeMillis, animationState.lastReportedTimeMillis);
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        animationState.lastReportedTimeMillis = jUptimeMillis;
        return jUptimeMillis;
    }

    public static Animation loadAnimation(Context context, int i2) {
        XmlResourceParser animation = null;
        try {
            try {
                animation = context.getResources().getAnimation(i2);
                Animation animationCreateAnimationFromXml = createAnimationFromXml(context, animation);
                if (animation != null) {
                    animation.close();
                }
                return animationCreateAnimationFromXml;
            } catch (IOException e2) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException.initCause(e2);
                throw notFoundException;
            } catch (XmlPullParserException e3) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException2.initCause(e3);
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (animation != null) {
                animation.close();
            }
            throw th;
        }
    }

    public static Interpolator loadInterpolator(Context context, int i2) {
        XmlResourceParser animation = null;
        try {
            try {
                animation = context.getResources().getAnimation(i2);
                Interpolator interpolatorCreateInterpolatorFromXml = createInterpolatorFromXml(context.getResources(), context.getTheme(), animation);
                if (animation != null) {
                    animation.close();
                }
                return interpolatorCreateInterpolatorFromXml;
            } catch (IOException e2) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException.initCause(e2);
                throw notFoundException;
            } catch (XmlPullParserException e3) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException2.initCause(e3);
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (animation != null) {
                animation.close();
            }
            throw th;
        }
    }

    public static LayoutAnimationController loadLayoutAnimation(Context context, int i2) {
        XmlResourceParser animation = null;
        try {
            try {
                animation = context.getResources().getAnimation(i2);
                LayoutAnimationController layoutAnimationControllerCreateLayoutAnimationFromXml = createLayoutAnimationFromXml(context, animation);
                if (animation != null) {
                    animation.close();
                }
                return layoutAnimationControllerCreateLayoutAnimationFromXml;
            } catch (IOException e2) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException.initCause(e2);
                throw notFoundException;
            } catch (XmlPullParserException e3) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException2.initCause(e3);
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (animation != null) {
                animation.close();
            }
            throw th;
        }
    }

    public static void lockAnimationClock(long j2) {
        AnimationState animationState = sAnimationState.get();
        animationState.animationClockLocked = true;
        animationState.currentVsyncTimeMillis = j2;
    }

    public static Animation makeInAnimation(Context context, boolean z2) {
        Animation animationLoadAnimation = z2 ? loadAnimation(context, 17432578) : loadAnimation(context, R.anim.slide_in_right);
        animationLoadAnimation.setInterpolator(new DecelerateInterpolator());
        animationLoadAnimation.setStartTime(currentAnimationTimeMillis());
        return animationLoadAnimation;
    }

    public static Animation makeInChildBottomAnimation(Context context) {
        Animation animationLoadAnimation = loadAnimation(context, R.anim.slide_in_child_bottom);
        animationLoadAnimation.setInterpolator(new AccelerateInterpolator());
        animationLoadAnimation.setStartTime(currentAnimationTimeMillis());
        return animationLoadAnimation;
    }

    public static Animation makeOutAnimation(Context context, boolean z2) {
        Animation animationLoadAnimation = z2 ? loadAnimation(context, 17432579) : loadAnimation(context, R.anim.slide_out_left);
        animationLoadAnimation.setInterpolator(new AccelerateInterpolator());
        animationLoadAnimation.setStartTime(currentAnimationTimeMillis());
        return animationLoadAnimation;
    }

    public static void unlockAnimationClock() {
        sAnimationState.get().animationClockLocked = false;
    }

    private static Animation createAnimationFromXml(Context context, XmlPullParser xmlPullParser, AnimationSet animationSet, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Animation translateAnimation;
        Animation rotateAnimation;
        Animation scaleAnimation;
        Animation alphaAnimation;
        AnimationSet animationSet2;
        int depth = xmlPullParser.getDepth();
        Animation animation = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("set")) {
                    animationSet2 = new AnimationSet(context, attributeSet);
                    createAnimationFromXml(context, xmlPullParser, animationSet2, attributeSet);
                } else if (name.equals("alpha")) {
                    alphaAnimation = new AlphaAnimation(context, attributeSet);
                } else if (name.equals(BatteryManager.EXTRA_SCALE)) {
                    scaleAnimation = new ScaleAnimation(context, attributeSet);
                } else if (name.equals("rotate")) {
                    rotateAnimation = new RotateAnimation(context, attributeSet);
                } else {
                    if (!name.equals("translate")) {
                        throw new RuntimeException(c.p(xmlPullParser, new StringBuilder("Unknown animation name: ")));
                    }
                    translateAnimation = new TranslateAnimation(context, attributeSet);
                }
                if (animationSet != null) {
                    animation = translateAnimation;
                    animation = rotateAnimation;
                    animation = scaleAnimation;
                    animation = alphaAnimation;
                    animation = animationSet2;
                    animationSet.addAnimation(animation);
                } else {
                    animation = translateAnimation;
                    animation = rotateAnimation;
                    animation = scaleAnimation;
                    animation = alphaAnimation;
                    animation = animationSet2;
                }
            }
        }
        return animation;
    }

    private static LayoutAnimationController createLayoutAnimationFromXml(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        LayoutAnimationController layoutAnimationController = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if ("layoutAnimation".equals(name)) {
                    layoutAnimationController = new LayoutAnimationController(context, attributeSet);
                } else {
                    if (!"gridLayoutAnimation".equals(name)) {
                        throw new RuntimeException(c.j("Unknown layout animation name: ", name));
                    }
                    layoutAnimationController = new GridLayoutAnimationController(context, attributeSet);
                }
            }
        }
        return layoutAnimationController;
    }

    public static Interpolator loadInterpolator(Resources resources, Resources.Theme theme, int i2) {
        XmlResourceParser animation = null;
        try {
            try {
                try {
                    animation = resources.getAnimation(i2);
                    Interpolator interpolatorCreateInterpolatorFromXml = createInterpolatorFromXml(resources, theme, animation);
                    if (animation != null) {
                        animation.close();
                    }
                    return interpolatorCreateInterpolatorFromXml;
                } catch (XmlPullParserException e2) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                    notFoundException.initCause(e2);
                    throw notFoundException;
                }
            } catch (IOException e3) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException2.initCause(e3);
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (animation != null) {
                animation.close();
            }
            throw th;
        }
    }
}
