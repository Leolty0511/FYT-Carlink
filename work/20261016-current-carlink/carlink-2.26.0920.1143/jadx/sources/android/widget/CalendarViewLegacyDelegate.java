package android.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.icu.util.Calendar;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.R;
import com.google.android.material.timepicker.TimeModel;
import java.util.Locale;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes2.dex */
class CalendarViewLegacyDelegate extends CalendarView.AbstractCalendarViewDelegate {
    private static final int ADJUSTMENT_SCROLL_DURATION = 500;
    private static final int DAYS_PER_WEEK = 7;
    private static final int DEFAULT_DATE_TEXT_SIZE = 14;
    private static final int DEFAULT_SHOWN_WEEK_COUNT = 6;
    private static final boolean DEFAULT_SHOW_WEEK_NUMBER = true;
    private static final int DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID = -1;
    private static final int GOTO_SCROLL_DURATION = 1000;
    private static final long MILLIS_IN_DAY = 86400000;
    private static final long MILLIS_IN_WEEK = 604800000;
    private static final int SCROLL_CHANGE_DELAY = 40;
    private static final int SCROLL_HYST_WEEKS = 2;
    private static final int UNSCALED_BOTTOM_BUFFER = 20;
    private static final int UNSCALED_LIST_SCROLL_TOP_OFFSET = 2;
    private static final int UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH = 6;
    private static final int UNSCALED_WEEK_MIN_VISIBLE_HEIGHT = 12;
    private static final int UNSCALED_WEEK_SEPARATOR_LINE_WIDTH = 1;
    private WeeksAdapter mAdapter;
    private int mBottomBuffer;
    private int mCurrentMonthDisplayed;
    private int mCurrentScrollState;
    private int mDateTextAppearanceResId;
    private int mDateTextSize;
    private ViewGroup mDayNamesHeader;
    private String[] mDayNamesLong;
    private String[] mDayNamesShort;
    private int mDaysPerWeek;
    private Calendar mFirstDayOfMonth;
    private int mFirstDayOfWeek;
    private int mFocusedMonthDateColor;
    private float mFriction;
    private boolean mIsScrollingUp;
    private int mListScrollTopOffset;
    private ListView mListView;
    private Calendar mMaxDate;
    private Calendar mMinDate;
    private TextView mMonthName;
    private CalendarView.OnDateChangeListener mOnDateChangeListener;
    private long mPreviousScrollPosition;
    private int mPreviousScrollState;
    private ScrollStateRunnable mScrollStateChangedRunnable;
    private Drawable mSelectedDateVerticalBar;
    private final int mSelectedDateVerticalBarWidth;
    private int mSelectedWeekBackgroundColor;
    private boolean mShowWeekNumber;
    private int mShownWeekCount;
    private Calendar mTempDate;
    private int mUnfocusedMonthDateColor;
    private float mVelocityScale;
    private int mWeekDayTextAppearanceResId;
    private int mWeekMinVisibleHeight;
    private int mWeekNumberColor;
    private int mWeekSeparatorLineColor;
    private final int mWeekSeparatorLineWidth;

    public class ScrollStateRunnable implements Runnable {
        private int mNewState;
        private AbsListView mView;

        private ScrollStateRunnable() {
        }

        public void doScrollStateChange(AbsListView absListView, int i2) {
            this.mView = absListView;
            this.mNewState = i2;
            CalendarViewLegacyDelegate.this.mDelegator.removeCallbacks(this);
            CalendarViewLegacyDelegate.this.mDelegator.postDelayed(this, 40L);
        }

        @Override // java.lang.Runnable
        public void run() {
            CalendarViewLegacyDelegate.this.mCurrentScrollState = this.mNewState;
            if (this.mNewState == 0 && CalendarViewLegacyDelegate.this.mPreviousScrollState != 0) {
                View childAt = this.mView.getChildAt(0);
                if (childAt == null) {
                    return;
                }
                int bottom = childAt.getBottom() - CalendarViewLegacyDelegate.this.mListScrollTopOffset;
                if (bottom > CalendarViewLegacyDelegate.this.mListScrollTopOffset) {
                    if (CalendarViewLegacyDelegate.this.mIsScrollingUp) {
                        this.mView.smoothScrollBy(bottom - childAt.getHeight(), 500);
                    } else {
                        this.mView.smoothScrollBy(bottom, 500);
                    }
                }
            }
            CalendarViewLegacyDelegate.this.mPreviousScrollState = this.mNewState;
        }
    }

    public class WeekView extends View {
        private String[] mDayNumbers;
        private final Paint mDrawPaint;
        private Calendar mFirstDay;
        private boolean[] mFocusDay;
        private boolean mHasFocusedDay;
        private boolean mHasSelectedDay;
        private boolean mHasUnfocusedDay;
        private int mHeight;
        private int mLastWeekDayMonth;
        private final Paint mMonthNumDrawPaint;
        private int mMonthOfFirstWeekDay;
        private int mNumCells;
        private int mSelectedDay;
        private int mSelectedLeft;
        private int mSelectedRight;
        private final Rect mTempRect;
        private int mWeek;
        private int mWidth;

        public WeekView(Context context) {
            super(context);
            this.mTempRect = new Rect();
            this.mDrawPaint = new Paint();
            this.mMonthNumDrawPaint = new Paint();
            this.mMonthOfFirstWeekDay = -1;
            this.mLastWeekDayMonth = -1;
            this.mWeek = -1;
            this.mHasSelectedDay = false;
            this.mSelectedDay = -1;
            this.mSelectedLeft = -1;
            this.mSelectedRight = -1;
            initializePaints();
        }

