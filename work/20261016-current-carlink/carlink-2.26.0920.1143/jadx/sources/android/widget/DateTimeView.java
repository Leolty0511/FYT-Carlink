package android.widget;

import android.app.ActivityThread;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.icu.util.Calendar;
import android.os.Handler;
import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.internal.R;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.TimeZone;
import libcore.icu.DateUtilsBridge;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class DateTimeView extends TextView {
    private static final int SHOW_MONTH_DAY_YEAR = 1;
    private static final int SHOW_TIME = 0;
    private static final ThreadLocal<ReceiverInfo> sReceiverInfo = new ThreadLocal<>();
    int mLastDisplay;
    DateFormat mLastFormat;
    private String mNowText;
    private boolean mShowRelativeTime;
    Date mTime;
    long mTimeMillis;
    private long mUpdateTimeMillis;

    public static class ReceiverInfo {
        private final ArrayList<DateTimeView> mAttachedViews;
        private Handler mHandler;
        private final ContentObserver mObserver;
        private final BroadcastReceiver mReceiver;

        private ReceiverInfo() {
            this.mAttachedViews = new ArrayList<>();
            this.mReceiver = new BroadcastReceiver() { // from class: android.widget.DateTimeView.ReceiverInfo.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if (!Intent.ACTION_TIME_TICK.equals(intent.getAction()) || System.currentTimeMillis() >= ReceiverInfo.this.getSoonestUpdateTime()) {
                        ReceiverInfo.this.updateAll();
                    }
                }
            };
            this.mObserver = new ContentObserver(new Handler()) { // from class: android.widget.DateTimeView.ReceiverInfo.2
                @Override // android.database.ContentObserver
                public void onChange(boolean z2) {
                    ReceiverInfo.this.updateAll();
                }
            };
            this.mHandler = new Handler();
        }

        public static final Context getApplicationContextIfAvailable(Context context) {
            Context applicationContext = context.getApplicationContext();
            return applicationContext != null ? applicationContext : ActivityThread.currentApplication().getApplicationContext();
        }

        public void addView(DateTimeView dateTimeView) {
            synchronized (this.mAttachedViews) {
                boolean zIsEmpty = this.mAttachedViews.isEmpty();
                this.mAttachedViews.add(dateTimeView);
                if (zIsEmpty) {
                    register(getApplicationContextIfAvailable(dateTimeView.getContext()));
                }
            }
        }

        public long getSoonestUpdateTime() {
            long j2;
            synchronized (this.mAttachedViews) {
                int size = this.mAttachedViews.size();
                j2 = Long.MAX_VALUE;
                for (int i2 = 0; i2 < size; i2++) {
                    long j3 = this.mAttachedViews.get(i2).mUpdateTimeMillis;
                    if (j3 < j2) {
                        j2 = j3;
                    }
                }
            }
            return j2;
        }

        public void register(Context context) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(Intent.ACTION_TIME_TICK);
            intentFilter.addAction(Intent.ACTION_TIME_CHANGED);
            intentFilter.addAction(Intent.ACTION_CONFIGURATION_CHANGED);
            intentFilter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
            context.registerReceiver(this.mReceiver, intentFilter, null, this.mHandler);
        }

        public void removeView(DateTimeView dateTimeView) {
            synchronized (this.mAttachedViews) {
                this.mAttachedViews.remove(dateTimeView);
                if (this.mAttachedViews.isEmpty()) {
                    unregister(getApplicationContextIfAvailable(dateTimeView.getContext()));
                }
            }
        }

        public void setHandler(Handler handler) {
            this.mHandler = handler;
            synchronized (this.mAttachedViews) {
                if (!this.mAttachedViews.isEmpty()) {
                    unregister(this.mAttachedViews.get(0).getContext());
                    register(this.mAttachedViews.get(0).getContext());
                }
            }
        }

        public void unregister(Context context) {
            context.unregisterReceiver(this.mReceiver);
        }

        public void updateAll() {
            synchronized (this.mAttachedViews) {
                int size = this.mAttachedViews.size();
                for (int i2 = 0; i2 < size; i2++) {
                    DateTimeView dateTimeView = this.mAttachedViews.get(i2);
                    dateTimeView.post(new f(dateTimeView, 1));
                }
            }
        }
    }

    public DateTimeView(Context context) {
        this(context, null);
    }

    private long computeNextMidnight(TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(DateUtilsBridge.icuTimeZone(timeZone));
        calendar.add(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    private static int dayDistance(TimeZone timeZone, long j2, long j3) {
        return Time.getJulianDay(j3, timeZone.getOffset(j3) / 1000) - Time.getJulianDay(j2, timeZone.getOffset(j2) / 1000);
    }

    private DateFormat getTimeFormat() {
        return android.text.format.DateFormat.getTimeFormat(getContext());
    }

    public static void setReceiverHandler(Handler handler) {
        ThreadLocal<ReceiverInfo> threadLocal = sReceiverInfo;
        ReceiverInfo receiverInfo = threadLocal.get();
        if (receiverInfo == null) {
            receiverInfo = new ReceiverInfo();
            threadLocal.set(receiverInfo);
        }
        receiverInfo.setHandler(handler);
    }

    private void updateNowText() {
        if (this.mShowRelativeTime) {
            this.mNowText = getContext().getResources().getString(R.string.now_string_shortest);
        }
    }

    private void updateRelativeTime() {
        int iMax;
        String str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jAbs = Math.abs(jCurrentTimeMillis - this.mTimeMillis);
        boolean z2 = jCurrentTimeMillis >= this.mTimeMillis;
        long j2 = 60000;
        if (jAbs < 60000) {
            setText(this.mNowText);
            this.mUpdateTimeMillis = this.mTimeMillis + 60000 + 1;
            return;
        }
        long j3 = 3600000;
        if (jAbs < 3600000) {
            iMax = (int) (jAbs / 60000);
            str = String.format(getContext().getResources().getQuantityString(z2 ? R.plurals.duration_minutes_shortest : R.plurals.duration_minutes_shortest_future, iMax), Integer.valueOf(iMax));
        } else {
            j2 = 86400000;
            if (jAbs < 86400000) {
                iMax = (int) (jAbs / 3600000);
                str = String.format(getContext().getResources().getQuantityString(z2 ? R.plurals.duration_hours_shortest : R.plurals.duration_hours_shortest_future, iMax), Integer.valueOf(iMax));
            } else {
                j3 = DateUtils.YEAR_IN_MILLIS;
                if (jAbs < DateUtils.YEAR_IN_MILLIS) {
                    TimeZone timeZone = TimeZone.getDefault();
                    iMax = Math.max(Math.abs(dayDistance(timeZone, this.mTimeMillis, jCurrentTimeMillis)), 1);
                    str = String.format(getContext().getResources().getQuantityString(z2 ? R.plurals.duration_days_shortest : R.plurals.duration_days_shortest_future, iMax), Integer.valueOf(iMax));
                    if (z2 || iMax != 1) {
                        this.mUpdateTimeMillis = computeNextMidnight(timeZone);
                        j2 = -1;
                    }
                } else {
                    iMax = (int) (jAbs / DateUtils.YEAR_IN_MILLIS);
                    str = String.format(getContext().getResources().getQuantityString(z2 ? R.plurals.duration_years_shortest : R.plurals.duration_years_shortest_future, iMax), Integer.valueOf(iMax));
                }
            }
            j2 = j3;
        }
        if (j2 != -1) {
            if (z2) {
                this.mUpdateTimeMillis = (j2 * ((long) (iMax + 1))) + this.mTimeMillis + 1;
            } else {
                this.mUpdateTimeMillis = (this.mTimeMillis - (j2 * ((long) iMax))) + 1;
            }
        }
        setText(str);
    }

    public void clearFormatAndUpdate() {
        this.mLastFormat = null;
        update();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ThreadLocal<ReceiverInfo> threadLocal = sReceiverInfo;
        ReceiverInfo receiverInfo = threadLocal.get();
        if (receiverInfo == null) {
            receiverInfo = new ReceiverInfo();
            threadLocal.set(receiverInfo);
        }
        receiverInfo.addView(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateNowText();
        update();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ReceiverInfo receiverInfo = sReceiverInfo.get();
        if (receiverInfo != null) {
            receiverInfo.removeView(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        String str;
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        if (this.mShowRelativeTime) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jAbs = Math.abs(jCurrentTimeMillis - this.mTimeMillis);
            boolean z2 = jCurrentTimeMillis >= this.mTimeMillis;
            if (jAbs < 60000) {
                str = this.mNowText;
            } else if (jAbs < 3600000) {
                int i2 = (int) (jAbs / 60000);
                str = String.format(getContext().getResources().getQuantityString(z2 ? R.plurals.duration_minutes_relative : R.plurals.duration_minutes_relative_future, i2), Integer.valueOf(i2));
            } else if (jAbs < 86400000) {
                int i3 = (int) (jAbs / 3600000);
                str = String.format(getContext().getResources().getQuantityString(z2 ? R.plurals.duration_hours_relative : R.plurals.duration_hours_relative_future, i3), Integer.valueOf(i3));
            } else if (jAbs < DateUtils.YEAR_IN_MILLIS) {
                int iMax = Math.max(Math.abs(dayDistance(TimeZone.getDefault(), this.mTimeMillis, jCurrentTimeMillis)), 1);
                str = String.format(getContext().getResources().getQuantityString(z2 ? R.plurals.duration_days_relative : R.plurals.duration_days_relative_future, iMax), Integer.valueOf(iMax));
            } else {
                int i4 = (int) (jAbs / DateUtils.YEAR_IN_MILLIS);
                str = String.format(getContext().getResources().getQuantityString(z2 ? R.plurals.duration_years_relative : R.plurals.duration_years_relative_future, i4), Integer.valueOf(i4));
            }
            accessibilityNodeInfo.setText(str);
        }
    }

    @RemotableViewMethod
    public void setShowRelativeTime(boolean z2) {
        this.mShowRelativeTime = z2;
        updateNowText();
        update();
    }

    @RemotableViewMethod
    public void setTime(long j2) {
        Time time = new Time();
        time.set(j2);
        this.mTimeMillis = time.toMillis(false);
        this.mTime = new Date(time.year - 1900, time.month, time.monthDay, time.hour, time.minute, 0);
        update();
    }

    @Override // android.view.View
    @RemotableViewMethod
    public void setVisibility(int i2) {
        boolean z2 = i2 != 8 && getVisibility() == 8;
        super.setVisibility(i2);
        if (z2) {
            update();
        }
    }

    public void update() {
        DateFormat timeFormat;
        if (this.mTime == null || getVisibility() == 8) {
            return;
        }
        if (this.mShowRelativeTime) {
            updateRelativeTime();
            return;
        }
        Time time = new Time();
        time.set(this.mTimeMillis);
        int i2 = 0;
        time.second = 0;
        time.hour -= 12;
        long millis = time.toMillis(false);
        time.hour += 12;
        long millis2 = time.toMillis(false);
        time.hour = 0;
        time.minute = 0;
        long millis3 = time.toMillis(false);
        time.monthDay++;
        long millis4 = time.toMillis(false);
        time.set(System.currentTimeMillis());
        time.second = 0;
        long jNormalize = time.normalize(false);
        if ((jNormalize < millis3 || jNormalize >= millis4) && (jNormalize < millis || jNormalize >= millis2)) {
            i2 = 1;
        }
        if (i2 != this.mLastDisplay || (timeFormat = this.mLastFormat) == null) {
            if (i2 == 0) {
                timeFormat = getTimeFormat();
            } else {
                if (i2 != 1) {
                    throw new RuntimeException(android.accessibilityservice.c.d("unknown display value: ", i2));
                }
                timeFormat = DateFormat.getDateInstance(3);
            }
            this.mLastFormat = timeFormat;
        }
        setText(timeFormat.format(this.mTime));
        if (i2 == 0) {
            if (millis2 <= millis4) {
                millis2 = millis4;
            }
            this.mUpdateTimeMillis = millis2;
        } else {
            if (this.mTimeMillis < jNormalize) {
                this.mUpdateTimeMillis = 0L;
                return;
            }
            if (millis >= millis3) {
                millis = millis3;
            }
            this.mUpdateTimeMillis = millis;
        }
    }

    public DateTimeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastDisplay = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DateTimeView, 0, 0);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            if (typedArrayObtainStyledAttributes.getIndex(i2) == 0) {
                setShowRelativeTime(typedArrayObtainStyledAttributes.getBoolean(i2, false));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
