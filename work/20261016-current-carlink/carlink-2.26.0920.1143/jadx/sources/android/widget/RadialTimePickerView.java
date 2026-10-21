package android.widget;

import android.animation.ObjectAnimator;
import android.app.m;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.IntArray;
import android.util.MathUtils;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.internal.R;
import com.android.internal.widget.ExploreByTouchHelper;
import com.google.android.material.timepicker.TimeModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Array;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class RadialTimePickerView extends View {
    private static final int AM = 0;
    private static final int ANIM_DURATION_NORMAL = 500;
    private static final int ANIM_DURATION_TOUCH = 60;
    private static final int DEGREES_FOR_ONE_HOUR = 30;
    private static final int DEGREES_FOR_ONE_MINUTE = 6;
    public static final int HOURS = 0;
    private static final int HOURS_INNER = 2;
    private static final int HOURS_IN_CIRCLE = 12;
    public static final int MINUTES = 1;
    private static final int MINUTES_IN_CIRCLE = 60;
    private static final int MISSING_COLOR = -65281;
    private static final int NUM_POSITIONS = 12;
    private static final int PM = 1;
    private static final int SELECTOR_CIRCLE = 0;
    private static final int SELECTOR_DOT = 1;
    private static final int SELECTOR_LINE = 2;
    private static final String TAG = "RadialTimePickerView";
    private final FloatProperty<RadialTimePickerView> HOURS_TO_MINUTES;
    private int mAmOrPm;
    private int mCenterDotRadius;
    boolean mChangedDuringTouch;
    private int mCircleRadius;
    private float mDisabledAlpha;
    private int mHalfwayDist;
    private final String[] mHours12Texts;
    private float mHoursToMinutes;
    private ObjectAnimator mHoursToMinutesAnimator;
    private final String[] mInnerHours24Texts;
    private String[] mInnerTextHours;
    private final float[] mInnerTextX;
    private final float[] mInnerTextY;
    private boolean mInputEnabled;
    private boolean mIs24HourMode;
    private boolean mIsOnInnerCircle;
    private OnValueSelectedListener mListener;
    private int mMaxDistForOuterNumber;
    private int mMinDistForInnerNumber;
    private String[] mMinutesText;
    private final String[] mMinutesTexts;
    private final String[] mOuterHours24Texts;
    private String[] mOuterTextHours;
    private final float[][] mOuterTextX;
    private final float[][] mOuterTextY;
    private final Paint[] mPaint;
    private final Paint mPaintBackground;
    private final Paint mPaintCenter;
    private final Paint[] mPaintSelector;
    private final int[] mSelectionDegrees;
    private int mSelectorColor;
    private int mSelectorDotColor;
    private int mSelectorDotRadius;
    private final Path mSelectorPath;
    private int mSelectorRadius;
    private int mSelectorStroke;
    private boolean mShowHours;
    private final ColorStateList[] mTextColor;
    private final int[] mTextInset;
    private final int[] mTextSize;
    private final RadialPickerTouchHelper mTouchHelper;
    private final Typeface mTypeface;
    private int mXCenter;
    private int mYCenter;
    private static final int[] HOURS_NUMBERS = {12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
    private static final int[] HOURS_NUMBERS_24 = {0, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23};
    private static final int[] MINUTES_NUMBERS = {0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55};
    private static final int[] SNAP_PREFER_30S_MAP = new int[361];
    private static final float[] COS_30 = new float[12];
    private static final float[] SIN_30 = new float[12];

    public interface OnValueSelectedListener {
        void onValueSelected(int i2, int i3, boolean z2);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PickerType {
    }

    public class RadialPickerTouchHelper extends ExploreByTouchHelper {
        private final int MASK_TYPE;
        private final int MASK_VALUE;
        private final int MINUTE_INCREMENT;
        private final int SHIFT_TYPE;
        private final int SHIFT_VALUE;
        private final int TYPE_HOUR;
        private final int TYPE_MINUTE;
        private final Rect mTempRect;

        public RadialPickerTouchHelper() {
            super(RadialTimePickerView.this);
            this.mTempRect = new Rect();
            this.TYPE_HOUR = 1;
            this.TYPE_MINUTE = 2;
            this.SHIFT_TYPE = 0;
            this.MASK_TYPE = 15;
            this.SHIFT_VALUE = 8;
            this.MASK_VALUE = 255;
            this.MINUTE_INCREMENT = 5;
        }

        private void adjustPicker(int i2) {
            int i3;
            int currentMinute;
            int i4;
            int i5 = 0;
            if (RadialTimePickerView.this.mShowHours) {
                currentMinute = RadialTimePickerView.this.getCurrentHour();
                i3 = 1;
                if (RadialTimePickerView.this.mIs24HourMode) {
                    i4 = 23;
                } else {
                    currentMinute = hour24To12(currentMinute);
                    i4 = 12;
                    i5 = 1;
                }
            } else {
                i3 = 5;
                currentMinute = RadialTimePickerView.this.getCurrentMinute() / 5;
                i4 = 55;
            }
            int iConstrain = MathUtils.constrain((currentMinute + i2) * i3, i5, i4);
            if (RadialTimePickerView.this.mShowHours) {
                RadialTimePickerView.this.setCurrentHour(iConstrain);
            } else {
                RadialTimePickerView.this.setCurrentMinute(iConstrain);
            }
        }

        private void getBoundsForVirtualView(int i2, Rect rect) {
            float f2;
            float degreesForMinute;
            float f3;
            int i3;
            int typeFromId = getTypeFromId(i2);
            int valueFromId = getValueFromId(i2);
            if (typeFromId == 1) {
                if (RadialTimePickerView.this.getInnerCircleForHour(valueFromId)) {
                    f2 = RadialTimePickerView.this.mCircleRadius - RadialTimePickerView.this.mTextInset[2];
                    i3 = RadialTimePickerView.this.mSelectorRadius;
                } else {
                    f2 = RadialTimePickerView.this.mCircleRadius - RadialTimePickerView.this.mTextInset[0];
                    i3 = RadialTimePickerView.this.mSelectorRadius;
                }
                f3 = i3;
                degreesForMinute = RadialTimePickerView.this.getDegreesForHour(valueFromId);
            } else if (typeFromId == 2) {
                f2 = RadialTimePickerView.this.mCircleRadius - RadialTimePickerView.this.mTextInset[1];
                degreesForMinute = RadialTimePickerView.this.getDegreesForMinute(valueFromId);
                f3 = RadialTimePickerView.this.mSelectorRadius;
            } else {
                f2 = 0.0f;
                degreesForMinute = 0.0f;
                f3 = 0.0f;
            }
            double radians = Math.toRadians(degreesForMinute);
            float fSin = (((float) Math.sin(radians)) * f2) + RadialTimePickerView.this.mXCenter;
            float fCos = RadialTimePickerView.this.mYCenter - (f2 * ((float) Math.cos(radians)));
            rect.set((int) (fSin - f3), (int) (fCos - f3), (int) (fSin + f3), (int) (fCos + f3));
        }

        private int getCircularDiff(int i2, int i3, int i4) {
            int iAbs = Math.abs(i2 - i3);
            return iAbs > i4 / 2 ? i4 - iAbs : iAbs;
        }

        private int getTypeFromId(int i2) {
            return (i2 >>> 0) & 15;
        }

        private int getValueFromId(int i2) {
            return (i2 >>> 8) & 255;
        }

        private CharSequence getVirtualViewDescription(int i2, int i3) {
            if (i2 == 1 || i2 == 2) {
                return Integer.toString(i3);
            }
            return null;
        }

        private int getVirtualViewIdAfter(int i2, int i3) {
            if (i2 == 1) {
                int i4 = i3 + 1;
                if (i4 <= (RadialTimePickerView.this.mIs24HourMode ? 23 : 12)) {
                    return makeId(i2, i4);
                }
                return Integer.MIN_VALUE;
            }
            if (i2 != 2) {
                return Integer.MIN_VALUE;
            }
            int currentMinute = RadialTimePickerView.this.getCurrentMinute();
            int i5 = (i3 - (i3 % 5)) + 5;
            if (i3 < currentMinute && i5 > currentMinute) {
                return makeId(i2, currentMinute);
            }
            if (i5 < 60) {
                return makeId(i2, i5);
            }
            return Integer.MIN_VALUE;
        }

        private int hour12To24(int i2, int i3) {
            if (i2 != 12) {
                return i3 == 1 ? i2 + 12 : i2;
            }
            if (i3 == 0) {
                return 0;
            }
            return i2;
        }

        private int hour24To12(int i2) {
            if (i2 == 0) {
                return 12;
            }
            return i2 > 12 ? i2 - 12 : i2;
        }

        private boolean isVirtualViewSelected(int i2, int i3) {
            if (i2 == 1) {
                if (RadialTimePickerView.this.getCurrentHour() != i3) {
                    return false;
                }
            } else if (i2 != 2 || RadialTimePickerView.this.getCurrentMinute() != i3) {
                return false;
            }
            return true;
        }

        private int makeId(int i2, int i3) {
            return (i2 << 0) | (i3 << 8);
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f2, float f3) {
            int degreesFromXY = RadialTimePickerView.this.getDegreesFromXY(f2, f3, true);
            if (degreesFromXY == -1) {
                return Integer.MIN_VALUE;
            }
            int iSnapOnly30s = RadialTimePickerView.snapOnly30s(degreesFromXY, 0) % 360;
            if (RadialTimePickerView.this.mShowHours) {
                int hourForDegrees = RadialTimePickerView.this.getHourForDegrees(iSnapOnly30s, RadialTimePickerView.this.getInnerCircleFromXY(f2, f3));
                if (!RadialTimePickerView.this.mIs24HourMode) {
                    hourForDegrees = hour24To12(hourForDegrees);
                }
                return makeId(1, hourForDegrees);
            }
            int currentMinute = RadialTimePickerView.this.getCurrentMinute();
            int minuteForDegrees = RadialTimePickerView.this.getMinuteForDegrees(degreesFromXY);
            int minuteForDegrees2 = RadialTimePickerView.this.getMinuteForDegrees(iSnapOnly30s);
            if (getCircularDiff(currentMinute, minuteForDegrees, 60) >= getCircularDiff(minuteForDegrees2, minuteForDegrees, 60)) {
                currentMinute = minuteForDegrees2;
            }
            return makeId(2, currentMinute);
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(IntArray intArray) {
            if (RadialTimePickerView.this.mShowHours) {
                int i2 = RadialTimePickerView.this.mIs24HourMode ? 23 : 12;
                for (int i3 = !RadialTimePickerView.this.mIs24HourMode ? 1 : 0; i3 <= i2; i3++) {
                    intArray.add(makeId(1, i3));
                }
                return;
            }
            int currentMinute = RadialTimePickerView.this.getCurrentMinute();
            for (int i4 = 0; i4 < 60; i4 += 5) {
                intArray.add(makeId(2, i4));
                if (currentMinute > i4 && currentMinute < i4 + 5) {
                    intArray.add(makeId(2, currentMinute));
                }
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i2, int i3, Bundle bundle) {
            if (i3 != 16) {
                return false;
            }
            int typeFromId = getTypeFromId(i2);
            int valueFromId = getValueFromId(i2);
            if (typeFromId == 1) {
                if (!RadialTimePickerView.this.mIs24HourMode) {
                    valueFromId = hour12To24(valueFromId, RadialTimePickerView.this.mAmOrPm);
                }
                RadialTimePickerView.this.setCurrentHour(valueFromId);
                return true;
            }
            if (typeFromId != 2) {
                return false;
            }
            RadialTimePickerView.this.setCurrentMinute(valueFromId);
            return true;
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public void onPopulateEventForVirtualView(int i2, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setClassName(getClass().getName());
            accessibilityEvent.setContentDescription(getVirtualViewDescription(getTypeFromId(i2), getValueFromId(i2)));
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i2, AccessibilityNodeInfo accessibilityNodeInfo) {
            accessibilityNodeInfo.setClassName(getClass().getName());
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
            int typeFromId = getTypeFromId(i2);
            int valueFromId = getValueFromId(i2);
            accessibilityNodeInfo.setContentDescription(getVirtualViewDescription(typeFromId, valueFromId));
            getBoundsForVirtualView(i2, this.mTempRect);
            accessibilityNodeInfo.setBoundsInParent(this.mTempRect);
            accessibilityNodeInfo.setSelected(isVirtualViewSelected(typeFromId, valueFromId));
            int virtualViewIdAfter = getVirtualViewIdAfter(typeFromId, valueFromId);
            if (virtualViewIdAfter != Integer.MIN_VALUE) {
                accessibilityNodeInfo.setTraversalBefore(RadialTimePickerView.this, virtualViewIdAfter);
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (super.performAccessibilityAction(view, i2, bundle)) {
                return true;
            }
            if (i2 == 4096) {
                adjustPicker(1);
                return true;
            }
            if (i2 != 8192) {
                return false;
            }
            adjustPicker(-1);
            return true;
        }
    }

    static {
        preparePrefer30sMap();
        double d2 = 1.5707963267948966d;
        for (int i2 = 0; i2 < 12; i2++) {
            COS_30[i2] = (float) Math.cos(d2);
            SIN_30[i2] = (float) Math.sin(d2);
            d2 += 0.5235987755982988d;
        }
    }

    public RadialTimePickerView(Context context) {
        this(context, null);
    }

    private void animatePicker(boolean z2, long j2) {
        float f2 = z2 ? 0.0f : 1.0f;
        if (this.mHoursToMinutes != f2) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, this.HOURS_TO_MINUTES, f2);
            this.mHoursToMinutesAnimator = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setAutoCancel(true);
            this.mHoursToMinutesAnimator.setDuration(j2);
            this.mHoursToMinutesAnimator.start();
            return;
        }
        ObjectAnimator objectAnimator = this.mHoursToMinutesAnimator;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.mHoursToMinutesAnimator.cancel();
        this.mHoursToMinutesAnimator = null;
    }

    private static void calculatePositions(Paint paint, float f2, float f3, float f4, float f5, float[] fArr, float[] fArr2) {
        paint.setTextSize(f5);
        float fAscent = f4 - ((paint.ascent() + paint.descent()) / 2.0f);
        for (int i2 = 0; i2 < 12; i2++) {
            fArr[i2] = f3 - (COS_30[i2] * f2);
            fArr2[i2] = fAscent - (SIN_30[i2] * f2);
        }
    }

    private void calculatePositionsHours() {
        calculatePositions(this.mPaint[0], this.mCircleRadius - this.mTextInset[0], this.mXCenter, this.mYCenter, this.mTextSize[0], this.mOuterTextX[0], this.mOuterTextY[0]);
        if (this.mIs24HourMode) {
            calculatePositions(this.mPaint[0], this.mCircleRadius - this.mTextInset[2], this.mXCenter, this.mYCenter, this.mTextSize[2], this.mInnerTextX, this.mInnerTextY);
        }
    }

    private void calculatePositionsMinutes() {
        calculatePositions(this.mPaint[1], this.mCircleRadius - this.mTextInset[1], this.mXCenter, this.mYCenter, this.mTextSize[1], this.mOuterTextX[1], this.mOuterTextY[1]);
    }

    private void drawCenter(Canvas canvas, float f2) {
        this.mPaintCenter.setAlpha((int) ((f2 * 255.0f) + 0.5f));
        canvas.drawCircle(this.mXCenter, this.mYCenter, this.mCenterDotRadius, this.mPaintCenter);
    }

    private void drawCircleBackground(Canvas canvas) {
        canvas.drawCircle(this.mXCenter, this.mYCenter, this.mCircleRadius, this.mPaintBackground);
    }

    private void drawHours(Canvas canvas, Path path, float f2) {
        int i2 = (int) (((1.0f - this.mHoursToMinutes) * 255.0f * f2) + 0.5f);
        if (i2 > 0) {
            canvas.save(2);
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            drawHoursClipped(canvas, i2, false);
            canvas.restore();
            canvas.save(2);
            canvas.clipPath(path, Region.Op.INTERSECT);
            drawHoursClipped(canvas, i2, true);
            canvas.restore();
        }
    }

    private void drawHoursClipped(Canvas canvas, int i2, boolean z2) {
        String[] strArr;
        drawTextElements(canvas, this.mTextSize[0], this.mTypeface, this.mTextColor[0], this.mOuterTextHours, this.mOuterTextX[0], this.mOuterTextY[0], this.mPaint[0], i2, z2 && !this.mIsOnInnerCircle, this.mSelectionDegrees[0], z2);
        if (!this.mIs24HourMode || (strArr = this.mInnerTextHours) == null) {
            return;
        }
        drawTextElements(canvas, this.mTextSize[2], this.mTypeface, this.mTextColor[2], strArr, this.mInnerTextX, this.mInnerTextY, this.mPaint[0], i2, z2 && this.mIsOnInnerCircle, this.mSelectionDegrees[0], z2);
    }

    private void drawMinutes(Canvas canvas, Path path, float f2) {
        int i2 = (int) ((this.mHoursToMinutes * 255.0f * f2) + 0.5f);
        if (i2 > 0) {
            canvas.save(2);
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            drawMinutesClipped(canvas, i2, false);
            canvas.restore();
            canvas.save(2);
            canvas.clipPath(path, Region.Op.INTERSECT);
            drawMinutesClipped(canvas, i2, true);
            canvas.restore();
        }
    }

    private void drawMinutesClipped(Canvas canvas, int i2, boolean z2) {
        drawTextElements(canvas, this.mTextSize[1], this.mTypeface, this.mTextColor[1], this.mMinutesText, this.mOuterTextX[1], this.mOuterTextY[1], this.mPaint[1], i2, z2, this.mSelectionDegrees[1], z2);
    }

    private void drawSelector(Canvas canvas, Path path) {
        int i2 = this.mIsOnInnerCircle ? 2 : 0;
        int[] iArr = this.mTextInset;
        int i3 = iArr[i2];
        int[] iArr2 = this.mSelectionDegrees;
        int i4 = iArr2[i2 % 2];
        float f2 = i4 % 30 != 0 ? 1.0f : 0.0f;
        int i5 = iArr[1];
        int i6 = iArr2[1];
        float f3 = i6 % 30 == 0 ? 0.0f : 1.0f;
        int i7 = this.mSelectorRadius;
        float fLerp = this.mCircleRadius - MathUtils.lerp(i3, i5, this.mHoursToMinutes);
        double radians = Math.toRadians(MathUtils.lerpDeg(i4, i6, this.mHoursToMinutes));
        float fSin = (((float) Math.sin(radians)) * fLerp) + this.mXCenter;
        float f4 = f2;
        float fCos = this.mYCenter - (((float) Math.cos(radians)) * fLerp);
        Paint paint = this.mPaintSelector[0];
        paint.setColor(this.mSelectorColor);
        float f5 = i7;
        canvas.drawCircle(fSin, fCos, f5, paint);
        if (path != null) {
            path.reset();
            path.addCircle(fSin, fCos, f5, Path.Direction.CCW);
        }
        float fLerp2 = MathUtils.lerp(f4, f3, this.mHoursToMinutes);
        if (fLerp2 > 0.0f) {
            Paint paint2 = this.mPaintSelector[1];
            paint2.setColor(this.mSelectorDotColor);
            canvas.drawCircle(fSin, fCos, this.mSelectorDotRadius * fLerp2, paint2);
        }
        double dSin = Math.sin(radians);
        double dCos = Math.cos(radians);
        float f6 = fLerp - f5;
        int i8 = this.mXCenter;
        int i9 = this.mCenterDotRadius;
        double d2 = f6;
        float f7 = (this.mYCenter - ((int) (((double) i9) * dCos))) - ((int) (d2 * dCos));
        Paint paint3 = this.mPaintSelector[2];
        paint3.setColor(this.mSelectorColor);
        paint3.setStrokeWidth(this.mSelectorStroke);
        canvas.drawLine(this.mXCenter, this.mYCenter, i8 + ((int) (((double) i9) * dSin)) + ((int) (dSin * d2)), f7, paint3);
    }

    private void drawTextElements(Canvas canvas, float f2, Typeface typeface, ColorStateList colorStateList, String[] strArr, float[] fArr, float[] fArr2, Paint paint, int i2, boolean z2, int i3, boolean z3) {
        paint.setTextSize(f2);
        paint.setTypeface(typeface);
        float f3 = i3 / 30.0f;
        int i4 = (int) f3;
        int iCeil = ((int) Math.ceil(f3)) % 12;
        int i5 = 0;
        while (i5 < 12) {
            boolean z4 = i4 == i5 || iCeil == i5;
            if (!z3 || z4) {
                int colorForState = colorStateList.getColorForState(StateSet.get(((z2 && z4) ? 32 : 0) | 8), 0);
                paint.setColor(colorForState);
                paint.setAlpha(getMultipliedAlpha(colorForState, i2));
                canvas.drawText(strArr[i5], fArr[i5], fArr2[i5], paint);
            }
            i5++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDegreesForHour(int i2) {
        if (this.mIs24HourMode) {
            if (i2 >= 12) {
                i2 -= 12;
            }
        } else if (i2 == 12) {
            i2 = 0;
        }
        return i2 * 30;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDegreesForMinute(int i2) {
        return i2 * 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDegreesFromXY(float f2, float f3, boolean z2) {
        int i2;
        int i3;
        if (this.mIs24HourMode && this.mShowHours) {
            i3 = this.mMinDistForInnerNumber;
            i2 = this.mMaxDistForOuterNumber;
        } else {
            int i4 = this.mCircleRadius - this.mTextInset[!this.mShowHours ? 1 : 0];
            int i5 = this.mSelectorRadius;
            int i6 = i4 - i5;
            i2 = i4 + i5;
            i3 = i6;
        }
        double d2 = f2 - this.mXCenter;
        double d3 = f3 - this.mYCenter;
        double dSqrt = Math.sqrt((d3 * d3) + (d2 * d2));
        if (dSqrt < i3) {
            return -1;
        }
        if (z2 && dSqrt > i2) {
            return -1;
        }
        int degrees = (int) (Math.toDegrees(Math.atan2(d3, d2) + 1.5707963267948966d) + 0.5d);
        return degrees < 0 ? degrees + 360 : degrees;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0016, code lost:
    
        if (r2.mAmOrPm == 1) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:?, code lost:
    
        return r3 + 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0010, code lost:
    
        if (r3 != 0) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getHourForDegrees(int r3, boolean r4) {
        /*
            r2 = this;
            int r3 = r3 / 30
            r0 = 12
            int r3 = r3 % r0
            boolean r1 = r2.mIs24HourMode
            if (r1 == 0) goto L13
            if (r4 != 0) goto Le
            if (r3 != 0) goto Le
            goto L1c
        Le:
            if (r4 == 0) goto L1b
            if (r3 == 0) goto L1b
            goto L18
        L13:
            int r4 = r2.mAmOrPm
            r0 = 1
            if (r4 != r0) goto L1b
        L18:
            int r0 = r3 + 12
            goto L1c
        L1b:
            r0 = r3
        L1c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.widget.RadialTimePickerView.getHourForDegrees(int, boolean):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getInnerCircleForHour(int i2) {
        return this.mIs24HourMode && (i2 == 0 || i2 > 12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getInnerCircleFromXY(float f2, float f3) {
        if (!this.mIs24HourMode || !this.mShowHours) {
            return false;
        }
        double d2 = f2 - this.mXCenter;
        double d3 = f3 - this.mYCenter;
        return Math.sqrt((d3 * d3) + (d2 * d2)) <= ((double) this.mHalfwayDist);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMinuteForDegrees(int i2) {
        return i2 / 6;
    }

    private int getMultipliedAlpha(int i2, int i3) {
        return (int) (((((double) i3) / 255.0d) * ((double) Color.alpha(i2))) + 0.5d);
    }

    private boolean handleTouchInput(float f2, float f3, boolean z2, boolean z3) {
        int currentMinute;
        boolean z4;
        int i2;
        boolean innerCircleFromXY = getInnerCircleFromXY(f2, f3);
        int degreesFromXY = getDegreesFromXY(f2, f3, false);
        if (degreesFromXY == -1) {
            return false;
        }
        animatePicker(this.mShowHours, 60L);
        if (this.mShowHours) {
            int iSnapOnly30s = snapOnly30s(degreesFromXY, 0) % 360;
            z4 = (this.mIsOnInnerCircle == innerCircleFromXY && this.mSelectionDegrees[0] == iSnapOnly30s) ? false : true;
            this.mIsOnInnerCircle = innerCircleFromXY;
            this.mSelectionDegrees[0] = iSnapOnly30s;
            currentMinute = getCurrentHour();
            i2 = 0;
        } else {
            int iSnapPrefer30s = snapPrefer30s(degreesFromXY) % 360;
            int[] iArr = this.mSelectionDegrees;
            boolean z5 = iArr[1] != iSnapPrefer30s;
            iArr[1] = iSnapPrefer30s;
            currentMinute = getCurrentMinute();
            z4 = z5;
            i2 = 1;
        }
        if (!z4 && !z2 && !z3) {
            return false;
        }
        OnValueSelectedListener onValueSelectedListener = this.mListener;
        if (onValueSelectedListener != null) {
            onValueSelectedListener.onValueSelected(i2, currentMinute, z3);
        }
        if (z4 || z2) {
            performHapticFeedback(4);
            invalidate();
        }
        return true;
    }

    private void initData() {
        if (this.mIs24HourMode) {
            this.mOuterTextHours = this.mOuterHours24Texts;
            this.mInnerTextHours = this.mInnerHours24Texts;
        } else {
            String[] strArr = this.mHours12Texts;
            this.mOuterTextHours = strArr;
            this.mInnerTextHours = strArr;
        }
        this.mMinutesText = this.mMinutesTexts;
    }

    private void initHoursAndMinutesText() {
        for (int i2 = 0; i2 < 12; i2++) {
            String[] strArr = this.mHours12Texts;
            int[] iArr = HOURS_NUMBERS;
            strArr[i2] = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(iArr[i2]));
            this.mInnerHours24Texts[i2] = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(HOURS_NUMBERS_24[i2]));
            this.mOuterHours24Texts[i2] = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(iArr[i2]));
            this.mMinutesTexts[i2] = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(MINUTES_NUMBERS[i2]));
        }
    }

    private static void preparePrefer30sMap() {
        int i2 = 1;
        int i3 = 8;
        int i4 = 0;
        for (int i5 = 0; i5 < 361; i5++) {
            SNAP_PREFER_30S_MAP[i5] = i4;
            if (i2 == i3) {
                i4 += 6;
                i3 = i4 == 360 ? 7 : i4 % 30 == 0 ? 14 : 4;
                i2 = 1;
            } else {
                i2++;
            }
        }
    }

    private void setCurrentHourInternal(int i2, boolean z2, boolean z3) {
        OnValueSelectedListener onValueSelectedListener;
        this.mSelectionDegrees[0] = (i2 % 12) * 30;
        int i3 = (i2 == 0 || i2 % 24 < 12) ? 0 : 1;
        boolean innerCircleForHour = getInnerCircleForHour(i2);
        if (this.mAmOrPm != i3 || this.mIsOnInnerCircle != innerCircleForHour) {
            this.mAmOrPm = i3;
            this.mIsOnInnerCircle = innerCircleForHour;
            initData();
            this.mTouchHelper.invalidateRoot();
        }
        invalidate();
        if (!z2 || (onValueSelectedListener = this.mListener) == null) {
            return;
        }
        onValueSelectedListener.onValueSelected(0, i2, z3);
    }

    private void setCurrentMinuteInternal(int i2, boolean z2) {
        OnValueSelectedListener onValueSelectedListener;
        this.mSelectionDegrees[1] = (i2 % 60) * 6;
        invalidate();
        if (!z2 || (onValueSelectedListener = this.mListener) == null) {
            return;
        }
        onValueSelectedListener.onValueSelected(1, i2, false);
    }

    private void showPicker(boolean z2, boolean z3) {
        if (this.mShowHours == z2) {
            return;
        }
        this.mShowHours = z2;
        if (z3) {
            animatePicker(z2, 500L);
        } else {
            ObjectAnimator objectAnimator = this.mHoursToMinutesAnimator;
            if (objectAnimator != null && objectAnimator.isStarted()) {
                this.mHoursToMinutesAnimator.cancel();
                this.mHoursToMinutesAnimator = null;
            }
            this.mHoursToMinutes = z2 ? 0.0f : 1.0f;
        }
        initData();
        invalidate();
        this.mTouchHelper.invalidateRoot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int snapOnly30s(int i2, int i3) {
        int i4 = (i2 / 30) * 30;
        int i5 = i4 + 30;
        if (i3 != 1) {
            if (i3 == -1) {
                return i2 == i4 ? i4 - 30 : i4;
            }
            if (i2 - i4 < i5 - i2) {
                return i4;
            }
        }
        return i5;
    }

    private static int snapPrefer30s(int i2) {
        int[] iArr = SNAP_PREFER_30S_MAP;
        if (iArr == null) {
            return -1;
        }
        return iArr[i2];
    }

    public void applyAttributes(AttributeSet attributeSet, int i2, int i3) {
        Context context = getContext();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.TimePicker, i2, i3);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(3);
        ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(9);
        ColorStateList[] colorStateListArr = this.mTextColor;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-65281);
        }
        colorStateListArr[0] = colorStateList;
        ColorStateList[] colorStateListArr2 = this.mTextColor;
        if (colorStateList2 == null) {
            colorStateList2 = ColorStateList.valueOf(-65281);
        }
        colorStateListArr2[2] = colorStateList2;
        ColorStateList[] colorStateListArr3 = this.mTextColor;
        colorStateListArr3[1] = colorStateListArr3[0];
        ColorStateList colorStateList3 = typedArrayObtainStyledAttributes.getColorStateList(5);
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(StateSet.get(40), 0) : -65281;
        this.mPaintCenter.setColor(colorForState);
        int[] iArr = StateSet.get(40);
        this.mSelectorColor = colorForState;
        this.mSelectorDotColor = this.mTextColor[0].getColorForState(iArr, 0);
        this.mPaintBackground.setColor(typedArrayObtainStyledAttributes.getColor(4, context.getColor(R.color.timepicker_default_numbers_background_color_material)));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.mTouchHelper.dispatchHoverEvent(motionEvent)) {
            return true;
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    public int getAmOrPm() {
        return this.mAmOrPm;
    }

    public int getCurrentHour() {
        return getHourForDegrees(this.mSelectionDegrees[0], this.mIsOnInnerCircle);
    }

    public int getCurrentItemShowing() {
        return !this.mShowHours ? 1 : 0;
    }

    public int getCurrentMinute() {
        return getMinuteForDegrees(this.mSelectionDegrees[1]);
    }

    public void initialize(int i2, int i3, boolean z2) {
        if (this.mIs24HourMode != z2) {
            this.mIs24HourMode = z2;
            initData();
        }
        setCurrentHourInternal(i2, false, false);
        setCurrentMinuteInternal(i3, false);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f2 = this.mInputEnabled ? 1.0f : this.mDisabledAlpha;
        drawCircleBackground(canvas);
        Path path = this.mSelectorPath;
        drawSelector(canvas, path);
        drawHours(canvas, path, f2);
        drawMinutes(canvas, path, f2);
        drawCenter(canvas, f2);
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        if (z2) {
            this.mXCenter = getWidth() / 2;
            int height = getHeight() / 2;
            this.mYCenter = height;
            int iMin = Math.min(this.mXCenter, height);
            this.mCircleRadius = iMin;
            int[] iArr = this.mTextInset;
            int i6 = iArr[2];
            int i7 = this.mSelectorRadius;
            this.mMinDistForInnerNumber = (iMin - i6) - i7;
            int i8 = iArr[0];
            this.mMaxDistForOuterNumber = (iMin - i8) + i7;
            this.mHalfwayDist = iMin - ((i8 + i6) / 2);
            calculatePositionsHours();
            calculatePositionsMinutes();
            this.mTouchHelper.invalidateRoot();
        }
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        if (isEnabled()) {
            return getDegreesFromXY(motionEvent.getX(), motionEvent.getY(), false) != -1 ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i2);
        }
        return null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (!this.mInputEnabled) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 2 || actionMasked == 1 || actionMasked == 0) {
            boolean z3 = false;
            if (actionMasked == 0) {
                this.mChangedDuringTouch = false;
            } else {
                if (actionMasked == 1) {
                    if (this.mChangedDuringTouch) {
                        z2 = true;
                    } else {
                        z2 = true;
                        z3 = true;
                    }
                }
                this.mChangedDuringTouch = handleTouchInput(motionEvent.getX(), motionEvent.getY(), z3, z2) | this.mChangedDuringTouch;
            }
            z2 = false;
            this.mChangedDuringTouch = handleTouchInput(motionEvent.getX(), motionEvent.getY(), z3, z2) | this.mChangedDuringTouch;
        }
        return true;
    }

    public boolean setAmOrPm(int i2) {
        if (this.mAmOrPm == i2 || this.mIs24HourMode) {
            return false;
        }
        this.mAmOrPm = i2;
        invalidate();
        this.mTouchHelper.invalidateRoot();
        return true;
    }

    public void setCurrentHour(int i2) {
        setCurrentHourInternal(i2, true, false);
    }

    public void setCurrentItemShowing(int i2, boolean z2) {
        if (i2 == 0) {
            showHours(z2);
        } else if (i2 != 1) {
            m.p("ClockView does not support showing item ", i2, TAG);
        } else {
            showMinutes(z2);
        }
    }

    public void setCurrentMinute(int i2) {
        setCurrentMinuteInternal(i2, true);
    }

    public void setInputEnabled(boolean z2) {
        this.mInputEnabled = z2;
        invalidate();
    }

    public void setOnValueSelectedListener(OnValueSelectedListener onValueSelectedListener) {
        this.mListener = onValueSelectedListener;
    }

    public void showHours(boolean z2) {
        showPicker(true, z2);
    }

    public void showMinutes(boolean z2) {
        showPicker(false, z2);
    }

    public RadialTimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843933);
    }

    public RadialTimePickerView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public RadialTimePickerView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet);
        this.HOURS_TO_MINUTES = new FloatProperty<RadialTimePickerView>("hoursToMinutes") { // from class: android.widget.RadialTimePickerView.1
            @Override // android.util.Property
            public Float get(RadialTimePickerView radialTimePickerView) {
                return Float.valueOf(radialTimePickerView.mHoursToMinutes);
            }

            @Override // android.util.FloatProperty
            public void setValue(RadialTimePickerView radialTimePickerView, float f2) {
                radialTimePickerView.mHoursToMinutes = f2;
                radialTimePickerView.invalidate();
            }
        };
        this.mHours12Texts = new String[12];
        this.mOuterHours24Texts = new String[12];
        this.mInnerHours24Texts = new String[12];
        this.mMinutesTexts = new String[12];
        Paint[] paintArr = {paint, paint};
        this.mPaint = paintArr;
        Paint paint = new Paint();
        this.mPaintCenter = paint;
        Paint[] paintArr2 = {paint, paint, paint};
        this.mPaintSelector = paintArr2;
        Paint paint2 = new Paint();
        this.mPaintBackground = paint2;
        this.mTextColor = new ColorStateList[3];
        this.mTextSize = new int[]{resources.getDimensionPixelSize(R.dimen.timepicker_text_size_normal), resources.getDimensionPixelSize(R.dimen.timepicker_text_size_normal), resources.getDimensionPixelSize(R.dimen.timepicker_text_size_inner)};
        this.mTextInset = new int[]{resources.getDimensionPixelSize(R.dimen.timepicker_text_inset_normal), resources.getDimensionPixelSize(R.dimen.timepicker_text_inset_normal), resources.getDimensionPixelSize(R.dimen.timepicker_text_inset_inner)};
        Class cls = Float.TYPE;
        this.mOuterTextX = (float[][]) Array.newInstance((Class<?>) cls, 2, 12);
        this.mOuterTextY = (float[][]) Array.newInstance((Class<?>) cls, 2, 12);
        this.mInnerTextX = new float[12];
        this.mInnerTextY = new float[12];
        this.mSelectionDegrees = new int[2];
        this.mSelectorPath = new Path();
        this.mInputEnabled = true;
        this.mChangedDuringTouch = false;
        applyAttributes(attributeSet, i2, i3);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16842803, typedValue, true);
        this.mDisabledAlpha = typedValue.getFloat();
        this.mTypeface = Typeface.create("sans-serif", 0);
        Paint paint3 = new Paint();
        paint3.setAntiAlias(true);
        Paint paint4 = paintArr[0];
        Paint.Align align = Paint.Align.CENTER;
        paint4.setTextAlign(align);
        Paint paint5 = new Paint();
        paint5.setAntiAlias(true);
        paintArr[1].setTextAlign(align);
        paint.setAntiAlias(true);
        Paint paint6 = new Paint();
        paint6.setAntiAlias(true);
        Paint paint7 = new Paint();
        paint7.setAntiAlias(true);
        Paint paint8 = new Paint();
        paint8.setAntiAlias(true);
        paintArr2[2].setStrokeWidth(2.0f);
        paint2.setAntiAlias(true);
        Resources resources = getResources();
        this.mSelectorRadius = resources.getDimensionPixelSize(R.dimen.timepicker_selector_radius);
        this.mSelectorStroke = resources.getDimensionPixelSize(R.dimen.timepicker_selector_stroke);
        this.mSelectorDotRadius = resources.getDimensionPixelSize(R.dimen.timepicker_selector_dot_radius);
        this.mCenterDotRadius = resources.getDimensionPixelSize(R.dimen.timepicker_center_dot_radius);
        this.mShowHours = true;
        this.mHoursToMinutes = 0.0f;
        this.mIs24HourMode = false;
        this.mAmOrPm = 0;
        RadialPickerTouchHelper radialPickerTouchHelper = new RadialPickerTouchHelper();
        this.mTouchHelper = radialPickerTouchHelper;
        setAccessibilityDelegate(radialPickerTouchHelper);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        initHoursAndMinutesText();
        initData();
        Calendar calendar = Calendar.getInstance(Locale.getDefault());
        int i4 = calendar.get(11);
        int i5 = calendar.get(12);
        setCurrentHourInternal(i4, false, false);
        setCurrentMinuteInternal(i5, false);
        setHapticFeedbackEnabled(true);
    }
}
