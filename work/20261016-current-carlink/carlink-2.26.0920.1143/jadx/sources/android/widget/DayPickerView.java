package android.widget;

import android.app.m;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.icu.util.Calendar;
import android.telephony.PreciseDisconnectCause;
import android.util.AttributeSet;
import android.util.MathUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import com.android.internal.R;
import com.android.internal.widget.ViewPager;
import java.util.Locale;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes2.dex */
class DayPickerView extends ViewGroup {
    private static final int[] ATTRS_TEXT_COLOR = {16842904};
    private static final int DEFAULT_END_YEAR = 2100;
    private static final int DEFAULT_LAYOUT = 17367121;
    private static final int DEFAULT_START_YEAR = 1900;
    private final AccessibilityManager mAccessibilityManager;
    private final DayPickerPagerAdapter mAdapter;
    private final Calendar mMaxDate;
    private final Calendar mMinDate;
    private final ImageButton mNextButton;
    private final View.OnClickListener mOnClickListener;
    private OnDaySelectedListener mOnDaySelectedListener;
    private final ViewPager.OnPageChangeListener mOnPageChangedListener;
    private final ImageButton mPrevButton;
    private final Calendar mSelectedDay;
    private Calendar mTempCalendar;
    private final ViewPager mViewPager;

    public interface OnDaySelectedListener {
        void onDaySelected(DayPickerView dayPickerView, Calendar calendar);
    }

    public DayPickerView(Context context) {
        this(context, null);
    }

    private int getDiffMonths(Calendar calendar, Calendar calendar2) {
        return ((calendar2.get(1) - calendar.get(1)) * 12) + (calendar2.get(2) - calendar.get(2));
    }

    private int getPositionFromDay(long j2) {
        return MathUtils.constrain(getDiffMonths(this.mMinDate, getTempCalendarForTime(j2)), 0, getDiffMonths(this.mMinDate, this.mMaxDate));
    }

