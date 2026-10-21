package androidx.constraintlayout.motion.widget;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import com.google.common.base.Ascii;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class KeyCycle extends Key {
    public static final int KEY_TYPE = 4;
    static final String NAME = "KeyCycle";
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    private static final String TAG = "KeyCycle";
    public static final String WAVE_OFFSET = "waveOffset";
    public static final String WAVE_PERIOD = "wavePeriod";
    public static final String WAVE_PHASE = "wavePhase";
    public static final String WAVE_SHAPE = "waveShape";
    private String mTransitionEasing = null;
    private int mCurveFit = 0;
    private int mWaveShape = -1;
    private String mCustomWaveShape = null;
    private float mWavePeriod = Float.NaN;
    private float mWaveOffset = 0.0f;
    private float mWavePhase = 0.0f;
    private float mProgress = Float.NaN;
    private int mWaveVariesBy = -1;
    private float mAlpha = Float.NaN;
    private float mElevation = Float.NaN;
    private float mRotation = Float.NaN;
    private float mTransitionPathRotate = Float.NaN;
    private float mRotationX = Float.NaN;
    private float mRotationY = Float.NaN;
    private float mScaleX = Float.NaN;
    private float mScaleY = Float.NaN;
    private float mTranslationX = Float.NaN;
    private float mTranslationY = Float.NaN;
    private float mTranslationZ = Float.NaN;

    public static class Loader {
        private static final int ANDROID_ALPHA = 9;
        private static final int ANDROID_ELEVATION = 10;
        private static final int ANDROID_ROTATION = 11;
        private static final int ANDROID_ROTATION_X = 12;
        private static final int ANDROID_ROTATION_Y = 13;
        private static final int ANDROID_SCALE_X = 15;
        private static final int ANDROID_SCALE_Y = 16;
        private static final int ANDROID_TRANSLATION_X = 17;
        private static final int ANDROID_TRANSLATION_Y = 18;
        private static final int ANDROID_TRANSLATION_Z = 19;
        private static final int CURVE_FIT = 4;
        private static final int FRAME_POSITION = 2;
        private static final int PROGRESS = 20;
        private static final int TARGET_ID = 1;
        private static final int TRANSITION_EASING = 3;
        private static final int TRANSITION_PATH_ROTATE = 14;
        private static final int WAVE_OFFSET = 7;
        private static final int WAVE_PERIOD = 6;
        private static final int WAVE_PHASE = 21;
        private static final int WAVE_SHAPE = 5;
        private static final int WAVE_VARIES_BY = 8;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyCycle_motionTarget, 1);
            mAttrMap.append(R.styleable.KeyCycle_framePosition, 2);
            mAttrMap.append(R.styleable.KeyCycle_transitionEasing, 3);
            mAttrMap.append(R.styleable.KeyCycle_curveFit, 4);
            mAttrMap.append(R.styleable.KeyCycle_waveShape, 5);
            mAttrMap.append(R.styleable.KeyCycle_wavePeriod, 6);
            mAttrMap.append(R.styleable.KeyCycle_waveOffset, 7);
            mAttrMap.append(R.styleable.KeyCycle_waveVariesBy, 8);
            mAttrMap.append(R.styleable.KeyCycle_android_alpha, 9);
            mAttrMap.append(R.styleable.KeyCycle_android_elevation, 10);
            mAttrMap.append(R.styleable.KeyCycle_android_rotation, 11);
            mAttrMap.append(R.styleable.KeyCycle_android_rotationX, 12);
            mAttrMap.append(R.styleable.KeyCycle_android_rotationY, 13);
            mAttrMap.append(R.styleable.KeyCycle_transitionPathRotate, 14);
            mAttrMap.append(R.styleable.KeyCycle_android_scaleX, 15);
            mAttrMap.append(R.styleable.KeyCycle_android_scaleY, 16);
            mAttrMap.append(R.styleable.KeyCycle_android_translationX, 17);
            mAttrMap.append(R.styleable.KeyCycle_android_translationY, 18);
            mAttrMap.append(R.styleable.KeyCycle_android_translationZ, 19);
            mAttrMap.append(R.styleable.KeyCycle_motionProgress, 20);
            mAttrMap.append(R.styleable.KeyCycle_wavePhase, 21);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void read(KeyCycle keyCycle, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArray.getIndex(i2);
                switch (mAttrMap.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, keyCycle.mTargetId);
                            keyCycle.mTargetId = resourceId;
                            if (resourceId == -1) {
                                keyCycle.mTargetString = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyCycle.mTargetString = typedArray.getString(index);
                        } else {
                            keyCycle.mTargetId = typedArray.getResourceId(index, keyCycle.mTargetId);
                        }
                        break;
                    case 2:
                        keyCycle.mFramePosition = typedArray.getInt(index, keyCycle.mFramePosition);
                        break;
                    case 3:
                        keyCycle.mTransitionEasing = typedArray.getString(index);
                        break;
                    case 4:
                        keyCycle.mCurveFit = typedArray.getInteger(index, keyCycle.mCurveFit);
                        break;
                    case 5:
                        if (typedArray.peekValue(index).type == 3) {
                            keyCycle.mCustomWaveShape = typedArray.getString(index);
                            keyCycle.mWaveShape = 7;
                        } else {
                            keyCycle.mWaveShape = typedArray.getInt(index, keyCycle.mWaveShape);
                        }
                        break;
                    case 6:
                        keyCycle.mWavePeriod = typedArray.getFloat(index, keyCycle.mWavePeriod);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            keyCycle.mWaveOffset = typedArray.getDimension(index, keyCycle.mWaveOffset);
                        } else {
                            keyCycle.mWaveOffset = typedArray.getFloat(index, keyCycle.mWaveOffset);
                        }
                        break;
                    case 8:
                        keyCycle.mWaveVariesBy = typedArray.getInt(index, keyCycle.mWaveVariesBy);
                        break;
                    case 9:
                        keyCycle.mAlpha = typedArray.getFloat(index, keyCycle.mAlpha);
                        break;
                    case 10:
                        keyCycle.mElevation = typedArray.getDimension(index, keyCycle.mElevation);
                        break;
                    case 11:
                        keyCycle.mRotation = typedArray.getFloat(index, keyCycle.mRotation);
                        break;
                    case 12:
                        keyCycle.mRotationX = typedArray.getFloat(index, keyCycle.mRotationX);
                        break;
                    case 13:
                        keyCycle.mRotationY = typedArray.getFloat(index, keyCycle.mRotationY);
                        break;
                    case 14:
                        keyCycle.mTransitionPathRotate = typedArray.getFloat(index, keyCycle.mTransitionPathRotate);
                        break;
                    case 15:
                        keyCycle.mScaleX = typedArray.getFloat(index, keyCycle.mScaleX);
                        break;
                    case 16:
                        keyCycle.mScaleY = typedArray.getFloat(index, keyCycle.mScaleY);
                        break;
                    case 17:
                        keyCycle.mTranslationX = typedArray.getDimension(index, keyCycle.mTranslationX);
                        break;
                    case 18:
                        keyCycle.mTranslationY = typedArray.getDimension(index, keyCycle.mTranslationY);
                        break;
                    case 19:
                        if (Build.VERSION.SDK_INT >= 21) {
                            keyCycle.mTranslationZ = typedArray.getDimension(index, keyCycle.mTranslationZ);
                        }
                        break;
                    case 20:
                        keyCycle.mProgress = typedArray.getFloat(index, keyCycle.mProgress);
                        break;
                    case 21:
                        keyCycle.mWavePhase = typedArray.getFloat(index, keyCycle.mWavePhase) / 360.0f;
                        break;
                    default:
                        StringBuilder sb = new StringBuilder("unused attribute 0x");
                        c.x(index, sb, "   ");
                        sb.append(mAttrMap.get(index));
                        Log.e(TypedValues.CycleType.NAME, sb.toString());
                        break;
                }
            }
        }
    }

    public KeyCycle() {
        this.mType = 4;
        this.mCustomConstraints = new HashMap<>();
    }

    public void addCycleValues(HashMap<String, ViewOscillator> map) {
        ViewOscillator viewOscillator;
        ViewOscillator viewOscillator2;
        for (String str : map.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.getType() == ConstraintAttribute.AttributeType.FLOAT_TYPE && (viewOscillator = map.get(str)) != null) {
                    viewOscillator.setPoint(this.mFramePosition, this.mWaveShape, this.mCustomWaveShape, this.mWaveVariesBy, this.mWavePeriod, this.mWaveOffset, this.mWavePhase, constraintAttribute.getValueToInterpolate(), constraintAttribute);
                }
            } else {
                float value = getValue(str);
                if (!Float.isNaN(value) && (viewOscillator2 = map.get(str)) != null) {
                    viewOscillator2.setPoint(this.mFramePosition, this.mWaveShape, this.mCustomWaveShape, this.mWaveVariesBy, this.mWavePeriod, this.mWaveOffset, this.mWavePhase, value);
                }
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> map) {
        Debug.logStack(TypedValues.CycleType.NAME, "add " + map.size() + " values", 2);
        for (String str : map.keySet()) {
            ViewSpline viewSpline = map.get(str);
            if (viewSpline != null) {
                str.getClass();
                byte b2 = -1;
                switch (str.hashCode()) {
                    case -1249320806:
                        if (str.equals("rotationX")) {
                            b2 = 0;
                        }
                        break;
                    case -1249320805:
                        if (str.equals("rotationY")) {
                            b2 = 1;
                        }
                        break;
                    case -1225497657:
                        if (str.equals("translationX")) {
                            b2 = 2;
                        }
                        break;
                    case -1225497656:
                        if (str.equals("translationY")) {
                            b2 = 3;
                        }
                        break;
                    case -1225497655:
                        if (str.equals("translationZ")) {
                            b2 = 4;
                        }
                        break;
                    case -1001078227:
                        if (str.equals("progress")) {
                            b2 = 5;
                        }
                        break;
                    case -908189618:
                        if (str.equals("scaleX")) {
                            b2 = 6;
                        }
                        break;
                    case -908189617:
                        if (str.equals("scaleY")) {
                            b2 = 7;
                        }
                        break;
                    case -40300674:
                        if (str.equals(Key.ROTATION)) {
                            b2 = 8;
                        }
                        break;
                    case -4379043:
                        if (str.equals("elevation")) {
                            b2 = 9;
                        }
                        break;
                    case 37232917:
                        if (str.equals("transitionPathRotate")) {
                            b2 = 10;
                        }
                        break;
                    case 92909918:
                        if (str.equals("alpha")) {
                            b2 = Ascii.VT;
                        }
                        break;
                    case 156108012:
                        if (str.equals("waveOffset")) {
                            b2 = Ascii.FF;
                        }
                        break;
                    case 1530034690:
                        if (str.equals("wavePhase")) {
                            b2 = Ascii.CR;
                        }
                        break;
                }
                switch (b2) {
                    case 0:
                        viewSpline.setPoint(this.mFramePosition, this.mRotationX);
                        break;
                    case 1:
                        viewSpline.setPoint(this.mFramePosition, this.mRotationY);
                        break;
                    case 2:
                        viewSpline.setPoint(this.mFramePosition, this.mTranslationX);
                        break;
                    case 3:
                        viewSpline.setPoint(this.mFramePosition, this.mTranslationY);
                        break;
                    case 4:
                        viewSpline.setPoint(this.mFramePosition, this.mTranslationZ);
                        break;
                    case 5:
                        viewSpline.setPoint(this.mFramePosition, this.mProgress);
                        break;
                    case 6:
                        viewSpline.setPoint(this.mFramePosition, this.mScaleX);
                        break;
                    case 7:
                        viewSpline.setPoint(this.mFramePosition, this.mScaleY);
                        break;
                    case 8:
                        viewSpline.setPoint(this.mFramePosition, this.mRotation);
                        break;
                    case 9:
                        viewSpline.setPoint(this.mFramePosition, this.mElevation);
                        break;
                    case 10:
                        viewSpline.setPoint(this.mFramePosition, this.mTransitionPathRotate);
                        break;
                    case 11:
                        viewSpline.setPoint(this.mFramePosition, this.mAlpha);
                        break;
                    case 12:
                        viewSpline.setPoint(this.mFramePosition, this.mWaveOffset);
                        break;
                    case 13:
                        viewSpline.setPoint(this.mFramePosition, this.mWavePhase);
                        break;
                    default:
                        if (!str.startsWith("CUSTOM")) {
                            Log.v("WARNING KeyCycle", "  UNKNOWN  ".concat(str));
                        }
                        break;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyCycle keyCycle = (KeyCycle) key;
        this.mTransitionEasing = keyCycle.mTransitionEasing;
        this.mCurveFit = keyCycle.mCurveFit;
        this.mWaveShape = keyCycle.mWaveShape;
        this.mCustomWaveShape = keyCycle.mCustomWaveShape;
        this.mWavePeriod = keyCycle.mWavePeriod;
        this.mWaveOffset = keyCycle.mWaveOffset;
        this.mWavePhase = keyCycle.mWavePhase;
        this.mProgress = keyCycle.mProgress;
        this.mWaveVariesBy = keyCycle.mWaveVariesBy;
        this.mAlpha = keyCycle.mAlpha;
        this.mElevation = keyCycle.mElevation;
        this.mRotation = keyCycle.mRotation;
        this.mTransitionPathRotate = keyCycle.mTransitionPathRotate;
        this.mRotationX = keyCycle.mRotationX;
        this.mRotationY = keyCycle.mRotationY;
        this.mScaleX = keyCycle.mScaleX;
        this.mScaleY = keyCycle.mScaleY;
        this.mTranslationX = keyCycle.mTranslationX;
        this.mTranslationY = keyCycle.mTranslationY;
        this.mTranslationZ = keyCycle.mTranslationZ;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.mAlpha)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.mElevation)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.mRotation)) {
            hashSet.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashSet.add("translationZ");
        }
        if (this.mCustomConstraints.size() > 0) {
            Iterator<String> it = this.mCustomConstraints.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + it.next());
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public float getValue(String str) {
        str.getClass();
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    b2 = 0;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    b2 = 1;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    b2 = 2;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    b2 = 3;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    b2 = 4;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    b2 = 5;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    b2 = 6;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    b2 = 7;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    b2 = 8;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    b2 = 9;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    b2 = 10;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b2 = Ascii.VT;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    b2 = Ascii.FF;
                }
                break;
            case 1530034690:
                if (str.equals("wavePhase")) {
                    b2 = Ascii.CR;
                }
                break;
        }
        switch (b2) {
            case 0:
                return this.mRotationX;
            case 1:
                return this.mRotationY;
            case 2:
                return this.mTranslationX;
            case 3:
                return this.mTranslationY;
            case 4:
                return this.mTranslationZ;
            case 5:
                return this.mProgress;
            case 6:
                return this.mScaleX;
            case 7:
                return this.mScaleY;
            case 8:
                return this.mRotation;
            case 9:
                return this.mElevation;
            case 10:
                return this.mTransitionPathRotate;
            case 11:
                return this.mAlpha;
            case 12:
                return this.mWaveOffset;
            case 13:
                return this.mWavePhase;
            default:
                if (str.startsWith("CUSTOM")) {
                    return Float.NaN;
                }
                Log.v("WARNING! KeyCycle", "  UNKNOWN  ".concat(str));
                return Float.NaN;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyCycle));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        str.getClass();
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1913008125:
                if (str.equals(Key.MOTIONPROGRESS)) {
                    b2 = 0;
                }
                break;
            case -1812823328:
                if (str.equals("transitionEasing")) {
                    b2 = 1;
                }
                break;
            case -1249320806:
                if (str.equals("rotationX")) {
                    b2 = 2;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    b2 = 3;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    b2 = 4;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    b2 = 5;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    b2 = 6;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    b2 = 7;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    b2 = 8;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    b2 = 9;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    b2 = 10;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    b2 = Ascii.VT;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b2 = Ascii.FF;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    b2 = Ascii.CR;
                }
                break;
            case 184161818:
                if (str.equals("wavePeriod")) {
                    b2 = 14;
                }
                break;
            case 579057826:
                if (str.equals("curveFit")) {
                    b2 = 15;
                }
                break;
            case 1530034690:
                if (str.equals("wavePhase")) {
                    b2 = 16;
                }
                break;
            case 1532805160:
                if (str.equals("waveShape")) {
                    b2 = 17;
                }
                break;
        }
        switch (b2) {
            case 0:
                this.mProgress = toFloat(obj);
                break;
            case 1:
                this.mTransitionEasing = obj.toString();
                break;
            case 2:
                this.mRotationX = toFloat(obj);
                break;
            case 3:
                this.mRotationY = toFloat(obj);
                break;
            case 4:
                this.mTranslationX = toFloat(obj);
                break;
            case 5:
                this.mTranslationY = toFloat(obj);
                break;
            case 6:
                this.mTranslationZ = toFloat(obj);
                break;
            case 7:
                this.mScaleX = toFloat(obj);
                break;
            case 8:
                this.mScaleY = toFloat(obj);
                break;
            case 9:
                this.mRotation = toFloat(obj);
                break;
            case 10:
                this.mElevation = toFloat(obj);
                break;
            case 11:
                this.mTransitionPathRotate = toFloat(obj);
                break;
            case 12:
                this.mAlpha = toFloat(obj);
                break;
            case 13:
                this.mWaveOffset = toFloat(obj);
                break;
            case 14:
                this.mWavePeriod = toFloat(obj);
                break;
            case 15:
                this.mCurveFit = toInt(obj);
                break;
            case 16:
                this.mWavePhase = toFloat(obj);
                break;
            case 17:
                if (!(obj instanceof Integer)) {
                    this.mWaveShape = 7;
                    this.mCustomWaveShape = obj.toString();
                } else {
                    this.mWaveShape = toInt(obj);
                }
                break;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: clone */
    public Key mo44clone() {
        return new KeyCycle().copy(this);
    }
}
