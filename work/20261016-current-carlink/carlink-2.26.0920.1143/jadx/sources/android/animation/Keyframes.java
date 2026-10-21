package android.animation;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface Keyframes extends Cloneable {

    public interface FloatKeyframes extends Keyframes {
        float getFloatValue(float f2);
    }

    public interface IntKeyframes extends Keyframes {
        int getIntValue(float f2);
    }

    Keyframes clone();

    List<Keyframe> getKeyframes();

    Class getType();

    Object getValue(float f2);

    void setEvaluator(TypeEvaluator typeEvaluator);
}
