package android.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.icu.util.Calendar;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.widget.PagerAdapter;

/* JADX INFO: loaded from: classes2.dex */
class DayPickerPagerAdapter extends PagerAdapter {
    private static final int MONTHS_IN_YEAR = 12;
    private ColorStateList mCalendarTextColor;
    private final int mCalendarViewId;
    private int mCount;
    private ColorStateList mDayHighlightColor;
    private int mDayOfWeekTextAppearance;
    private ColorStateList mDaySelectorColor;
    private int mDayTextAppearance;
    private int mFirstDayOfWeek;
    private final LayoutInflater mInflater;
    private final int mLayoutResId;
    private int mMonthTextAppearance;
    private OnDaySelectedListener mOnDaySelectedListener;
    private final Calendar mMinDate = Calendar.getInstance();
    private final Calendar mMaxDate = Calendar.getInstance();
    private final SparseArray<ViewHolder> mItems = new SparseArray<>();
    private Calendar mSelectedDay = null;
    private final SimpleMonthView.OnDayClickListener mOnDayClickListener = new SimpleMonthView.OnDayClickListener() { // from class: android.widget.DayPickerPagerAdapter.1
        @Override // android.widget.SimpleMonthView.OnDayClickListener
        public void onDayClick(SimpleMonthView simpleMonthView, Calendar calendar) {
            if (calendar != null) {
                DayPickerPagerAdapter.this.setSelectedDay(calendar);
                if (DayPickerPagerAdapter.this.mOnDaySelectedListener != null) {
                    DayPickerPagerAdapter.this.mOnDaySelectedListener.onDaySelected(DayPickerPagerAdapter.this, calendar);
                }
            }
        }
    };

    public interface OnDaySelectedListener {
        void onDaySelected(DayPickerPagerAdapter dayPickerPagerAdapter, Calendar calendar);
    }

    public static class ViewHolder {
        public final SimpleMonthView calendar;
        public final View container;
        public final int position;

        public ViewHolder(int i2, View view, SimpleMonthView simpleMonthView) {
            this.position = i2;
            this.container = view;
            this.calendar = simpleMonthView;
        }
    }

