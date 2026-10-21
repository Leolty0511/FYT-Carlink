package android.animation;

import android.accessibilityservice.c;
import android.graphics.Path;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class KeyframeSet implements Keyframes {
    TypeEvaluator mEvaluator;
    Keyframe mFirstKeyframe;
    TimeInterpolator mInterpolator;
    List<Keyframe> mKeyframes;
    Keyframe mLastKeyframe;
    int mNumKeyframes;

    public KeyframeSet(Keyframe... keyframeArr) {
        this.mNumKeyframes = keyframeArr.length;
        this.mKeyframes = Arrays.asList(keyframeArr);
        this.mFirstKeyframe = keyframeArr[0];
        Keyframe keyframe = keyframeArr[this.mNumKeyframes - 1];
        this.mLastKeyframe = keyframe;
        this.mInterpolator = keyframe.getInterpolator();
    }

    public static KeyframeSet ofFloat(float... fArr) {
        int length = fArr.length;
        Keyframe.FloatKeyframe[] floatKeyframeArr = new Keyframe.FloatKeyframe[Math.max(length, 2)];
        boolean z2 = false;
        if (length == 1) {
            floatKeyframeArr[0] = (Keyframe.FloatKeyframe) Keyframe.ofFloat(0.0f);
            floatKeyframeArr[1] = (Keyframe.FloatKeyframe) Keyframe.ofFloat(1.0f, fArr[0]);
            if (Float.isNaN(fArr[0])) {
                z2 = true;
            }
        } else {
            floatKeyframeArr[0] = (Keyframe.FloatKeyframe) Keyframe.ofFloat(0.0f, fArr[0]);
            for (int i2 = 1; i2 < length; i2++) {
                floatKeyframeArr[i2] = (Keyframe.FloatKeyframe) Keyframe.ofFloat(i2 / (length - 1), fArr[i2]);
                if (Float.isNaN(fArr[i2])) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            Log.w("Animator", "Bad value (NaN) in float animator");
        }
        return new FloatKeyframeSet(floatKeyframeArr);
    }

    public static KeyframeSet ofInt(int... iArr) {
        int length = iArr.length;
        Keyframe.IntKeyframe[] intKeyframeArr = new Keyframe.IntKeyframe[Math.max(length, 2)];
        if (length == 1) {
            intKeyframeArr[0] = (Keyframe.IntKeyframe) Keyframe.ofInt(0.0f);
            intKeyframeArr[1] = (Keyframe.IntKeyframe) Keyframe.ofInt(1.0f, iArr[0]);
        } else {
            intKeyframeArr[0] = (Keyframe.IntKeyframe) Keyframe.ofInt(0.0f, iArr[0]);
            for (int i2 = 1; i2 < length; i2++) {
                intKeyframeArr[i2] = (Keyframe.IntKeyframe) Keyframe.ofInt(i2 / (length - 1), iArr[i2]);
            }
        }
        return new IntKeyframeSet(intKeyframeArr);
    }

    public static KeyframeSet ofKeyframe(Keyframe... keyframeArr) {
        int length = keyframeArr.length;
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        for (Keyframe keyframe : keyframeArr) {
            if (keyframe instanceof Keyframe.FloatKeyframe) {
                z2 = true;
            } else if (keyframe instanceof Keyframe.IntKeyframe) {
                z3 = true;
            } else {
                z4 = true;
            }
        }
        if (z2 && !z3 && !z4) {
            Keyframe.FloatKeyframe[] floatKeyframeArr = new Keyframe.FloatKeyframe[length];
            while (i2 < length) {
                floatKeyframeArr[i2] = (Keyframe.FloatKeyframe) keyframeArr[i2];
                i2++;
            }
            return new FloatKeyframeSet(floatKeyframeArr);
        }
        if (!z3 || z2 || z4) {
            return new KeyframeSet(keyframeArr);
        }
        Keyframe.IntKeyframe[] intKeyframeArr = new Keyframe.IntKeyframe[length];
        while (i2 < length) {
            intKeyframeArr[i2] = (Keyframe.IntKeyframe) keyframeArr[i2];
            i2++;
        }
        return new IntKeyframeSet(intKeyframeArr);
    }

    public static KeyframeSet ofObject(Object... objArr) {
        int length = objArr.length;
        Keyframe.ObjectKeyframe[] objectKeyframeArr = new Keyframe.ObjectKeyframe[Math.max(length, 2)];
        if (length == 1) {
            objectKeyframeArr[0] = (Keyframe.ObjectKeyframe) Keyframe.ofObject(0.0f);
            objectKeyframeArr[1] = (Keyframe.ObjectKeyframe) Keyframe.ofObject(1.0f, objArr[0]);
        } else {
            objectKeyframeArr[0] = (Keyframe.ObjectKeyframe) Keyframe.ofObject(0.0f, objArr[0]);
            for (int i2 = 1; i2 < length; i2++) {
                objectKeyframeArr[i2] = (Keyframe.ObjectKeyframe) Keyframe.ofObject(i2 / (length - 1), objArr[i2]);
            }
        }
        return new KeyframeSet(objectKeyframeArr);
    }

    public static PathKeyframes ofPath(Path path) {
        return new PathKeyframes(path);
    }

    @Override // android.animation.Keyframes
    public List<Keyframe> getKeyframes() {
        return this.mKeyframes;
    }

    @Override // android.animation.Keyframes
    public Class getType() {
        return this.mFirstKeyframe.getType();
    }

    @Override // android.animation.Keyframes
    public Object getValue(float f2) {
        int i2 = this.mNumKeyframes;
        if (i2 == 2) {
            TimeInterpolator timeInterpolator = this.mInterpolator;
            if (timeInterpolator != null) {
                f2 = timeInterpolator.getInterpolation(f2);
            }
            return this.mEvaluator.evaluate(f2, this.mFirstKeyframe.getValue(), this.mLastKeyframe.getValue());
        }
        int i3 = 1;
        if (f2 <= 0.0f) {
            Keyframe keyframe = this.mKeyframes.get(1);
            TimeInterpolator interpolator = keyframe.getInterpolator();
            if (interpolator != null) {
                f2 = interpolator.getInterpolation(f2);
            }
            float fraction = this.mFirstKeyframe.getFraction();
            return this.mEvaluator.evaluate((f2 - fraction) / (keyframe.getFraction() - fraction), this.mFirstKeyframe.getValue(), keyframe.getValue());
        }
        if (f2 >= 1.0f) {
            Keyframe keyframe2 = this.mKeyframes.get(i2 - 2);
            TimeInterpolator interpolator2 = this.mLastKeyframe.getInterpolator();
            if (interpolator2 != null) {
                f2 = interpolator2.getInterpolation(f2);
            }
            float fraction2 = keyframe2.getFraction();
            return this.mEvaluator.evaluate((f2 - fraction2) / (this.mLastKeyframe.getFraction() - fraction2), keyframe2.getValue(), this.mLastKeyframe.getValue());
        }
        Keyframe keyframe3 = this.mFirstKeyframe;
        while (i3 < this.mNumKeyframes) {
            Keyframe keyframe4 = this.mKeyframes.get(i3);
            if (f2 < keyframe4.getFraction()) {
                TimeInterpolator interpolator3 = keyframe4.getInterpolator();
                float fraction3 = keyframe3.getFraction();
                float fraction4 = (f2 - fraction3) / (keyframe4.getFraction() - fraction3);
                if (interpolator3 != null) {
                    fraction4 = interpolator3.getInterpolation(fraction4);
                }
                return this.mEvaluator.evaluate(fraction4, keyframe3.getValue(), keyframe4.getValue());
            }
            i3++;
            keyframe3 = keyframe4;
        }
        return this.mLastKeyframe.getValue();
    }

    @Override // android.animation.Keyframes
    public void setEvaluator(TypeEvaluator typeEvaluator) {
        this.mEvaluator = typeEvaluator;
    }

    public String toString() {
        String string = WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
        for (int i2 = 0; i2 < this.mNumKeyframes; i2++) {
            StringBuilder sbR = c.r(string);
            sbR.append(this.mKeyframes.get(i2).getValue());
            sbR.append("  ");
            string = sbR.toString();
        }
        return string;
    }

    public static PathKeyframes ofPath(Path path, float f2) {
        return new PathKeyframes(path, f2);
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public KeyframeSet mo2clone() {
        List<Keyframe> list = this.mKeyframes;
        int size = list.size();
        Keyframe[] keyframeArr = new Keyframe[size];
        for (int i2 = 0; i2 < size; i2++) {
            keyframeArr[i2] = list.get(i2).mo3clone();
        }
        return new KeyframeSet(keyframeArr);
    }
}