    private Calendar getTempCalendarForTime(long j2) {
        if (this.mTempCalendar == null) {
            this.mTempCalendar = Calendar.getInstance();
        }
        this.mTempCalendar.setTimeInMillis(j2);
        return this.mTempCalendar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtonVisibility(int i2) {
        boolean z2 = i2 > 0;
        boolean z3 = i2 < this.mAdapter.getCount() - 1;
        this.mPrevButton.setVisibility(z2 ? 0 : 4);
        this.mNextButton.setVisibility(z3 ? 0 : 4);
    }

    public boolean getBoundsForDate(long j2, Rect rect) {
        if (getPositionFromDay(j2) != this.mViewPager.getCurrentItem()) {
            return false;
        }
        this.mTempCalendar.setTimeInMillis(j2);
        return this.mAdapter.getBoundsForDate(this.mTempCalendar, rect);
    }

    public long getDate() {
        return this.mSelectedDay.getTimeInMillis();
    }

    public int getDayOfWeekTextAppearance() {
        return this.mAdapter.getDayOfWeekTextAppearance();
    }

    public int getDayTextAppearance() {
        return this.mAdapter.getDayTextAppearance();
    }

    public int getFirstDayOfWeek() {
        return this.mAdapter.getFirstDayOfWeek();
    }

    public long getMaxDate() {
        return this.mMaxDate.getTimeInMillis();
    }

    public long getMinDate() {
        return this.mMinDate.getTimeInMillis();
    }

    public int getMostVisiblePosition() {
        return this.mViewPager.getCurrentItem();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        ImageButton imageButton;
        ImageButton imageButton2;
        if (isLayoutRtl()) {
            imageButton = this.mNextButton;
            imageButton2 = this.mPrevButton;
        } else {
            imageButton = this.mPrevButton;
            imageButton2 = this.mNextButton;
        }
        int i6 = i4 - i2;
        this.mViewPager.layout(0, 0, i6, i5 - i3);
        SimpleMonthView simpleMonthView = (SimpleMonthView) this.mViewPager.getChildAt(0);
        int monthHeight = simpleMonthView.getMonthHeight();
        int cellWidth = simpleMonthView.getCellWidth();
        int measuredWidth = imageButton.getMeasuredWidth();
        int measuredHeight = imageButton.getMeasuredHeight();
        int iB = m.b(monthHeight, measuredHeight, 2, simpleMonthView.getPaddingTop());
        int iB2 = m.b(cellWidth, measuredWidth, 2, simpleMonthView.getPaddingLeft());
        imageButton.layout(iB2, iB, measuredWidth + iB2, measuredHeight + iB);
        int measuredWidth2 = imageButton2.getMeasuredWidth();
        int measuredHeight2 = imageButton2.getMeasuredHeight();
        int iB3 = m.b(monthHeight, measuredHeight2, 2, simpleMonthView.getPaddingTop());
        int paddingRight = (i6 - simpleMonthView.getPaddingRight()) - ((cellWidth - measuredWidth2) / 2);
        imageButton2.layout(paddingRight - measuredWidth2, iB3, paddingRight, measuredHeight2 + iB3);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        ViewPager viewPager = this.mViewPager;
        measureChild(viewPager, i2, i3);
        setMeasuredDimension(viewPager.getMeasuredWidthAndState(), viewPager.getMeasuredHeightAndState());
        int measuredWidth = viewPager.getMeasuredWidth();
        int measuredHeight = viewPager.getMeasuredHeight();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, Integer.MIN_VALUE);
        this.mPrevButton.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.mNextButton.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    public void onRangeChanged() {
        this.mAdapter.setRange(this.mMinDate, this.mMaxDate);
        setDate(this.mSelectedDay.getTimeInMillis(), false, false);
        updateButtonVisibility(this.mViewPager.getCurrentItem());
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        requestLayout();
    }

    public void setDate(long j2) {
        setDate(j2, false);
    }

    public void setDayOfWeekTextAppearance(int i2) {
        this.mAdapter.setDayOfWeekTextAppearance(i2);
    }

    public void setDayTextAppearance(int i2) {
        this.mAdapter.setDayTextAppearance(i2);
    }

    public void setFirstDayOfWeek(int i2) {
        this.mAdapter.setFirstDayOfWeek(i2);
    }

    public void setMaxDate(long j2) {
        this.mMaxDate.setTimeInMillis(j2);
        onRangeChanged();
    }

    public void setMinDate(long j2) {
        this.mMinDate.setTimeInMillis(j2);
        onRangeChanged();
    }

    public void setOnDaySelectedListener(OnDaySelectedListener onDaySelectedListener) {
        this.mOnDaySelectedListener = onDaySelectedListener;
    }

    public void setPosition(int i2) {
        this.mViewPager.setCurrentItem(i2, false);
    }

    public DayPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843613);
    }

    public void setDate(long j2, boolean z2) {
        setDate(j2, z2, true);
    }

    public DayPickerView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    private void setDate(long j2, boolean z2, boolean z3) {
        boolean z4 = true;
        if (j2 < this.mMinDate.getTimeInMillis()) {
            j2 = this.mMinDate.getTimeInMillis();
        } else if (j2 > this.mMaxDate.getTimeInMillis()) {
            j2 = this.mMaxDate.getTimeInMillis();
        } else {
            z4 = false;
        }
        getTempCalendarForTime(j2);
        if (z3 || z4) {
            this.mSelectedDay.setTimeInMillis(j2);
        }
        int positionFromDay = getPositionFromDay(j2);
        if (positionFromDay != this.mViewPager.getCurrentItem()) {
            this.mViewPager.setCurrentItem(positionFromDay, z2);
        }
        this.mAdapter.setSelectedDay(this.mTempCalendar);
    }

    public DayPickerView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mSelectedDay = Calendar.getInstance();
        this.mMinDate = Calendar.getInstance();
        this.mMaxDate = Calendar.getInstance();
        this.mOnPageChangedListener = new ViewPager.OnPageChangeListener() { // from class: android.widget.DayPickerView.2
            @Override // com.android.internal.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i4) {
            }

            @Override // com.android.internal.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i4, float f2, int i5) {
                float fAbs = Math.abs(0.5f - f2) * 2.0f;
                DayPickerView.this.mPrevButton.setAlpha(fAbs);
                DayPickerView.this.mNextButton.setAlpha(fAbs);
            }

            @Override // com.android.internal.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i4) {
                DayPickerView.this.updateButtonVisibility(i4);
            }
        };
        this.mOnClickListener = new View.OnClickListener() { // from class: android.widget.DayPickerView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i4;
                if (view == DayPickerView.this.mPrevButton) {
                    i4 = -1;
                } else if (view != DayPickerView.this.mNextButton) {
                    return;
                } else {
                    i4 = 1;
                }
                DayPickerView.this.mViewPager.setCurrentItem(DayPickerView.this.mViewPager.getCurrentItem() + i4, !DayPickerView.this.mAccessibilityManager.isEnabled());
            }
        };
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService(Context.ACCESSIBILITY_SERVICE);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CalendarView, i2, i3);
        int i4 = typedArrayObtainStyledAttributes.getInt(0, LocaleData.get(Locale.getDefault()).firstDayOfWeek.intValue());
        String string = typedArrayObtainStyledAttributes.getString(2);
        String string2 = typedArrayObtainStyledAttributes.getString(3);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(16, R.style.TextAppearance_Material_Widget_Calendar_Month);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(11, R.style.TextAppearance_Material_Widget_Calendar_DayOfWeek);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(12, R.style.TextAppearance_Material_Widget_Calendar_Day);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(15);
        typedArrayObtainStyledAttributes.recycle();
        DayPickerPagerAdapter dayPickerPagerAdapter = new DayPickerPagerAdapter(context, R.layout.date_picker_month_item_material, R.id.month_view);
        this.mAdapter = dayPickerPagerAdapter;
        dayPickerPagerAdapter.setMonthTextAppearance(resourceId);
        dayPickerPagerAdapter.setDayOfWeekTextAppearance(resourceId2);
        dayPickerPagerAdapter.setDayTextAppearance(resourceId3);
        dayPickerPagerAdapter.setDaySelectorColor(colorStateList);
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(17367121, (ViewGroup) this, false);
        while (viewGroup.getChildCount() > 0) {
            View childAt = viewGroup.getChildAt(0);
            viewGroup.removeViewAt(0);
            addView(childAt);
        }
        ImageButton imageButton = (ImageButton) findViewById(R.id.prev);
        this.mPrevButton = imageButton;
        imageButton.setOnClickListener(this.mOnClickListener);
        ImageButton imageButton2 = (ImageButton) findViewById(R.id.next);
        this.mNextButton = imageButton2;
        imageButton2.setOnClickListener(this.mOnClickListener);
        ViewPager viewPager = (ViewPager) findViewById(R.id.day_picker_view_pager);
        this.mViewPager = viewPager;
        viewPager.setAdapter(this.mAdapter);
        viewPager.setOnPageChangeListener(this.mOnPageChangedListener);
        if (resourceId != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = this.mContext.obtainStyledAttributes(null, ATTRS_TEXT_COLOR, 0, resourceId);
            ColorStateList colorStateList2 = typedArrayObtainStyledAttributes2.getColorStateList(0);
            if (colorStateList2 != null) {
                imageButton.setImageTintList(colorStateList2);
                imageButton2.setImageTintList(colorStateList2);
            }
            typedArrayObtainStyledAttributes2.recycle();
        }
        Calendar calendar = Calendar.getInstance();
        if (!CalendarView.parseDate(string, calendar)) {
            calendar.set(PreciseDisconnectCause.ECBM_NOT_SUPPORTED, 0, 1);
        }
        long timeInMillis = calendar.getTimeInMillis();
        if (!CalendarView.parseDate(string2, calendar)) {
            calendar.set(PreciseDisconnectCause.ANSWERED_ELSEWHERE, 11, 31);
        }
        long timeInMillis2 = calendar.getTimeInMillis();
        if (timeInMillis2 >= timeInMillis) {
            long jConstrain = MathUtils.constrain(System.currentTimeMillis(), timeInMillis, timeInMillis2);
            setFirstDayOfWeek(i4);
            setMinDate(timeInMillis);
            setMaxDate(timeInMillis2);
            setDate(jConstrain, false);
            this.mAdapter.setOnDaySelectedListener(new DayPickerPagerAdapter.OnDaySelectedListener() { // from class: android.widget.DayPickerView.1
                @Override // android.widget.DayPickerPagerAdapter.OnDaySelectedListener
                public void onDaySelected(DayPickerPagerAdapter dayPickerPagerAdapter2, Calendar calendar2) {
                    if (DayPickerView.this.mOnDaySelectedListener != null) {
                        DayPickerView.this.mOnDaySelectedListener.onDaySelected(DayPickerView.this, calendar2);
                    }
                }
            });
            return;
        }
        throw new IllegalArgumentException("maxDate must be >= minDate");
    }
}
