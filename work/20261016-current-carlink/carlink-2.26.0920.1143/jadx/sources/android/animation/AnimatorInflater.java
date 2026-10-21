package android.animation;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.ConfigurationBoundResourceCache;
import android.content.res.ConstantState;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.PathParser;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import android.view.animation.BaseInterpolator;
import android.view.animation.Interpolator;
import com.android.ims.ImsConfig;
import com.android.internal.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AnimatorInflater {
    private static final boolean DBG_ANIMATOR_INFLATER = false;
    private static final int SEQUENTIALLY = 1;
    private static final String TAG = "AnimatorInflater";
    private static final int TOGETHER = 0;
    private static final int VALUE_TYPE_COLOR = 3;
    private static final int VALUE_TYPE_FLOAT = 0;
    private static final int VALUE_TYPE_INT = 1;
    private static final int VALUE_TYPE_PATH = 2;
    private static final int VALUE_TYPE_UNDEFINED = 4;
    private static final TypedValue sTmpTypedValue = new TypedValue();

    public static class PathDataEvaluator implements TypeEvaluator<PathParser.PathData> {
        private final PathParser.PathData mPathData;

        private PathDataEvaluator() {
            this.mPathData = new PathParser.PathData();
        }

        @Override // android.animation.TypeEvaluator
        public PathParser.PathData evaluate(float f2, PathParser.PathData pathData, PathParser.PathData pathData2) {
            if (PathParser.interpolatePathData(this.mPathData, pathData, pathData2, f2)) {
                return this.mPathData;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    private static Animator createAnimatorFromXml(Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f2) {
        return createAnimatorFromXml(resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f2);
    }

    private static Keyframe createNewKeyframe(Keyframe keyframe, float f2) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f2);
        }
        return keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f2) : Keyframe.ofObject(f2);
    }

    private static StateListAnimator createStateListAnimatorFromXml(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        StateListAnimator stateListAnimator = new StateListAnimator();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                break;
            }
            if (next != 2) {
                if (next == 3) {
                    break;
                }
            } else if (ImsConfig.EXTRA_CHANGED_ITEM.equals(xmlPullParser.getName())) {
                int attributeCount = xmlPullParser.getAttributeCount();
                int[] iArr = new int[attributeCount];
                Animator animatorCreateAnimatorFromXml = null;
                int i2 = 0;
                for (int i3 = 0; i3 < attributeCount; i3++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i3);
                    if (attributeNameResource == 16843213) {
                        animatorCreateAnimatorFromXml = loadAnimator(context, attributeSet.getAttributeResourceValue(i3, 0));
                    } else {
                        int i4 = i2 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i3, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr[i2] = attributeNameResource;
                        i2 = i4;
                    }
                }
                if (animatorCreateAnimatorFromXml == null) {
                    animatorCreateAnimatorFromXml = createAnimatorFromXml(context.getResources(), context.getTheme(), xmlPullParser, 1.0f);
                }
                if (animatorCreateAnimatorFromXml == null) {
                    throw new Resources.NotFoundException("animation state item must have a valid animation");
                }
                stateListAnimator.addState(StateSet.trimStateSet(iArr, i2), animatorCreateAnimatorFromXml);
            } else {
                continue;
            }
        }
        return stateListAnimator;
    }

    private static void distributeKeyframes(Keyframe[] keyframeArr, float f2, int i2, int i3) {
        float f3 = f2 / ((i3 - i2) + 2);
        while (i2 <= i3) {
            keyframeArr[i2].setFraction(keyframeArr[i2 - 1].getFraction() + f3);
            i2++;
        }
    }

    private static void dumpKeyframes(Object[] objArr, String str) {
        if (objArr == null || objArr.length == 0) {
            return;
        }
        Log.d(TAG, str);
        int length = objArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            Keyframe keyframe = (Keyframe) objArr[i2];
            StringBuilder sbS = c.s("Keyframe ", i2, ": fraction ");
            Object value = "null";
            sbS.append(keyframe.getFraction() < 0.0f ? "null" : Float.valueOf(keyframe.getFraction()));
            sbS.append(", , value : ");
            if (keyframe.hasValue()) {
                value = keyframe.getValue();
            }
            sbS.append(value);
            Log.d(TAG, sbS.toString());
        }
    }

    private static int getChangingConfigs(Resources resources, int i2) {
        int i3;
        TypedValue typedValue = sTmpTypedValue;
        synchronized (typedValue) {
            resources.getValue(i2, typedValue, true);
            i3 = typedValue.changingConfigurations;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static PropertyValuesHolder getPVH(TypedArray typedArray, int i2, int i3, int i4, String str) {
        int color;
        PropertyValuesHolder propertyValuesHolderOfInt;
        int color2;
        int color3;
        PropertyValuesHolder propertyValuesHolderOfObject;
        TypedValue typedValuePeekValue = typedArray.peekValue(i3);
        Object[] objArr = typedValuePeekValue != null;
        int i5 = objArr != false ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i4);
        Object[] objArr2 = typedValuePeekValue2 != null;
        int i6 = objArr2 != false ? typedValuePeekValue2.type : 0;
        if (i2 == 4) {
            i2 = ((objArr == true && isColorType(i5)) || (objArr2 == true && isColorType(i6))) ? 3 : 0;
        }
        Object[] objArr3 = i2 == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        if (i2 == 2) {
            String string = typedArray.getString(i3);
            String string2 = typedArray.getString(i4);
            PathParser.PathData pathData = string == null ? null : new PathParser.PathData(string);
            PathParser.PathData pathData2 = string2 == null ? null : new PathParser.PathData(string2);
            if (pathData == null && pathData2 == null) {
                return null;
            }
            if (pathData == null) {
                if (pathData2 != null) {
                    return PropertyValuesHolder.ofObject(str, new PathDataEvaluator(), pathData2);
                }
                return null;
            }
            PathDataEvaluator pathDataEvaluator = new PathDataEvaluator();
            if (pathData2 == null) {
                propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, pathDataEvaluator, pathData);
            } else {
                if (!PathParser.canMorph(pathData, pathData2)) {
                    throw new InflateException(c.l(" Can't morph from ", string, " to ", string2));
                }
                propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, pathDataEvaluator, pathData, pathData2);
            }
            return propertyValuesHolderOfObject;
        }
        ArgbEvaluator argbEvaluator = i2 == 3 ? ArgbEvaluator.getInstance() : null;
        if (objArr3 == true) {
            if (objArr == true) {
                float dimension = i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f);
                if (objArr2 == true) {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, dimension, i6 == 5 ? typedArray.getDimension(i4, 0.0f) : typedArray.getFloat(i4, 0.0f));
                } else {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, i6 == 5 ? typedArray.getDimension(i4, 0.0f) : typedArray.getFloat(i4, 0.0f));
            }
        } else {
            if (objArr != true) {
                if (objArr2 != false) {
                    if (i6 == 5) {
                        color = (int) typedArray.getDimension(i4, 0.0f);
                    } else {
                        color = isColorType(i6) ? typedArray.getColor(i4, 0) : typedArray.getInt(i4, 0);
                    }
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color);
                }
                if (propertyValuesHolder == null && argbEvaluator != null) {
                    propertyValuesHolder.setEvaluator(argbEvaluator);
                    return propertyValuesHolder;
                }
            }
            if (i5 == 5) {
                color2 = (int) typedArray.getDimension(i3, 0.0f);
            } else {
                color2 = isColorType(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0);
            }
            if (objArr2 == true) {
                if (i6 == 5) {
                    color3 = (int) typedArray.getDimension(i4, 0.0f);
                } else {
                    color3 = isColorType(i6) ? typedArray.getColor(i4, 0) : typedArray.getInt(i4, 0);
                }
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2, color3);
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2);
            }
        }
        propertyValuesHolder = propertyValuesHolderOfInt;
        return propertyValuesHolder == null ? propertyValuesHolder : propertyValuesHolder;
    }

    private static int inferValueTypeFromValues(TypedArray typedArray, int i2, int i3) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        boolean z2 = typedValuePeekValue != null;
        int i4 = z2 ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i3);
        boolean z3 = typedValuePeekValue2 != null;
        return ((z2 && isColorType(i4)) || (z3 && isColorType(z3 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
    }

    private static int inferValueTypeOfKeyframe(Resources resources, Resources.Theme theme, AttributeSet attributeSet) {
        int i2 = 0;
        TypedArray typedArrayObtainStyledAttributes = theme != null ? theme.obtainStyledAttributes(attributeSet, R.styleable.Keyframe, 0, 0) : resources.obtainAttributes(attributeSet, R.styleable.Keyframe);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(0);
        if ((typedValuePeekValue != null) && isColorType(typedValuePeekValue.type)) {
            i2 = 3;
        }
        typedArrayObtainStyledAttributes.recycle();
        return i2;
    }

    private static boolean isColorType(int i2) {
        return i2 >= 28 && i2 <= 31;
    }

    public static Animator loadAnimator(Context context, int i2) {
        return loadAnimator(context.getResources(), context.getTheme(), i2);
    }

    private static Keyframe loadKeyframe(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i2) {
        Keyframe keyframeOfFloat;
        TypedArray typedArrayObtainStyledAttributes = theme != null ? theme.obtainStyledAttributes(attributeSet, R.styleable.Keyframe, 0, 0) : resources.obtainAttributes(attributeSet, R.styleable.Keyframe);
        float f2 = typedArrayObtainStyledAttributes.getFloat(3, -1.0f);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(0);
        boolean z2 = typedValuePeekValue != null;
        if (i2 == 4) {
            i2 = (z2 && isColorType(typedValuePeekValue.type)) ? 3 : 0;
        }
        if (!z2) {
            keyframeOfFloat = i2 == 0 ? Keyframe.ofFloat(f2) : Keyframe.ofInt(f2);
        } else if (i2 != 0) {
            keyframeOfFloat = (i2 == 1 || i2 == 3) ? Keyframe.ofInt(f2, typedArrayObtainStyledAttributes.getInt(0, 0)) : null;
        } else {
            keyframeOfFloat = Keyframe.ofFloat(f2, typedArrayObtainStyledAttributes.getFloat(0, 0.0f));
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        if (resourceId > 0) {
            keyframeOfFloat.setInterpolator(AnimationUtils.loadInterpolator(resources, theme, resourceId));
        }
        typedArrayObtainStyledAttributes.recycle();
        return keyframeOfFloat;
    }

    private static ObjectAnimator loadObjectAnimator(Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f2) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        loadAnimator(resources, theme, attributeSet, objectAnimator, f2);
        return objectAnimator;
    }

    private static PropertyValuesHolder loadPvh(Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i2) throws XmlPullParserException, IOException {
        int size;
        PropertyValuesHolder propertyValuesHolderOfKeyframe = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals("keyframe")) {
                if (i2 == 4) {
                    i2 = inferValueTypeOfKeyframe(resources, theme, Xml.asAttributeSet(xmlPullParser));
                }
                Keyframe keyframeLoadKeyframe = loadKeyframe(resources, theme, Xml.asAttributeSet(xmlPullParser), i2);
                if (keyframeLoadKeyframe != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(keyframeLoadKeyframe);
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null && (size = arrayList.size()) > 0) {
            Keyframe keyframe = (Keyframe) arrayList.get(0);
            Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
            float fraction = keyframe2.getFraction();
            if (fraction < 1.0f) {
                if (fraction < 0.0f) {
                    keyframe2.setFraction(1.0f);
                } else {
                    arrayList.add(arrayList.size(), createNewKeyframe(keyframe2, 1.0f));
                    size++;
                }
            }
            float fraction2 = keyframe.getFraction();
            if (fraction2 != 0.0f) {
                if (fraction2 < 0.0f) {
                    keyframe.setFraction(0.0f);
                } else {
                    arrayList.add(0, createNewKeyframe(keyframe, 0.0f));
                    size++;
                }
            }
            Keyframe[] keyframeArr = new Keyframe[size];
            arrayList.toArray(keyframeArr);
            for (int i3 = 0; i3 < size; i3++) {
                Keyframe keyframe3 = keyframeArr[i3];
                if (keyframe3.getFraction() < 0.0f) {
                    if (i3 == 0) {
                        keyframe3.setFraction(0.0f);
                    } else {
                        int i4 = size - 1;
                        if (i3 == i4) {
                            keyframe3.setFraction(1.0f);
                        } else {
                            int i5 = i3;
                            for (int i6 = i3 + 1; i6 < i4 && keyframeArr[i6].getFraction() < 0.0f; i6++) {
                                i5 = i6;
                            }
                            distributeKeyframes(keyframeArr, keyframeArr[i5 + 1].getFraction() - keyframeArr[i3 - 1].getFraction(), i3, i5);
                        }
                    }
                }
            }
            propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
            if (i2 == 3) {
                propertyValuesHolderOfKeyframe.setEvaluator(ArgbEvaluator.getInstance());
            }
        }
        return propertyValuesHolderOfKeyframe;
    }

    public static StateListAnimator loadStateListAnimator(Context context, int i2) {
        Resources resources = context.getResources();
        ConfigurationBoundResourceCache<StateListAnimator> stateListAnimatorCache = resources.getStateListAnimatorCache();
        Resources.Theme theme = context.getTheme();
        long j2 = i2;
        StateListAnimator configurationBoundResourceCache = stateListAnimatorCache.getInstance(j2, resources, theme);
        if (configurationBoundResourceCache != null) {
            return configurationBoundResourceCache;
        }
        XmlResourceParser animation = null;
        try {
            try {
                try {
                    animation = resources.getAnimation(i2);
                    StateListAnimator stateListAnimatorCreateStateListAnimatorFromXml = createStateListAnimatorFromXml(context, animation, Xml.asAttributeSet(animation));
                    if (stateListAnimatorCreateStateListAnimatorFromXml != null) {
                        stateListAnimatorCreateStateListAnimatorFromXml.appendChangingConfigurations(getChangingConfigs(resources, i2));
                        ConstantState<StateListAnimator> constantStateCreateConstantState = stateListAnimatorCreateStateListAnimatorFromXml.createConstantState();
                        if (constantStateCreateConstantState != null) {
                            stateListAnimatorCache.put(j2, theme, constantStateCreateConstantState);
                            stateListAnimatorCreateStateListAnimatorFromXml = constantStateCreateConstantState.newInstance2(resources, theme);
                        }
                    }
                    if (animation != null) {
                        animation.close();
                    }
                    return stateListAnimatorCreateStateListAnimatorFromXml;
                } catch (IOException e2) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load state list animator resource ID #0x" + Integer.toHexString(i2));
                    notFoundException.initCause(e2);
                    throw notFoundException;
                }
            } catch (XmlPullParserException e3) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load state list animator resource ID #0x" + Integer.toHexString(i2));
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

    private static PropertyValuesHolder[] loadValues(Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int i2;
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray typedArrayObtainStyledAttributes = theme != null ? theme.obtainStyledAttributes(attributeSet, R.styleable.PropertyValuesHolder, 0, 0) : resources.obtainAttributes(attributeSet, R.styleable.PropertyValuesHolder);
                    String string = typedArrayObtainStyledAttributes.getString(3);
                    int i3 = typedArrayObtainStyledAttributes.getInt(2, 4);
                    PropertyValuesHolder propertyValuesHolderLoadPvh = loadPvh(resources, theme, xmlPullParser, string, i3);
                    if (propertyValuesHolderLoadPvh == null) {
                        propertyValuesHolderLoadPvh = getPVH(typedArrayObtainStyledAttributes, i3, 0, 1, string);
                    }
                    if (propertyValuesHolderLoadPvh != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(propertyValuesHolderLoadPvh);
                    }
                    typedArrayObtainStyledAttributes.recycle();
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size];
            for (i2 = 0; i2 < size; i2++) {
                propertyValuesHolderArr[i2] = (PropertyValuesHolder) arrayList.get(i2);
            }
        }
        return propertyValuesHolderArr;
    }

    private static void parseAnimatorFromTypeArray(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f2) {
        long j2 = typedArray.getInt(1, 300);
        long j3 = typedArray.getInt(2, 0);
        int iInferValueTypeFromValues = typedArray.getInt(7, 4);
        if (iInferValueTypeFromValues == 4) {
            iInferValueTypeFromValues = inferValueTypeFromValues(typedArray, 5, 6);
        }
        PropertyValuesHolder pvh = getPVH(typedArray, iInferValueTypeFromValues, 5, 6, "");
        if (pvh != null) {
            valueAnimator.setValues(pvh);
        }
        valueAnimator.setDuration(j2);
        valueAnimator.setStartDelay(j3);
        if (typedArray.hasValue(3)) {
            valueAnimator.setRepeatCount(typedArray.getInt(3, 0));
        }
        if (typedArray.hasValue(4)) {
            valueAnimator.setRepeatMode(typedArray.getInt(4, 1));
        }
        if (typedArray2 != null) {
            setupObjectAnimator(valueAnimator, typedArray2, iInferValueTypeFromValues, f2);
        }
    }

    private static TypeEvaluator setupAnimatorForPath(ValueAnimator valueAnimator, TypedArray typedArray) {
        PathDataEvaluator pathDataEvaluator;
        String string = typedArray.getString(5);
        String string2 = typedArray.getString(6);
        PathParser.PathData pathData = string == null ? null : new PathParser.PathData(string);
        PathParser.PathData pathData2 = string2 == null ? null : new PathParser.PathData(string2);
        if (pathData != null) {
            if (pathData2 != null) {
                valueAnimator.setObjectValues(pathData, pathData2);
                if (!PathParser.canMorph(pathData, pathData2)) {
                    throw new InflateException(typedArray.getPositionDescription() + " Can't morph from " + string + " to " + string2);
                }
            } else {
                valueAnimator.setObjectValues(pathData);
            }
            pathDataEvaluator = new PathDataEvaluator();
        } else {
            if (pathData2 == null) {
                return null;
            }
            valueAnimator.setObjectValues(pathData2);
            pathDataEvaluator = new PathDataEvaluator();
        }
        return pathDataEvaluator;
    }

    private static void setupObjectAnimator(ValueAnimator valueAnimator, TypedArray typedArray, int i2, float f2) {
        Keyframes keyframesCreateXIntKeyframes;
        Keyframes keyframesCreateYIntKeyframes;
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String string = typedArray.getString(1);
        if (string == null) {
            objectAnimator.setPropertyName(typedArray.getString(0));
            return;
        }
        String string2 = typedArray.getString(2);
        String string3 = typedArray.getString(3);
        if (i2 == 2 || i2 == 4) {
            i2 = 0;
        }
        if (string2 == null && string3 == null) {
            throw new InflateException(c.c(typedArray, new StringBuilder(), " propertyXName or propertyYName is needed for PathData"));
        }
        PathKeyframes pathKeyframesOfPath = KeyframeSet.ofPath(PathParser.createPathFromPathData(string), f2 * 0.5f);
        if (i2 == 0) {
            keyframesCreateXIntKeyframes = pathKeyframesOfPath.createXFloatKeyframes();
            keyframesCreateYIntKeyframes = pathKeyframesOfPath.createYFloatKeyframes();
        } else {
            keyframesCreateXIntKeyframes = pathKeyframesOfPath.createXIntKeyframes();
            keyframesCreateYIntKeyframes = pathKeyframesOfPath.createYIntKeyframes();
        }
        PropertyValuesHolder propertyValuesHolderOfKeyframes = string2 != null ? PropertyValuesHolder.ofKeyframes(string2, keyframesCreateXIntKeyframes) : null;
        PropertyValuesHolder propertyValuesHolderOfKeyframes2 = string3 != null ? PropertyValuesHolder.ofKeyframes(string3, keyframesCreateYIntKeyframes) : null;
        if (propertyValuesHolderOfKeyframes == null) {
            objectAnimator.setValues(propertyValuesHolderOfKeyframes2);
        } else if (propertyValuesHolderOfKeyframes2 == null) {
            objectAnimator.setValues(propertyValuesHolderOfKeyframes);
        } else {
            objectAnimator.setValues(propertyValuesHolderOfKeyframes, propertyValuesHolderOfKeyframes2);
        }
    }

    private static void setupValues(ValueAnimator valueAnimator, TypedArray typedArray, boolean z2, boolean z3, int i2, boolean z4, int i3) {
        int color;
        int color2;
        int color3;
        if (z2) {
            if (!z3) {
                valueAnimator.setFloatValues(i3 == 5 ? typedArray.getDimension(6, 0.0f) : typedArray.getFloat(6, 0.0f));
                return;
            }
            float dimension = i2 == 5 ? typedArray.getDimension(5, 0.0f) : typedArray.getFloat(5, 0.0f);
            if (z4) {
                valueAnimator.setFloatValues(dimension, i3 == 5 ? typedArray.getDimension(6, 0.0f) : typedArray.getFloat(6, 0.0f));
                return;
            } else {
                valueAnimator.setFloatValues(dimension);
                return;
            }
        }
        if (!z3) {
            if (z4) {
                if (i3 == 5) {
                    color = (int) typedArray.getDimension(6, 0.0f);
                } else {
                    color = isColorType(i3) ? typedArray.getColor(6, 0) : typedArray.getInt(6, 0);
                }
                valueAnimator.setIntValues(color);
                return;
            }
            return;
        }
        if (i2 == 5) {
            color2 = (int) typedArray.getDimension(5, 0.0f);
        } else {
            color2 = isColorType(i2) ? typedArray.getColor(5, 0) : typedArray.getInt(5, 0);
        }
        if (!z4) {
            valueAnimator.setIntValues(color2);
            return;
        }
        if (i3 == 5) {
            color3 = (int) typedArray.getDimension(6, 0.0f);
        } else {
            color3 = isColorType(i3) ? typedArray.getColor(6, 0) : typedArray.getInt(6, 0);
        }
        valueAnimator.setIntValues(color2, color3);
    }

    private static Animator createAnimatorFromXml(Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i2, float f2) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        Animator animatorLoadAnimator = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            boolean z2 = false;
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("objectAnimator")) {
                    animatorLoadAnimator = loadObjectAnimator(resources, theme, attributeSet, f2);
                } else if (name.equals("animator")) {
                    animatorLoadAnimator = loadAnimator(resources, theme, attributeSet, null, f2);
                } else if (name.equals("set")) {
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    TypedArray typedArrayObtainStyledAttributes = theme != null ? theme.obtainStyledAttributes(attributeSet, R.styleable.AnimatorSet, 0, 0) : resources.obtainAttributes(attributeSet, R.styleable.AnimatorSet);
                    animatorSet2.appendChangingConfigurations(typedArrayObtainStyledAttributes.getChangingConfigurations());
                    createAnimatorFromXml(resources, theme, xmlPullParser, attributeSet, animatorSet2, typedArrayObtainStyledAttributes.getInt(0, 0), f2);
                    typedArrayObtainStyledAttributes.recycle();
                    z2 = false;
                    animatorLoadAnimator = animatorSet2;
                } else {
                    if (!name.equals("propertyValuesHolder")) {
                        throw new RuntimeException(c.p(xmlPullParser, new StringBuilder("Unknown animator name: ")));
                    }
                    PropertyValuesHolder[] propertyValuesHolderArrLoadValues = loadValues(resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                    if (propertyValuesHolderArrLoadValues != null && animatorLoadAnimator != null && (animatorLoadAnimator instanceof ValueAnimator)) {
                        ((ValueAnimator) animatorLoadAnimator).setValues(propertyValuesHolderArrLoadValues);
                    }
                    z2 = true;
                }
                if (animatorSet != null && !z2) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(animatorLoadAnimator);
                }
            }
        }
        if (animatorSet != null && arrayList != null) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it = arrayList.iterator();
            int i3 = 0;
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
        return animatorLoadAnimator;
    }

    public static Animator loadAnimator(Resources resources, Resources.Theme theme, int i2) {
        return loadAnimator(resources, theme, i2, 1.0f);
    }

    public static Animator loadAnimator(Resources resources, Resources.Theme theme, int i2, float f2) {
        ConfigurationBoundResourceCache<Animator> animatorCache = resources.getAnimatorCache();
        long j2 = i2;
        Animator configurationBoundResourceCache = animatorCache.getInstance(j2, resources, theme);
        if (configurationBoundResourceCache != null) {
            return configurationBoundResourceCache;
        }
        XmlResourceParser animation = null;
        try {
            try {
                animation = resources.getAnimation(i2);
                Animator animatorCreateAnimatorFromXml = createAnimatorFromXml(resources, theme, animation, f2);
                if (animatorCreateAnimatorFromXml != null) {
                    animatorCreateAnimatorFromXml.appendChangingConfigurations(getChangingConfigs(resources, i2));
                    ConstantState<Animator> constantStateCreateConstantState = animatorCreateAnimatorFromXml.createConstantState();
                    if (constantStateCreateConstantState != null) {
                        animatorCache.put(j2, theme, constantStateCreateConstantState);
                        animatorCreateAnimatorFromXml = constantStateCreateConstantState.newInstance2(resources, theme);
                    }
                }
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

    private static ValueAnimator loadAnimator(Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f2) {
        TypedArray typedArrayObtainAttributes;
        TypedArray typedArrayObtainAttributes2;
        if (theme != null) {
            typedArrayObtainAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.Animator, 0, 0);
        } else {
            typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.Animator);
        }
        if (valueAnimator != null) {
            if (theme != null) {
                typedArrayObtainAttributes2 = theme.obtainStyledAttributes(attributeSet, R.styleable.PropertyAnimator, 0, 0);
            } else {
                typedArrayObtainAttributes2 = resources.obtainAttributes(attributeSet, R.styleable.PropertyAnimator);
            }
            valueAnimator.appendChangingConfigurations(typedArrayObtainAttributes2.getChangingConfigurations());
        } else {
            typedArrayObtainAttributes2 = null;
        }
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        valueAnimator.appendChangingConfigurations(typedArrayObtainAttributes.getChangingConfigurations());
        parseAnimatorFromTypeArray(valueAnimator, typedArrayObtainAttributes, typedArrayObtainAttributes2, f2);
        int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            Interpolator interpolatorLoadInterpolator = AnimationUtils.loadInterpolator(resources, theme, resourceId);
            if (interpolatorLoadInterpolator instanceof BaseInterpolator) {
                valueAnimator.appendChangingConfigurations(((BaseInterpolator) interpolatorLoadInterpolator).getChangingConfiguration());
            }
            valueAnimator.setInterpolator(interpolatorLoadInterpolator);
        }
        typedArrayObtainAttributes.recycle();
        if (typedArrayObtainAttributes2 != null) {
            typedArrayObtainAttributes2.recycle();
        }
        return valueAnimator;
    }
}
