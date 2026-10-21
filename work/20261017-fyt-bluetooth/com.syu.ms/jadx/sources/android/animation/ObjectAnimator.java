package android.animation;

import android.net.ProxyProperties;
import android.util.Property;

/* JADX INFO: loaded from: classes.dex */
public final class ObjectAnimator extends ValueAnimator {
    private static final boolean DBG = false;
    private boolean mAutoCancel = false;
    private Property mProperty;
    private String mPropertyName;
    private Object mTarget;

    public ObjectAnimator() {
    }

    private boolean hasSameTargetAndProperties(Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            PropertyValuesHolder[] values = objectAnimator.getValues();
            if (objectAnimator.getTarget() == this.mTarget && this.mValues.length == values.length) {
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

    public static ObjectAnimator ofObject(Object obj, String str, TypeEvaluator typeEvaluator, Object... objArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(obj, str);
        objectAnimator.setObjectValues(objArr);
        objectAnimator.setEvaluator(typeEvaluator);
        return objectAnimator;
    }

    public static ObjectAnimator ofPropertyValuesHolder(Object obj, PropertyValuesHolder... propertyValuesHolderArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.mTarget = obj;
        objectAnimator.setValues(propertyValuesHolderArr);
        return objectAnimator;
    }

    @Override // android.animation.ValueAnimator
    public void animateValue(float f2) {
        super.animateValue(f2);
        int length = this.mValues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mValues[i2].setAnimatedValue(this.mTarget);
        }
    }

    @Override // android.animation.ValueAnimator
    public String getNameForTrace() {
        return "animator:" + getPropertyName();
    }

    public String getPropertyName() {
        String str = this.mPropertyName;
        String str2 = null;
        if (str != null) {
            return str;
        }
        Property property = this.mProperty;
        if (property != null) {
            return property.getName();
        }
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr != null && propertyValuesHolderArr.length > 0) {
            for (int i2 = 0; i2 < this.mValues.length; i2++) {
                str2 = (i2 == 0 ? ProxyProperties.LOCAL_EXCL_LIST : str2 + ",") + this.mValues[i2].getPropertyName();
            }
        }
        return str2;
    }

    public Object getTarget() {
        return this.mTarget;
    }

    @Override // android.animation.ValueAnimator
    public void initAnimation() {
        if (this.mInitialized) {
            return;
        }
        int length = this.mValues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mValues[i2].setupSetterAndGetter(this.mTarget);
        }
        super.initAnimation();
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
        Object obj2 = this.mTarget;
        if (obj2 != obj) {
            this.mTarget = obj;
            if (obj2 == null || obj == null || obj2.getClass() != obj.getClass()) {
                this.mInitialized = false;
            }
        }
    }

    @Override // android.animation.Animator
    public void setupEndValues() {
        initAnimation();
        int length = this.mValues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mValues[i2].setupEndValue(this.mTarget);
        }
    }

    @Override // android.animation.Animator
    public void setupStartValues() {
        initAnimation();
        int length = this.mValues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mValues[i2].setupStartValue(this.mTarget);
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void start() {
        ValueAnimator.AnimationHandler animationHandler = ValueAnimator.sAnimationHandler.get();
        if (animationHandler != null) {
            for (int size = animationHandler.mAnimations.size() - 1; size >= 0; size--) {
                if (animationHandler.mAnimations.get(size) instanceof ObjectAnimator) {
                    ObjectAnimator objectAnimator = (ObjectAnimator) animationHandler.mAnimations.get(size);
                    if (objectAnimator.mAutoCancel && hasSameTargetAndProperties(objectAnimator)) {
                        objectAnimator.cancel();
                    }
                }
            }
            for (int size2 = animationHandler.mPendingAnimations.size() - 1; size2 >= 0; size2--) {
                if (animationHandler.mPendingAnimations.get(size2) instanceof ObjectAnimator) {
                    ObjectAnimator objectAnimator2 = (ObjectAnimator) animationHandler.mPendingAnimations.get(size2);
                    if (objectAnimator2.mAutoCancel && hasSameTargetAndProperties(objectAnimator2)) {
                        objectAnimator2.cancel();
                    }
                }
            }
            for (int size3 = animationHandler.mDelayedAnims.size() - 1; size3 >= 0; size3--) {
                if (animationHandler.mDelayedAnims.get(size3) instanceof ObjectAnimator) {
                    ObjectAnimator objectAnimator3 = (ObjectAnimator) animationHandler.mDelayedAnims.get(size3);
                    if (objectAnimator3.mAutoCancel && hasSameTargetAndProperties(objectAnimator3)) {
                        objectAnimator3.cancel();
                    }
                }
            }
        }
        super.start();
    }

    @Override // android.animation.ValueAnimator
    public String toString() {
        String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.mTarget;
        if (this.mValues != null) {
            for (int i2 = 0; i2 < this.mValues.length; i2++) {
                str = str + "\n    " + this.mValues[i2].toString();
            }
        }
        return str;
    }

    private ObjectAnimator(Object obj, String str) {
        this.mTarget = obj;
        setPropertyName(str);
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

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ObjectAnimator setDuration(long j2) {
        super.setDuration(j2);
        return this;
    }

    public static <T, V> ObjectAnimator ofObject(T t2, Property<T, V> property, TypeEvaluator<V> typeEvaluator, V... vArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(t2, property);
        objectAnimator.setObjectValues(vArr);
        objectAnimator.setEvaluator(typeEvaluator);
        return objectAnimator;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    /* JADX INFO: renamed from: clone */
    public ObjectAnimator mo0clone() {
        return (ObjectAnimator) super.mo0clone();
    }

    private <T> ObjectAnimator(T t2, Property<T, ?> property) {
        this.mTarget = t2;
        setProperty(property);
    }
}
