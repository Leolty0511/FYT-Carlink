package android.animation;

import android.accessibilityservice.c;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class FloatKeyframeSet extends KeyframeSet implements Keyframes.FloatKeyframes {
    public FloatKeyframeSet(Keyframe.FloatKeyframe... floatKeyframeArr) {
        super(floatKeyframeArr);
    }

    @Override // android.animation.Keyframes.FloatKeyframes
    public float getFloatValue(float f2) {
        if (f2 <= 0.0f) {
            Keyframe.FloatKeyframe floatKeyframe = (Keyframe.FloatKeyframe) this.mKeyframes.get(0);
            Keyframe.FloatKeyframe floatKeyframe2 = (Keyframe.FloatKeyframe) this.mKeyframes.get(1);
            float floatValue = floatKeyframe.getFloatValue();
            float floatValue2 = floatKeyframe2.getFloatValue();
            float fraction = floatKeyframe.getFraction();
            float fraction2 = floatKeyframe2.getFraction();
            TimeInterpolator interpolator = floatKeyframe2.getInterpolator();
            if (interpolator != null) {
                f2 = interpolator.getInterpolation(f2);
            }
            float f3 = (f2 - fraction) / (fraction2 - fraction);
            TypeEvaluator typeEvaluator = this.mEvaluator;
            return typeEvaluator == null ? c.a(floatValue2, floatValue, f3, floatValue) : ((Number) typeEvaluator.evaluate(f3, Float.valueOf(floatValue), Float.valueOf(floatValue2))).floatValue();
        }
        if (f2 >= 1.0f) {
            Keyframe.FloatKeyframe floatKeyframe3 = (Keyframe.FloatKeyframe) this.mKeyframes.get(this.mNumKeyframes - 2);
            Keyframe.FloatKeyframe floatKeyframe4 = (Keyframe.FloatKeyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
            float floatValue3 = floatKeyframe3.getFloatValue();
            float floatValue4 = floatKeyframe4.getFloatValue();
            float fraction3 = floatKeyframe3.getFraction();
            float fraction4 = floatKeyframe4.getFraction();
            TimeInterpolator interpolator2 = floatKeyframe4.getInterpolator();
            if (interpolator2 != null) {
                f2 = interpolator2.getInterpolation(f2);
            }
            float f4 = (f2 - fraction3) / (fraction4 - fraction3);
            TypeEvaluator typeEvaluator2 = this.mEvaluator;
            return typeEvaluator2 == null ? c.a(floatValue4, floatValue3, f4, floatValue3) : ((Number) typeEvaluator2.evaluate(f4, Float.valueOf(floatValue3), Float.valueOf(floatValue4))).floatValue();
        }
        Keyframe.FloatKeyframe floatKeyframe5 = (Keyframe.FloatKeyframe) this.mKeyframes.get(0);
        int i2 = 1;
        while (true) {
            int i3 = this.mNumKeyframes;
            if (i2 >= i3) {
                return ((Number) this.mKeyframes.get(i3 - 1).getValue()).floatValue();
            }
            Keyframe.FloatKeyframe floatKeyframe6 = (Keyframe.FloatKeyframe) this.mKeyframes.get(i2);
            if (f2 < floatKeyframe6.getFraction()) {
                TimeInterpolator interpolator3 = floatKeyframe6.getInterpolator();
                float fraction5 = (f2 - floatKeyframe5.getFraction()) / (floatKeyframe6.getFraction() - floatKeyframe5.getFraction());
                float floatValue5 = floatKeyframe5.getFloatValue();
                float floatValue6 = floatKeyframe6.getFloatValue();
                if (interpolator3 != null) {
                    fraction5 = interpolator3.getInterpolation(fraction5);
                }
                TypeEvaluator typeEvaluator3 = this.mEvaluator;
                return typeEvaluator3 == null ? c.a(floatValue6, floatValue5, fraction5, floatValue5) : ((Number) typeEvaluator3.evaluate(fraction5, Float.valueOf(floatValue5), Float.valueOf(floatValue6))).floatValue();
            }
            i2++;
            floatKeyframe5 = floatKeyframe6;
        }
    }

    @Override // android.animation.KeyframeSet, android.animation.Keyframes
    public Class getType() {
        return Float.class;
    }

    @Override // android.animation.KeyframeSet, android.animation.Keyframes
    public Object getValue(float f2) {
        return Float.valueOf(getFloatValue(f2));
    }

    @Override // android.animation.KeyframeSet
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public FloatKeyframeSet mo2clone() {
        List<Keyframe> list = this.mKeyframes;
        int size = list.size();
        Keyframe.FloatKeyframe[] floatKeyframeArr = new Keyframe.FloatKeyframe[size];
        for (int i2 = 0; i2 < size; i2++) {
            floatKeyframeArr[i2] = (Keyframe.FloatKeyframe) list.get(i2).mo3clone();
        }
        return new FloatKeyframeSet(floatKeyframeArr);
    }
}
