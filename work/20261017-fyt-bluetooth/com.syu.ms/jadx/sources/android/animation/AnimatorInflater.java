package android.animation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.animation.AnimationUtils;
import i.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AnimatorInflater {
    private static final int SEQUENTIALLY = 1;
    private static final int TOGETHER = 0;
    private static final int VALUE_TYPE_COLOR = 4;
    private static final int VALUE_TYPE_CUSTOM = 5;
    private static final int VALUE_TYPE_FLOAT = 0;
    private static final int VALUE_TYPE_INT = 1;

    private static Animator createAnimatorFromXml(Context context, XmlPullParser xmlPullParser) {
        return createAnimatorFromXml(context, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0);
    }

    public static Animator loadAnimator(Context context, int i2) {
        XmlResourceParser animation = null;
        try {
            try {
                animation = context.getResources().getAnimation(i2);
                Animator animatorCreateAnimatorFromXml = createAnimatorFromXml(context, animation);
                if (animation != null) {
                    animation.close();
                }
                return animatorCreateAnimatorFromXml;
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

    private static ObjectAnimator loadObjectAnimator(Context context, AttributeSet attributeSet) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        loadAnimator(context, attributeSet, objectAnimator);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.PropertyAnimator);
        objectAnimator.setPropertyName(typedArrayObtainStyledAttributes.getString(0));
        typedArrayObtainStyledAttributes.recycle();
        return objectAnimator;
    }

    private static Animator createAnimatorFromXml(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i2) throws XmlPullParserException, IOException {
        int i3;
        AnimatorSet animatorSet2;
        ValueAnimator valueAnimatorLoadAnimator;
        ObjectAnimator objectAnimatorLoadObjectAnimator;
        int depth = xmlPullParser.getDepth();
        ArrayList arrayList = null;
        Animator animator = null;
        while (true) {
            int next = xmlPullParser.next();
            i3 = 0;
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("objectAnimator")) {
                    objectAnimatorLoadObjectAnimator = loadObjectAnimator(context, attributeSet);
                } else if (name.equals("animator")) {
                    valueAnimatorLoadAnimator = loadAnimator(context, attributeSet, null);
                } else {
                    if (!name.equals("set")) {
                        throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                    }
                    animatorSet2 = new AnimatorSet();
                    TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AnimatorSet);
                    createAnimatorFromXml(context, xmlPullParser, attributeSet, animatorSet2, typedArrayObtainStyledAttributes.getInt(0, 0));
                    typedArrayObtainStyledAttributes.recycle();
                }
                if (animatorSet != null) {
                    animator = animatorSet2;
                    animator = valueAnimatorLoadAnimator;
                    if (arrayList == null) {
                        animator = objectAnimatorLoadObjectAnimator;
                        arrayList = new ArrayList();
                    }
                    animator = objectAnimatorLoadObjectAnimator;
                    arrayList.add(animator);
                } else {
                    animator = animatorSet2;
                    animator = valueAnimatorLoadAnimator;
                    animator = objectAnimatorLoadObjectAnimator;
                }
            }
        }
        if (animatorSet != null && arrayList != null) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorArr[i3] = (Animator) it.next();
                i3++;
            }
            if (i2 == 0) {
                animatorSet.playTogether(animatorArr);
            } else {
                animatorSet.playSequentially(animatorArr);
            }
        }
        return animator;
    }

    private static ValueAnimator loadAnimator(Context context, AttributeSet attributeSet, ValueAnimator valueAnimator) {
        int i2;
        int color;
        int color2;
        int color3;
        float dimension;
        float dimension2;
        float dimension3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.Animator);
        long j2 = typedArrayObtainStyledAttributes.getInt(1, 300);
        long j3 = typedArrayObtainStyledAttributes.getInt(2, 0);
        int i3 = typedArrayObtainStyledAttributes.getInt(7, 0);
        ValueAnimator valueAnimator2 = valueAnimator == null ? new ValueAnimator() : valueAnimator;
        boolean z2 = i3 == 0;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(5);
        boolean z3 = typedValuePeekValue != null;
        int i4 = z3 ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(6);
        boolean z4 = typedValuePeekValue2 != null;
        int i5 = z4 ? typedValuePeekValue2.type : 0;
        if ((z3 && i4 >= 28 && i4 <= 31) || (z4 && i5 >= 28 && i5 <= 31)) {
            valueAnimator2.setEvaluator(new ArgbEvaluator());
            z2 = false;
        }
        if (!z2) {
            i2 = 0;
            if (z3) {
                if (i4 == 5) {
                    color2 = (int) typedArrayObtainStyledAttributes.getDimension(5, 0.0f);
                } else if (i4 >= 28 && i4 <= 31) {
                    color2 = typedArrayObtainStyledAttributes.getColor(5, 0);
                } else {
                    color2 = typedArrayObtainStyledAttributes.getInt(5, 0);
                }
                if (z4) {
                    if (i5 == 5) {
                        color3 = (int) typedArrayObtainStyledAttributes.getDimension(6, 0.0f);
                    } else if (i5 >= 28 && i5 <= 31) {
                        color3 = typedArrayObtainStyledAttributes.getColor(6, 0);
                    } else {
                        color3 = typedArrayObtainStyledAttributes.getInt(6, 0);
                    }
                    valueAnimator2.setIntValues(color2, color3);
                } else {
                    valueAnimator2.setIntValues(color2);
                }
            } else if (z4) {
                if (i5 == 5) {
                    color = (int) typedArrayObtainStyledAttributes.getDimension(6, 0.0f);
                } else if (i5 >= 28 && i5 <= 31) {
                    color = typedArrayObtainStyledAttributes.getColor(6, 0);
                } else {
                    color = typedArrayObtainStyledAttributes.getInt(6, 0);
                }
                valueAnimator2.setIntValues(color);
            }
        } else if (z3) {
            if (i4 == 5) {
                dimension2 = typedArrayObtainStyledAttributes.getDimension(5, 0.0f);
            } else {
                dimension2 = typedArrayObtainStyledAttributes.getFloat(5, 0.0f);
            }
            if (z4) {
                if (i5 == 5) {
                    dimension3 = typedArrayObtainStyledAttributes.getDimension(6, 0.0f);
                } else {
                    dimension3 = typedArrayObtainStyledAttributes.getFloat(6, 0.0f);
                }
                i2 = 0;
                valueAnimator2.setFloatValues(dimension2, dimension3);
            } else {
                i2 = 0;
                valueAnimator2.setFloatValues(dimension2);
            }
        } else {
            i2 = 0;
            if (i5 == 5) {
                dimension = typedArrayObtainStyledAttributes.getDimension(6, 0.0f);
            } else {
                dimension = typedArrayObtainStyledAttributes.getFloat(6, 0.0f);
            }
            valueAnimator2.setFloatValues(dimension);
        }
        valueAnimator2.setDuration(j2);
        valueAnimator2.setStartDelay(j3);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            valueAnimator2.setRepeatCount(typedArrayObtainStyledAttributes.getInt(3, i2));
        }
        if (typedArrayObtainStyledAttributes.hasValue(4)) {
            valueAnimator2.setRepeatMode(typedArrayObtainStyledAttributes.getInt(4, 1));
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        }
        typedArrayObtainStyledAttributes.recycle();
        return valueAnimator2;
    }
}