        private void drawBackground(Canvas canvas) {
            int i2;
            if (this.mHasSelectedDay) {
                this.mDrawPaint.setColor(CalendarViewLegacyDelegate.this.mSelectedWeekBackgroundColor);
                this.mTempRect.top = CalendarViewLegacyDelegate.this.mWeekSeparatorLineWidth;
                this.mTempRect.bottom = this.mHeight;
                boolean zIsLayoutRtl = isLayoutRtl();
                if (zIsLayoutRtl) {
                    Rect rect = this.mTempRect;
                    rect.left = 0;
                    rect.right = this.mSelectedLeft - 2;
                } else {
                    this.mTempRect.left = CalendarViewLegacyDelegate.this.mShowWeekNumber ? this.mWidth / this.mNumCells : 0;
                    this.mTempRect.right = this.mSelectedLeft - 2;
                }
                canvas.drawRect(this.mTempRect, this.mDrawPaint);
                if (zIsLayoutRtl) {
                    Rect rect2 = this.mTempRect;
                    rect2.left = this.mSelectedRight + 3;
                    if (CalendarViewLegacyDelegate.this.mShowWeekNumber) {
                        int i3 = this.mWidth;
                        i2 = i3 - (i3 / this.mNumCells);
                    } else {
                        i2 = this.mWidth;
                    }
                    rect2.right = i2;
                } else {
                    Rect rect3 = this.mTempRect;
                    rect3.left = this.mSelectedRight + 3;
                    rect3.right = this.mWidth;
                }
                canvas.drawRect(this.mTempRect, this.mDrawPaint);
            }
        }

        private void drawSelectedDateVerticalBars(Canvas canvas) {
            if (this.mHasSelectedDay) {
                CalendarViewLegacyDelegate.this.mSelectedDateVerticalBar.setBounds(this.mSelectedLeft - (CalendarViewLegacyDelegate.this.mSelectedDateVerticalBarWidth / 2), CalendarViewLegacyDelegate.this.mWeekSeparatorLineWidth, (CalendarViewLegacyDelegate.this.mSelectedDateVerticalBarWidth / 2) + this.mSelectedLeft, this.mHeight);
                CalendarViewLegacyDelegate.this.mSelectedDateVerticalBar.draw(canvas);
                CalendarViewLegacyDelegate.this.mSelectedDateVerticalBar.setBounds(this.mSelectedRight - (CalendarViewLegacyDelegate.this.mSelectedDateVerticalBarWidth / 2), CalendarViewLegacyDelegate.this.mWeekSeparatorLineWidth, (CalendarViewLegacyDelegate.this.mSelectedDateVerticalBarWidth / 2) + this.mSelectedRight, this.mHeight);
                CalendarViewLegacyDelegate.this.mSelectedDateVerticalBar.draw(canvas);
            }
        }

        private void drawWeekNumbersAndDates(Canvas canvas) {
            int textSize = ((int) ((this.mHeight + this.mDrawPaint.getTextSize()) / 2.0f)) - CalendarViewLegacyDelegate.this.mWeekSeparatorLineWidth;
            int i2 = this.mNumCells;
            int i3 = i2 * 2;
            this.mDrawPaint.setTextAlign(Paint.Align.CENTER);
            this.mDrawPaint.setTextSize(CalendarViewLegacyDelegate.this.mDateTextSize);
            int i4 = 0;
            if (!isLayoutRtl()) {
                if (CalendarViewLegacyDelegate.this.mShowWeekNumber) {
                    this.mDrawPaint.setColor(CalendarViewLegacyDelegate.this.mWeekNumberColor);
                    canvas.drawText(this.mDayNumbers[0], this.mWidth / i3, textSize, this.mDrawPaint);
                    i4 = 1;
                }
                while (i4 < i2) {
                    this.mMonthNumDrawPaint.setColor(this.mFocusDay[i4] ? CalendarViewLegacyDelegate.this.mFocusedMonthDateColor : CalendarViewLegacyDelegate.this.mUnfocusedMonthDateColor);
                    canvas.drawText(this.mDayNumbers[i4], (((i4 * 2) + 1) * this.mWidth) / i3, textSize, this.mMonthNumDrawPaint);
                    i4++;
                }
                return;
            }
            int i5 = 0;
            while (true) {
                int i6 = i2 - 1;
                if (i5 >= i6) {
                    break;
                }
                this.mMonthNumDrawPaint.setColor(this.mFocusDay[i5] ? CalendarViewLegacyDelegate.this.mFocusedMonthDateColor : CalendarViewLegacyDelegate.this.mUnfocusedMonthDateColor);
                canvas.drawText(this.mDayNumbers[i6 - i5], (((i5 * 2) + 1) * this.mWidth) / i3, textSize, this.mMonthNumDrawPaint);
                i5++;
            }
            if (CalendarViewLegacyDelegate.this.mShowWeekNumber) {
                this.mDrawPaint.setColor(CalendarViewLegacyDelegate.this.mWeekNumberColor);
                int i7 = this.mWidth;
                canvas.drawText(this.mDayNumbers[0], i7 - (i7 / i3), textSize, this.mDrawPaint);
            }
        }

