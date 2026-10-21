package android.animation;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class IntKeyframeSet extends KeyframeSet {
    private int deltaValue;
    private boolean firstTime;
    private int firstValue;
    private int lastValue;

    public IntKeyframeSet(Keyframe.IntKeyframe... intKeyframeArr) {
        super(intKeyframeArr);
        this.firstTime = true;
    }

    public int getIntValue(float f2) {
        int i2 = this.mNumKeyframes;
        if (i2 == 2) {
            if (this.firstTime) {
                this.firstTime = false;
                this.firstValue = ((Keyframe.IntKeyframe) this.mKeyframes.get(0)).getIntValue();
                int intValue = ((Keyframe.IntKeyframe) this.mKeyframes.get(1)).getIntValue();
                this.lastValue = intValue;
                this.deltaValue = intValue - this.firstValue;
            }
            TimeInterpolator timeInterpolator = this.mInterpolator;
            if (timeInterpolator != null) {
                f2 = timeInterpolator.getInterpolation(f2);
            }
            TypeEvaluator typeEvaluator = this.mEvaluator;
            return typeEvaluator == null ? this.firstValue + ((int) (f2 * this.deltaValue)) : ((Number) typeEvaluator.evaluate(f2, Integer.valueOf(this.firstValue), Integer.valueOf(this.lastValue))).intValue();
        }
        if (f2 <= 0.0f) {
            Keyframe.IntKeyframe intKeyframe = (Keyframe.IntKeyframe) this.mKeyframes.get(0);
            Keyframe.IntKeyframe intKeyframe2 = (Keyframe.IntKeyframe) this.mKeyframes.get(1);
            int intValue2 = intKeyframe.getIntValue();
            int intValue3 = intKeyframe2.getIntValue();
            float fraction = intKeyframe.getFraction();
            float fraction2 = intKeyframe2.getFraction();
            TimeInterpolator interpolator = intKeyframe2.getInterpolator();
            if (interpolator != null) {
                f2 = interpolator.getInterpolation(f2);
            }
            float f3 = (f2 - fraction) / (fraction2 - fraction);
            TypeEvaluator typeEvaluator2 = this.mEvaluator;
            return typeEvaluator2 == null ? intValue2 + ((int) (f3 * (intValue3 - intValue2))) : ((Number) typeEvaluator2.evaluate(f3, Integer.valueOf(intValue2), Integer.valueOf(intValue3))).intValue();
        }
        if (f2 >= 1.0f) {
            Keyframe.IntKeyframe intKeyframe3 = (Keyframe.IntKeyframe) this.mKeyframes.get(i2 - 2);
            Keyframe.IntKeyframe intKeyframe4 = (Keyframe.IntKeyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
            int intValue4 = intKeyframe3.getIntValue();
            int intValue5 = intKeyframe4.getIntValue();
            float fraction3 = intKeyframe3.getFraction();
            float fraction4 = intKeyframe4.getFraction();
            TimeInterpolator interpolator2 = intKeyframe4.getInterpolator();
            if (interpolator2 != null) {
                f2 = interpolator2.getInterpolation(f2);
            }
            float f4 = (f2 - fraction3) / (fraction4 - fraction3);
            TypeEvaluator typeEvaluator3 = this.mEvaluator;
            return typeEvaluator3 == null ? intValue4 + ((int) (f4 * (intValue5 - intValue4))) : ((Number) typeEvaluator3.evaluate(f4, Integer.valueOf(intValue4), Integer.valueOf(intValue5))).intValue();
        }
        Keyframe.IntKeyframe intKeyframe5 = (Keyframe.IntKeyframe) this.mKeyframes.get(0);
        int i3 = 1;
        while (true) {
            int i4 = this.mNumKeyframes;
            if (i3 >= i4) {
                return ((Number) this.mKeyframes.get(i4 - 1).getValue()).intValue();
            }
            Keyframe.IntKeyframe intKeyframe6 = (Keyframe.IntKeyframe) this.mKeyframes.get(i3);
            if (f2 < intKeyframe6.getFraction()) {
                TimeInterpolator interpolator3 = intKeyframe6.getInterpolator();
                if (interpolator3 != null) {
                    f2 = interpolator3.getInterpolation(f2);
                }
                float fraction5 = (f2 - intKeyframe5.getFraction()) / (intKeyframe6.getFraction() - intKeyframe5.getFraction());
                int intValue6 = intKeyframe5.getIntValue();
                int intValue7 = intKeyframe6.getIntValue();
                TypeEvaluator typeEvaluator4 = this.mEvaluator;
                return typeEvaluator4 == null ? intValue6 + ((int) (fraction5 * (intValue7 - intValue6))) : ((Number) typeEvaluator4.evaluate(fraction5, Integer.valueOf(intValue6), Integer.valueOf(intValue7))).intValue();
            }
            i3++;
            intKeyframe5 = intKeyframe6;
        }
    }

    @Override // android.animation.KeyframeSet
    public Object getValue(float f2) {
        return Integer.valueOf(getIntValue(f2));
    }

    @Override // android.animation.KeyframeSet
    /* JADX INFO: renamed from: clone */
    public IntKeyframeSet mo2clone() {
        ArrayList<Keyframe> arrayList = this.mKeyframes;
        int size = arrayList.size();
        Keyframe.IntKeyframe[] intKeyframeArr = new Keyframe.IntKeyframe[size];
        for (int i2 = 0; i2 < size; i2++) {
            intKeyframeArr[i2] = (Keyframe.IntKeyframe) arrayList.get(i2).mo3clone();
        }
        return new IntKeyframeSet(intKeyframeArr);
    }
}