    public DayPickerPagerAdapter(Context context, int i2, int i3) {
        this.mInflater = LayoutInflater.from(context);
        this.mLayoutResId = i2;
        this.mCalendarViewId = i3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{16843820});
        this.mDayHighlightColor = typedArrayObtainStyledAttributes.getColorStateList(0);
        typedArrayObtainStyledAttributes.recycle();
    }

    private int getMonthForPosition(int i2) {
        return (this.mMinDate.get(2) + i2) % 12;
    }

    private int getPositionForDay(Calendar calendar) {
        if (calendar == null) {
            return -1;
        }
        return ((calendar.get(1) - this.mMinDate.get(1)) * 12) + (calendar.get(2) - this.mMinDate.get(2));
    }

    private int getYearForPosition(int i2) {
        return this.mMinDate.get(1) + ((this.mMinDate.get(2) + i2) / 12);
    }

    @Override // com.android.internal.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        viewGroup.removeView(((ViewHolder) obj).container);
        this.mItems.remove(i2);
    }

    public boolean getBoundsForDate(Calendar calendar, Rect rect) {
        ViewHolder viewHolder = this.mItems.get(getPositionForDay(calendar), null);
        if (viewHolder == null) {
            return false;
        }
        return viewHolder.calendar.getBoundsForDay(calendar.get(5), rect);
    }

    @Override // com.android.internal.widget.PagerAdapter
    public int getCount() {
        return this.mCount;
    }

    public int getDayOfWeekTextAppearance() {
        return this.mDayOfWeekTextAppearance;
    }

    public int getDayTextAppearance() {
        return this.mDayTextAppearance;
    }

    public int getFirstDayOfWeek() {
        return this.mFirstDayOfWeek;
    }

    @Override // com.android.internal.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return ((ViewHolder) obj).position;
    }

    @Override // com.android.internal.widget.PagerAdapter
    public CharSequence getPageTitle(int i2) {
        SimpleMonthView simpleMonthView = this.mItems.get(i2).calendar;
        if (simpleMonthView != null) {
            return simpleMonthView.getMonthYearLabel();
        }
        return null;
    }

    public SimpleMonthView getView(Object obj) {
        if (obj == null) {
            return null;
        }
        return ((ViewHolder) obj).calendar;
    }

    @Override // com.android.internal.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i2) {
        View viewInflate = this.mInflater.inflate(this.mLayoutResId, viewGroup, false);
        SimpleMonthView simpleMonthView = (SimpleMonthView) viewInflate.findViewById(this.mCalendarViewId);
        simpleMonthView.setOnDayClickListener(this.mOnDayClickListener);
        simpleMonthView.setMonthTextAppearance(this.mMonthTextAppearance);
        simpleMonthView.setDayOfWeekTextAppearance(this.mDayOfWeekTextAppearance);
        simpleMonthView.setDayTextAppearance(this.mDayTextAppearance);
        ColorStateList colorStateList = this.mDaySelectorColor;
        if (colorStateList != null) {
            simpleMonthView.setDaySelectorColor(colorStateList);
        }
        ColorStateList colorStateList2 = this.mDayHighlightColor;
        if (colorStateList2 != null) {
            simpleMonthView.setDayHighlightColor(colorStateList2);
        }
        ColorStateList colorStateList3 = this.mCalendarTextColor;
        if (colorStateList3 != null) {
            simpleMonthView.setMonthTextColor(colorStateList3);
            simpleMonthView.setDayOfWeekTextColor(this.mCalendarTextColor);
            simpleMonthView.setDayTextColor(this.mCalendarTextColor);
        }
        int monthForPosition = getMonthForPosition(i2);
        int yearForPosition = getYearForPosition(i2);
        Calendar calendar = this.mSelectedDay;
        simpleMonthView.setMonthParams((calendar == null || calendar.get(2) != monthForPosition) ? -1 : this.mSelectedDay.get(5), monthForPosition, yearForPosition, this.mFirstDayOfWeek, (this.mMinDate.get(2) == monthForPosition && this.mMinDate.get(1) == yearForPosition) ? this.mMinDate.get(5) : 1, (this.mMaxDate.get(2) == monthForPosition && this.mMaxDate.get(1) == yearForPosition) ? this.mMaxDate.get(5) : 31);
        ViewHolder viewHolder = new ViewHolder(i2, viewInflate, simpleMonthView);
        this.mItems.put(i2, viewHolder);
        viewGroup.addView(viewInflate);
        return viewHolder;
    }

    @Override // com.android.internal.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == ((ViewHolder) obj).container;
    }

    public void setCalendarTextColor(ColorStateList colorStateList) {
        this.mCalendarTextColor = colorStateList;
        notifyDataSetChanged();
    }

    public void setDayOfWeekTextAppearance(int i2) {
        this.mDayOfWeekTextAppearance = i2;
        notifyDataSetChanged();
    }

    public void setDaySelectorColor(ColorStateList colorStateList) {
        this.mDaySelectorColor = colorStateList;
        notifyDataSetChanged();
    }

    public void setDayTextAppearance(int i2) {
        this.mDayTextAppearance = i2;
        notifyDataSetChanged();
    }

    public void setFirstDayOfWeek(int i2) {
        this.mFirstDayOfWeek = i2;
        int size = this.mItems.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.mItems.valueAt(i3).calendar.setFirstDayOfWeek(i2);
        }
    }

    public void setMonthTextAppearance(int i2) {
        this.mMonthTextAppearance = i2;
        notifyDataSetChanged();
    }

    public void setOnDaySelectedListener(OnDaySelectedListener onDaySelectedListener) {
        this.mOnDaySelectedListener = onDaySelectedListener;
    }

    public void setRange(Calendar calendar, Calendar calendar2) {
        this.mMinDate.setTimeInMillis(calendar.getTimeInMillis());
        this.mMaxDate.setTimeInMillis(calendar2.getTimeInMillis());
        this.mCount = ((this.mMaxDate.get(1) - this.mMinDate.get(1)) * 12) + (this.mMaxDate.get(2) - this.mMinDate.get(2)) + 1;
        notifyDataSetChanged();
    }

    public void setSelectedDay(Calendar calendar) {
        ViewHolder viewHolder;
        ViewHolder viewHolder2;
        int positionForDay = getPositionForDay(this.mSelectedDay);
        int positionForDay2 = getPositionForDay(calendar);
        if (positionForDay != positionForDay2 && positionForDay >= 0 && (viewHolder2 = this.mItems.get(positionForDay, null)) != null) {
            viewHolder2.calendar.setSelectedDay(-1);
        }
        if (positionForDay2 >= 0 && (viewHolder = this.mItems.get(positionForDay2, null)) != null) {
            viewHolder.calendar.setSelectedDay(calendar.get(5));
        }
        this.mSelectedDay = calendar;
    }
}
