package android.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.AttributeSet;
import android.view.View;
import i.a;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class AnalogClock extends View {
    private boolean mAttached;
    private Time mCalendar;
    private boolean mChanged;
    private Drawable mDial;
    private int mDialHeight;
    private int mDialWidth;
    private final Handler mHandler;
    private float mHour;
    private Drawable mHourHand;
    private final BroadcastReceiver mIntentReceiver;
    private Drawable mMinuteHand;
    private float mMinutes;

    public AnalogClock(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTimeChanged() {
        this.mCalendar.setToNow();
        Time time = this.mCalendar;
        int i2 = time.hour;
        float f2 = time.minute + (time.second / 60.0f);
        this.mMinutes = f2;
        this.mHour = i2 + (f2 / 60.0f);
        this.mChanged = true;
        updateContentDescription(time);
    }

    private void updateContentDescription(Time time) {
        setContentDescription(DateUtils.formatDateTime(this.mContext, time.toMillis(false), 129));
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.mAttached) {
            this.mAttached = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(Intent.ACTION_TIME_TICK);
            intentFilter.addAction(Intent.ACTION_TIME_CHANGED);
            intentFilter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
            getContext().registerReceiver(this.mIntentReceiver, intentFilter, null, this.mHandler);
        }
        this.mCalendar = new Time();
        onTimeChanged();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttached) {
            getContext().unregisterReceiver(this.mIntentReceiver);
            this.mAttached = false;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        boolean z2 = this.mChanged;
        boolean z3 = false;
        if (z2) {
            this.mChanged = false;
        }
        int i2 = this.mRight - this.mLeft;
        int i3 = this.mBottom - this.mTop;
        int i4 = i2 / 2;
        int i5 = i3 / 2;
        Drawable drawable = this.mDial;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (i2 < intrinsicWidth || i3 < intrinsicHeight) {
            z3 = true;
            float fMin = Math.min(i2 / intrinsicWidth, i3 / intrinsicHeight);
            canvas.save();
            canvas.scale(fMin, fMin, i4, i5);
        }
        if (z2) {
            int i6 = intrinsicWidth / 2;
            int i7 = intrinsicHeight / 2;
            drawable.setBounds(i4 - i6, i5 - i7, i6 + i4, i7 + i5);
        }
        drawable.draw(canvas);
        canvas.save();
        float f2 = i4;
        float f3 = i5;
        canvas.rotate((this.mHour / 12.0f) * 360.0f, f2, f3);
        Drawable drawable2 = this.mHourHand;
        if (z2) {
            int intrinsicWidth2 = drawable2.getIntrinsicWidth() / 2;
            int intrinsicHeight2 = drawable2.getIntrinsicHeight() / 2;
            drawable2.setBounds(i4 - intrinsicWidth2, i5 - intrinsicHeight2, intrinsicWidth2 + i4, intrinsicHeight2 + i5);
        }
        drawable2.draw(canvas);
        canvas.restore();
        canvas.save();
        canvas.rotate((this.mMinutes / 60.0f) * 360.0f, f2, f3);
        Drawable drawable3 = this.mMinuteHand;
        if (z2) {
            int intrinsicWidth3 = drawable3.getIntrinsicWidth() / 2;
            int intrinsicHeight3 = drawable3.getIntrinsicHeight() / 2;
            drawable3.setBounds(i4 - intrinsicWidth3, i5 - intrinsicHeight3, i4 + intrinsicWidth3, i5 + intrinsicHeight3);
        }
        drawable3.draw(canvas);
        canvas.restore();
        if (z3) {
            canvas.restore();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        float f2 = 1.0f;
        float f3 = (mode == 0 || size >= (i5 = this.mDialWidth)) ? 1.0f : size / i5;
        if (mode2 != 0 && size2 < (i4 = this.mDialHeight)) {
            f2 = size2 / i4;
        }
        float fMin = Math.min(f3, f2);
        setMeasuredDimension(View.resolveSizeAndState((int) (this.mDialWidth * fMin), i2, 0), View.resolveSizeAndState((int) (this.mDialHeight * fMin), i3, 0));
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.mChanged = true;
    }

    public AnalogClock(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AnalogClock(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mHandler = new Handler();
        this.mIntentReceiver = new BroadcastReceiver() { // from class: android.widget.AnalogClock.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals(Intent.ACTION_TIMEZONE_CHANGED)) {
                    String stringExtra = intent.getStringExtra("time-zone");
                    AnalogClock.this.mCalendar = new Time(TimeZone.getTimeZone(stringExtra).getID());
                }
                AnalogClock.this.onTimeChanged();
                AnalogClock.this.invalidate();
            }
        };
        Resources resources = this.mContext.getResources();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AnalogClock, i2, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        this.mDial = drawable;
        if (drawable == null) {
            this.mDial = resources.getDrawable(17302035);
        }
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(1);
        this.mHourHand = drawable2;
        if (drawable2 == null) {
            this.mHourHand = resources.getDrawable(17302036);
        }
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(2);
        this.mMinuteHand = drawable3;
        if (drawable3 == null) {
            this.mMinuteHand = resources.getDrawable(17302037);
        }
        this.mCalendar = new Time();
        this.mDialWidth = this.mDial.getIntrinsicWidth();
        this.mDialHeight = this.mDial.getIntrinsicHeight();
    }
}
