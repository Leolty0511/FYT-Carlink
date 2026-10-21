package android.animation;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class IntKeyframeSet extends KeyframeSet implements Keyframes.IntKeyframes {
    public IntKeyframeSet(Keyframe.IntKeyframe... intKeyframeArr) {
        super(intKeyframeArr);
    }

    @Override // android.animation.Keyframes.IntKeyframes
    public int getIntValue(float f2) {
        if (f2 <= 0.0f) {
            Keyframe.IntKeyframe intKeyframe = (Keyframe.IntKeyframe) this.mKeyframes.get(0);
            Keyframe.IntKeyframe intKeyframe2 = (Keyframe.IntKeyframe) this.mKeyframes.get(1);
            int intValue = intKeyframe.getIntValue();
            int intValue2 = intKeyframe2.getIntValue();
            float fraction = intKeyframe.getFraction();
            float fraction2 = intKeyframe2.getFraction();
            TimeInterpolator interpolator = intKeyframe2.getInterpolator();
            if (interpolator != null) {
                f2 = interpolator.getInterpolation(f2);
            }
            float f3 = (f2 - fraction) / (fraction2 - fraction);
            TypeEvaluator typeEvaluator = this.mEvaluator;
            return typeEvaluator == null ? intValue + ((int) (f3 * (intValue2 - intValue))) : ((Number) typeEvaluator.evaluate(f3, Integer.valueOf(intValue), Integer.valueOf(intValue2))).intValue();
        }
        if (f2 >= 1.0f) {
            Keyframe.IntKeyframe intKeyframe3 = (Keyframe.IntKeyframe) this.mKeyframes.get(this.mNumKeyframes - 2);
            Keyframe.IntKeyframe intKeyframe4 = (Keyframe.IntKeyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
            int intValue3 = intKeyframe3.getIntValue();
            int intValue4 = intKeyframe4.getIntValue();
            float fraction3 = intKeyframe3.getFraction();
            float fraction4 = intKeyframe4.getFraction();
            TimeInterpolator interpolator2 = intKeyframe4.getInterpolator();
            if (interpolator2 != null) {
                f2 = interpolator2.getInterpolation(f2);
            }
            float f4 = (f2 - fraction3) / (fraction4 - fraction3);
            TypeEvaluator typeEvaluator2 = this.mEvaluator;
            return typeEvaluator2 == null ? intValue3 + ((int) (f4 * (intValue4 - intValue3))) : ((Number) typeEvaluator2.evaluate(f4, Integer.valueOf(intValue3), Integer.valueOf(intValue4))).intValue();
        }
        Keyframe.IntKeyframe intKeyframe5 = (Keyframe.IntKeyframe) this.mKeyframes.get(0);
        int i2 = 1;
        while (true) {
            int i3 = this.mNumKeyframes;
            if (i2 >= i3) {
                return ((Number) this.mKeyframes.get(i3 - 1).getValue()).intValue();
            }
            Keyframe.IntKeyframe intKeyframe6 = (Keyframe.IntKeyframe) this.mKeyframes.get(i2);
            if (f2 < intKeyframe6.getFraction()) {
                TimeInterpolator interpolator3 = intKeyframe6.getInterpolator();
                float fraction5 = (f2 - intKeyframe5.getFraction()) / (intKeyframe6.getFraction() - intKeyframe5.getFraction());
                int intValue5 = intKeyframe5.getIntValue();
                int intValue6 = intKeyframe6.getIntValue();
                if (interpolator3 != null) {
                    fraction5 = interpolator3.getInterpolation(fraction5);
                }
                TypeEvaluator typeEvaluator3 = this.mEvaluator;
                return typeEvaluator3 == null ? intValue5 + ((int) (fraction5 * (intValue6 - intValue5))) : ((Number) typeEvaluator3.evaluate(fraction5, Integer.valueOf(intValue5), Integer.valueOf(intValue6))).intValue();
            }
            i2++;
            intKeyframe5 = intKeyframe6;
        }
    }

    @Override // android.animation.KeyframeSet, android.animation.Keyframes
    public Class getType() {
        return Integer.class;
    }

    @Override // android.animation.KeyframeSet, android.animation.Keyframes
    public Object getValue(float f2) {
        return Integer.valueOf(getIntValue(f2));
    }

    @Override // android.animation.KeyframeSet
    /* JADX INFO: renamed from: clone */
    public IntKeyframeSet mo2clone() {
        List<Keyframe> list = this.mKeyframes;
        int size = list.size();
        Keyframe.IntKeyframe[] intKeyframeArr = new Keyframe.IntKeyframe[size];
        for (int i2 = 0; i2 < size; i2++) {
            intKeyframeArr[i2] = (Keyframe.IntKeyframe) list.get(i2).mo3clone();
        }
        return new IntKeyframeSet(intKeyframeArr);
    }
}
