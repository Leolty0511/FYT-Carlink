package android.animation;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class FloatKeyframeSet extends KeyframeSet {
    private float deltaValue;
    private boolean firstTime;
    private float firstValue;
    private float lastValue;

    public FloatKeyframeSet(Keyframe.FloatKeyframe... floatKeyframeArr) {
        super(floatKeyframeArr);
        this.firstTime = true;
    }

    public float getFloatValue(float f2) {
        int i2 = this.mNumKeyframes;
        if (i2 == 2) {
            if (this.firstTime) {
                this.firstTime = false;
                this.firstValue = ((Keyframe.FloatKeyframe) this.mKeyframes.get(0)).getFloatValue();
                float floatValue = ((Keyframe.FloatKeyframe) this.mKeyframes.get(1)).getFloatValue();
                this.lastValue = floatValue;
                this.deltaValue = floatValue - this.firstValue;
            }
            TimeInterpolator timeInterpolator = this.mInterpolator;
            if (timeInterpolator != null) {
                f2 = timeInterpolator.getInterpolation(f2);
            }
            TypeEvaluator typeEvaluator = this.mEvaluator;
            return typeEvaluator == null ? this.firstValue + (f2 * this.deltaValue) : ((Number) typeEvaluator.evaluate(f2, Float.valueOf(this.firstValue), Float.valueOf(this.lastValue))).floatValue();
        }
        if (f2 <= 0.0f) {
            Keyframe.FloatKeyframe floatKeyframe = (Keyframe.FloatKeyframe) this.mKeyframes.get(0);
            Keyframe.FloatKeyframe floatKeyframe2 = (Keyframe.FloatKeyframe) this.mKeyframes.get(1);
            float floatValue2 = floatKeyframe.getFloatValue();
            float floatValue3 = floatKeyframe2.getFloatValue();
            float fraction = floatKeyframe.getFraction();
            float fraction2 = floatKeyframe2.getFraction();
            TimeInterpolator interpolator = floatKeyframe2.getInterpolator();
            if (interpolator != null) {
                f2 = interpolator.getInterpolation(f2);
            }
            float f3 = (f2 - fraction) / (fraction2 - fraction);
            TypeEvaluator typeEvaluator2 = this.mEvaluator;
            return typeEvaluator2 == null ? floatValue2 + (f3 * (floatValue3 - floatValue2)) : ((Number) typeEvaluator2.evaluate(f3, Float.valueOf(floatValue2), Float.valueOf(floatValue3))).floatValue();
        }
        if (f2 >= 1.0f) {
            Keyframe.FloatKeyframe floatKeyframe3 = (Keyframe.FloatKeyframe) this.mKeyframes.get(i2 - 2);
            Keyframe.FloatKeyframe floatKeyframe4 = (Keyframe.FloatKeyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
            float floatValue4 = floatKeyframe3.getFloatValue();
            float floatValue5 = floatKeyframe4.getFloatValue();
            float fraction3 = floatKeyframe3.getFraction();
            float fraction4 = floatKeyframe4.getFraction();
            TimeInterpolator interpolator2 = floatKeyframe4.getInterpolator();
            if (interpolator2 != null) {
                f2 = interpolator2.getInterpolation(f2);
            }
            float f4 = (f2 - fraction3) / (fraction4 - fraction3);
            TypeEvaluator typeEvaluator3 = this.mEvaluator;
            return typeEvaluator3 == null ? floatValue4 + (f4 * (floatValue5 - floatValue4)) : ((Number) typeEvaluator3.evaluate(f4, Float.valueOf(floatValue4), Float.valueOf(floatValue5))).floatValue();
        }
        Keyframe.FloatKeyframe floatKeyframe5 = (Keyframe.FloatKeyframe) this.mKeyframes.get(0);
        int i3 = 1;
        while (true) {
            int i4 = this.mNumKeyframes;
            if (i3 >= i4) {
                return ((Number) this.mKeyframes.get(i4 - 1).getValue()).floatValue();
            }
            Keyframe.FloatKeyframe floatKeyframe6 = (Keyframe.FloatKeyframe) this.mKeyframes.get(i3);
            if (f2 < floatKeyframe6.getFraction()) {
                TimeInterpolator interpolator3 = floatKeyframe6.getInterpolator();
                if (interpolator3 != null) {
                    f2 = interpolator3.getInterpolation(f2);
                }
                float fraction5 = (f2 - floatKeyframe5.getFraction()) / (floatKeyframe6.getFraction() - floatKeyframe5.getFraction());
                float floatValue6 = floatKeyframe5.getFloatValue();
                float floatValue7 = floatKeyframe6.getFloatValue();
                TypeEvaluator typeEvaluator4 = this.mEvaluator;
                return typeEvaluator4 == null ? floatValue6 + (fraction5 * (floatValue7 - floatValue6)) : ((Number) typeEvaluator4.evaluate(fraction5, Float.valueOf(floatValue6), Float.valueOf(floatValue7))).floatValue();
            }
            i3++;
            floatKeyframe5 = floatKeyframe6;
        }
    }

    @Override // android.animation.KeyframeSet
    public Object getValue(float f2) {
        return Float.valueOf(getFloatValue(f2));
    }

    @Override // android.animation.KeyframeSet
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public FloatKeyframeSet mo2clone() {
        ArrayList<Keyframe> arrayList = this.mKeyframes;
        int size = arrayList.size();
        Keyframe.FloatKeyframe[] floatKeyframeArr = new Keyframe.FloatKeyframe[size];
        for (int i2 = 0; i2 < size; i2++) {
            floatKeyframeArr[i2] = (Keyframe.FloatKeyframe) arrayList.get(i2).mo3clone();
        }
        return new FloatKeyframeSet(floatKeyframeArr);
    }
}
