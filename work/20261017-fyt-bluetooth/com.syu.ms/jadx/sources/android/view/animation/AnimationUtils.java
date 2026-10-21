package android.view.animation;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.BatteryManager;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AnimationUtils {
    private static final int SEQUENTIALLY = 1;
    private static final int TOGETHER = 0;

    private static Animation createAnimationFromXml(Context context, XmlPullParser xmlPullParser) {
        return createAnimationFromXml(context, xmlPullParser, null, Xml.asAttributeSet(xmlPullParser));
    }

    private static Interpolator createInterpolatorFromXml(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        Interpolator bounceInterpolator;
        int depth = xmlPullParser.getDepth();
        Interpolator interpolator = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
                String name = xmlPullParser.getName();
                if (name.equals("linearInterpolator")) {
                    bounceInterpolator = new LinearInterpolator(context, attributeSetAsAttributeSet);
                } else if (name.equals("accelerateInterpolator")) {
                    bounceInterpolator = new AccelerateInterpolator(context, attributeSetAsAttributeSet);
                } else if (name.equals("decelerateInterpolator")) {
                    bounceInterpolator = new DecelerateInterpolator(context, attributeSetAsAttributeSet);
                } else if (name.equals("accelerateDecelerateInterpolator")) {
                    bounceInterpolator = new AccelerateDecelerateInterpolator(context, attributeSetAsAttributeSet);
                } else if (name.equals("cycleInterpolator")) {
                    bounceInterpolator = new CycleInterpolator(context, attributeSetAsAttributeSet);
                } else if (name.equals("anticipateInterpolator")) {
                    bounceInterpolator = new AnticipateInterpolator(context, attributeSetAsAttributeSet);
                } else if (name.equals("overshootInterpolator")) {
                    bounceInterpolator = new OvershootInterpolator(context, attributeSetAsAttributeSet);
                } else if (name.equals("anticipateOvershootInterpolator")) {
                    bounceInterpolator = new AnticipateOvershootInterpolator(context, attributeSetAsAttributeSet);
                } else {
                    if (!name.equals("bounceInterpolator")) {
                        throw new RuntimeException("Unknown interpolator name: " + xmlPullParser.getName());
                    }
                    bounceInterpolator = new BounceInterpolator(context, attributeSetAsAttributeSet);
                }
                interpolator = bounceInterpolator;
            }
        }
        return interpolator;
    }

    private static LayoutAnimationController createLayoutAnimationFromXml(Context context, XmlPullParser xmlPullParser) {
        return createLayoutAnimationFromXml(context, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
    }

    public static long currentAnimationTimeMillis() {
        return SystemClock.uptimeMillis();
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
                Interpolator interpolatorCreateInterpolatorFromXml = createInterpolatorFromXml(context, animation);
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

    public static Animation makeInAnimation(Context context, boolean z2) {
        Animation animationLoadAnimation = z2 ? loadAnimation(context, R.anim.slide_in_left) : loadAnimation(context, 17432660);
        animationLoadAnimation.setInterpolator(new DecelerateInterpolator());
        animationLoadAnimation.setStartTime(currentAnimationTimeMillis());
        return animationLoadAnimation;
    }

    public static Animation makeInChildBottomAnimation(Context context) {
        Animation animationLoadAnimation = loadAnimation(context, 17432659);
        animationLoadAnimation.setInterpolator(new AccelerateInterpolator());
        animationLoadAnimation.setStartTime(currentAnimationTimeMillis());
        return animationLoadAnimation;
    }

    public static Animation makeOutAnimation(Context context, boolean z2) {
        Animation animationLoadAnimation = z2 ? loadAnimation(context, R.anim.slide_out_right) : loadAnimation(context, 17432663);
        animationLoadAnimation.setInterpolator(new AccelerateInterpolator());
        animationLoadAnimation.setStartTime(currentAnimationTimeMillis());
        return animationLoadAnimation;
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
                        throw new RuntimeException("Unknown animation name: " + xmlPullParser.getName());
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
                        throw new RuntimeException("Unknown layout animation name: " + name);
                    }
                    layoutAnimationController = new GridLayoutAnimationController(context, attributeSet);
                }
            }
        }
        return layoutAnimationController;
    }
}
