package android.widget;

import android.app.m;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.icu.util.Calendar;
import android.util.AttributeSet;
import com.android.internal.R;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class CalendarView extends FrameLayout {
    private static final String DATE_FORMAT = "MM/dd/yyyy";
    private static final DateFormat DATE_FORMATTER = new SimpleDateFormat(DATE_FORMAT);
    private static final String LOG_TAG = "CalendarView";
    private static final int MODE_HOLO = 0;
    private static final int MODE_MATERIAL = 1;
    private final CalendarViewDelegate mDelegate;

    public static abstract class AbstractCalendarViewDelegate implements CalendarViewDelegate {
        protected static final String DEFAULT_MAX_DATE = "01/01/2100";
        protected static final String DEFAULT_MIN_DATE = "01/01/1900";
        protected Context mContext;
        protected Locale mCurrentLocale;
        protected CalendarView mDelegator;

        public AbstractCalendarViewDelegate(CalendarView calendarView, Context context) {
            this.mDelegator = calendarView;
            this.mContext = context;
            setCurrentLocale(Locale.getDefault());
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public int getFocusedMonthDateColor() {
            return 0;
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public Drawable getSelectedDateVerticalBar() {
            return null;
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public int getSelectedWeekBackgroundColor() {
            return 0;
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public boolean getShowWeekNumber() {
            return false;
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public int getShownWeekCount() {
            return 0;
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public int getUnfocusedMonthDateColor() {
            return 0;
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public int getWeekNumberColor() {
            return 0;
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public int getWeekSeparatorLineColor() {
            return 0;
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public void onConfigurationChanged(Configuration configuration) {
        }

        public void setCurrentLocale(Locale locale) {
            if (locale.equals(this.mCurrentLocale)) {
                return;
            }
            this.mCurrentLocale = locale;
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public void setFocusedMonthDateColor(int i2) {
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public void setSelectedDateVerticalBar(int i2) {
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public void setSelectedWeekBackgroundColor(int i2) {
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public void setShowWeekNumber(boolean z2) {
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public void setShownWeekCount(int i2) {
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public void setUnfocusedMonthDateColor(int i2) {
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public void setWeekNumberColor(int i2) {
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public void setWeekSeparatorLineColor(int i2) {
        }

        @Override // android.widget.CalendarView.CalendarViewDelegate
        public void setSelectedDateVerticalBar(Drawable drawable) {
        }
    }

    public interface CalendarViewDelegate {
        boolean getBoundsForDate(long j2, Rect rect);

        long getDate();

        int getDateTextAppearance();

        int getFirstDayOfWeek();

        int getFocusedMonthDateColor();

        long getMaxDate();

        long getMinDate();

        Drawable getSelectedDateVerticalBar();

        int getSelectedWeekBackgroundColor();

        boolean getShowWeekNumber();

        int getShownWeekCount();

        int getUnfocusedMonthDateColor();

        int getWeekDayTextAppearance();

        int getWeekNumberColor();

        int getWeekSeparatorLineColor();

        void onConfigurationChanged(Configuration configuration);

        void setDate(long j2);

        void setDate(long j2, boolean z2, boolean z3);

        void setDateTextAppearance(int i2);

        void setFirstDayOfWeek(int i2);

        void setFocusedMonthDateColor(int i2);

        void setMaxDate(long j2);

        void setMinDate(long j2);

        void setOnDateChangeListener(OnDateChangeListener onDateChangeListener);

        void setSelectedDateVerticalBar(int i2);

        void setSelectedDateVerticalBar(Drawable drawable);

        void setSelectedWeekBackgroundColor(int i2);

        void setShowWeekNumber(boolean z2);

        void setShownWeekCount(int i2);

        void setUnfocusedMonthDateColor(int i2);

        void setWeekDayTextAppearance(int i2);

        void setWeekNumberColor(int i2);

        void setWeekSeparatorLineColor(int i2);
    }

    public interface OnDateChangeListener {
        void onSelectedDayChange(CalendarView calendarView, int i2, int i3, int i4);
    }

    public CalendarView(Context context) {
        this(context, null);
    }

    public static boolean parseDate(String str, Calendar calendar) {
        if (str != null && !str.isEmpty()) {
            try {
                calendar.setTime(DATE_FORMATTER.parse(str));
                return true;
            } catch (ParseException unused) {
                m.s("Date: ", str, " not in format: MM/dd/yyyy", LOG_TAG);
            }
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return CalendarView.class.getName();
    }

    public boolean getBoundsForDate(long j2, Rect rect) {
        return this.mDelegate.getBoundsForDate(j2, rect);
    }

    public long getDate() {
        return this.mDelegate.getDate();
    }

    public int getDateTextAppearance() {
        return this.mDelegate.getDateTextAppearance();
    }

    public int getFirstDayOfWeek() {
        return this.mDelegate.getFirstDayOfWeek();
    }

    @Deprecated
    public int getFocusedMonthDateColor() {
        return this.mDelegate.getFocusedMonthDateColor();
    }

    public long getMaxDate() {
        return this.mDelegate.getMaxDate();
    }

    public long getMinDate() {
        return this.mDelegate.getMinDate();
    }

    @Deprecated
    public Drawable getSelectedDateVerticalBar() {
        return this.mDelegate.getSelectedDateVerticalBar();
    }

    @Deprecated
    public int getSelectedWeekBackgroundColor() {
        return this.mDelegate.getSelectedWeekBackgroundColor();
    }

    @Deprecated
    public boolean getShowWeekNumber() {
        return this.mDelegate.getShowWeekNumber();
    }

    @Deprecated
    public int getShownWeekCount() {
        return this.mDelegate.getShownWeekCount();
    }

    @Deprecated
    public int getUnfocusedMonthDateColor() {
        return this.mDelegate.getUnfocusedMonthDateColor();
    }

    public int getWeekDayTextAppearance() {
        return this.mDelegate.getWeekDayTextAppearance();
    }

    @Deprecated
    public int getWeekNumberColor() {
        return this.mDelegate.getWeekNumberColor();
    }

    @Deprecated
    public int getWeekSeparatorLineColor() {
        return this.mDelegate.getWeekSeparatorLineColor();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mDelegate.onConfigurationChanged(configuration);
    }

    public void setDate(long j2) {
        this.mDelegate.setDate(j2);
    }

    public void setDateTextAppearance(int i2) {
        this.mDelegate.setDateTextAppearance(i2);
    }

    public void setFirstDayOfWeek(int i2) {
        this.mDelegate.setFirstDayOfWeek(i2);
    }

    @Deprecated
    public void setFocusedMonthDateColor(int i2) {
        this.mDelegate.setFocusedMonthDateColor(i2);
    }

    public void setMaxDate(long j2) {
        this.mDelegate.setMaxDate(j2);
    }

    public void setMinDate(long j2) {
        this.mDelegate.setMinDate(j2);
    }

    public void setOnDateChangeListener(OnDateChangeListener onDateChangeListener) {
        this.mDelegate.setOnDateChangeListener(onDateChangeListener);
    }

    @Deprecated
    public void setSelectedDateVerticalBar(int i2) {
        this.mDelegate.setSelectedDateVerticalBar(i2);
    }

    @Deprecated
    public void setSelectedWeekBackgroundColor(int i2) {
        this.mDelegate.setSelectedWeekBackgroundColor(i2);
    }

    @Deprecated
    public void setShowWeekNumber(boolean z2) {
        this.mDelegate.setShowWeekNumber(z2);
    }

    @Deprecated
    public void setShownWeekCount(int i2) {
        this.mDelegate.setShownWeekCount(i2);
    }

    @Deprecated
    public void setUnfocusedMonthDateColor(int i2) {
        this.mDelegate.setUnfocusedMonthDateColor(i2);
    }

    public void setWeekDayTextAppearance(int i2) {
        this.mDelegate.setWeekDayTextAppearance(i2);
    }

    @Deprecated
    public void setWeekNumberColor(int i2) {
        this.mDelegate.setWeekNumberColor(i2);
    }

    @Deprecated
    public void setWeekSeparatorLineColor(int i2) {
        this.mDelegate.setWeekSeparatorLineColor(i2);
    }

    public CalendarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843613);
    }

    public void setDate(long j2, boolean z2, boolean z3) {
        this.mDelegate.setDate(j2, z2, z3);
    }

    @Deprecated
    public void setSelectedDateVerticalBar(Drawable drawable) {
        this.mDelegate.setSelectedDateVerticalBar(drawable);
    }

    public CalendarView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public CalendarView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CalendarView, i2, i3);
        int i4 = typedArrayObtainStyledAttributes.getInt(13, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (i4 == 0) {
            this.mDelegate = new CalendarViewLegacyDelegate(this, context, attributeSet, i2, i3);
        } else {
            if (i4 == 1) {
                this.mDelegate = new CalendarViewMaterialDelegate(this, context, attributeSet, i2, i3);
                return;
            }
            throw new IllegalArgumentException("invalid calendarViewMode attribute");
        }
    }
}
