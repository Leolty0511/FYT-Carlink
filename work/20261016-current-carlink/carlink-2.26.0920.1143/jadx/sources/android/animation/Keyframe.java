package android.animation;

/* JADX INFO: loaded from: classes.dex */
public abstract class Keyframe implements Cloneable {
    float mFraction;
    boolean mHasValue;
    private TimeInterpolator mInterpolator = null;
    Class mValueType;
    boolean mValueWasSetOnStart;

    public static Keyframe ofFloat(float f2, float f3) {
        return new FloatKeyframe(f2, f3);
    }

    public static Keyframe ofInt(float f2, int i2) {
        return new IntKeyframe(f2, i2);
    }

    public static Keyframe ofObject(float f2, Object obj) {
        return new ObjectKeyframe(f2, obj);
    }

    @Override // 
    /* JADX INFO: renamed from: clone */
    public abstract Keyframe mo3clone();

    public float getFraction() {
        return this.mFraction;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    public Class getType() {
        return this.mValueType;
    }

    public abstract Object getValue();

    public boolean hasValue() {
        return this.mHasValue;
    }

    public void setFraction(float f2) {
        this.mFraction = f2;
    }

    public void setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
    }

    public abstract void setValue(Object obj);

    public void setValueWasSetOnStart(boolean z2) {
        this.mValueWasSetOnStart = z2;
    }

    public boolean valueWasSetOnStart() {
        return this.mValueWasSetOnStart;
    }

    public static class FloatKeyframe extends Keyframe {
        float mValue;

        public FloatKeyframe(float f2, float f3) {
            this.mFraction = f2;
            this.mValue = f3;
            this.mValueType = Float.TYPE;
            this.mHasValue = true;
        }

        public float getFloatValue() {
            return this.mValue;
        }

        @Override // android.animation.Keyframe
        public Object getValue() {
            return Float.valueOf(this.mValue);
        }

        @Override // android.animation.Keyframe
        public void setValue(Object obj) {
            if (obj == null || obj.getClass() != Float.class) {
                return;
            }
            this.mValue = ((Float) obj).floatValue();
            this.mHasValue = true;
        }

        @Override // android.animation.Keyframe
        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public FloatKeyframe mo3clone() {
            FloatKeyframe floatKeyframe;
            if (this.mHasValue) {
                floatKeyframe = new FloatKeyframe(getFraction(), this.mValue);
            } else {
                floatKeyframe = new FloatKeyframe(getFraction());
            }
            floatKeyframe.setInterpolator(getInterpolator());
            floatKeyframe.mValueWasSetOnStart = this.mValueWasSetOnStart;
            return floatKeyframe;
        }

        public FloatKeyframe(float f2) {
            this.mFraction = f2;
            this.mValueType = Float.TYPE;
        }
    }

    public static class IntKeyframe extends Keyframe {
        int mValue;

        public IntKeyframe(float f2, int i2) {
            this.mFraction = f2;
            this.mValue = i2;
            this.mValueType = Integer.TYPE;
            this.mHasValue = true;
        }

        public int getIntValue() {
            return this.mValue;
        }

        @Override // android.animation.Keyframe
        public Object getValue() {
            return Integer.valueOf(this.mValue);
        }

        @Override // android.animation.Keyframe
        public void setValue(Object obj) {
            if (obj == null || obj.getClass() != Integer.class) {
                return;
            }
            this.mValue = ((Integer) obj).intValue();
            this.mHasValue = true;
        }

        @Override // android.animation.Keyframe
        /* JADX INFO: renamed from: clone */
        public IntKeyframe mo3clone() {
            IntKeyframe intKeyframe;
            if (this.mHasValue) {
                intKeyframe = new IntKeyframe(getFraction(), this.mValue);
            } else {
                intKeyframe = new IntKeyframe(getFraction());
            }
            intKeyframe.setInterpolator(getInterpolator());
            intKeyframe.mValueWasSetOnStart = this.mValueWasSetOnStart;
            return intKeyframe;
        }

        public IntKeyframe(float f2) {
            this.mFraction = f2;
            this.mValueType = Integer.TYPE;
        }
    }

    public static class ObjectKeyframe extends Keyframe {
        Object mValue;

        public ObjectKeyframe(float f2, Object obj) {
            this.mFraction = f2;
            this.mValue = obj;
            boolean z2 = obj != null;
            this.mHasValue = z2;
            this.mValueType = z2 ? obj.getClass() : Object.class;
        }

        @Override // android.animation.Keyframe
        public Object getValue() {
            return this.mValue;
        }

        @Override // android.animation.Keyframe
        public void setValue(Object obj) {
            this.mValue = obj;
            this.mHasValue = obj != null;
        }

        @Override // android.animation.Keyframe
        /* JADX INFO: renamed from: clone */
        public ObjectKeyframe mo3clone() {
            ObjectKeyframe objectKeyframe = new ObjectKeyframe(getFraction(), hasValue() ? this.mValue : null);
            objectKeyframe.mValueWasSetOnStart = this.mValueWasSetOnStart;
            objectKeyframe.setInterpolator(getInterpolator());
            return objectKeyframe;
        }
    }

    public static Keyframe ofFloat(float f2) {
        return new FloatKeyframe(f2);
    }

    public static Keyframe ofInt(float f2) {
        return new IntKeyframe(f2);
    }

    public static Keyframe ofObject(float f2) {
        return new ObjectKeyframe(f2, null);
    }
}
