package android.widget;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.icu.text.DisplayContext;
import android.icu.text.SimpleDateFormat;
import android.icu.util.Calendar;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.IntArray;
import android.util.Log;
import android.util.MathUtils;
import android.util.StateSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.internal.R;
import com.android.internal.widget.ExploreByTouchHelper;
import java.text.NumberFormat;
import java.util.Locale;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes2.dex */
class SimpleMonthView extends View {
    private static final int DAYS_IN_WEEK = 7;
    private static final int DEFAULT_SELECTED_DAY = -1;
    private static final int DEFAULT_WEEK_START = 1;
    private static final int MAX_WEEKS_IN_MONTH = 6;
    private static final String MONTH_YEAR_FORMAT = "MMMMy";
    private static final int SELECTED_HIGHLIGHT_ALPHA = 176;
    private int mActivatedDay;
    private final Calendar mCalendar;
    private int mCellWidth;
    private final NumberFormat mDayFormatter;
    private int mDayHeight;
    private final Paint mDayHighlightPaint;
    private final Paint mDayHighlightSelectorPaint;
    private int mDayOfWeekHeight;
    private final String[] mDayOfWeekLabels;
    private final TextPaint mDayOfWeekPaint;
    private int mDayOfWeekStart;
    private final TextPaint mDayPaint;
    private final Paint mDaySelectorPaint;
    private int mDaySelectorRadius;
    private ColorStateList mDayTextColor;
    private int mDaysInMonth;
    private final int mDesiredCellWidth;
    private final int mDesiredDayHeight;
    private final int mDesiredDayOfWeekHeight;
    private final int mDesiredDaySelectorRadius;
    private final int mDesiredMonthHeight;
    private int mEnabledDayEnd;
    private int mEnabledDayStart;
    private int mHighlightedDay;
    private boolean mIsTouchHighlighted;
    private final Locale mLocale;
    private int mMonth;
    private int mMonthHeight;
    private final TextPaint mMonthPaint;
    private String mMonthYearLabel;
    private OnDayClickListener mOnDayClickListener;
    private int mPaddedHeight;
    private int mPaddedWidth;
    private int mPreviouslyHighlightedDay;
    private int mToday;
    private final MonthViewTouchHelper mTouchHelper;
    private int mWeekStart;
    private int mYear;

    public class MonthViewTouchHelper extends ExploreByTouchHelper {
        private static final String DATE_FORMAT = "dd MMMM yyyy";
        private final Calendar mTempCalendar;
        private final Rect mTempRect;

        public MonthViewTouchHelper(View view) {
            super(view);
            this.mTempRect = new Rect();
            this.mTempCalendar = Calendar.getInstance();
        }

        private CharSequence getDayDescription(int i2) {
            if (!SimpleMonthView.this.isValidDayOfMonth(i2)) {
                return "";
            }
            this.mTempCalendar.set(SimpleMonthView.this.mYear, SimpleMonthView.this.mMonth, i2);
            return DateFormat.format(DATE_FORMAT, this.mTempCalendar.getTimeInMillis());
        }

        private CharSequence getDayText(int i2) {
            if (SimpleMonthView.this.isValidDayOfMonth(i2)) {
                return SimpleMonthView.this.mDayFormatter.format(i2);
            }
            return null;
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f2, float f3) {
            int dayAtLocation = SimpleMonthView.this.getDayAtLocation((int) (f2 + 0.5f), (int) (f3 + 0.5f));
            if (dayAtLocation != -1) {
                return dayAtLocation;
            }
            return Integer.MIN_VALUE;
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(IntArray intArray) {
            for (int i2 = 1; i2 <= SimpleMonthView.this.mDaysInMonth; i2++) {
                intArray.add(i2);
            }
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i2, int i3, Bundle bundle) {
            if (i3 != 16) {
                return false;
            }
            return SimpleMonthView.this.onDayClicked(i2);
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public void onPopulateEventForVirtualView(int i2, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setContentDescription(getDayDescription(i2));
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i2, AccessibilityNodeInfo accessibilityNodeInfo) {
            if (!SimpleMonthView.this.getBoundsForDay(i2, this.mTempRect)) {
                this.mTempRect.setEmpty();
                accessibilityNodeInfo.setContentDescription("");
                accessibilityNodeInfo.setBoundsInParent(this.mTempRect);
                accessibilityNodeInfo.setVisibleToUser(false);
                return;
            }
            accessibilityNodeInfo.setText(getDayText(i2));
            accessibilityNodeInfo.setContentDescription(getDayDescription(i2));
            accessibilityNodeInfo.setBoundsInParent(this.mTempRect);
            boolean zIsDayEnabled = SimpleMonthView.this.isDayEnabled(i2);
            if (zIsDayEnabled) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
            }
            accessibilityNodeInfo.setEnabled(zIsDayEnabled);
            if (i2 == SimpleMonthView.this.mActivatedDay) {
                accessibilityNodeInfo.setChecked(true);
            }
        }
    }

