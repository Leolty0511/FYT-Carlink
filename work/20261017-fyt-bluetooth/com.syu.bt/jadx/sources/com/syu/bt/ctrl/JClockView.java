package com.syu.bt.ctrl;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.util.IpcUtil;
import com.syu.bt.App_Bt;
import java.util.Calendar;
import java.util.HashMap;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class JClockView extends View {
    int centerX;
    int centerY;
    BitmapDrawable mDrawableDial;
    BitmapDrawable mDrawableHour;
    BitmapDrawable mDrawableMin;
    BitmapDrawable mDrawableSec;
    public HashMap<String, Drawable> mDrawables;
    int mHeigh;
    Paint mPaint;
    int mTempHeigh;
    int mTempWidth;
    int mWidth;
    private String sTimeZoneString;
    Handler tickHandler;
    private Runnable tickRunnable;
    MyUi ui;

    public JClockView(Context context, MyUi ui) {
        this(context, "GMT+8：00");
        this.ui = ui;
    }

    public JClockView(Context context, String sTime_Zone) {
        super(context);
        this.mDrawables = new HashMap<>();
        this.tickRunnable = new Runnable() { // from class: com.syu.bt.ctrl.JClockView.1
            @Override // java.lang.Runnable
            public void run() {
                JClockView.this.postInvalidate();
                JClockView.this.tickHandler.postDelayed(JClockView.this.tickRunnable, 1000L);
            }
        };
        this.sTimeZoneString = sTime_Zone;
        this.mPaint = new Paint();
        this.mPaint.setColor(-16776961);
        run();
    }

    public void run() {
        this.tickHandler = new Handler();
        this.tickHandler.post(this.tickRunnable);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mDrawableDial != null) {
            Calendar cal = Calendar.getInstance(TimeZone.getTimeZone(this.sTimeZoneString));
            int hour = cal.get(10);
            int minute = cal.get(12);
            int second = cal.get(13);
            float hourRotate = (hour * 30.0f) + ((minute / 60.0f) * 30.0f);
            float minuteRotate = minute * 6.0f;
            float secondRotate = second * 6.0f;
            this.mDrawableDial.setBounds(this.centerX - (this.mWidth / 2), this.centerY - (this.mHeigh / 2), this.centerX + (this.mWidth / 2), this.centerY + (this.mHeigh / 2));
            this.mDrawableDial.draw(canvas);
            this.mTempWidth = this.mDrawableHour.getIntrinsicWidth();
            this.mTempHeigh = this.mDrawableHour.getIntrinsicHeight();
            canvas.save();
            canvas.rotate(hourRotate, this.centerX, this.centerY);
            this.mDrawableHour.setBounds(this.centerX - (this.mTempWidth / 2), this.centerY - (this.mTempHeigh / 2), this.centerX + (this.mTempWidth / 2), this.centerY + (this.mTempHeigh / 2));
            this.mDrawableHour.draw(canvas);
            canvas.restore();
            this.mTempWidth = this.mDrawableMin.getIntrinsicWidth();
            this.mTempHeigh = this.mDrawableMin.getIntrinsicHeight();
            canvas.save();
            canvas.rotate(minuteRotate, this.centerX, this.centerY);
            this.mDrawableMin.setBounds(this.centerX - (this.mTempWidth / 2), this.centerY - (this.mTempHeigh / 2), this.centerX + (this.mTempWidth / 2), this.centerY + (this.mTempHeigh / 2));
            this.mDrawableMin.draw(canvas);
            canvas.restore();
            this.mTempWidth = this.mDrawableSec.getIntrinsicWidth();
            this.mTempHeigh = this.mDrawableSec.getIntrinsicHeight();
            canvas.rotate(secondRotate, this.centerX, this.centerY);
            this.mDrawableSec.setBounds(this.centerX - (this.mTempWidth / 2), this.centerY - (this.mTempHeigh / 2), this.centerX + (this.mTempWidth / 2), this.centerY + (this.mTempHeigh / 2));
            this.mDrawableSec.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        MyUiItem uiItem;
        if (this.mDrawableDial == null && (uiItem = (MyUiItem) getTag()) != null) {
            String[] strDrawableExtras = uiItem.getStrDrawableExtra();
            if (IpcUtil.strsOk(strDrawableExtras, 4)) {
                this.mDrawableHour = (BitmapDrawable) App_Bt.getInstance().uiApp.getDrawableFromPath(strDrawableExtras[0], this.mDrawables, null);
                this.mDrawableMin = (BitmapDrawable) App_Bt.getInstance().uiApp.getDrawableFromPath(strDrawableExtras[1], this.mDrawables, null);
                this.mDrawableSec = (BitmapDrawable) App_Bt.getInstance().uiApp.getDrawableFromPath(strDrawableExtras[2], this.mDrawables, null);
                this.mDrawableDial = (BitmapDrawable) App_Bt.getInstance().uiApp.getDrawableFromPath(strDrawableExtras[3], this.mDrawables, null);
                this.mWidth = this.mDrawableDial.getIntrinsicWidth();
                this.mHeigh = this.mDrawableDial.getIntrinsicHeight();
                this.centerX = this.mWidth / 2;
                this.centerY = this.mHeigh / 2;
            }
        }
        super.onSizeChanged(w, h, oldw, oldh);
    }
}
