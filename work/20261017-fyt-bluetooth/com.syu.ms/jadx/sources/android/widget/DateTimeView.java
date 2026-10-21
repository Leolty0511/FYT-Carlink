package android.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.ProxyProperties;
import android.os.Handler;
import android.provider.Settings;
import android.text.format.Time;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class DateTimeView extends TextView {
    private static final int SHOW_MONTH_DAY_YEAR = 1;
    private static final int SHOW_TIME = 0;
    private static final String TAG = "DateTimeView";
    private static final long TWELVE_HOURS_IN_MINUTES = 720;
    private static final long TWENTY_FOUR_HOURS_IN_MILLIS = 86400000;
    private boolean mAttachedToWindow;
    private BroadcastReceiver mBroadcastReceiver;
    private ContentObserver mContentObserver;
    public int mLastDisplay;
    public DateFormat mLastFormat;
    public Date mTime;
    public long mTimeMillis;
    private long mUpdateTimeMillis;

    public DateTimeView(Context context) {
        super(context);
        this.mLastDisplay = -1;
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: android.widget.DateTimeView.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (!Intent.ACTION_TIME_TICK.equals(intent.getAction()) || System.currentTimeMillis() >= DateTimeView.this.mUpdateTimeMillis) {
                    DateTimeView dateTimeView = DateTimeView.this;
                    dateTimeView.mLastFormat = null;
                    dateTimeView.update();
                }
            }
        };
        this.mContentObserver = new ContentObserver(new Handler()) { // from class: android.widget.DateTimeView.2
            @Override // android.database.ContentObserver
            public void onChange(boolean z2) {
                DateTimeView dateTimeView = DateTimeView.this;
                dateTimeView.mLastFormat = null;
                dateTimeView.update();
            }
        };
    }

    private DateFormat getDateFormat() {
        String string = Settings.System.getString(getContext().getContentResolver(), Settings.System.DATE_FORMAT);
        if (string == null || ProxyProperties.LOCAL_EXCL_LIST.equals(string)) {
            return DateFormat.getDateInstance(3);
        }
        try {
            return new SimpleDateFormat(string);
        } catch (IllegalArgumentException unused) {
            return DateFormat.getDateInstance(3);
        }
    }

    private DateFormat getTimeFormat() {
        return android.text.format.DateFormat.getTimeFormat(getContext());
    }

    private void registerReceivers() {
        Context context = getContext();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_TIME_TICK);
        intentFilter.addAction(Intent.ACTION_TIME_CHANGED);
        intentFilter.addAction(Intent.ACTION_CONFIGURATION_CHANGED);
        intentFilter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
        context.registerReceiver(this.mBroadcastReceiver, intentFilter);
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.DATE_FORMAT), true, this.mContentObserver);
    }

    private void unregisterReceivers() {
        Context context = getContext();
        context.unregisterReceiver(this.mBroadcastReceiver);
        context.getContentResolver().unregisterContentObserver(this.mContentObserver);
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        registerReceivers();
        this.mAttachedToWindow = true;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        unregisterReceivers();
        this.mAttachedToWindow = false;
    }

    @RemotableViewMethod
    public void setTime(long j2) {
        Time time = new Time();
        time.set(j2);
        time.second = 0;
        this.mTimeMillis = time.toMillis(false);
        this.mTime = new Date(time.year - 1900, time.month, time.monthDay, time.hour, time.minute, 0);
        update();
    }

    public void update() {
        DateFormat timeFormat;
        if (this.mTime == null) {
            return;
        }
        System.nanoTime();
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
                    throw new RuntimeException("unknown display value: " + i2);
                }
                timeFormat = getDateFormat();
            }
            this.mLastFormat = timeFormat;
        }
        setText(timeFormat.format(this.mTime));
        if (i2 == 0) {
            if (millis2 <= millis4) {
                millis2 = millis4;
            }
            this.mUpdateTimeMillis = millis2;
        } else if (this.mTimeMillis < jNormalize) {
            this.mUpdateTimeMillis = 0L;
        } else {
            if (millis >= millis3) {
                millis = millis3;
            }
            this.mUpdateTimeMillis = millis;
        }
        System.nanoTime();
    }

    public DateTimeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastDisplay = -1;
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: android.widget.DateTimeView.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (!Intent.ACTION_TIME_TICK.equals(intent.getAction()) || System.currentTimeMillis() >= DateTimeView.this.mUpdateTimeMillis) {
                    DateTimeView dateTimeView = DateTimeView.this;
                    dateTimeView.mLastFormat = null;
                    dateTimeView.update();
                }
            }
        };
        this.mContentObserver = new ContentObserver(new Handler()) { // from class: android.widget.DateTimeView.2
            @Override // android.database.ContentObserver
            public void onChange(boolean z2) {
                DateTimeView dateTimeView = DateTimeView.this;
                dateTimeView.mLastFormat = null;
                dateTimeView.update();
            }
        };
    }
}