    public interface OnDayClickListener {
        void onDayClick(SimpleMonthView simpleMonthView, Calendar calendar);
    }

    public SimpleMonthView(Context context) {
        this(context, null);
    }

    private ColorStateList applyTextAppearance(Paint paint, int i2) {
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R.styleable.TextAppearance, 0, i2);
        String string = typedArrayObtainStyledAttributes.getString(12);
        if (string != null) {
            paint.setTypeface(Typeface.create(string, 0));
        }
        paint.setTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, (int) paint.getTextSize()));
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(3);
        if (colorStateList != null) {
            paint.setColor(colorStateList.getColorForState(View.ENABLED_STATE_SET, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        return colorStateList;
    }

    private void drawDays(Canvas canvas) {
        int i2;
        int colorForState;
        TextPaint textPaint = this.mDayPaint;
        int i3 = this.mMonthHeight + this.mDayOfWeekHeight;
        int i4 = this.mDayHeight;
        int i5 = this.mCellWidth;
        float fDescent = (textPaint.descent() + textPaint.ascent()) / 2.0f;
        int i6 = (i4 / 2) + i3;
        int iFindDayOffset = findDayOffset();
        int i7 = 1;
        while (i7 <= this.mDaysInMonth) {
            int i8 = (i5 / 2) + (i5 * iFindDayOffset);
            if (isLayoutRtl()) {
                i8 = this.mPaddedWidth - i8;
            }
            boolean zIsDayEnabled = isDayEnabled(i7);
            int i9 = zIsDayEnabled ? 8 : 0;
            boolean z2 = this.mActivatedDay == i7;
            boolean z3 = this.mHighlightedDay == i7;
            if (z2) {
                i9 |= 32;
                canvas.drawCircle(i8, i6, this.mDaySelectorRadius, z3 ? this.mDayHighlightSelectorPaint : this.mDaySelectorPaint);
            } else if (z3) {
                i9 |= 16;
                if (zIsDayEnabled) {
                    canvas.drawCircle(i8, i6, this.mDaySelectorRadius, this.mDayHighlightPaint);
                }
            }
            if (!(this.mToday == i7) || z2) {
                i2 = 0;
                colorForState = this.mDayTextColor.getColorForState(StateSet.get(i9), 0);
            } else {
                colorForState = this.mDaySelectorPaint.getColor();
                i2 = 0;
            }
            textPaint.setColor(colorForState);
            canvas.drawText(this.mDayFormatter.format(i7), i8, i6 - fDescent, textPaint);
            iFindDayOffset++;
            if (iFindDayOffset == 7) {
                i6 += i4;
                iFindDayOffset = i2;
            }
            i7++;
        }
    }

    private void drawDaysOfWeek(Canvas canvas) {
        TextPaint textPaint = this.mDayOfWeekPaint;
        int i2 = this.mMonthHeight;
        int i3 = this.mDayOfWeekHeight;
        int i4 = this.mCellWidth;
        float fDescent = (textPaint.descent() + textPaint.ascent()) / 2.0f;
        int i5 = (i3 / 2) + i2;
        for (int i6 = 0; i6 < 7; i6++) {
            int i7 = (i4 / 2) + (i4 * i6);
            if (isLayoutRtl()) {
                i7 = this.mPaddedWidth - i7;
            }
            canvas.drawText(this.mDayOfWeekLabels[i6], i7, i5 - fDescent, textPaint);
        }
    }

    private void drawMonth(Canvas canvas) {
        canvas.drawText(this.mMonthYearLabel, this.mPaddedWidth / 2.0f, (this.mMonthHeight - (this.mMonthPaint.descent() + this.mMonthPaint.ascent())) / 2.0f, this.mMonthPaint);
    }

    private void ensureFocusedDay() {
        if (this.mHighlightedDay != -1) {
            return;
        }
        int i2 = this.mPreviouslyHighlightedDay;
        if (i2 != -1) {
            this.mHighlightedDay = i2;
            return;
        }
        int i3 = this.mActivatedDay;
        if (i3 != -1) {
            this.mHighlightedDay = i3;
        } else {
            this.mHighlightedDay = 1;
        }
    }

    private int findClosestColumn(Rect rect) {
        if (rect == null) {
            return 3;
        }
        int iCenterX = rect.centerX() - this.mPaddingLeft;
        if (this.mCellWidth != 0 || !ActivityManager.isUserAMonkey()) {
            int iConstrain = MathUtils.constrain(iCenterX / this.mCellWidth, 0, 6);
            return isLayoutRtl() ? (7 - iConstrain) - 1 : iConstrain;
        }
        Log.d("SimpleMonthView", "centerX=" + iCenterX);
        Throwable th = new Throwable();
        th.fillInStackTrace();
        Log.w("SimpleMonthView", "Throw", th);
        return 0;
    }

    private int findClosestRow(Rect rect) {
        if (rect == null) {
            return 3;
        }
        int iCenterY = rect.centerY();
        TextPaint textPaint = this.mDayPaint;
        int i2 = this.mMonthHeight + this.mDayOfWeekHeight;
        int i3 = this.mDayHeight;
        int iRound = Math.round(((int) (iCenterY - (((i3 / 2) + i2) - ((textPaint.descent() + textPaint.ascent()) / 2.0f)))) / i3);
        int iFindDayOffset = findDayOffset() + this.mDaysInMonth;
        return MathUtils.constrain(iRound, 0, (iFindDayOffset / 7) - (iFindDayOffset % 7 == 0 ? 1 : 0));
    }

    private int findDayOffset() {
        int i2 = this.mDayOfWeekStart;
        int i3 = this.mWeekStart;
        int i4 = i2 - i3;
        return i2 < i3 ? i4 + 7 : i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDayAtLocation(int i2, int i3) {
        int i4;
        int paddingTop;
        int paddingLeft = i2 - getPaddingLeft();
        if (paddingLeft < 0 || paddingLeft >= this.mPaddedWidth || (paddingTop = i3 - getPaddingTop()) < (i4 = this.mMonthHeight + this.mDayOfWeekHeight) || paddingTop >= this.mPaddedHeight) {
            return -1;
        }
        if (isLayoutRtl()) {
            paddingLeft = this.mPaddedWidth - paddingLeft;
        }
        int iFindDayOffset = (((((paddingTop - i4) / this.mDayHeight) * 7) + ((paddingLeft * 7) / this.mPaddedWidth)) + 1) - findDayOffset();
        if (isValidDayOfMonth(iFindDayOffset)) {
            return iFindDayOffset;
        }
        return -1;
    }

    private static int getDaysInMonth(int i2, int i3) {
        switch (i2) {
            case 0:
            case 2:
            case 4:
            case 6:
            case 7:
            case 9:
            case 11:
                return 31;
            case 1:
                return i3 % 4 == 0 ? 29 : 28;
            case 3:
            case 5:
            case 8:
            case 10:
                return 30;
            default:
                throw new IllegalArgumentException("Invalid Month");
        }
    }

    private void initPaints(Resources resources) {
        String string = resources.getString(R.string.date_picker_month_typeface);
        String string2 = resources.getString(R.string.date_picker_day_of_week_typeface);
        String string3 = resources.getString(R.string.date_picker_day_typeface);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.date_picker_month_text_size);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.date_picker_day_of_week_text_size);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.date_picker_day_text_size);
        this.mMonthPaint.setAntiAlias(true);
        this.mMonthPaint.setTextSize(dimensionPixelSize);
        this.mMonthPaint.setTypeface(Typeface.create(string, 0));
        TextPaint textPaint = this.mMonthPaint;
        Paint.Align align = Paint.Align.CENTER;
        textPaint.setTextAlign(align);
        TextPaint textPaint2 = this.mMonthPaint;
        Paint.Style style = Paint.Style.FILL;
        textPaint2.setStyle(style);
        this.mDayOfWeekPaint.setAntiAlias(true);
        this.mDayOfWeekPaint.setTextSize(dimensionPixelSize2);
        this.mDayOfWeekPaint.setTypeface(Typeface.create(string2, 0));
        this.mDayOfWeekPaint.setTextAlign(align);
        this.mDayOfWeekPaint.setStyle(style);
        this.mDaySelectorPaint.setAntiAlias(true);
        this.mDaySelectorPaint.setStyle(style);
        this.mDayHighlightPaint.setAntiAlias(true);
        this.mDayHighlightPaint.setStyle(style);
        this.mDayHighlightSelectorPaint.setAntiAlias(true);
        this.mDayHighlightSelectorPaint.setStyle(style);
        this.mDayPaint.setAntiAlias(true);
        this.mDayPaint.setTextSize(dimensionPixelSize3);
        this.mDayPaint.setTypeface(Typeface.create(string3, 0));
        this.mDayPaint.setTextAlign(align);
        this.mDayPaint.setStyle(style);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDayEnabled(int i2) {
        return i2 >= this.mEnabledDayStart && i2 <= this.mEnabledDayEnd;
    }

    private boolean isFirstDayOfWeek(int i2) {
        return ((findDayOffset() + i2) - 1) % 7 == 0;
    }

    private boolean isLastDayOfWeek(int i2) {
        return (findDayOffset() + i2) % 7 == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidDayOfMonth(int i2) {
        return i2 >= 1 && i2 <= this.mDaysInMonth;
    }

    private static boolean isValidDayOfWeek(int i2) {
        return i2 >= 1 && i2 <= 7;
    }

    private static boolean isValidMonth(int i2) {
        return i2 >= 0 && i2 <= 11;
    }

    private boolean moveOneDay(boolean z2) {
        int i2;
        int i3;
        ensureFocusedDay();
        if (z2) {
            if (!isLastDayOfWeek(this.mHighlightedDay) && (i3 = this.mHighlightedDay) < this.mDaysInMonth) {
                this.mHighlightedDay = i3 + 1;
                return true;
            }
        } else if (!isFirstDayOfWeek(this.mHighlightedDay) && (i2 = this.mHighlightedDay) > 1) {
            this.mHighlightedDay = i2 - 1;
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onDayClicked(int i2) {
        if (!isValidDayOfMonth(i2) || !isDayEnabled(i2)) {
            return false;
        }
        if (this.mOnDayClickListener != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(this.mYear, this.mMonth, i2);
            this.mOnDayClickListener.onDayClick(this, calendar);
        }
        this.mTouchHelper.sendEventForVirtualView(i2, 1);
        return true;
    }

    private boolean sameDay(int i2, Calendar calendar) {
        return this.mYear == calendar.get(1) && this.mMonth == calendar.get(2) && i2 == calendar.get(5);
    }

    private void updateDayOfWeekLabels() {
        String[] strArr = LocaleData.get(this.mLocale).tinyWeekdayNames;
        for (int i2 = 0; i2 < 7; i2++) {
            this.mDayOfWeekLabels[i2] = strArr[(((this.mWeekStart + i2) - 1) % 7) + 1];
        }
    }

    private void updateMonthYearLabel() {
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(this.mLocale, MONTH_YEAR_FORMAT);
        d.g();
        SimpleDateFormat simpleDateFormatB = d.b(bestDateTimePattern, this.mLocale);
        simpleDateFormatB.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        this.mMonthYearLabel = simpleDateFormatB.format(this.mCalendar.getTime());
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.mTouchHelper.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    public boolean getBoundsForDay(int i2, Rect rect) {
        if (!isValidDayOfMonth(i2)) {
            return false;
        }
        int iFindDayOffset = (i2 - 1) + findDayOffset();
        int i3 = iFindDayOffset % 7;
        int i4 = this.mCellWidth;
        int width = isLayoutRtl() ? (getWidth() - getPaddingRight()) - ((i3 + 1) * i4) : getPaddingLeft() + (i3 * i4);
        int i5 = this.mDayHeight;
        int paddingTop = ((iFindDayOffset / 7) * i5) + getPaddingTop() + this.mMonthHeight + this.mDayOfWeekHeight;
        rect.set(width, paddingTop, i4 + width, i5 + paddingTop);
        return true;
    }

    public int getCellWidth() {
        return this.mCellWidth;
    }

    @Override // android.view.View
    public void getFocusedRect(Rect rect) {
        int i2 = this.mHighlightedDay;
        if (i2 > 0) {
            getBoundsForDay(i2, rect);
        } else {
            super.getFocusedRect(rect);
        }
    }

    public int getMonthHeight() {
        return this.mMonthHeight;
    }

    public String getMonthYearLabel() {
        return this.mMonthYearLabel;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        canvas.translate(paddingLeft, paddingTop);
        drawMonth(canvas);
        drawDaysOfWeek(canvas);
        drawDays(canvas);
        canvas.translate(-paddingLeft, -paddingTop);
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        if (z2) {
            int iFindDayOffset = findDayOffset();
            if (i2 == 17) {
                this.mHighlightedDay = Math.min(this.mDaysInMonth, ((findClosestRow(rect) + 1) * 7) - iFindDayOffset);
            } else if (i2 == 33) {
                int iFindClosestColumn = findClosestColumn(rect);
                int i3 = this.mDaysInMonth;
                int i4 = (((iFindDayOffset + i3) / 7) * 7) + (iFindClosestColumn - iFindDayOffset) + 1;
                if (i4 > i3) {
                    i4 -= 7;
                }
                this.mHighlightedDay = i4;
            } else if (i2 == 66) {
                int iFindClosestRow = findClosestRow(rect);
                this.mHighlightedDay = iFindClosestRow != 0 ? 1 + ((iFindClosestRow * 7) - iFindDayOffset) : 1;
            } else if (i2 == 130) {
                int iFindClosestColumn2 = (findClosestColumn(rect) - iFindDayOffset) + 1;
                if (iFindClosestColumn2 < 1) {
                    iFindClosestColumn2 += 7;
                }
                this.mHighlightedDay = iFindClosestColumn2;
            }
            ensureFocusedDay();
            invalidate();
        }
        super.onFocusChanged(z2, i2, rect);
    }

    @Override // android.view.View
    public void onFocusLost() {
        if (!this.mIsTouchHighlighted) {
            this.mPreviouslyHighlightedDay = this.mHighlightedDay;
            this.mHighlightedDay = -1;
            invalidate();
        }
        super.onFocusLost();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x005a  */
    /* JADX WARN: Code duplicated, block: B:28:0x005f  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        int i3;
        int keyCode = keyEvent.getKeyCode();
        boolean zMoveOneDay = false;
        if (keyCode == 61) {
            int i4 = keyEvent.hasNoModifiers() ? 2 : keyEvent.hasModifiers(1) ? 1 : 0;
            if (i4 != 0) {
                ViewParent parent = getParent();
                View viewFocusSearch = this;
                do {
                    viewFocusSearch = viewFocusSearch.focusSearch(i4);
                    if (viewFocusSearch == null || viewFocusSearch == this) {
                        break;
                    }
                } while (viewFocusSearch.getParent() == parent);
                if (viewFocusSearch != null) {
                    viewFocusSearch.requestFocus();
                    return true;
                }
            }
        } else if (keyCode != 66) {
            switch (keyCode) {
                case 19:
                    if (keyEvent.hasNoModifiers()) {
                        ensureFocusedDay();
                        int i5 = this.mHighlightedDay;
                        if (i5 > 7) {
                            this.mHighlightedDay = i5 - 7;
                            zMoveOneDay = true;
                        }
                    }
                    break;
                case 20:
                    if (keyEvent.hasNoModifiers()) {
                        ensureFocusedDay();
                        int i6 = this.mHighlightedDay;
                        if (i6 <= this.mDaysInMonth - 7) {
                            this.mHighlightedDay = i6 + 7;
                            zMoveOneDay = true;
                        }
                    }
                    break;
                case 21:
                    if (keyEvent.hasNoModifiers()) {
                        zMoveOneDay = moveOneDay(isLayoutRtl());
                    }
                    break;
                case 22:
                    if (keyEvent.hasNoModifiers()) {
                        zMoveOneDay = moveOneDay(!isLayoutRtl());
                    }
                    break;
                case 23:
                    i3 = this.mHighlightedDay;
                    if (i3 != -1) {
                        onDayClicked(i3);
                        return true;
                    }
                    break;
            }
        } else {
            i3 = this.mHighlightedDay;
            if (i3 != -1) {
                onDayClicked(i3);
                return true;
            }
        }
        if (!zMoveOneDay) {
            return super.onKeyDown(i2, keyEvent);
        }
        invalidate();
        return true;
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        if (z2) {
            int i6 = i4 - i2;
            int i7 = i5 - i3;
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int paddingRight = getPaddingRight();
            int paddingBottom = getPaddingBottom();
            int i8 = (i6 - paddingRight) - paddingLeft;
            int i9 = (i7 - paddingBottom) - paddingTop;
            if (i8 == this.mPaddedWidth || i9 == this.mPaddedHeight) {
                return;
            }
            this.mPaddedWidth = i8;
            this.mPaddedHeight = i9;
            float measuredHeight = i9 / ((getMeasuredHeight() - paddingTop) - paddingBottom);
            int i10 = (int) (this.mDesiredMonthHeight * measuredHeight);
            int i11 = this.mPaddedWidth / 7;
            this.mMonthHeight = i10;
            this.mDayOfWeekHeight = (int) (this.mDesiredDayOfWeekHeight * measuredHeight);
            this.mDayHeight = (int) (this.mDesiredDayHeight * measuredHeight);
            this.mCellWidth = i11;
            this.mDaySelectorRadius = Math.min(this.mDesiredDaySelectorRadius, Math.min(Math.min(paddingLeft, paddingRight) + (i11 / 2), (this.mDayHeight / 2) + paddingBottom));
            this.mTouchHelper.invalidateRoot();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int paddingBottom = getPaddingBottom() + getPaddingTop() + (this.mDesiredDayHeight * 6) + this.mDesiredDayOfWeekHeight + this.mDesiredMonthHeight;
        setMeasuredDimension(View.resolveSize(getPaddingEnd() + getPaddingStart() + (this.mDesiredCellWidth * 7), i2), View.resolveSize(paddingBottom, i3));
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        if (isEnabled()) {
            return getDayAtLocation((int) (motionEvent.getX() + 0.5f), (int) (motionEvent.getY() + 0.5f)) >= 0 ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i2);
        }
        return null;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002f  */
    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int dayAtLocation;
        int x2 = (int) (motionEvent.getX() + 0.5f);
        int y2 = (int) (motionEvent.getY() + 0.5f);
        int action = motionEvent.getAction();
        if (action == 0) {
            dayAtLocation = getDayAtLocation(x2, y2);
            this.mIsTouchHighlighted = true;
            if (this.mHighlightedDay != dayAtLocation) {
                this.mHighlightedDay = dayAtLocation;
                this.mPreviouslyHighlightedDay = dayAtLocation;
                invalidate();
            }
            if (action != 0 && dayAtLocation < 0) {
                return false;
            }
        } else {
            if (action == 1) {
                onDayClicked(getDayAtLocation(x2, y2));
            } else if (action == 2) {
                dayAtLocation = getDayAtLocation(x2, y2);
                this.mIsTouchHighlighted = true;
                if (this.mHighlightedDay != dayAtLocation) {
                    this.mHighlightedDay = dayAtLocation;
                    this.mPreviouslyHighlightedDay = dayAtLocation;
                    invalidate();
                }
                if (action != 0) {
                }
            } else if (action == 3) {
            }
            this.mHighlightedDay = -1;
            this.mIsTouchHighlighted = false;
            invalidate();
        }
        return true;
    }

    public void setDayHighlightColor(ColorStateList colorStateList) {
        this.mDayHighlightPaint.setColor(colorStateList.getColorForState(StateSet.get(24), 0));
        invalidate();
    }

    public void setDayOfWeekTextAppearance(int i2) {
        applyTextAppearance(this.mDayOfWeekPaint, i2);
        invalidate();
    }

    public void setDayOfWeekTextColor(ColorStateList colorStateList) {
        this.mDayOfWeekPaint.setColor(colorStateList.getColorForState(View.ENABLED_STATE_SET, 0));
        invalidate();
    }

    public void setDaySelectorColor(ColorStateList colorStateList) {
        int colorForState = colorStateList.getColorForState(StateSet.get(40), 0);
        this.mDaySelectorPaint.setColor(colorForState);
        this.mDayHighlightSelectorPaint.setColor(colorForState);
        this.mDayHighlightSelectorPaint.setAlpha(176);
        invalidate();
    }

    public void setDayTextAppearance(int i2) {
        ColorStateList colorStateListApplyTextAppearance = applyTextAppearance(this.mDayPaint, i2);
        if (colorStateListApplyTextAppearance != null) {
            this.mDayTextColor = colorStateListApplyTextAppearance;
        }
        invalidate();
    }

    public void setDayTextColor(ColorStateList colorStateList) {
        this.mDayTextColor = colorStateList;
        invalidate();
    }

    public void setFirstDayOfWeek(int i2) {
        if (isValidDayOfWeek(i2)) {
            this.mWeekStart = i2;
        } else {
            this.mWeekStart = this.mCalendar.getFirstDayOfWeek();
        }
        updateDayOfWeekLabels();
        this.mTouchHelper.invalidateRoot();
        invalidate();
    }

    public void setMonthParams(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.mActivatedDay = i2;
        if (isValidMonth(i3)) {
            this.mMonth = i3;
        }
        this.mYear = i4;
        this.mCalendar.set(2, this.mMonth);
        this.mCalendar.set(1, this.mYear);
        this.mCalendar.set(5, 1);
        this.mDayOfWeekStart = this.mCalendar.get(7);
        if (isValidDayOfWeek(i5)) {
            this.mWeekStart = i5;
        } else {
            this.mWeekStart = this.mCalendar.getFirstDayOfWeek();
        }
        Calendar calendar = Calendar.getInstance();
        this.mToday = -1;
        this.mDaysInMonth = getDaysInMonth(this.mMonth, this.mYear);
        int i8 = 0;
        while (true) {
            int i9 = this.mDaysInMonth;
            if (i8 >= i9) {
                int iConstrain = MathUtils.constrain(i6, 1, i9);
                this.mEnabledDayStart = iConstrain;
                this.mEnabledDayEnd = MathUtils.constrain(i7, iConstrain, this.mDaysInMonth);
                updateMonthYearLabel();
                updateDayOfWeekLabels();
                this.mTouchHelper.invalidateRoot();
                invalidate();
                return;
            }
            i8++;
            if (sameDay(i8, calendar)) {
                this.mToday = i8;
            }
        }
    }

    public void setMonthTextAppearance(int i2) {
        applyTextAppearance(this.mMonthPaint, i2);
        invalidate();
    }

    public void setMonthTextColor(ColorStateList colorStateList) {
        this.mMonthPaint.setColor(colorStateList.getColorForState(View.ENABLED_STATE_SET, 0));
        invalidate();
    }

    public void setOnDayClickListener(OnDayClickListener onDayClickListener) {
        this.mOnDayClickListener = onDayClickListener;
    }

    public void setSelectedDay(int i2) {
        this.mActivatedDay = i2;
        this.mTouchHelper.invalidateRoot();
        invalidate();
    }

    public SimpleMonthView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843612);
    }

    public SimpleMonthView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public SimpleMonthView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mMonthPaint = new TextPaint();
        this.mDayOfWeekPaint = new TextPaint();
        this.mDayPaint = new TextPaint();
        this.mDaySelectorPaint = new Paint();
        this.mDayHighlightPaint = new Paint();
        this.mDayHighlightSelectorPaint = new Paint();
        this.mDayOfWeekLabels = new String[7];
        this.mActivatedDay = -1;
        this.mToday = -1;
        this.mWeekStart = 1;
        this.mEnabledDayStart = 1;
        this.mEnabledDayEnd = 31;
        this.mHighlightedDay = -1;
        this.mPreviouslyHighlightedDay = -1;
        this.mIsTouchHighlighted = false;
        Resources resources = context.getResources();
        this.mDesiredMonthHeight = resources.getDimensionPixelSize(R.dimen.date_picker_month_height);
        this.mDesiredDayOfWeekHeight = resources.getDimensionPixelSize(R.dimen.date_picker_day_of_week_height);
        this.mDesiredDayHeight = resources.getDimensionPixelSize(R.dimen.date_picker_day_height);
        this.mDesiredCellWidth = resources.getDimensionPixelSize(R.dimen.date_picker_day_width);
        this.mDesiredDaySelectorRadius = resources.getDimensionPixelSize(R.dimen.date_picker_day_selector_radius);
        MonthViewTouchHelper monthViewTouchHelper = new MonthViewTouchHelper(this);
        this.mTouchHelper = monthViewTouchHelper;
        setAccessibilityDelegate(monthViewTouchHelper);
        setImportantForAccessibility(1);
        Locale locale = resources.getConfiguration().locale;
        this.mLocale = locale;
        this.mCalendar = Calendar.getInstance(locale);
        this.mDayFormatter = NumberFormat.getIntegerInstance(locale);
        updateMonthYearLabel();
        updateDayOfWeekLabels();
        initPaints(resources);
    }
}
