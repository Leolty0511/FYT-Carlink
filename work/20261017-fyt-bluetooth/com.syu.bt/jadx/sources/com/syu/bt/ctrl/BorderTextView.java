package com.syu.bt.ctrl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class BorderTextView extends TextView implements Runnable {
    int DEFAULT;
    boolean bIsFocus;
    int borderColor;
    float bottom;
    String content;
    float contentWidth;
    boolean isBoard;
    float left;
    boolean leftInit;
    int moveLeft;
    int moveRight;
    float paddingLeft;
    float paddingTop;
    Paint paint;
    float rectLeft;
    float rectTop;
    float right;
    boolean rightInit;
    boolean stop;
    int textColor;
    int textSize;
    float top;
    float width;

    public BorderTextView(Context context) {
        super(context);
        this.bIsFocus = false;
        this.DEFAULT = 5;
        this.isBoard = false;
        this.width = 0.0f;
        this.moveLeft = 0;
        this.moveRight = 1000000;
        this.leftInit = false;
        this.rightInit = false;
        this.stop = false;
    }

    public BorderTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.bIsFocus = false;
        this.DEFAULT = 5;
        this.isBoard = false;
        this.width = 0.0f;
        this.moveLeft = 0;
        this.moveRight = 1000000;
        this.leftInit = false;
        this.rightInit = false;
        this.stop = false;
    }

    public BorderTextView(Context context, int[] colors, String str, int txtHigh) {
        super(context);
        this.bIsFocus = false;
        this.DEFAULT = 5;
        this.isBoard = false;
        this.width = 0.0f;
        this.moveLeft = 0;
        this.moveRight = 1000000;
        this.leftInit = false;
        this.rightInit = false;
        this.stop = false;
        this.textSize = txtHigh;
        this.content = str;
        this.paint = new Paint();
        this.textColor = colors[0];
        this.borderColor = colors[1];
        this.paint.setTextSize(txtHigh);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setFlags(1);
    }

    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"NewApi"})
    protected void onDraw(Canvas canvas) {
        String str = this.content;
        this.paddingLeft = getWidth() - this.paint.measureText(this.content);
        this.paddingTop = getHeight() - this.textSize;
        this.contentWidth = this.paint.measureText(str);
        if (this.paddingLeft <= 10.0f) {
            int subIndex = this.paint.breakText(str, 0, str.length(), true, getWidth() - 10, null);
            str = String.valueOf(this.content.substring(0, subIndex - 1)) + ".";
            this.contentWidth = this.paint.measureText(str);
            this.paddingLeft = getWidth() - this.contentWidth;
        }
        this.rectLeft = this.paddingLeft / 2.0f;
        this.rectTop = this.paddingTop / 2.0f;
        Paint.FontMetrics fontMetrics = this.paint.getFontMetrics();
        float distance = ((fontMetrics.bottom - fontMetrics.top) / 2.0f) - fontMetrics.bottom;
        float baseline = (getHeight() / 2) + distance;
        this.paint.setTextAlign(Paint.Align.CENTER);
        this.paint.setColor(this.textColor);
        canvas.drawText(str, getWidth() / 2, baseline, this.paint);
        if (this.bIsFocus) {
            this.paint.setColor(this.borderColor);
            canvas.drawRoundRect(this.rectLeft - this.DEFAULT, this.rectTop - this.DEFAULT, this.rectLeft + this.contentWidth + this.DEFAULT, this.rectTop + this.textSize + this.DEFAULT, this.DEFAULT, this.DEFAULT, this.paint);
        }
        super.onDraw(canvas);
        super.onDraw(canvas);
    }

    public void resetText(boolean bIsFocus) {
        this.bIsFocus = bIsFocus;
        invalidate();
    }

    @Override // java.lang.Runnable
    public void run() {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                Thread.sleep(10L);
            } catch (Exception e) {
                Thread.currentThread().interrupt();
            }
            postInvalidate();
        }
    }
}
