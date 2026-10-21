package android.animation;

import android.accessibilityservice.c;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class ObjectAnimator extends ValueAnimator {
    private static final boolean DBG = false;
    private static final String LOG_TAG = "ObjectAnimator";
    private boolean mAutoCancel = false;
    private Property mProperty;
    private String mPropertyName;
    private WeakReference<Object> mTarget;

    public ObjectAnimator() {
    }

    private boolean hasSameTargetAndProperties(Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            PropertyValuesHolder[] values = objectAnimator.getValues();
            if (objectAnimator.getTarget() == getTarget() && this.mValues.length == values.length) {
                int i2 = 0;
                while (true) {
                    PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
                    if (i2 >= propertyValuesHolderArr.length) {
                        return true;
                    }
                    PropertyValuesHolder propertyValuesHolder = propertyValuesHolderArr[i2];
                    PropertyValuesHolder propertyValuesHolder2 = values[i2];
                    if (propertyValuesHolder.getPropertyName() == null || !propertyValuesHolder.getPropertyName().equals(propertyValuesHolder2.getPropertyName())) {
                        return false;
                    }
                    i2++;
                }
            }
        }
        return false;
    }

    public static ObjectAnimator ofArgb(Object obj, String str, int... iArr) {
        ObjectAnimator objectAnimatorOfInt = ofInt(obj, str, iArr);
        objectAnimatorOfInt.setEvaluator(ArgbEvaluator.getInstance());
        return objectAnimatorOfInt;
    }

    public static ObjectAnimator ofFloat(Object obj, String str, float... fArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(obj, str);
        objectAnimator.setFloatValues(fArr);
        return objectAnimator;
    }

    public static ObjectAnimator ofInt(Object obj, String str, int... iArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(obj, str);
        objectAnimator.setIntValues(iArr);
        return objectAnimator;
    }

    public static ObjectAnimator ofMultiFloat(Object obj, String str, float[][] fArr) {
        return ofPropertyValuesHolder(obj, PropertyValuesHolder.ofMultiFloat(str, fArr));
    }

    public static ObjectAnimator ofMultiInt(Object obj, String str, int[][] iArr) {
        return ofPropertyValuesHolder(obj, PropertyValuesHolder.ofMultiInt(str, iArr));
    }

    public static ObjectAnimator ofObject(Object obj, String str, TypeEvaluator typeEvaluator, Object... objArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(obj, str);
        objectAnimator.setObjectValues(objArr);
        objectAnimator.setEvaluator(typeEvaluator);
        return objectAnimator;
    }

    public static ObjectAnimator ofPropertyValuesHolder(Object obj, PropertyValuesHolder... propertyValuesHolderArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.setTarget(obj);
        objectAnimator.setValues(propertyValuesHolderArr);
        return objectAnimator;
    }

    @Override // android.animation.ValueAnimator
    public void animateValue(float f2) {
        Object target = getTarget();
        if (this.mTarget != null && target == null) {
            cancel();
            return;
        }
        super.animateValue(f2);
        int length = this.mValues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mValues[i2].setAnimatedValue(target);
        }
    }

    @Override // android.animation.ValueAnimator
    public String getNameForTrace() {
        return "animator:" + getPropertyName();
    }

    public String getPropertyName() {
        String str = this.mPropertyName;
        if (str != null) {
            return str;
        }
        Property property = this.mProperty;
        if (property != null) {
            return property.getName();
        }
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        String string = null;
        if (propertyValuesHolderArr != null && propertyValuesHolderArr.length > 0) {
            int i2 = 0;
            while (i2 < this.mValues.length) {
                StringBuilder sbR = c.r(i2 == 0 ? "" : c.D(string, ","));
                sbR.append(this.mValues[i2].getPropertyName());
                string = sbR.toString();
                i2++;
            }
        }
        return string;
    }

    public Object getTarget() {
        WeakReference<Object> weakReference = this.mTarget;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // android.animation.ValueAnimator
    public void initAnimation() {
        if (this.mInitialized) {
            return;
        }
        Object target = getTarget();
        if (target != null) {
            int length = this.mValues.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.mValues[i2].setupSetterAndGetter(target);
            }
        }
        super.initAnimation();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isInitialized() {
        return this.mInitialized;
    }

    public void setAutoCancel(boolean z2) {
        this.mAutoCancel = z2;
    }

    @Override // android.animation.ValueAnimator
    public void setFloatValues(float... fArr) {
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr != null && propertyValuesHolderArr.length != 0) {
            super.setFloatValues(fArr);
            return;
        }
        Property property = this.mProperty;
        if (property != null) {
            setValues(PropertyValuesHolder.ofFloat((Property<?, Float>) property, fArr));
        } else {
            setValues(PropertyValuesHolder.ofFloat(this.mPropertyName, fArr));
        }
    }

    @Override // android.animation.ValueAnimator
    public void setIntValues(int... iArr) {
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr != null && propertyValuesHolderArr.length != 0) {
            super.setIntValues(iArr);
            return;
        }
        Property property = this.mProperty;
        if (property != null) {
            setValues(PropertyValuesHolder.ofInt((Property<?, Integer>) property, iArr));
        } else {
            setValues(PropertyValuesHolder.ofInt(this.mPropertyName, iArr));
        }
    }

    @Override // android.animation.ValueAnimator
    public void setObjectValues(Object... objArr) {
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr != null && propertyValuesHolderArr.length != 0) {
            super.setObjectValues(objArr);
            return;
        }
        Property property = this.mProperty;
        if (property != null) {
            setValues(PropertyValuesHolder.ofObject(property, (TypeEvaluator) null, objArr));
        } else {
            setValues(PropertyValuesHolder.ofObject(this.mPropertyName, (TypeEvaluator) null, objArr));
        }
    }

    public void setProperty(Property property) {
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr != null) {
            PropertyValuesHolder propertyValuesHolder = propertyValuesHolderArr[0];
            String propertyName = propertyValuesHolder.getPropertyName();
            propertyValuesHolder.setProperty(property);
            this.mValuesMap.remove(propertyName);
            this.mValuesMap.put(this.mPropertyName, propertyValuesHolder);
        }
        if (this.mProperty != null) {
            this.mPropertyName = property.getName();
        }
        this.mProperty = property;
        this.mInitialized = false;
    }

    public void setPropertyName(String str) {
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr != null) {
            PropertyValuesHolder propertyValuesHolder = propertyValuesHolderArr[0];
            String propertyName = propertyValuesHolder.getPropertyName();
            propertyValuesHolder.setPropertyName(str);
            this.mValuesMap.remove(propertyName);
            this.mValuesMap.put(str, propertyValuesHolder);
        }
        this.mPropertyName = str;
        this.mInitialized = false;
    }

    @Override // android.animation.Animator
    public void setTarget(Object obj) {
        if (getTarget() != obj) {
            if (isStarted()) {
                cancel();
            }
            this.mTarget = obj == null ? null : new WeakReference<>(obj);
            this.mInitialized = false;
        }
    }

    @Override // android.animation.Animator
    public void setupEndValues() {
        initAnimation();
        Object target = getTarget();
        if (target != null) {
            int length = this.mValues.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.mValues[i2].setupEndValue(target);
            }
        }
    }

    @Override // android.animation.Animator
    public void setupStartValues() {
        initAnimation();
        Object target = getTarget();
        if (target != null) {
            int length = this.mValues.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.mValues[i2].setupStartValue(target);
            }
        }
    }

    public boolean shouldAutoCancel(AnimationHandler.AnimationFrameCallback animationFrameCallback) {
        if (animationFrameCallback != null && (animationFrameCallback instanceof ObjectAnimator)) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animationFrameCallback;
            if (objectAnimator.mAutoCancel && hasSameTargetAndProperties(objectAnimator)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void start() {
        AnimationHandler.getInstance().autoCancelBasedOn(this);
        super.start();
    }

    @Override // android.animation.ValueAnimator
    public String toString() {
        String string = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + getTarget();
        if (this.mValues != null) {
            for (int i2 = 0; i2 < this.mValues.length; i2++) {
                StringBuilder sbU = c.u(string, "\n    ");
                sbU.append(this.mValues[i2].toString());
                string = sbU.toString();
            }
        }
        return string;
    }

    private ObjectAnimator(Object obj, String str) {
        setTarget(obj);
        setPropertyName(str);
    }

    public static <T> ObjectAnimator ofArgb(T t2, Property<T, Integer> property, int... iArr) {
        ObjectAnimator objectAnimatorOfInt = ofInt(t2, property, iArr);
        objectAnimatorOfInt.setEvaluator(ArgbEvaluator.getInstance());
        return objectAnimatorOfInt;
    }

    public static ObjectAnimator ofFloat(Object obj, String str, String str2, Path path) {
        PathKeyframes pathKeyframesOfPath = KeyframeSet.ofPath(path);
        return ofPropertyValuesHolder(obj, PropertyValuesHolder.ofKeyframes(str, pathKeyframesOfPath.createXFloatKeyframes()), PropertyValuesHolder.ofKeyframes(str2, pathKeyframesOfPath.createYFloatKeyframes()));
    }

    public static ObjectAnimator ofInt(Object obj, String str, String str2, Path path) {
        PathKeyframes pathKeyframesOfPath = KeyframeSet.ofPath(path);
        return ofPropertyValuesHolder(obj, PropertyValuesHolder.ofKeyframes(str, pathKeyframesOfPath.createXIntKeyframes()), PropertyValuesHolder.ofKeyframes(str2, pathKeyframesOfPath.createYIntKeyframes()));
    }

    public static ObjectAnimator ofMultiFloat(Object obj, String str, Path path) {
        return ofPropertyValuesHolder(obj, PropertyValuesHolder.ofMultiFloat(str, path));
    }

    public static ObjectAnimator ofMultiInt(Object obj, String str, Path path) {
        return ofPropertyValuesHolder(obj, PropertyValuesHolder.ofMultiInt(str, path));
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ObjectAnimator setDuration(long j2) {
        super.setDuration(j2);
        return this;
    }

    public static ObjectAnimator ofObject(Object obj, String str, TypeConverter<PointF, ?> typeConverter, Path path) {
        return ofPropertyValuesHolder(obj, PropertyValuesHolder.ofObject(str, typeConverter, path));
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    /* JADX INFO: renamed from: clone */
    public ObjectAnimator mo0clone() {
        return (ObjectAnimator) super.mo0clone();
    }

    @SafeVarargs
    public static <T> ObjectAnimator ofMultiFloat(Object obj, String str, TypeConverter<T, float[]> typeConverter, TypeEvaluator<T> typeEvaluator, T... tArr) {
        return ofPropertyValuesHolder(obj, PropertyValuesHolder.ofMultiFloat(str, typeConverter, typeEvaluator, tArr));
    }

    @SafeVarargs
    public static <T> ObjectAnimator ofMultiInt(Object obj, String str, TypeConverter<T, int[]> typeConverter, TypeEvaluator<T> typeEvaluator, T... tArr) {
        return ofPropertyValuesHolder(obj, PropertyValuesHolder.ofMultiInt(str, typeConverter, typeEvaluator, tArr));
    }

    @SafeVarargs
    public static <T, V> ObjectAnimator ofObject(T t2, Property<T, V> property, TypeEvaluator<V> typeEvaluator, V... vArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(t2, property);
        objectAnimator.setObjectValues(vArr);
        objectAnimator.setEvaluator(typeEvaluator);
        return objectAnimator;
    }

    private <T> ObjectAnimator(T t2, Property<T, ?> property) {
        setTarget(t2);
        setProperty(property);
    }

    public static <T> ObjectAnimator ofFloat(T t2, Property<T, Float> property, float... fArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(t2, property);
        objectAnimator.setFloatValues(fArr);
        return objectAnimator;
    }

    public static <T> ObjectAnimator ofInt(T t2, Property<T, Integer> property, int... iArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(t2, property);
        objectAnimator.setIntValues(iArr);
        return objectAnimator;
    }

    @SafeVarargs
    public static <T, V, P> ObjectAnimator ofObject(T t2, Property<T, P> property, TypeConverter<V, P> typeConverter, TypeEvaluator<V> typeEvaluator, V... vArr) {
        return ofPropertyValuesHolder(t2, PropertyValuesHolder.ofObject(property, typeConverter, typeEvaluator, vArr));
    }

    public static <T> ObjectAnimator ofFloat(T t2, Property<T, Float> property, Property<T, Float> property2, Path path) {
        PathKeyframes pathKeyframesOfPath = KeyframeSet.ofPath(path);
        return ofPropertyValuesHolder(t2, PropertyValuesHolder.ofKeyframes(property, pathKeyframesOfPath.createXFloatKeyframes()), PropertyValuesHolder.ofKeyframes(property2, pathKeyframesOfPath.createYFloatKeyframes()));
    }

    public static <T> ObjectAnimator ofInt(T t2, Property<T, Integer> property, Property<T, Integer> property2, Path path) {
        PathKeyframes pathKeyframesOfPath = KeyframeSet.ofPath(path);
        return ofPropertyValuesHolder(t2, PropertyValuesHolder.ofKeyframes(property, pathKeyframesOfPath.createXIntKeyframes()), PropertyValuesHolder.ofKeyframes(property2, pathKeyframesOfPath.createYIntKeyframes()));
    }

    public static <T, V> ObjectAnimator ofObject(T t2, Property<T, V> property, TypeConverter<PointF, V> typeConverter, Path path) {
        return ofPropertyValuesHolder(t2, PropertyValuesHolder.ofObject(property, typeConverter, path));
    }
}