        private void drawWeekSeparators(Canvas canvas) {
            int i2;
            int firstVisiblePosition = CalendarViewLegacyDelegate.this.mListView.getFirstVisiblePosition();
            if (CalendarViewLegacyDelegate.this.mListView.getChildAt(0).getTop() < 0) {
                firstVisiblePosition++;
            }
            if (firstVisiblePosition == this.mWeek) {
                return;
            }
            this.mDrawPaint.setColor(CalendarViewLegacyDelegate.this.mWeekSeparatorLineColor);
            this.mDrawPaint.setStrokeWidth(CalendarViewLegacyDelegate.this.mWeekSeparatorLineWidth);
            float f2 = 0.0f;
            if (!isLayoutRtl()) {
                f2 = CalendarViewLegacyDelegate.this.mShowWeekNumber ? this.mWidth / this.mNumCells : 0.0f;
                i2 = this.mWidth;
            } else if (CalendarViewLegacyDelegate.this.mShowWeekNumber) {
                int i3 = this.mWidth;
                i2 = i3 - (i3 / this.mNumCells);
            } else {
                i2 = this.mWidth;
            }
            canvas.drawLine(f2, 0.0f, i2, 0.0f, this.mDrawPaint);
        }

        private void initializePaints() {
            this.mDrawPaint.setFakeBoldText(false);
            this.mDrawPaint.setAntiAlias(true);
            Paint paint = this.mDrawPaint;
            Paint.Style style = Paint.Style.FILL;
            paint.setStyle(style);
            this.mMonthNumDrawPaint.setFakeBoldText(true);
            this.mMonthNumDrawPaint.setAntiAlias(true);
            this.mMonthNumDrawPaint.setStyle(style);
            this.mMonthNumDrawPaint.setTextAlign(Paint.Align.CENTER);
            this.mMonthNumDrawPaint.setTextSize(CalendarViewLegacyDelegate.this.mDateTextSize);
        }

        private void updateSelectionPositions() {
            if (this.mHasSelectedDay) {
                boolean zIsLayoutRtl = isLayoutRtl();
                int i2 = this.mSelectedDay - CalendarViewLegacyDelegate.this.mFirstDayOfWeek;
                if (i2 < 0) {
                    i2 += 7;
                }
                if (CalendarViewLegacyDelegate.this.mShowWeekNumber && !zIsLayoutRtl) {
                    i2++;
                }
                if (zIsLayoutRtl) {
                    this.mSelectedLeft = (((CalendarViewLegacyDelegate.this.mDaysPerWeek - 1) - i2) * this.mWidth) / this.mNumCells;
                } else {
                    this.mSelectedLeft = (i2 * this.mWidth) / this.mNumCells;
                }
                this.mSelectedRight = (this.mWidth / this.mNumCells) + this.mSelectedLeft;
            }
        }

        public boolean getBoundsForDate(Calendar calendar, Rect rect) {
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(this.mFirstDay.getTime());
            int i2 = 0;
            while (i2 < CalendarViewLegacyDelegate.this.mDaysPerWeek) {
                if (calendar.get(1) == calendar2.get(1) && calendar.get(2) == calendar2.get(2) && calendar.get(5) == calendar2.get(5)) {
                    int i3 = this.mWidth / this.mNumCells;
                    if (isLayoutRtl()) {
                        rect.left = (CalendarViewLegacyDelegate.this.mShowWeekNumber ? (this.mNumCells - i2) - 2 : (this.mNumCells - i2) - 1) * i3;
                    } else {
                        if (CalendarViewLegacyDelegate.this.mShowWeekNumber) {
                            i2++;
                        }
                        rect.left = i2 * i3;
                    }
                    rect.top = 0;
                    rect.right = rect.left + i3;
                    rect.bottom = getHeight();
                    return true;
                }
                calendar2.add(5, 1);
                i2++;
            }
            return false;
        }

        public boolean getDayFromLocation(float f2, Calendar calendar) {
            int i2;
            int i3;
            int i4;
            boolean zIsLayoutRtl = isLayoutRtl();
            if (zIsLayoutRtl) {
                if (CalendarViewLegacyDelegate.this.mShowWeekNumber) {
                    int i5 = this.mWidth;
                    i4 = i5 - (i5 / this.mNumCells);
                } else {
                    i4 = this.mWidth;
                }
                i3 = i4;
                i2 = 0;
            } else {
                i2 = CalendarViewLegacyDelegate.this.mShowWeekNumber ? this.mWidth / this.mNumCells : 0;
                i3 = this.mWidth;
            }
            float f3 = i2;
            if (f2 < f3 || f2 > i3) {
                calendar.clear();
                return false;
            }
            int i6 = (int) (((f2 - f3) * CalendarViewLegacyDelegate.this.mDaysPerWeek) / (i3 - i2));
            if (zIsLayoutRtl) {
                i6 = (CalendarViewLegacyDelegate.this.mDaysPerWeek - 1) - i6;
            }
            calendar.setTimeInMillis(this.mFirstDay.getTimeInMillis());
            calendar.add(5, i6);
            return true;
        }

        public Calendar getFirstDay() {
            return this.mFirstDay;
        }

        public int getMonthOfFirstWeekDay() {
            return this.mMonthOfFirstWeekDay;
        }

        public int getMonthOfLastWeekDay() {
            return this.mLastWeekDayMonth;
        }

