package android.animation;

import android.accessibilityservice.c;
import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class PathKeyframes implements Keyframes {
    private static final ArrayList<Keyframe> EMPTY_KEYFRAMES = new ArrayList<>();
    private static final int FRACTION_OFFSET = 0;
    private static final int NUM_COMPONENTS = 3;
    private static final int X_OFFSET = 1;
    private static final int Y_OFFSET = 2;
    private float[] mKeyframeData;
    private PointF mTempPointF;

    public static abstract class FloatKeyframesBase extends SimpleKeyframes implements Keyframes.FloatKeyframes {
        public FloatKeyframesBase() {
            super();
        }

        @Override // android.animation.Keyframes
        public Class getType() {
            return Float.class;
        }

        @Override // android.animation.Keyframes
        public Object getValue(float f2) {
            return Float.valueOf(getFloatValue(f2));
        }
    }

    public static abstract class IntKeyframesBase extends SimpleKeyframes implements Keyframes.IntKeyframes {
        public IntKeyframesBase() {
            super();
        }

        @Override // android.animation.Keyframes
        public Class getType() {
            return Integer.class;
        }

        @Override // android.animation.Keyframes
        public Object getValue(float f2) {
            return Integer.valueOf(getIntValue(f2));
        }
    }

    public static abstract class SimpleKeyframes implements Keyframes {
        private SimpleKeyframes() {
        }

        @Override // android.animation.Keyframes
        public void setEvaluator(TypeEvaluator typeEvaluator) {
        }

        @Override // android.animation.Keyframes
        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Keyframes m5clone() {
            try {
                return (Keyframes) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }

        @Override // android.animation.Keyframes
        public ArrayList<Keyframe> getKeyframes() {
            return PathKeyframes.EMPTY_KEYFRAMES;
        }
    }

    public PathKeyframes(Path path) {
        this(path, 0.5f);
    }

    private static float interpolate(float f2, float f3, float f4) {
        return c.a(f4, f3, f2, f3);
    }

    private PointF interpolateInRange(float f2, int i2, int i3) {
        int i4 = i2 * 3;
        int i5 = i3 * 3;
        float[] fArr = this.mKeyframeData;
        float f3 = fArr[i4 + 0];
        float f4 = (f2 - f3) / (fArr[i5 + 0] - f3);
        float f5 = fArr[i4 + 1];
        float f6 = fArr[i5 + 1];
        float f7 = fArr[i4 + 2];
        float f8 = fArr[i5 + 2];
        this.mTempPointF.set(interpolate(f4, f5, f6), interpolate(f4, f7, f8));
        return this.mTempPointF;
    }

    private PointF pointForIndex(int i2) {
        int i3 = i2 * 3;
        PointF pointF = this.mTempPointF;
        float[] fArr = this.mKeyframeData;
        pointF.set(fArr[i3 + 1], fArr[i3 + 2]);
        return this.mTempPointF;
    }

    public Keyframes.FloatKeyframes createXFloatKeyframes() {
        return new FloatKeyframesBase() { // from class: android.animation.PathKeyframes.1
            @Override // android.animation.Keyframes.FloatKeyframes
            public float getFloatValue(float f2) {
                return ((PointF) PathKeyframes.this.getValue(f2)).f73x;
            }
        };
    }

    public Keyframes.IntKeyframes createXIntKeyframes() {
        return new IntKeyframesBase() { // from class: android.animation.PathKeyframes.3
            @Override // android.animation.Keyframes.IntKeyframes
            public int getIntValue(float f2) {
                return Math.round(((PointF) PathKeyframes.this.getValue(f2)).f73x);
            }
        };
    }

    public Keyframes.FloatKeyframes createYFloatKeyframes() {
        return new FloatKeyframesBase() { // from class: android.animation.PathKeyframes.2
            @Override // android.animation.Keyframes.FloatKeyframes
            public float getFloatValue(float f2) {
                return ((PointF) PathKeyframes.this.getValue(f2)).f74y;
            }
        };
    }

    public Keyframes.IntKeyframes createYIntKeyframes() {
        return new IntKeyframesBase() { // from class: android.animation.PathKeyframes.4
            @Override // android.animation.Keyframes.IntKeyframes
            public int getIntValue(float f2) {
                return Math.round(((PointF) PathKeyframes.this.getValue(f2)).f74y);
            }
        };
    }

    @Override // android.animation.Keyframes
    public Class getType() {
        return PointF.class;
    }

    @Override // android.animation.Keyframes
    public Object getValue(float f2) {
        int length = this.mKeyframeData.length / 3;
        if (f2 < 0.0f) {
            return interpolateInRange(f2, 0, 1);
        }
        if (f2 > 1.0f) {
            return interpolateInRange(f2, length - 2, length - 1);
        }
        if (f2 == 0.0f) {
            return pointForIndex(0);
        }
        if (f2 == 1.0f) {
            return pointForIndex(length - 1);
        }
        int i2 = length - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            float f3 = this.mKeyframeData[(i4 * 3) + 0];
            if (f2 < f3) {
                i2 = i4 - 1;
            } else {
                if (f2 <= f3) {
                    return pointForIndex(i4);
                }
                i3 = i4 + 1;
            }
        }
        return interpolateInRange(f2, i2, i3);
    }

    @Override // android.animation.Keyframes
    public void setEvaluator(TypeEvaluator typeEvaluator) {
    }

    public PathKeyframes(Path path, float f2) {
        this.mTempPointF = new PointF();
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("The path must not be null or empty");
        }
        this.mKeyframeData = path.approximate(f2);
    }

    @Override // android.animation.Keyframes
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Keyframes m4clone() {
        try {
            return (Keyframes) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @Override // android.animation.Keyframes
    public ArrayList<Keyframe> getKeyframes() {
        return EMPTY_KEYFRAMES;
    }
}
