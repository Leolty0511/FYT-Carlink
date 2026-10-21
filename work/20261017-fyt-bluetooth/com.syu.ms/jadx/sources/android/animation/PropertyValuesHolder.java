package android.animation;

import android.util.FloatProperty;
import android.util.IntProperty;
import android.util.Log;
import android.util.Property;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class PropertyValuesHolder implements Cloneable {
    private static Class[] DOUBLE_VARIANTS;
    private static Class[] FLOAT_VARIANTS;
    private static Class[] INTEGER_VARIANTS;
    private static final HashMap<Class, HashMap<String, Method>> sGetterPropertyMap;
    private static final HashMap<Class, HashMap<String, Method>> sSetterPropertyMap;
    private Object mAnimatedValue;
    private TypeEvaluator mEvaluator;
    private Method mGetter;
    public KeyframeSet mKeyframeSet;
    public Property mProperty;
    public final ReentrantReadWriteLock mPropertyMapLock;
    public String mPropertyName;
    public Method mSetter;
    public final Object[] mTmpValueArray;
    public Class mValueType;
    private static final TypeEvaluator sIntEvaluator = new IntEvaluator();
    private static final TypeEvaluator sFloatEvaluator = new FloatEvaluator();

    static {
        Class cls = Float.TYPE;
        Class cls2 = Double.TYPE;
        Class cls3 = Integer.TYPE;
        FLOAT_VARIANTS = new Class[]{cls, Float.class, cls2, cls3, Double.class, Integer.class};
        INTEGER_VARIANTS = new Class[]{cls3, Integer.class, cls, cls2, Float.class, Double.class};
        DOUBLE_VARIANTS = new Class[]{cls2, Double.class, cls, cls3, Float.class, Integer.class};
        sSetterPropertyMap = new HashMap<>();
        sGetterPropertyMap = new HashMap<>();
    }

    public static String getMethodName(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return str;
        }
        return str + Character.toUpperCase(str2.charAt(0)) + str2.substring(1);
    }

    private Method getPropertyFunction(Class cls, String str, Class cls2) {
        Class<?>[] clsArr;
        String methodName = getMethodName(str, this.mPropertyName);
        Method method = null;
        if (cls2 == null) {
            try {
                method = cls.getMethod(methodName, null);
            } catch (NoSuchMethodException unused) {
            }
        } else {
            Class<?>[] clsArr2 = new Class[1];
            if (this.mValueType.equals(Float.class)) {
                clsArr = FLOAT_VARIANTS;
            } else if (this.mValueType.equals(Integer.class)) {
                clsArr = INTEGER_VARIANTS;
            } else {
                clsArr = this.mValueType.equals(Double.class) ? DOUBLE_VARIANTS : new Class[]{this.mValueType};
            }
            for (Class<?> cls3 : clsArr) {
                clsArr2[0] = cls3;
                try {
                    method = cls.getMethod(methodName, clsArr2);
                    this.mValueType = cls3;
                    return method;
                } catch (NoSuchMethodException unused2) {
                }
            }
        }
        if (method == null) {
            Log.w("PropertyValuesHolder", "Method " + getMethodName(str, this.mPropertyName) + "() with type " + this.mValueType + " not found on target class " + cls);
        }
        return method;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nCallFloatMethod(Object obj, int i2, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nCallIntMethod(Object obj, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nGetFloatMethod(Class cls, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nGetIntMethod(Class cls, String str);

    public static PropertyValuesHolder ofFloat(String str, float... fArr) {
        return new FloatPropertyValuesHolder(str, fArr);
    }

    public static PropertyValuesHolder ofInt(String str, int... iArr) {
        return new IntPropertyValuesHolder(str, iArr);
    }

    public static PropertyValuesHolder ofKeyframe(String str, Keyframe... keyframeArr) {
        KeyframeSet keyframeSetOfKeyframe = KeyframeSet.ofKeyframe(keyframeArr);
        if (keyframeSetOfKeyframe instanceof IntKeyframeSet) {
            return new IntPropertyValuesHolder(str, (IntKeyframeSet) keyframeSetOfKeyframe);
        }
        if (keyframeSetOfKeyframe instanceof FloatKeyframeSet) {
            return new FloatPropertyValuesHolder(str, (FloatKeyframeSet) keyframeSetOfKeyframe);
        }
        PropertyValuesHolder propertyValuesHolder = new PropertyValuesHolder(str);
        propertyValuesHolder.mKeyframeSet = keyframeSetOfKeyframe;
        propertyValuesHolder.mValueType = keyframeArr[0].getType();
        return propertyValuesHolder;
    }

    public static PropertyValuesHolder ofObject(String str, TypeEvaluator typeEvaluator, Object... objArr) {
        PropertyValuesHolder propertyValuesHolder = new PropertyValuesHolder(str);
        propertyValuesHolder.setObjectValues(objArr);
        propertyValuesHolder.setEvaluator(typeEvaluator);
        return propertyValuesHolder;
    }

    private void setupGetter(Class cls) {
        this.mGetter = setupSetterOrGetter(cls, sGetterPropertyMap, "get", null);
    }

    private Method setupSetterOrGetter(Class cls, HashMap<Class, HashMap<String, Method>> map, String str, Class cls2) {
        try {
            this.mPropertyMapLock.writeLock().lock();
            HashMap<String, Method> map2 = map.get(cls);
            Method propertyFunction = map2 != null ? map2.get(this.mPropertyName) : null;
            if (propertyFunction == null) {
                propertyFunction = getPropertyFunction(cls, str, cls2);
                if (map2 == null) {
                    map2 = new HashMap<>();
                    map.put(cls, map2);
                }
                map2.put(this.mPropertyName, propertyFunction);
            }
            return propertyFunction;
        } finally {
            this.mPropertyMapLock.writeLock().unlock();
        }
    }

    private void setupValue(Object obj, Keyframe keyframe) {
        Property property = this.mProperty;
        if (property != null) {
            keyframe.setValue(property.get(obj));
        }
        try {
            if (this.mGetter == null) {
                setupGetter(obj.getClass());
                if (this.mGetter == null) {
                    return;
                }
            }
            keyframe.setValue(this.mGetter.invoke(obj, new Object[0]));
        } catch (IllegalAccessException e2) {
            Log.e("PropertyValuesHolder", e2.toString());
        } catch (InvocationTargetException e3) {
            Log.e("PropertyValuesHolder", e3.toString());
        }
    }

    public void calculateValue(float f2) {
        this.mAnimatedValue = this.mKeyframeSet.getValue(f2);
    }

    public Object getAnimatedValue() {
        return this.mAnimatedValue;
    }

    public String getPropertyName() {
        return this.mPropertyName;
    }

    public void init() {
        TypeEvaluator typeEvaluator;
        if (this.mEvaluator == null) {
            Class cls = this.mValueType;
            if (cls == Integer.class) {
                typeEvaluator = sIntEvaluator;
            } else {
                typeEvaluator = cls == Float.class ? sFloatEvaluator : null;
            }
            this.mEvaluator = typeEvaluator;
        }
        TypeEvaluator typeEvaluator2 = this.mEvaluator;
        if (typeEvaluator2 != null) {
            this.mKeyframeSet.setEvaluator(typeEvaluator2);
        }
    }

    public void setAnimatedValue(Object obj) {
        Property property = this.mProperty;
        if (property != null) {
            property.set(obj, getAnimatedValue());
        }
        if (this.mSetter != null) {
            try {
                this.mTmpValueArray[0] = getAnimatedValue();
                this.mSetter.invoke(obj, this.mTmpValueArray);
            } catch (IllegalAccessException e2) {
                Log.e("PropertyValuesHolder", e2.toString());
            } catch (InvocationTargetException e3) {
                Log.e("PropertyValuesHolder", e3.toString());
            }
        }
    }

    public void setEvaluator(TypeEvaluator typeEvaluator) {
        this.mEvaluator = typeEvaluator;
        this.mKeyframeSet.setEvaluator(typeEvaluator);
    }

    public void setFloatValues(float... fArr) {
        this.mValueType = Float.TYPE;
        this.mKeyframeSet = KeyframeSet.ofFloat(fArr);
    }

    public void setIntValues(int... iArr) {
        this.mValueType = Integer.TYPE;
        this.mKeyframeSet = KeyframeSet.ofInt(iArr);
    }

    public void setKeyframes(Keyframe... keyframeArr) {
        int length = keyframeArr.length;
        Keyframe[] keyframeArr2 = new Keyframe[Math.max(length, 2)];
        this.mValueType = keyframeArr[0].getType();
        for (int i2 = 0; i2 < length; i2++) {
            keyframeArr2[i2] = keyframeArr[i2];
        }
        this.mKeyframeSet = new KeyframeSet(keyframeArr2);
    }

    public void setObjectValues(Object... objArr) {
        this.mValueType = objArr[0].getClass();
        this.mKeyframeSet = KeyframeSet.ofObject(objArr);
    }

    public void setProperty(Property property) {
        this.mProperty = property;
    }

    public void setPropertyName(String str) {
        this.mPropertyName = str;
    }

    public void setupEndValue(Object obj) {
        ArrayList<Keyframe> arrayList = this.mKeyframeSet.mKeyframes;
        setupValue(obj, arrayList.get(arrayList.size() - 1));
    }

    public void setupSetter(Class cls) {
        this.mSetter = setupSetterOrGetter(cls, sSetterPropertyMap, "set", this.mValueType);
    }

    public void setupSetterAndGetter(Object obj) {
        Property property = this.mProperty;
        if (property != null) {
            try {
                property.get(obj);
                for (Keyframe keyframe : this.mKeyframeSet.mKeyframes) {
                    if (!keyframe.hasValue()) {
                        keyframe.setValue(this.mProperty.get(obj));
                    }
                }
                return;
            } catch (ClassCastException unused) {
                Log.w("PropertyValuesHolder", "No such property (" + this.mProperty.getName() + ") on target object " + obj + ". Trying reflection instead");
                this.mProperty = null;
            }
        }
        Class<?> cls = obj.getClass();
        if (this.mSetter == null) {
            setupSetter(cls);
        }
        for (Keyframe keyframe2 : this.mKeyframeSet.mKeyframes) {
            if (!keyframe2.hasValue()) {
                if (this.mGetter == null) {
                    setupGetter(cls);
                    if (this.mGetter == null) {
                        return;
                    }
                }
                try {
                    keyframe2.setValue(this.mGetter.invoke(obj, new Object[0]));
                } catch (IllegalAccessException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                } catch (InvocationTargetException e3) {
                    Log.e("PropertyValuesHolder", e3.toString());
                }
            }
        }
    }

    public void setupStartValue(Object obj) {
        setupValue(obj, this.mKeyframeSet.mKeyframes.get(0));
    }

    public String toString() {
        return this.mPropertyName + ": " + this.mKeyframeSet.toString();
    }

    public static class FloatPropertyValuesHolder extends PropertyValuesHolder {
        private static final HashMap<Class, HashMap<String, Integer>> sJNISetterPropertyMap = new HashMap<>();
        public float mFloatAnimatedValue;
        public FloatKeyframeSet mFloatKeyframeSet;
        private FloatProperty mFloatProperty;
        public int mJniSetter;

        public FloatPropertyValuesHolder(String str, FloatKeyframeSet floatKeyframeSet) {
            super(str);
            this.mValueType = Float.TYPE;
            this.mKeyframeSet = floatKeyframeSet;
            this.mFloatKeyframeSet = floatKeyframeSet;
        }

        @Override // android.animation.PropertyValuesHolder
        public void calculateValue(float f2) {
            this.mFloatAnimatedValue = this.mFloatKeyframeSet.getFloatValue(f2);
        }

        @Override // android.animation.PropertyValuesHolder
        public Object getAnimatedValue() {
            return Float.valueOf(this.mFloatAnimatedValue);
        }

        @Override // android.animation.PropertyValuesHolder
        public void setAnimatedValue(Object obj) {
            FloatProperty floatProperty = this.mFloatProperty;
            if (floatProperty != null) {
                floatProperty.setValue(obj, this.mFloatAnimatedValue);
                return;
            }
            Property property = this.mProperty;
            if (property != null) {
                property.set(obj, Float.valueOf(this.mFloatAnimatedValue));
                return;
            }
            int i2 = this.mJniSetter;
            if (i2 != 0) {
                PropertyValuesHolder.nCallFloatMethod(obj, i2, this.mFloatAnimatedValue);
                return;
            }
            if (this.mSetter != null) {
                try {
                    this.mTmpValueArray[0] = Float.valueOf(this.mFloatAnimatedValue);
                    this.mSetter.invoke(obj, this.mTmpValueArray);
                } catch (IllegalAccessException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                } catch (InvocationTargetException e3) {
                    Log.e("PropertyValuesHolder", e3.toString());
                }
            }
        }

        @Override // android.animation.PropertyValuesHolder
        public void setFloatValues(float... fArr) {
            super.setFloatValues(fArr);
            this.mFloatKeyframeSet = (FloatKeyframeSet) this.mKeyframeSet;
        }

        @Override // android.animation.PropertyValuesHolder
        public void setupSetter(Class cls) {
            Integer num;
            if (this.mProperty != null) {
                return;
            }
            try {
                this.mPropertyMapLock.writeLock().lock();
                HashMap<Class, HashMap<String, Integer>> map = sJNISetterPropertyMap;
                HashMap<String, Integer> map2 = map.get(cls);
                if (map2 != null && (num = map2.get(this.mPropertyName)) != null) {
                    this.mJniSetter = num.intValue();
                }
                if (this.mJniSetter == 0) {
                    int iNGetFloatMethod = PropertyValuesHolder.nGetFloatMethod(cls, PropertyValuesHolder.getMethodName("set", this.mPropertyName));
                    this.mJniSetter = iNGetFloatMethod;
                    if (iNGetFloatMethod != 0) {
                        if (map2 == null) {
                            map2 = new HashMap<>();
                            map.put(cls, map2);
                        }
                        map2.put(this.mPropertyName, Integer.valueOf(this.mJniSetter));
                    }
                }
            } catch (NoSuchMethodError unused) {
            } catch (Throwable th) {
                this.mPropertyMapLock.writeLock().unlock();
                throw th;
            }
            this.mPropertyMapLock.writeLock().unlock();
            if (this.mJniSetter == 0) {
                super.setupSetter(cls);
            }
        }

        @Override // android.animation.PropertyValuesHolder
        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public FloatPropertyValuesHolder mo4clone() {
            FloatPropertyValuesHolder floatPropertyValuesHolder = (FloatPropertyValuesHolder) super.mo4clone();
            floatPropertyValuesHolder.mFloatKeyframeSet = (FloatKeyframeSet) floatPropertyValuesHolder.mKeyframeSet;
            return floatPropertyValuesHolder;
        }

        public FloatPropertyValuesHolder(Property property, FloatKeyframeSet floatKeyframeSet) {
            super(property);
            this.mValueType = Float.TYPE;
            this.mKeyframeSet = floatKeyframeSet;
            this.mFloatKeyframeSet = floatKeyframeSet;
            if (property instanceof FloatProperty) {
                this.mFloatProperty = (FloatProperty) this.mProperty;
            }
        }

        public FloatPropertyValuesHolder(String str, float... fArr) {
            super(str);
            setFloatValues(fArr);
        }

        public FloatPropertyValuesHolder(Property property, float... fArr) {
            super(property);
            setFloatValues(fArr);
            if (property instanceof FloatProperty) {
                this.mFloatProperty = (FloatProperty) this.mProperty;
            }
        }
    }

    public static class IntPropertyValuesHolder extends PropertyValuesHolder {
        private static final HashMap<Class, HashMap<String, Integer>> sJNISetterPropertyMap = new HashMap<>();
        public int mIntAnimatedValue;
        public IntKeyframeSet mIntKeyframeSet;
        private IntProperty mIntProperty;
        public int mJniSetter;

        public IntPropertyValuesHolder(String str, IntKeyframeSet intKeyframeSet) {
            super(str);
            this.mValueType = Integer.TYPE;
            this.mKeyframeSet = intKeyframeSet;
            this.mIntKeyframeSet = intKeyframeSet;
        }

        @Override // android.animation.PropertyValuesHolder
        public void calculateValue(float f2) {
            this.mIntAnimatedValue = this.mIntKeyframeSet.getIntValue(f2);
        }

        @Override // android.animation.PropertyValuesHolder
        public Object getAnimatedValue() {
            return Integer.valueOf(this.mIntAnimatedValue);
        }

        @Override // android.animation.PropertyValuesHolder
        public void setAnimatedValue(Object obj) {
            IntProperty intProperty = this.mIntProperty;
            if (intProperty != null) {
                intProperty.setValue(obj, this.mIntAnimatedValue);
                return;
            }
            Property property = this.mProperty;
            if (property != null) {
                property.set(obj, Integer.valueOf(this.mIntAnimatedValue));
                return;
            }
            int i2 = this.mJniSetter;
            if (i2 != 0) {
                PropertyValuesHolder.nCallIntMethod(obj, i2, this.mIntAnimatedValue);
                return;
            }
            if (this.mSetter != null) {
                try {
                    this.mTmpValueArray[0] = Integer.valueOf(this.mIntAnimatedValue);
                    this.mSetter.invoke(obj, this.mTmpValueArray);
                } catch (IllegalAccessException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                } catch (InvocationTargetException e3) {
                    Log.e("PropertyValuesHolder", e3.toString());
                }
            }
        }

        @Override // android.animation.PropertyValuesHolder
        public void setIntValues(int... iArr) {
            super.setIntValues(iArr);
            this.mIntKeyframeSet = (IntKeyframeSet) this.mKeyframeSet;
        }

        @Override // android.animation.PropertyValuesHolder
        public void setupSetter(Class cls) {
            Integer num;
            if (this.mProperty != null) {
                return;
            }
            try {
                this.mPropertyMapLock.writeLock().lock();
                HashMap<Class, HashMap<String, Integer>> map = sJNISetterPropertyMap;
                HashMap<String, Integer> map2 = map.get(cls);
                if (map2 != null && (num = map2.get(this.mPropertyName)) != null) {
                    this.mJniSetter = num.intValue();
                }
                if (this.mJniSetter == 0) {
                    int iNGetIntMethod = PropertyValuesHolder.nGetIntMethod(cls, PropertyValuesHolder.getMethodName("set", this.mPropertyName));
                    this.mJniSetter = iNGetIntMethod;
                    if (iNGetIntMethod != 0) {
                        if (map2 == null) {
                            map2 = new HashMap<>();
                            map.put(cls, map2);
                        }
                        map2.put(this.mPropertyName, Integer.valueOf(this.mJniSetter));
                    }
                }
            } catch (NoSuchMethodError unused) {
            } catch (Throwable th) {
                this.mPropertyMapLock.writeLock().unlock();
                throw th;
            }
            this.mPropertyMapLock.writeLock().unlock();
            if (this.mJniSetter == 0) {
                super.setupSetter(cls);
            }
        }

        @Override // android.animation.PropertyValuesHolder
        /* JADX INFO: renamed from: clone */
        public IntPropertyValuesHolder mo4clone() {
            IntPropertyValuesHolder intPropertyValuesHolder = (IntPropertyValuesHolder) super.mo4clone();
            intPropertyValuesHolder.mIntKeyframeSet = (IntKeyframeSet) intPropertyValuesHolder.mKeyframeSet;
            return intPropertyValuesHolder;
        }

        public IntPropertyValuesHolder(Property property, IntKeyframeSet intKeyframeSet) {
            super(property);
            this.mValueType = Integer.TYPE;
            this.mKeyframeSet = intKeyframeSet;
            this.mIntKeyframeSet = intKeyframeSet;
            if (property instanceof IntProperty) {
                this.mIntProperty = (IntProperty) this.mProperty;
            }
        }

        public IntPropertyValuesHolder(String str, int... iArr) {
            super(str);
            setIntValues(iArr);
        }

        public IntPropertyValuesHolder(Property property, int... iArr) {
            super(property);
            setIntValues(iArr);
            if (property instanceof IntProperty) {
                this.mIntProperty = (IntProperty) this.mProperty;
            }
        }
    }

    public static PropertyValuesHolder ofFloat(Property<?, Float> property, float... fArr) {
        return new FloatPropertyValuesHolder(property, fArr);
    }

    public static PropertyValuesHolder ofInt(Property<?, Integer> property, int... iArr) {
        return new IntPropertyValuesHolder(property, iArr);
    }

    @Override // 
    /* JADX INFO: renamed from: clone */
    public PropertyValuesHolder mo4clone() {
        try {
            PropertyValuesHolder propertyValuesHolder = (PropertyValuesHolder) super.clone();
            propertyValuesHolder.mPropertyName = this.mPropertyName;
            propertyValuesHolder.mProperty = this.mProperty;
            propertyValuesHolder.mKeyframeSet = this.mKeyframeSet.mo2clone();
            propertyValuesHolder.mEvaluator = this.mEvaluator;
            return propertyValuesHolder;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    private PropertyValuesHolder(String str) {
        this.mSetter = null;
        this.mGetter = null;
        this.mKeyframeSet = null;
        this.mPropertyMapLock = new ReentrantReadWriteLock();
        this.mTmpValueArray = new Object[1];
        this.mPropertyName = str;
    }

    public static <V> PropertyValuesHolder ofObject(Property property, TypeEvaluator<V> typeEvaluator, V... vArr) {
        PropertyValuesHolder propertyValuesHolder = new PropertyValuesHolder(property);
        propertyValuesHolder.setObjectValues(vArr);
        propertyValuesHolder.setEvaluator(typeEvaluator);
        return propertyValuesHolder;
    }

    public static PropertyValuesHolder ofKeyframe(Property property, Keyframe... keyframeArr) {
        KeyframeSet keyframeSetOfKeyframe = KeyframeSet.ofKeyframe(keyframeArr);
        if (keyframeSetOfKeyframe instanceof IntKeyframeSet) {
            return new IntPropertyValuesHolder(property, (IntKeyframeSet) keyframeSetOfKeyframe);
        }
        if (keyframeSetOfKeyframe instanceof FloatKeyframeSet) {
            return new FloatPropertyValuesHolder(property, (FloatKeyframeSet) keyframeSetOfKeyframe);
        }
        PropertyValuesHolder propertyValuesHolder = new PropertyValuesHolder(property);
        propertyValuesHolder.mKeyframeSet = keyframeSetOfKeyframe;
        propertyValuesHolder.mValueType = keyframeArr[0].getType();
        return propertyValuesHolder;
    }

    private PropertyValuesHolder(Property property) {
        this.mSetter = null;
        this.mGetter = null;
        this.mKeyframeSet = null;
        this.mPropertyMapLock = new ReentrantReadWriteLock();
        this.mTmpValueArray = new Object[1];
        this.mProperty = property;
        if (property != null) {
            this.mPropertyName = property.getName();
        }
    }
}