        public void init(int i2, int i3, int i4) {
            int i5;
            this.mSelectedDay = i3;
            this.mHasSelectedDay = i3 != -1;
            this.mNumCells = CalendarViewLegacyDelegate.this.mShowWeekNumber ? CalendarViewLegacyDelegate.this.mDaysPerWeek + 1 : CalendarViewLegacyDelegate.this.mDaysPerWeek;
            this.mWeek = i2;
            CalendarViewLegacyDelegate.this.mTempDate.setTimeInMillis(CalendarViewLegacyDelegate.this.mMinDate.getTimeInMillis());
            CalendarViewLegacyDelegate.this.mTempDate.add(3, this.mWeek);
            CalendarViewLegacyDelegate.this.mTempDate.setFirstDayOfWeek(CalendarViewLegacyDelegate.this.mFirstDayOfWeek);
            int i6 = this.mNumCells;
            this.mDayNumbers = new String[i6];
            this.mFocusDay = new boolean[i6];
            if (CalendarViewLegacyDelegate.this.mShowWeekNumber) {
                this.mDayNumbers[0] = String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(CalendarViewLegacyDelegate.this.mTempDate.get(3)));
                i5 = 1;
            } else {
                i5 = 0;
            }
            CalendarViewLegacyDelegate.this.mTempDate.add(5, CalendarViewLegacyDelegate.this.mFirstDayOfWeek - CalendarViewLegacyDelegate.this.mTempDate.get(7));
            this.mFirstDay = b.e(CalendarViewLegacyDelegate.this.mTempDate.clone());
            this.mMonthOfFirstWeekDay = CalendarViewLegacyDelegate.this.mTempDate.get(2);
            this.mHasUnfocusedDay = true;
            while (i5 < this.mNumCells) {
                boolean z2 = CalendarViewLegacyDelegate.this.mTempDate.get(2) == i4;
                this.mFocusDay[i5] = z2;
                this.mHasFocusedDay |= z2;
                this.mHasUnfocusedDay = (!z2) & this.mHasUnfocusedDay;
                if (CalendarViewLegacyDelegate.this.mTempDate.before(CalendarViewLegacyDelegate.this.mMinDate) || CalendarViewLegacyDelegate.this.mTempDate.after(CalendarViewLegacyDelegate.this.mMaxDate)) {
                    this.mDayNumbers[i5] = "";
                } else {
                    this.mDayNumbers[i5] = String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(CalendarViewLegacyDelegate.this.mTempDate.get(5)));
                }
                CalendarViewLegacyDelegate.this.mTempDate.add(5, 1);
                i5++;
            }
            if (CalendarViewLegacyDelegate.this.mTempDate.get(5) == 1) {
                CalendarViewLegacyDelegate.this.mTempDate.add(5, -1);
            }
            this.mLastWeekDayMonth = CalendarViewLegacyDelegate.this.mTempDate.get(2);
            updateSelectionPositions();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            drawBackground(canvas);
            drawWeekNumbersAndDates(canvas);
            drawWeekSeparators(canvas);
            drawSelectedDateVerticalBars(canvas);
        }

        @Override // android.view.View
        public void onMeasure(int i2, int i3) {
            this.mHeight = ((CalendarViewLegacyDelegate.this.mListView.getHeight() - CalendarViewLegacyDelegate.this.mListView.getPaddingTop()) - CalendarViewLegacyDelegate.this.mListView.getPaddingBottom()) / CalendarViewLegacyDelegate.this.mShownWeekCount;
            setMeasuredDimension(View.MeasureSpec.getSize(i2), this.mHeight);
        }

        @Override // android.view.View
        public void onSizeChanged(int i2, int i3, int i4, int i5) {
            this.mWidth = i2;
            updateSelectionPositions();
        }
    }

    public class WeeksAdapter extends BaseAdapter implements View.OnTouchListener {
        private int mFocusedMonth;
        private GestureDetector mGestureDetector;
        private final Calendar mSelectedDate = Calendar.getInstance();
        private int mSelectedWeek;
        private int mTotalWeekCount;

        public class CalendarGestureListener extends GestureDetector.SimpleOnGestureListener {
            public CalendarGestureListener() {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }
        }

        public WeeksAdapter(Context context) {
            CalendarViewLegacyDelegate.this.mContext = context;
            this.mGestureDetector = new GestureDetector(CalendarViewLegacyDelegate.this.mContext, new CalendarGestureListener());
            init();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void init() {
            this.mSelectedWeek = CalendarViewLegacyDelegate.this.getWeeksSinceMinDate(this.mSelectedDate);
            CalendarViewLegacyDelegate calendarViewLegacyDelegate = CalendarViewLegacyDelegate.this;
            this.mTotalWeekCount = calendarViewLegacyDelegate.getWeeksSinceMinDate(calendarViewLegacyDelegate.mMaxDate);
            if (CalendarViewLegacyDelegate.this.mMinDate.get(7) != CalendarViewLegacyDelegate.this.mFirstDayOfWeek || CalendarViewLegacyDelegate.this.mMaxDate.get(7) != CalendarViewLegacyDelegate.this.mFirstDayOfWeek) {
                this.mTotalWeekCount++;
            }
            notifyDataSetChanged();
        }

        private void onDateTapped(Calendar calendar) {
            setSelectedDay(calendar);
            CalendarViewLegacyDelegate.this.setMonthDisplayed(calendar);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mTotalWeekCount;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        public Calendar getSelectedDay() {
            return this.mSelectedDate;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            WeekView weekView;
            if (view != null) {
                weekView = (WeekView) view;
            } else {
                CalendarViewLegacyDelegate calendarViewLegacyDelegate = CalendarViewLegacyDelegate.this;
                weekView = calendarViewLegacyDelegate.new WeekView(calendarViewLegacyDelegate.mContext);
                weekView.setLayoutParams(new AbsListView.LayoutParams(-2, -2));
                weekView.setClickable(true);
                weekView.setOnTouchListener(this);
            }
            weekView.init(i2, this.mSelectedWeek == i2 ? this.mSelectedDate.get(7) : -1, this.mFocusedMonth);
            return weekView;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (!CalendarViewLegacyDelegate.this.mListView.isEnabled() || !this.mGestureDetector.onTouchEvent(motionEvent)) {
                return false;
            }
            if (((WeekView) view).getDayFromLocation(motionEvent.getX(), CalendarViewLegacyDelegate.this.mTempDate) && !CalendarViewLegacyDelegate.this.mTempDate.before(CalendarViewLegacyDelegate.this.mMinDate) && !CalendarViewLegacyDelegate.this.mTempDate.after(CalendarViewLegacyDelegate.this.mMaxDate)) {
                onDateTapped(CalendarViewLegacyDelegate.this.mTempDate);
            }
            return true;
        }

        public void setFocusMonth(int i2) {
            if (this.mFocusedMonth == i2) {
                return;
            }
            this.mFocusedMonth = i2;
            notifyDataSetChanged();
        }

        public void setSelectedDay(Calendar calendar) {
            if (calendar.get(6) == this.mSelectedDate.get(6) && calendar.get(1) == this.mSelectedDate.get(1)) {
                return;
            }
            this.mSelectedDate.setTimeInMillis(calendar.getTimeInMillis());
            this.mSelectedWeek = CalendarViewLegacyDelegate.this.getWeeksSinceMinDate(this.mSelectedDate);
            this.mFocusedMonth = this.mSelectedDate.get(2);
            notifyDataSetChanged();
        }
    }

    public CalendarViewLegacyDelegate(CalendarView calendarView, Context context, AttributeSet attributeSet, int i2, int i3) {
        super(calendarView, context);
        this.mListScrollTopOffset = 2;
        this.mWeekMinVisibleHeight = 12;
        this.mBottomBuffer = 20;
        this.mDaysPerWeek = 7;
        this.mFriction = 0.05f;
        this.mVelocityScale = 0.333f;
        this.mCurrentMonthDisplayed = -1;
        this.mIsScrollingUp = false;
        this.mPreviousScrollState = 0;
        this.mCurrentScrollState = 0;
        this.mScrollStateChangedRunnable = new ScrollStateRunnable();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CalendarView, i2, i3);
        this.mShowWeekNumber = typedArrayObtainStyledAttributes.getBoolean(1, true);
        this.mFirstDayOfWeek = typedArrayObtainStyledAttributes.getInt(0, LocaleData.get(Locale.getDefault()).firstDayOfWeek.intValue());
        if (!CalendarView.parseDate(typedArrayObtainStyledAttributes.getString(2), this.mMinDate)) {
            CalendarView.parseDate("01/01/1900", this.mMinDate);
        }
        if (!CalendarView.parseDate(typedArrayObtainStyledAttributes.getString(3), this.mMaxDate)) {
            CalendarView.parseDate("01/01/2100", this.mMaxDate);
        }
        if (this.mMaxDate.before(this.mMinDate)) {
            throw new IllegalArgumentException("Max date cannot be before min date.");
        }
        this.mShownWeekCount = typedArrayObtainStyledAttributes.getInt(4, 6);
        this.mSelectedWeekBackgroundColor = typedArrayObtainStyledAttributes.getColor(5, 0);
        this.mFocusedMonthDateColor = typedArrayObtainStyledAttributes.getColor(6, 0);
        this.mUnfocusedMonthDateColor = typedArrayObtainStyledAttributes.getColor(7, 0);
        this.mWeekSeparatorLineColor = typedArrayObtainStyledAttributes.getColor(9, 0);
        this.mWeekNumberColor = typedArrayObtainStyledAttributes.getColor(8, 0);
        this.mSelectedDateVerticalBar = typedArrayObtainStyledAttributes.getDrawable(10);
        this.mDateTextAppearanceResId = typedArrayObtainStyledAttributes.getResourceId(12, 16973894);
        updateDateTextSize();
        this.mWeekDayTextAppearanceResId = typedArrayObtainStyledAttributes.getResourceId(11, -1);
        typedArrayObtainStyledAttributes.recycle();
        DisplayMetrics displayMetrics = this.mDelegator.getResources().getDisplayMetrics();
        this.mWeekMinVisibleHeight = (int) TypedValue.applyDimension(1, 12.0f, displayMetrics);
        this.mListScrollTopOffset = (int) TypedValue.applyDimension(1, 2.0f, displayMetrics);
        this.mBottomBuffer = (int) TypedValue.applyDimension(1, 20.0f, displayMetrics);
        this.mSelectedDateVerticalBarWidth = (int) TypedValue.applyDimension(1, 6.0f, displayMetrics);
        this.mWeekSeparatorLineWidth = (int) TypedValue.applyDimension(1, 1.0f, displayMetrics);
        View viewInflate = ((LayoutInflater) this.mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(R.layout.calendar_view, (ViewGroup) null, false);
        this.mDelegator.addView(viewInflate);
        this.mListView = (ListView) this.mDelegator.findViewById(16908298);
        this.mDayNamesHeader = (ViewGroup) viewInflate.findViewById(R.id.day_names);
        this.mMonthName = (TextView) viewInflate.findViewById(R.id.month_name);
        setUpHeader();
        setUpListView();
        setUpAdapter();
        this.mTempDate.setTimeInMillis(System.currentTimeMillis());
        if (this.mTempDate.before(this.mMinDate)) {
            goTo(this.mMinDate, false, true, true);
        } else if (this.mMaxDate.before(this.mTempDate)) {
            goTo(this.mMaxDate, false, true, true);
        } else {
            goTo(this.mTempDate, false, true, true);
        }
        this.mDelegator.invalidate();
    }

    private static Calendar getCalendarForLocale(Calendar calendar, Locale locale) {
        if (calendar == null) {
            return Calendar.getInstance(locale);
        }
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance(locale);
        calendar2.setTimeInMillis(timeInMillis);
        return calendar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getWeeksSinceMinDate(Calendar calendar) {
        if (!calendar.before(this.mMinDate)) {
            return (int) ((((calendar.getTimeInMillis() + ((long) calendar.getTimeZone().getOffset(calendar.getTimeInMillis()))) - (this.mMinDate.getTimeInMillis() + ((long) this.mMinDate.getTimeZone().getOffset(this.mMinDate.getTimeInMillis())))) + (((long) (this.mMinDate.get(7) - this.mFirstDayOfWeek)) * 86400000)) / 604800000);
        }
        throw new IllegalArgumentException("fromDate: " + this.mMinDate.getTime() + " does not precede toDate: " + calendar.getTime());
    }

    private void goTo(Calendar calendar, boolean z2, boolean z3, boolean z4) {
        if (calendar.before(this.mMinDate) || calendar.after(this.mMaxDate)) {
            throw new IllegalArgumentException("timeInMillis must be between the values of getMinDate() and getMaxDate()");
        }
        int firstVisiblePosition = this.mListView.getFirstVisiblePosition();
        View childAt = this.mListView.getChildAt(0);
        if (childAt != null && childAt.getTop() < 0) {
            firstVisiblePosition++;
        }
        int i2 = (this.mShownWeekCount + firstVisiblePosition) - 1;
        if (childAt != null && childAt.getTop() > this.mBottomBuffer) {
            i2--;
        }
        if (z3) {
            this.mAdapter.setSelectedDay(calendar);
        }
        int weeksSinceMinDate = getWeeksSinceMinDate(calendar);
        if (weeksSinceMinDate >= firstVisiblePosition && weeksSinceMinDate <= i2 && !z4) {
            if (z3) {
                setMonthDisplayed(calendar);
                return;
            }
            return;
        }
        this.mFirstDayOfMonth.setTimeInMillis(calendar.getTimeInMillis());
        this.mFirstDayOfMonth.set(5, 1);
        setMonthDisplayed(this.mFirstDayOfMonth);
        int weeksSinceMinDate2 = this.mFirstDayOfMonth.before(this.mMinDate) ? 0 : getWeeksSinceMinDate(this.mFirstDayOfMonth);
        this.mPreviousScrollState = 2;
        if (z2) {
            this.mListView.smoothScrollToPositionFromTop(weeksSinceMinDate2, this.mListScrollTopOffset, 1000);
        } else {
            this.mListView.setSelectionFromTop(weeksSinceMinDate2, this.mListScrollTopOffset);
            onScrollStateChanged(this.mListView, 0);
        }
    }

    private void invalidateAllWeekViews() {
        int childCount = this.mListView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            this.mListView.getChildAt(i2).invalidate();
        }
    }

    private static boolean isSameDate(Calendar calendar, Calendar calendar2) {
        return calendar.get(6) == calendar2.get(6) && calendar.get(1) == calendar2.get(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
        WeekView weekView = (WeekView) absListView.getChildAt(0);
        if (weekView == null) {
            return;
        }
        long height = (weekView.getHeight() * absListView.getFirstVisiblePosition()) - weekView.getBottom();
        long j2 = this.mPreviousScrollPosition;
        int i5 = 1;
        if (height < j2) {
            this.mIsScrollingUp = true;
        } else if (height <= j2) {
            return;
        } else {
            this.mIsScrollingUp = false;
        }
        int i6 = weekView.getBottom() < this.mWeekMinVisibleHeight ? 1 : 0;
        if (this.mIsScrollingUp) {
            weekView = (WeekView) absListView.getChildAt(i6 + 2);
        } else if (i6 != 0) {
            weekView = (WeekView) absListView.getChildAt(i6);
        }
        if (weekView != null) {
            int monthOfFirstWeekDay = this.mIsScrollingUp ? weekView.getMonthOfFirstWeekDay() : weekView.getMonthOfLastWeekDay();
            int i7 = this.mCurrentMonthDisplayed;
            if (i7 != 11 || monthOfFirstWeekDay != 0) {
                i5 = (i7 == 0 && monthOfFirstWeekDay == 11) ? -1 : monthOfFirstWeekDay - i7;
            }
            boolean z2 = this.mIsScrollingUp;
            if ((!z2 && i5 > 0) || (z2 && i5 < 0)) {
                Calendar firstDay = weekView.getFirstDay();
                if (this.mIsScrollingUp) {
                    firstDay.add(5, -7);
                } else {
                    firstDay.add(5, 7);
                }
                setMonthDisplayed(firstDay);
            }
        }
        this.mPreviousScrollPosition = height;
        this.mPreviousScrollState = this.mCurrentScrollState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.mScrollStateChangedRunnable.doScrollStateChange(absListView, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMonthDisplayed(Calendar calendar) {
        int i2 = calendar.get(2);
        this.mCurrentMonthDisplayed = i2;
        this.mAdapter.setFocusMonth(i2);
        long timeInMillis = calendar.getTimeInMillis();
        this.mMonthName.setText(DateUtils.formatDateRange(this.mContext, timeInMillis, timeInMillis, 52));
        this.mMonthName.invalidate();
    }

    private void setUpAdapter() {
        if (this.mAdapter == null) {
            WeeksAdapter weeksAdapter = new WeeksAdapter(this.mContext);
            this.mAdapter = weeksAdapter;
            weeksAdapter.registerDataSetObserver(new DataSetObserver() { // from class: android.widget.CalendarViewLegacyDelegate.1
                @Override // android.database.DataSetObserver
                public void onChanged() {
                    if (CalendarViewLegacyDelegate.this.mOnDateChangeListener != null) {
                        Calendar selectedDay = CalendarViewLegacyDelegate.this.mAdapter.getSelectedDay();
                        CalendarViewLegacyDelegate.this.mOnDateChangeListener.onSelectedDayChange(CalendarViewLegacyDelegate.this.mDelegator, selectedDay.get(1), selectedDay.get(2), selectedDay.get(5));
                    }
                }
            });
            this.mListView.setAdapter((ListAdapter) this.mAdapter);
        }
        this.mAdapter.notifyDataSetChanged();
    }

    private void setUpHeader() {
        int i2 = this.mDaysPerWeek;
        this.mDayNamesShort = new String[i2];
        this.mDayNamesLong = new String[i2];
        int i3 = this.mFirstDayOfWeek;
        int i4 = i2 + i3;
        while (i3 < i4) {
            int i5 = i3 > 7 ? i3 - 7 : i3;
            this.mDayNamesShort[i3 - this.mFirstDayOfWeek] = DateUtils.getDayOfWeekString(i5, 50);
            this.mDayNamesLong[i3 - this.mFirstDayOfWeek] = DateUtils.getDayOfWeekString(i5, 10);
            i3++;
        }
        TextView textView = (TextView) this.mDayNamesHeader.getChildAt(0);
        if (this.mShowWeekNumber) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
        }
        int childCount = this.mDayNamesHeader.getChildCount();
        for (int i6 = 1; i6 < childCount; i6++) {
            TextView textView2 = (TextView) this.mDayNamesHeader.getChildAt(i6);
            int i7 = this.mWeekDayTextAppearanceResId;
            if (i7 > -1) {
                textView2.setTextAppearance(i7);
            }
            if (i6 < this.mDaysPerWeek + 1) {
                int i8 = i6 - 1;
                textView2.setText(this.mDayNamesShort[i8]);
                textView2.setContentDescription(this.mDayNamesLong[i8]);
                textView2.setVisibility(0);
            } else {
                textView2.setVisibility(8);
            }
        }
        this.mDayNamesHeader.invalidate();
    }

    private void setUpListView() {
        this.mListView.setDivider(null);
        this.mListView.setItemsCanFocus(true);
        this.mListView.setVerticalScrollBarEnabled(false);
        this.mListView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: android.widget.CalendarViewLegacyDelegate.2
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
                CalendarViewLegacyDelegate.this.onScroll(absListView, i2, i3, i4);
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i2) {
                CalendarViewLegacyDelegate.this.onScrollStateChanged(absListView, i2);
            }
        });
        this.mListView.setFriction(this.mFriction);
        this.mListView.setVelocityScale(this.mVelocityScale);
    }

    private void updateDateTextSize() {
        TypedArray typedArrayObtainStyledAttributes = this.mDelegator.getContext().obtainStyledAttributes(this.mDateTextAppearanceResId, R.styleable.TextAppearance);
        this.mDateTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 14);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public boolean getBoundsForDate(long j2, Rect rect) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j2);
        int count = this.mListView.getCount();
        for (int i2 = 0; i2 < count; i2++) {
            WeekView weekView = (WeekView) this.mListView.getChildAt(i2);
            if (weekView.getBoundsForDate(calendar, rect)) {
                int[] iArr = new int[2];
                int[] iArr2 = new int[2];
                weekView.getLocationOnScreen(iArr);
                this.mDelegator.getLocationOnScreen(iArr2);
                int i3 = iArr[1] - iArr2[1];
                rect.top += i3;
                rect.bottom += i3;
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public long getDate() {
        return this.mAdapter.mSelectedDate.getTimeInMillis();
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public int getDateTextAppearance() {
        return this.mDateTextAppearanceResId;
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public int getFirstDayOfWeek() {
        return this.mFirstDayOfWeek;
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public int getFocusedMonthDateColor() {
        return this.mFocusedMonthDateColor;
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public long getMaxDate() {
        return this.mMaxDate.getTimeInMillis();
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public long getMinDate() {
        return this.mMinDate.getTimeInMillis();
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public Drawable getSelectedDateVerticalBar() {
        return this.mSelectedDateVerticalBar;
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public int getSelectedWeekBackgroundColor() {
        return this.mSelectedWeekBackgroundColor;
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public boolean getShowWeekNumber() {
        return this.mShowWeekNumber;
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public int getShownWeekCount() {
        return this.mShownWeekCount;
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public int getUnfocusedMonthDateColor() {
        return this.mUnfocusedMonthDateColor;
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public int getWeekDayTextAppearance() {
        return this.mWeekDayTextAppearanceResId;
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public int getWeekNumberColor() {
        return this.mWeekNumberColor;
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public int getWeekSeparatorLineColor() {
        return this.mWeekSeparatorLineColor;
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public void onConfigurationChanged(Configuration configuration) {
        setCurrentLocale(configuration.locale);
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate
    public void setCurrentLocale(Locale locale) {
        super.setCurrentLocale(locale);
        this.mTempDate = getCalendarForLocale(this.mTempDate, locale);
        this.mFirstDayOfMonth = getCalendarForLocale(this.mFirstDayOfMonth, locale);
        this.mMinDate = getCalendarForLocale(this.mMinDate, locale);
        this.mMaxDate = getCalendarForLocale(this.mMaxDate, locale);
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setDate(long j2) {
        setDate(j2, false, false);
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setDateTextAppearance(int i2) {
        if (this.mDateTextAppearanceResId != i2) {
            this.mDateTextAppearanceResId = i2;
            updateDateTextSize();
            invalidateAllWeekViews();
        }
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setFirstDayOfWeek(int i2) {
        if (this.mFirstDayOfWeek == i2) {
            return;
        }
        this.mFirstDayOfWeek = i2;
        this.mAdapter.init();
        this.mAdapter.notifyDataSetChanged();
        setUpHeader();
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public void setFocusedMonthDateColor(int i2) {
        if (this.mFocusedMonthDateColor != i2) {
            this.mFocusedMonthDateColor = i2;
            int childCount = this.mListView.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                WeekView weekView = (WeekView) this.mListView.getChildAt(i3);
                if (weekView.mHasFocusedDay) {
                    weekView.invalidate();
                }
            }
        }
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setMaxDate(long j2) {
        this.mTempDate.setTimeInMillis(j2);
        if (isSameDate(this.mTempDate, this.mMaxDate)) {
            return;
        }
        this.mMaxDate.setTimeInMillis(j2);
        this.mAdapter.init();
        Calendar calendar = this.mAdapter.mSelectedDate;
        if (calendar.after(this.mMaxDate)) {
            setDate(this.mMaxDate.getTimeInMillis());
        } else {
            goTo(calendar, false, true, false);
        }
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setMinDate(long j2) {
        this.mTempDate.setTimeInMillis(j2);
        if (isSameDate(this.mTempDate, this.mMinDate)) {
            return;
        }
        this.mMinDate.setTimeInMillis(j2);
        Calendar calendar = this.mAdapter.mSelectedDate;
        if (calendar.before(this.mMinDate)) {
            this.mAdapter.setSelectedDay(this.mMinDate);
        }
        this.mAdapter.init();
        if (calendar.before(this.mMinDate)) {
            setDate(this.mTempDate.getTimeInMillis());
        } else {
            goTo(calendar, false, true, false);
        }
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setOnDateChangeListener(CalendarView.OnDateChangeListener onDateChangeListener) {
        this.mOnDateChangeListener = onDateChangeListener;
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public void setSelectedDateVerticalBar(int i2) {
        setSelectedDateVerticalBar(this.mDelegator.getContext().getDrawable(i2));
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public void setSelectedWeekBackgroundColor(int i2) {
        if (this.mSelectedWeekBackgroundColor != i2) {
            this.mSelectedWeekBackgroundColor = i2;
            int childCount = this.mListView.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                WeekView weekView = (WeekView) this.mListView.getChildAt(i3);
                if (weekView.mHasSelectedDay) {
                    weekView.invalidate();
                }
            }
        }
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public void setShowWeekNumber(boolean z2) {
        if (this.mShowWeekNumber == z2) {
            return;
        }
        this.mShowWeekNumber = z2;
        this.mAdapter.notifyDataSetChanged();
        setUpHeader();
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public void setShownWeekCount(int i2) {
        if (this.mShownWeekCount != i2) {
            this.mShownWeekCount = i2;
            this.mDelegator.invalidate();
        }
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public void setUnfocusedMonthDateColor(int i2) {
        if (this.mUnfocusedMonthDateColor != i2) {
            this.mUnfocusedMonthDateColor = i2;
            int childCount = this.mListView.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                WeekView weekView = (WeekView) this.mListView.getChildAt(i3);
                if (weekView.mHasUnfocusedDay) {
                    weekView.invalidate();
                }
            }
        }
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setWeekDayTextAppearance(int i2) {
        if (this.mWeekDayTextAppearanceResId != i2) {
            this.mWeekDayTextAppearanceResId = i2;
            setUpHeader();
        }
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public void setWeekNumberColor(int i2) {
        if (this.mWeekNumberColor != i2) {
            this.mWeekNumberColor = i2;
            if (this.mShowWeekNumber) {
                invalidateAllWeekViews();
            }
        }
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public void setWeekSeparatorLineColor(int i2) {
        if (this.mWeekSeparatorLineColor != i2) {
            this.mWeekSeparatorLineColor = i2;
            invalidateAllWeekViews();
        }
    }

    @Override // android.widget.CalendarView.CalendarViewDelegate
    public void setDate(long j2, boolean z2, boolean z3) {
        this.mTempDate.setTimeInMillis(j2);
        if (isSameDate(this.mTempDate, this.mAdapter.mSelectedDate)) {
            return;
        }
        goTo(this.mTempDate, z2, true, z3);
    }

    @Override // android.widget.CalendarView.AbstractCalendarViewDelegate, android.widget.CalendarView.CalendarViewDelegate
    public void setSelectedDateVerticalBar(Drawable drawable) {
        if (this.mSelectedDateVerticalBar != drawable) {
            this.mSelectedDateVerticalBar = drawable;
            int childCount = this.mListView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                WeekView weekView = (WeekView) this.mListView.getChildAt(i2);
                if (weekView.mHasSelectedDay) {
                    weekView.invalidate();
                }
            }
        }
    }
}
