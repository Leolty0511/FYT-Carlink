package com.syu.bt.ctrl;

import android.content.Context;
import android.filterfw.geometry.Point;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.syu.bt.data.FinalBtCtrl;

/* JADX INFO: loaded from: classes.dex */
public class CircleMenuView extends View {
    static double[] degrees = {142.925d, 166.697d, 192.568d, 218.078d, 242.289d, 267.511d, 292.334d, 319.117d, 342.942d, 7.763d, 32.125d, 57.99d, 83.759d, 94.59d};
    int centerX;
    int centerY;
    double degree;
    private int height;
    private PaintFlagsDrawFilter mDrawFilter;
    long mDrawTime;
    Paint paint;
    Point point;
    Drawable pointDrawable;
    int progress;
    private Bitmap rotatBitmap;
    double target;
    int toDirection;
    private int width;

    public CircleMenuView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.paint = new Paint();
        this.degree = 142.925d;
        this.target = 142.925d;
        this.mDrawTime = 0L;
        this.toDirection = 0;
        this.progress = 0;
        setPadding(0, 0, 0, 0);
    }

    public CircleMenuView(Context context, Drawable drawable) {
        super(context);
        this.paint = new Paint();
        this.degree = 142.925d;
        this.target = 142.925d;
        this.mDrawTime = 0L;
        this.toDirection = 0;
        this.progress = 0;
        if (drawable != null) {
            this.pointDrawable = drawable;
        }
        initData();
    }

    private void initData() {
        this.rotatBitmap = ((BitmapDrawable) this.pointDrawable).getBitmap();
        this.width = this.rotatBitmap.getWidth();
        this.height = this.rotatBitmap.getHeight();
        this.mDrawFilter = new PaintFlagsDrawFilter(0, 3);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        double mTmpCurr;
        super.onDraw(canvas);
        double mTmpTarget = this.target;
        double mTmpCurr2 = this.degree;
        long currDrawTime = getDrawingTime();
        boolean inva = false;
        if (mTmpCurr2 != mTmpTarget) {
            if (this.mDrawTime == 0) {
                this.mDrawTime = currDrawTime - 17;
            }
            inva = true;
        }
        float dx = Math.max(0.0f, Math.min(20.0f, Math.max(6.0f, (int) (((currDrawTime - this.mDrawTime) * 360) / 300.0f))));
        this.mDrawTime = currDrawTime;
        if (Math.abs(mTmpCurr2 - mTmpTarget) <= Math.abs(dx)) {
            mTmpCurr = Math.max(0.0d, Math.min(mTmpTarget, 360.0d));
            this.degree = mTmpCurr;
            inva = false;
        } else {
            if (this.toDirection == 1) {
                if (mTmpCurr2 > 180.0d) {
                    mTmpCurr = mTmpCurr2 + ((Math.abs((360.0d - mTmpCurr2) + mTmpTarget) / ((360.0d - mTmpCurr2) + mTmpTarget)) * ((double) dx));
                } else {
                    mTmpCurr = mTmpCurr2 + ((Math.abs(mTmpCurr2 - mTmpTarget) / (mTmpTarget - mTmpCurr2)) * ((double) dx));
                }
                if (mTmpCurr > 360.0d) {
                    mTmpCurr = Math.min(mTmpTarget, mTmpCurr % 360.0d);
                }
            } else if (this.toDirection == 2) {
                if (mTmpCurr2 < 180.0d) {
                    mTmpCurr = mTmpCurr2 + ((Math.abs((360.0d - mTmpTarget) + mTmpCurr2) / ((mTmpTarget - mTmpCurr2) - 360.0d)) * ((double) dx));
                } else {
                    mTmpCurr = mTmpCurr2 + ((Math.abs(mTmpCurr2 - mTmpTarget) / (mTmpTarget - mTmpCurr2)) * ((double) dx));
                }
                if (mTmpCurr <= 0.0d) {
                    mTmpCurr = 360.0d;
                }
            } else {
                mTmpCurr = mTmpCurr2 + ((Math.abs(mTmpCurr2 - mTmpTarget) / (mTmpTarget - mTmpCurr2)) * ((double) dx));
            }
            this.degree = mTmpCurr;
        }
        Matrix matrix = new Matrix();
        matrix.preRotate((float) mTmpCurr);
        matrix.preTranslate((-this.width) / 2.0f, (-this.height) / 2.0f);
        matrix.postTranslate(this.width / 2.0f, this.height / 2.0f);
        canvas.setDrawFilter(this.mDrawFilter);
        canvas.drawBitmap(this.rotatBitmap, matrix, this.paint);
        if (inva) {
            invalidate();
        } else {
            this.toDirection = 0;
            this.mDrawTime = 0L;
        }
    }

    public void reDrawPic(double degree) {
        this.degree = degree;
        invalidate();
    }

    public void reDrawPicByNum(int id) {
        switch (id) {
            case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
            case FinalBtCtrl.Dial_Btn_1 /* 10147 */:
            case FinalBtCtrl.Dial_Btn_2 /* 10148 */:
            case FinalBtCtrl.Dial_Btn_3 /* 10149 */:
            case FinalBtCtrl.Dial_Btn_4 /* 10150 */:
            case FinalBtCtrl.Dial_Btn_5 /* 10151 */:
            case FinalBtCtrl.Dial_Btn_6 /* 10152 */:
            case FinalBtCtrl.Dial_Btn_7 /* 10153 */:
            case FinalBtCtrl.Dial_Btn_8 /* 10154 */:
            case FinalBtCtrl.Dial_Btn_9 /* 10155 */:
            case FinalBtCtrl.Dial_Btn_X /* 10156 */:
            case FinalBtCtrl.Dial_Btn_J /* 10157 */:
                this.target = degrees[id - 10146];
                break;
            case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                this.target = degrees[degrees.length - 1];
                break;
            case FinalBtCtrl.Dial_View_ShowCall_Btn_Dial /* 10179 */:
                this.target = degrees[degrees.length - 2];
                break;
        }
        this.toDirection = 0;
        if (this.degree != this.target) {
            if (this.degree >= 192.568d && this.target <= 57.99d) {
                this.toDirection = 1;
            } else if (this.degree <= 57.99d && this.target >= 192.568d) {
                this.toDirection = 2;
            }
            invalidate();
        }
    }
}
