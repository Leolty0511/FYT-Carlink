package com.android.internal.widget;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Chronometer;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes3.dex */
@RemoteViews.RemoteView
public class TextProgressBar extends RelativeLayout implements Chronometer.OnChronometerTickListener {
    static final int CHRONOMETER_ID = 16908308;
    static final int PROGRESSBAR_ID = 16908301;
    public static final String TAG = "TextProgressBar";
    Chronometer mChronometer;
    boolean mChronometerFollow;
    int mChronometerGravity;
    int mDuration;
    long mDurationBase;
    ProgressBar mProgressBar;

    public TextProgressBar(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mChronometer = null;
        this.mProgressBar = null;
        this.mDurationBase = -1L;
        this.mDuration = -1;
        this.mChronometerFollow = false;
        this.mChronometerGravity = 0;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        int id = view.getId();
        if (id != 16908308 || !(view instanceof Chronometer)) {
            if (id == 16908301 && (view instanceof ProgressBar)) {
                this.mProgressBar = (ProgressBar) view;
                return;
            }
            return;
        }
        Chronometer chronometer = (Chronometer) view;
        this.mChronometer = chronometer;
        chronometer.setOnChronometerTickListener(this);
        this.mChronometerFollow = layoutParams.width == -2;
        this.mChronometerGravity = this.mChronometer.getGravity() & 8388615;
    }

    @Override // android.widget.Chronometer.OnChronometerTickListener
    public void onChronometerTick(Chronometer chronometer) {
        int i2;
        if (this.mProgressBar == null) {
            throw new RuntimeException("Expecting child ProgressBar with id 'android.R.id.progress'");
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime >= this.mDurationBase) {
            this.mChronometer.stop();
        }
        this.mProgressBar.setProgress(this.mDuration - ((int) (this.mDurationBase - jElapsedRealtime)));
        if (this.mChronometerFollow) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mProgressBar.getLayoutParams();
            int width = this.mProgressBar.getWidth() - (layoutParams.leftMargin + layoutParams.rightMargin);
            int progress = ((this.mProgressBar.getProgress() * width) / this.mProgressBar.getMax()) + layoutParams.leftMargin;
            int width2 = this.mChronometer.getWidth();
            int i3 = this.mChronometerGravity;
            if (i3 == 8388613) {
                i2 = -width2;
            } else {
                i2 = i3 == 1 ? -(width2 / 2) : 0;
            }
            int i4 = progress + i2;
            int i5 = (width - layoutParams.rightMargin) - width2;
            int i6 = layoutParams.leftMargin;
            if (i4 < i6) {
                i4 = i6;
            } else if (i4 > i5) {
                i4 = i5;
            }
            ((RelativeLayout.LayoutParams) this.mChronometer.getLayoutParams()).leftMargin = i4;
            this.mChronometer.requestLayout();
        }
    }

    @RemotableViewMethod
    public void setDurationBase(long j2) {
        Chronometer chronometer;
        this.mDurationBase = j2;
        if (this.mProgressBar == null || (chronometer = this.mChronometer) == null) {
            throw new RuntimeException("Expecting child ProgressBar with id 'android.R.id.progress' and Chronometer id 'android.R.id.text1'");
        }
        int base = (int) (j2 - chronometer.getBase());
        this.mDuration = base;
        if (base <= 0) {
            this.mDuration = 1;
        }
        this.mProgressBar.setMax(this.mDuration);
    }

    public TextProgressBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mChronometer = null;
        this.mProgressBar = null;
        this.mDurationBase = -1L;
        this.mDuration = -1;
        this.mChronometerFollow = false;
        this.mChronometerGravity = 0;
    }

    public TextProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChronometer = null;
        this.mProgressBar = null;
        this.mDurationBase = -1L;
        this.mDuration = -1;
        this.mChronometerFollow = false;
        this.mChronometerGravity = 0;
    }

    public TextProgressBar(Context context) {
        super(context);
        this.mChronometer = null;
        this.mProgressBar = null;
        this.mDurationBase = -1L;
        this.mDuration = -1;
        this.mChronometerFollow = false;
        this.mChronometerGravity = 0;
    }
}
