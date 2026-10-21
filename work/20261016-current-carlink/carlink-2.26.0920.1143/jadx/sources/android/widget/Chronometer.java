package android.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.icu.text.MeasureFormat;
import android.icu.util.Measure;
import android.icu.util.MeasureUnit;
import android.net.Uri;
import android.os.SystemClock;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.RemotableViewMethod;
import android.view.View;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.IllegalFormatException;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class Chronometer extends TextView {
    private static final int HOUR_IN_SEC = 3600;
    private static final int MIN_IN_SEC = 60;
    private static final String TAG = "Chronometer";
    private long mBase;
    private boolean mCountDown;
    private String mFormat;
    private StringBuilder mFormatBuilder;
    private Formatter mFormatter;
    private Object[] mFormatterArgs;
    private Locale mFormatterLocale;
    private boolean mLogged;
    private long mNow;
    private OnChronometerTickListener mOnChronometerTickListener;
    private StringBuilder mRecycle;
    private boolean mRunning;
    private boolean mStarted;
    private final Runnable mTickRunnable;
    private boolean mVisible;

    public interface OnChronometerTickListener {
        void onChronometerTick(Chronometer chronometer);
    }

    public Chronometer(Context context) {
        this(context, null, 0);
    }

    private static String formatDuration(long j2) {
        int i2;
        int i3 = (int) (j2 / 1000);
        if (i3 < 0) {
            i3 = -i3;
        }
        int i4 = 0;
        if (i3 >= HOUR_IN_SEC) {
            i2 = i3 / HOUR_IN_SEC;
            i3 -= i2 * HOUR_IN_SEC;
        } else {
            i2 = 0;
        }
        if (i3 >= 60) {
            i4 = i3 / 60;
            i3 -= i4 * 60;
        }
        ArrayList arrayList = new ArrayList();
        if (i2 > 0) {
            android.text.format.a.p();
            arrayList.add(new Measure(Integer.valueOf(i2), MeasureUnit.HOUR));
        }
        if (i4 > 0) {
            android.text.format.a.p();
            arrayList.add(new Measure(Integer.valueOf(i4), MeasureUnit.MINUTE));
        }
        android.text.format.a.p();
        arrayList.add(new Measure(Integer.valueOf(i3), MeasureUnit.SECOND));
        return MeasureFormat.getInstance(Locale.getDefault(), MeasureFormat.FormatWidth.WIDE).formatMeasures((Measure[]) arrayList.toArray(new Measure[arrayList.size()]));
    }

    private void init() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.mBase = jElapsedRealtime;
        updateText(jElapsedRealtime);
    }

    private void updateRunning() {
        boolean z2 = this.mVisible && this.mStarted && isShown();
        if (z2 != this.mRunning) {
            if (z2) {
                updateText(SystemClock.elapsedRealtime());
                dispatchChronometerTick();
                postDelayed(this.mTickRunnable, 1000L);
            } else {
                removeCallbacks(this.mTickRunnable);
            }
            this.mRunning = z2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void updateText(long j2) {
        boolean z2;
        this.mNow = j2;
        long j3 = (this.mCountDown ? this.mBase - j2 : j2 - this.mBase) / 1000;
        if (j3 < 0) {
            j3 = -j3;
            z2 = true;
        } else {
            z2 = false;
        }
        String elapsedTime = DateUtils.formatElapsedTime(this.mRecycle, j3);
        if (z2) {
            elapsedTime = getResources().getString(R.string.negative_duration, elapsedTime);
        }
        if (this.mFormat != null) {
            Locale locale = Locale.getDefault();
            if (this.mFormatter == null || !locale.equals(this.mFormatterLocale)) {
                this.mFormatterLocale = locale;
                this.mFormatter = new Formatter(this.mFormatBuilder, locale);
            }
            this.mFormatBuilder.setLength(0);
            Object[] objArr = this.mFormatterArgs;
            objArr[0] = elapsedTime;
            try {
                this.mFormatter.format(this.mFormat, objArr);
                elapsedTime = this.mFormatBuilder.toString();
            } catch (IllegalFormatException unused) {
                if (!this.mLogged) {
                    Log.w(TAG, "Illegal format string: " + this.mFormat);
                    this.mLogged = true;
                }
            }
        }
        setText(elapsedTime);
    }

    public void dispatchChronometerTick() {
        OnChronometerTickListener onChronometerTickListener = this.mOnChronometerTickListener;
        if (onChronometerTickListener != null) {
            onChronometerTickListener.onChronometerTick(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Chronometer.class.getName();
    }

    public long getBase() {
        return this.mBase;
    }

    @Override // android.view.View
    public CharSequence getContentDescription() {
        return formatDuration(this.mNow - this.mBase);
    }

    public String getFormat() {
        return this.mFormat;
    }

    public OnChronometerTickListener getOnChronometerTickListener() {
        return this.mOnChronometerTickListener;
    }

    public boolean isCountDown() {
        return this.mCountDown;
    }

    public boolean isTheFinalCountDown() {
        try {
            getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://youtu.be/9jK-NcRmVcw")).addCategory(Intent.CATEGORY_BROWSABLE).addFlags(528384));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mVisible = false;
        updateRunning();
    }

    @Override // android.widget.TextView, android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        updateRunning();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.mVisible = i2 == 0;
        updateRunning();
    }

    @RemotableViewMethod
    public void setBase(long j2) {
        this.mBase = j2;
        dispatchChronometerTick();
        updateText(SystemClock.elapsedRealtime());
    }

    @RemotableViewMethod
    public void setBaseNoDelay(String str) {
        String[] strArrSplit = str.split(",");
        if (strArrSplit == null || strArrSplit.length != 2) {
            Log.e(TAG, "setBaseNoDelay error!");
            return;
        }
        long j2 = Long.parseLong(strArrSplit[0]);
        this.mBase = j2 - Long.parseLong(strArrSplit[1]);
        dispatchChronometerTick();
        if (this.mStarted) {
            updateText(SystemClock.elapsedRealtime());
        } else {
            updateText(j2);
        }
    }

    @RemotableViewMethod
    public void setCountDown(boolean z2) {
        this.mCountDown = z2;
        updateText(SystemClock.elapsedRealtime());
    }

    @RemotableViewMethod
    public void setFormat(String str) {
        this.mFormat = str;
        if (str == null || this.mFormatBuilder != null) {
            return;
        }
        this.mFormatBuilder = new StringBuilder(str.length() * 2);
    }

    public void setOnChronometerTickListener(OnChronometerTickListener onChronometerTickListener) {
        this.mOnChronometerTickListener = onChronometerTickListener;
    }

    @RemotableViewMethod
    public void setStarted(boolean z2) {
        this.mStarted = z2;
        updateRunning();
    }

    public void start() {
        this.mStarted = true;
        updateRunning();
    }

    public void stop() {
        this.mStarted = false;
        updateRunning();
    }

    public Chronometer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Chronometer(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public Chronometer(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mFormatterArgs = new Object[1];
        this.mRecycle = new StringBuilder(8);
        this.mTickRunnable = new Runnable() { // from class: android.widget.Chronometer.1
            @Override // java.lang.Runnable
            public void run() {
                if (Chronometer.this.mRunning) {
                    Chronometer.this.updateText(SystemClock.elapsedRealtime());
                    Chronometer.this.dispatchChronometerTick();
                    Chronometer chronometer = Chronometer.this;
                    chronometer.postDelayed(chronometer.mTickRunnable, 1000L);
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Chronometer, i2, i3);
        setFormat(typedArrayObtainStyledAttributes.getString(0));
        setCountDown(typedArrayObtainStyledAttributes.getBoolean(1, false));
        typedArrayObtainStyledAttributes.recycle();
        init();
    }
}
