package android.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.view.ViewDebug;
import i.a;
import java.util.Calendar;
import java.util.TimeZone;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class TextClock extends TextView {
    public static final CharSequence DEFAULT_FORMAT_12_HOUR = "h:mm a";
    public static final CharSequence DEFAULT_FORMAT_24_HOUR = "H:mm";
    private boolean mAttached;

    @ViewDebug.ExportedProperty
    private CharSequence mFormat;
    private CharSequence mFormat12;
    private CharSequence mFormat24;
    private final ContentObserver mFormatChangeObserver;

    @ViewDebug.ExportedProperty
    private boolean mHasSeconds;
    private final BroadcastReceiver mIntentReceiver;
    private final Runnable mTicker;
    private Calendar mTime;
    private String mTimeZone;

    public TextClock(Context context) {
        super(context);
        this.mFormatChangeObserver = new ContentObserver(new Handler()) { // from class: android.widget.TextClock.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z2) {
                TextClock.this.chooseFormat();
                TextClock.this.onTimeChanged();
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z2, Uri uri) {
                TextClock.this.chooseFormat();
                TextClock.this.onTimeChanged();
            }
        };
        this.mIntentReceiver = new BroadcastReceiver() { // from class: android.widget.TextClock.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (TextClock.this.mTimeZone == null && Intent.ACTION_TIMEZONE_CHANGED.equals(intent.getAction())) {
                    TextClock.this.createTime(intent.getStringExtra("time-zone"));
                }
                TextClock.this.onTimeChanged();
            }
        };
        this.mTicker = new Runnable() { // from class: android.widget.TextClock.3
            @Override // java.lang.Runnable
            public void run() {
                TextClock.this.onTimeChanged();
                long jUptimeMillis = SystemClock.uptimeMillis();
                TextClock.this.getHandler().postAtTime(TextClock.this.mTicker, jUptimeMillis + (1000 - (jUptimeMillis % 1000)));
            }
        };
        init();
    }

    private static CharSequence abc(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        if (charSequence == null) {
            return charSequence2 == null ? charSequence3 : charSequence2;
        }
        return charSequence;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseFormat() {
        chooseFormat(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createTime(String str) {
        if (str != null) {
            this.mTime = Calendar.getInstance(TimeZone.getTimeZone(str));
        } else {
            this.mTime = Calendar.getInstance();
        }
    }

    private void init() {
        if (this.mFormat12 == null || this.mFormat24 == null) {
            LocaleData localeData = LocaleData.get(getContext().getResources().getConfiguration().locale);
            if (this.mFormat12 == null) {
                this.mFormat12 = localeData.timeFormat12;
            }
            if (this.mFormat24 == null) {
                this.mFormat24 = localeData.timeFormat24;
            }
        }
        createTime(this.mTimeZone);
        chooseFormat(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTimeChanged() {
        this.mTime.setTimeInMillis(System.currentTimeMillis());
        setText(DateFormat.format(this.mFormat, this.mTime));
    }

    private void registerObserver() {
        getContext().getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.mFormatChangeObserver);
    }

    private void registerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_TIME_TICK);
        intentFilter.addAction(Intent.ACTION_TIME_CHANGED);
        intentFilter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
        getContext().registerReceiver(this.mIntentReceiver, intentFilter, null, getHandler());
    }

    private void unregisterObserver() {
        getContext().getContentResolver().unregisterContentObserver(this.mFormatChangeObserver);
    }

    private void unregisterReceiver() {
        getContext().unregisterReceiver(this.mIntentReceiver);
    }

    public CharSequence getFormat() {
        return this.mFormat;
    }

    @ViewDebug.ExportedProperty
    public CharSequence getFormat12Hour() {
        return this.mFormat12;
    }

    @ViewDebug.ExportedProperty
    public CharSequence getFormat24Hour() {
        return this.mFormat24;
    }

    public String getTimeZone() {
        return this.mTimeZone;
    }

    public boolean is24HourModeEnabled() {
        return DateFormat.is24HourFormat(getContext());
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mAttached) {
            return;
        }
        this.mAttached = true;
        registerReceiver();
        registerObserver();
        createTime(this.mTimeZone);
        if (this.mHasSeconds) {
            this.mTicker.run();
        } else {
            onTimeChanged();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttached) {
            unregisterReceiver();
            unregisterObserver();
            getHandler().removeCallbacks(this.mTicker);
            this.mAttached = false;
        }
    }

    @RemotableViewMethod
    public void setFormat12Hour(CharSequence charSequence) {
        this.mFormat12 = charSequence;
        chooseFormat();
        onTimeChanged();
    }

    @RemotableViewMethod
    public void setFormat24Hour(CharSequence charSequence) {
        this.mFormat24 = charSequence;
        chooseFormat();
        onTimeChanged();
    }

    @RemotableViewMethod
    public void setTimeZone(String str) {
        this.mTimeZone = str;
        createTime(str);
        onTimeChanged();
    }

    private void chooseFormat(boolean z2) {
        boolean zIs24HourModeEnabled = is24HourModeEnabled();
        LocaleData localeData = LocaleData.get(getContext().getResources().getConfiguration().locale);
        if (zIs24HourModeEnabled) {
            this.mFormat = abc(this.mFormat24, this.mFormat12, localeData.timeFormat24);
        } else {
            this.mFormat = abc(this.mFormat12, this.mFormat24, localeData.timeFormat12);
        }
        boolean z3 = this.mHasSeconds;
        boolean zHasSeconds = DateFormat.hasSeconds(this.mFormat);
        this.mHasSeconds = zHasSeconds;
        if (z2 && this.mAttached && z3 != zHasSeconds) {
            if (z3) {
                getHandler().removeCallbacks(this.mTicker);
            } else {
                this.mTicker.run();
            }
        }
    }

    public TextClock(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextClock(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mFormatChangeObserver = new ContentObserver(new Handler()) { // from class: android.widget.TextClock.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z2) {
                TextClock.this.chooseFormat();
                TextClock.this.onTimeChanged();
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z2, Uri uri) {
                TextClock.this.chooseFormat();
                TextClock.this.onTimeChanged();
            }
        };
        this.mIntentReceiver = new BroadcastReceiver() { // from class: android.widget.TextClock.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (TextClock.this.mTimeZone == null && Intent.ACTION_TIMEZONE_CHANGED.equals(intent.getAction())) {
                    TextClock.this.createTime(intent.getStringExtra("time-zone"));
                }
                TextClock.this.onTimeChanged();
            }
        };
        this.mTicker = new Runnable() { // from class: android.widget.TextClock.3
            @Override // java.lang.Runnable
            public void run() {
                TextClock.this.onTimeChanged();
                long jUptimeMillis = SystemClock.uptimeMillis();
                TextClock.this.getHandler().postAtTime(TextClock.this.mTicker, jUptimeMillis + (1000 - (jUptimeMillis % 1000)));
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.TextClock, i2, 0);
        try {
            this.mFormat12 = typedArrayObtainStyledAttributes.getText(0);
            this.mFormat24 = typedArrayObtainStyledAttributes.getText(1);
            this.mTimeZone = typedArrayObtainStyledAttributes.getString(2);
            typedArrayObtainStyledAttributes.recycle();
            init();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
