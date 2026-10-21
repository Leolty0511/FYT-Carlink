package androidx.constraintlayout.motion.utils;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.google.common.base.Ascii;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ViewSpline extends SplineSet {
    private static final String TAG = "ViewSpline";

    public static class AlphaSet extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            view.setAlpha(get(f2));
        }
    }

    public static class CustomSet extends ViewSpline {
        String mAttributeName;
        SparseArray<ConstraintAttribute> mConstraintAttributeList;
        float[] mTempValues;

        public CustomSet(String str, SparseArray<ConstraintAttribute> sparseArray) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = sparseArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setPoint(int i2, float f2) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            this.mCurveFit.getPos(f2, this.mTempValues);
            CustomSupport.setInterpolatedValue(this.mConstraintAttributeList.valueAt(0), view, this.mTempValues);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setup(int i2) {
            int size = this.mConstraintAttributeList.size();
            int iNumberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.mTempValues = new float[iNumberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iNumberOfInterpolatedValues);
            for (int i3 = 0; i3 < size; i3++) {
                int iKeyAt = this.mConstraintAttributeList.keyAt(i3);
                ConstraintAttribute constraintAttributeValueAt = this.mConstraintAttributeList.valueAt(i3);
                dArr[i3] = ((double) iKeyAt) * 0.01d;
                constraintAttributeValueAt.getValuesToInterpolate(this.mTempValues);
                int i4 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i4 < fArr.length) {
                        dArr2[i3][i4] = fArr[i4];
                        i4++;
                    }
                }
            }
            this.mCurveFit = CurveFit.get(i2, dArr, dArr2);
        }

        public void setPoint(int i2, ConstraintAttribute constraintAttribute) {
            this.mConstraintAttributeList.append(i2, constraintAttribute);
        }
    }

    public static class ElevationSet extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(get(f2));
            }
        }
    }

    public static class PathRotate extends ViewSpline {
        public void setPathRotate(View view, float f2, double d2, double d3) {
            view.setRotation(get(f2) + ((float) Math.toDegrees(Math.atan2(d3, d2))));
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
        }
    }

    public static class PivotXset extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            view.setPivotX(get(f2));
        }
    }

    public static class PivotYset extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            view.setPivotY(get(f2));
        }
    }

    public static class ProgressSet extends ViewSpline {
        boolean mNoMethod = false;

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(f2));
                return;
            }
            if (this.mNoMethod) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.mNoMethod = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(get(f2)));
                } catch (IllegalAccessException e2) {
                    Log.e(ViewSpline.TAG, "unable to setProgress", e2);
                } catch (InvocationTargetException e3) {
                    Log.e(ViewSpline.TAG, "unable to setProgress", e3);
                }
            }
        }
    }

    public static class RotationSet extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            view.setRotation(get(f2));
        }
    }

    public static class RotationXset extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            view.setRotationX(get(f2));
        }
    }

    public static class RotationYset extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            view.setRotationY(get(f2));
        }
    }

    public static class ScaleXset extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            view.setScaleX(get(f2));
        }
    }

    public static class ScaleYset extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            view.setScaleY(get(f2));
        }
    }

    public static class TranslationXset extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            view.setTranslationX(get(f2));
        }
    }

    public static class TranslationYset extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            view.setTranslationY(get(f2));
        }
    }

    public static class TranslationZset extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f2) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(get(f2));
            }
        }
    }

    public static ViewSpline makeCustomSpline(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new CustomSet(str, sparseArray);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static ViewSpline makeSpline(String str) {
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
            case -797520672:
                if (str.equals(Key.WAVE_VARIES_BY)) {
                    b2 = 8;
                }
                break;
            case -760884510:
                if (str.equals(Key.PIVOT_X)) {
                    b2 = 9;
                }
                break;
            case -760884509:
                if (str.equals(Key.PIVOT_Y)) {
                    b2 = 10;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    b2 = Ascii.VT;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    b2 = Ascii.FF;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    b2 = Ascii.CR;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b2 = 14;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    b2 = 15;
                }
                break;
        }
        switch (b2) {
            case 0:
                return new RotationXset();
            case 1:
                return new RotationYset();
            case 2:
                return new TranslationXset();
            case 3:
                return new TranslationYset();
            case 4:
                return new TranslationZset();
            case 5:
                return new ProgressSet();
            case 6:
                return new ScaleXset();
            case 7:
                return new ScaleYset();
            case 8:
                return new AlphaSet();
            case 9:
                return new PivotXset();
            case 10:
                return new PivotYset();
            case 11:
                return new RotationSet();
            case 12:
                return new ElevationSet();
            case 13:
                return new PathRotate();
            case 14:
                return new AlphaSet();
            case 15:
                return new AlphaSet();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float f2);
}
