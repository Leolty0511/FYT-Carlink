package com.syu.bt.ctrl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import com.syu.bt.App_Bt;
import com.syu.bt.util.CustomerUtil;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class BarRenderer {
    private static final int[][] virtrulFrq = {new int[]{20, 18, 24, 26, 28, 61, 76, 128, 139, 112, 80, 68, 70, 55, 48, 60, 30, 32, 36, 42, 38, 30, 32, 26, 15, 14, 22, 18, 28, 31, 46, 24, 17, 14, 10, 10, 10, 10, 18, 22, 16, 10, 10, 10, 14, 17, 12, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 14, 12, 18, 10, 10, 10}, new int[]{32, 45, 55, 60, 52, 76, 78, 110, 130, 118, 86, 70, 70, 66, 62, 60, 22, 18, 16, 26, 18, 22, 40, 26, 15, 14, 22, 18, 28, 31, 48, 24, 17, 14, 10, 10, 10, 10, 18, 22, 16, 22, 24, 20, 18, 17, 12, 14, 10, 10, 10, 18, 16, 14, 10, 10, 15, 16, 14, 12, 18, 20, 22, 20}, new int[]{45, 39, 36, 38, 48, 61, 76, 128, 139, 112, 72, 75, 70, 55, 48, 60, 22, 18, 16, 26, 18, 22, 40, 26, 15, 14, 22, 18, 28, 31, 38, 24, 17, 14, 16, 18, 24, 10, 18, 22, 16, 14, 12, 10, 14, 17, 12, 10, 10, 10, 14, 16, 18, 14, 10, 12, 14, 12, 10, 10, 18, 17, 20, 10}, new int[]{24, 22, 28, 30, 34, 48, 72, 130, 120, 116, 98, 92, 68, 45, 48, 60, 75, 74, 68, 44, 18, 22, 30, 26, 18, 24, 22, 24, 28, 31, 45, 24, 17, 14, 20, 22, 18, 19, 18, 22, 24, 26, 30, 32, 28, 24, 22, 14, 16, 12, 10, 10, 14, 16, 15, 12, 16, 18, 14, 12, 18, 10, 10, 10}};
    private static final int[][] virtrulFrq_2 = {new int[]{20, 18, 24, 26, 28, 61, 76, 128, 139, 112, 80, 68, 70, 55, 48, 60, 30, 32, 36, 42, 38, 30, 32, 26, 15, 14, 22, 18, 28, 31, 46, 24, 17, 14, 10, 10, 10, 10, 18, 22, 16, 10, 10, 10, 14, 17, 12, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 14, 12, 18, 10, 10, 10, 10, 10, 14, 12, 18, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 16, 10, 10, 10, 14, 17, 12, 10, 17, 14, 10, 10, 10, 10, 18, 22, 15, 14, 22, 18, 28, 31, 46, 24, 30, 32, 36, 42, 38, 30, 32, 26, 139, 112, 80, 68, 70, 55, 48, 60, 20, 18, 24, 26, 28, 61, 76, 128}, new int[]{32, 45, 55, 60, 52, 76, 78, 110, 130, 118, 86, 70, 70, 66, 62, 60, 22, 18, 16, 26, 18, 22, 40, 26, 15, 14, 22, 18, 28, 31, 48, 24, 17, 14, 10, 10, 10, 10, 18, 22, 16, 22, 24, 20, 18, 17, 12, 14, 10, 10, 10, 18, 16, 14, 10, 10, 15, 16, 14, 12, 18, 20, 22, 20, 15, 16, 14, 12, 18, 20, 22, 20, 10, 10, 10, 18, 16, 14, 10, 10, 16, 22, 24, 20, 18, 17, 12, 14, 17, 14, 10, 10, 10, 10, 18, 22, 15, 14, 22, 18, 28, 31, 48, 24, 22, 18, 16, 26, 18, 22, 40, 26, 130, 118, 86, 70, 70, 66, 62, 60, 32, 45, 55, 60, 52, 76, 78, 110}, new int[]{45, 39, 36, 38, 48, 61, 76, 128, 139, 112, 72, 75, 70, 55, 48, 60, 22, 18, 16, 26, 18, 22, 40, 26, 15, 14, 22, 18, 28, 31, 38, 24, 17, 14, 16, 18, 24, 10, 18, 22, 16, 14, 12, 10, 14, 17, 12, 10, 10, 10, 14, 16, 18, 14, 10, 12, 14, 12, 10, 10, 18, 17, 20, 10, 14, 12, 10, 10, 18, 17, 20, 10, 10, 10, 14, 16, 18, 14, 10, 12, 16, 14, 12, 10, 14, 17, 12, 10, 17, 14, 16, 18, 24, 10, 18, 22, 15, 14, 22, 18, 28, 31, 38, 24, 22, 18, 16, 26, 18, 22, 40, 26, 139, 112, 72, 75, 70, 55, 48, 60, 45, 39, 36, 38, 48, 61, 76, 128}, new int[]{24, 22, 28, 30, 34, 48, 72, 130, 120, 116, 98, 92, 68, 45, 48, 60, 75, 74, 68, 44, 18, 22, 30, 26, 18, 24, 22, 24, 28, 31, 45, 24, 17, 14, 20, 22, 18, 19, 18, 22, 24, 26, 30, 32, 28, 24, 22, 14, 16, 12, 10, 10, 14, 16, 15, 12, 16, 18, 14, 12, 18, 10, 10, 10, 16, 18, 14, 12, 18, 10, 10, 10, 16, 12, 10, 10, 14, 16, 15, 12, 24, 26, 30, 32, 28, 24, 22, 14, 17, 14, 20, 22, 18, 19, 18, 22, 18, 24, 22, 24, 28, 31, 45, 24, 75, 74, 68, 44, 18, 22, 30, 26, 120, 116, 98, 92, 68, 45, 48, 60, 24, 22, 28, 30, 34, 48, 72, 130}};
    private boolean autoColor;
    private float barWidth;
    private boolean enableLine;
    private int f_height;
    private boolean isTop;
    private int lineCnt;
    private Bitmap mBmpBar;
    private Bitmap mBmpBarBk;
    private int mGap;
    protected float[] mPoints;
    private Random mRandom;
    private int p_height;
    private int[] virtrulData;
    private int iStyle = 0;
    private float colorCounter = 0.0f;
    int r = 0;
    int g = 64;
    int b = 0;
    private float[] mLasteFft = null;
    private float[] times = null;
    private float[] mLasteLine = null;
    protected float[] mLinePoints = null;
    protected float[] mLinePointsDown = null;
    private Paint mPaint = null;
    protected Paint linePaint = new Paint();
    private float virtrulScale = 0.81764704f;

    protected void render(Canvas canvas, float data, Rect rect, int style) {
        onRender(canvas, data, rect);
        this.iStyle = style;
    }

    public BarRenderer(float barwith, int gap, int f_height, int p_height, boolean line, boolean top, boolean auto, Bitmap bmpBar, Bitmap bmpBarBk, int Cnt) {
        this.f_height = 3;
        this.p_height = 1;
        this.barWidth = 4.0f;
        this.mGap = 2;
        this.isTop = false;
        this.enableLine = true;
        this.autoColor = true;
        this.lineCnt = 64;
        if (barwith > 0.0f) {
            this.barWidth = barwith;
        }
        if (gap >= 0) {
            this.mGap = gap;
        }
        if (f_height >= 0) {
            this.f_height = f_height;
        }
        if (p_height >= 0) {
            this.p_height = p_height;
        }
        this.enableLine = line;
        this.isTop = top;
        this.autoColor = auto;
        this.mBmpBar = bmpBar;
        this.mBmpBarBk = bmpBarBk;
        this.lineCnt = Cnt;
        init(-1);
    }

    private void init(int color) {
        this.mPaint = new Paint();
        this.mPaint.setStrokeWidth(this.barWidth);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(color);
        this.linePaint.setStrokeWidth(this.f_height);
        this.linePaint.setAntiAlias(true);
        this.linePaint.setColor(color);
        this.mRandom = new Random();
    }

    public void setColor(int color) {
        this.mPaint.setColor(color);
    }

    public void onRender(Canvas canvas, float data, Rect rect) {
        int height = rect.height();
        if (this.lineCnt > 64) {
            this.virtrulData = virtrulFrq_2[this.mRandom.nextInt(virtrulFrq_2.length)];
        } else {
            this.virtrulData = virtrulFrq[this.mRandom.nextInt(virtrulFrq.length)];
        }
        int cnt = this.virtrulData.length;
        if (this.mLasteFft == null) {
            this.mLasteFft = new float[cnt];
        }
        if (this.mPoints == null || this.mPoints.length < cnt * 8) {
            this.mPoints = new float[cnt * 8];
        }
        if (this.times == null) {
            this.times = new float[cnt];
        }
        if (this.enableLine) {
            if (this.mLasteLine == null) {
                this.mLasteLine = new float[cnt];
            }
            if (this.mLinePoints == null) {
                this.mLinePoints = new float[cnt * 8];
            }
            if (this.iStyle > 0 && this.mLinePointsDown == null) {
                this.mLinePointsDown = new float[cnt * 8];
            }
        }
        float zoom = data < 0.008f ? 0.0f : Math.abs(this.virtrulScale - data);
        int i = 0;
        while (i < cnt) {
            float f = (this.mGap * i) + ((((i * 2) + 1) * this.barWidth) / 2.0f);
            this.mPoints[(i * 4) + 2] = f;
            this.mPoints[i * 4] = f;
            float value = (this.virtrulData[i] * data) + Math.round((Math.random() * ((double) ((this.virtrulData[i] * zoom) - (((-this.virtrulData[i]) * zoom) / 3.0f)))) + ((double) (((-this.virtrulData[i]) * zoom) / 3.0f)));
            if (value < 0.0f) {
                value = 0.0f;
            }
            float value2 = (((((((-0.003f) * value) + 1.003f) * value) * 2.0f) * 1.5f) * height) / 260.0f;
            if (this.f_height + value2 + this.p_height >= height - 10) {
                value2 = ((height - 10) - this.f_height) - this.p_height;
            }
            if (this.mLasteFft[i] <= 0.0f) {
                this.mLasteFft[i] = value2;
            } else if (this.mLasteFft[i] > value2) {
                this.mLasteFft[i] = (float) (((double) this.mLasteFft[i]) - ((2.4000000953674316d * Math.pow(this.times[i], 2.0d)) / 2.0d));
                this.times[i] = this.times[i] <= 0.0f ? 0.5f : this.times[i] + 0.5f;
            } else {
                this.times[i] = 0.0f;
                this.mLasteFft[i] = value2;
            }
            if (this.enableLine) {
                if (this.mLasteLine[i] > 0.0f && this.mLasteLine[i] - 2.0f > value2) {
                    this.mLasteLine[i] = (float) (((double) this.mLasteLine[i]) - ((1.2000000476837158d * Math.pow(this.times[i], 2.0d)) / 2.0d));
                } else {
                    this.mLasteLine[i] = 2.0f + value2;
                }
                this.mLinePoints[i * 4] = this.mPoints[i * 4] - (this.barWidth / 2.0f);
                this.mLinePoints[(i * 4) + 2] = this.mPoints[i * 4] + (this.barWidth / 2.0f);
                if (this.iStyle > 0) {
                    this.mLinePointsDown[i * 4] = this.mPoints[i * 4] - (this.barWidth / 2.0f);
                    this.mLinePointsDown[(i * 4) + 2] = this.mPoints[i * 4] + (this.barWidth / 2.0f);
                }
            }
            if (this.isTop) {
                this.mPoints[(i * 4) + 1] = 0.0f;
                this.mPoints[(i * 4) + 3] = this.mLasteFft[i];
                if (this.enableLine) {
                    float f2 = this.mLasteLine[i];
                    this.mLinePoints[(i * 4) + 3] = f2;
                    this.mLinePoints[(i * 4) + 1] = f2;
                    if (this.iStyle > 0) {
                        float f3 = (height - this.mLasteLine[i]) / 2.0f;
                        this.mLinePointsDown[(i * 4) + 3] = f3;
                        this.mLinePointsDown[(i * 4) + 1] = f3;
                    }
                }
            } else {
                this.mPoints[(i * 4) + 1] = height;
                this.mPoints[(i * 4) + 3] = height - this.mLasteFft[i];
                if (this.enableLine) {
                    if (this.iStyle > 0) {
                        if (CustomerUtil.isYFConfig()) {
                            float ff = this.mLasteLine[i] <= 2.0f ? (height / 2) - (this.mLasteLine[i] / 2.0f) : ((height / 2) - (this.mLasteLine[i] / 2.0f)) - 20.0f;
                            if (ff < 2.0f) {
                                ff = 2.0f;
                            }
                            this.mLinePoints[(i * 4) + 3] = ff;
                            this.mLinePoints[(i * 4) + 1] = ff;
                        } else {
                            float f4 = (height / 2) - (this.mLasteLine[i] / 2.0f);
                            this.mLinePoints[(i * 4) + 3] = f4;
                            this.mLinePoints[(i * 4) + 1] = f4;
                        }
                        float f5 = (height / 2) + (this.mLasteLine[i] / 2.0f);
                        this.mLinePointsDown[(i * 4) + 3] = f5;
                        this.mLinePointsDown[(i * 4) + 1] = f5;
                    } else {
                        float f6 = height - this.mLasteLine[i];
                        this.mLinePoints[(i * 4) + 3] = f6;
                        this.mLinePoints[(i * 4) + 1] = f6;
                    }
                }
            }
            i++;
        }
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        if (this.mBmpBar != null) {
            if (this.mBmpBarBk != null) {
                for (int i2 = 0; i2 < cnt; i2++) {
                    int bottom = (int) this.mPoints[(i2 * 4) + 1];
                    int top = (int) this.mPoints[(i2 * 4) + 3];
                    int nDot = (bottom - top) / this.mBmpBarBk.getHeight();
                    int nDotMax = height / this.mBmpBarBk.getHeight();
                    if (nDot <= 0) {
                        nDot = 1;
                    }
                    int bottom2 = height;
                    for (int j = 0; j < nDotMax; j++) {
                        int top2 = bottom2 - this.mBmpBar.getHeight();
                        Rect src = new Rect(0, 0, this.mBmpBar.getWidth(), this.mBmpBar.getHeight());
                        Rect dst = new Rect((int) this.mPoints[i2 * 4], top2, (int) (this.mPoints[i2 * 4] + this.barWidth), bottom2);
                        if (j < nDot) {
                            canvas.drawBitmap(this.mBmpBar, src, dst, (Paint) null);
                        } else {
                            canvas.drawBitmap(this.mBmpBarBk, src, dst, (Paint) null);
                        }
                        bottom2 -= this.mBmpBar.getHeight();
                    }
                }
                return;
            }
            return;
        }
        if (this.autoColor) {
            autoColor();
        }
        for (int i3 = 0; i3 < cnt; i3++) {
            int hLineBase = this.iStyle > 0 ? ((int) this.mPoints[(i3 * 4) + 1]) / 2 : (int) this.mPoints[(i3 * 4) + 1];
            int hLineBase2 = this.iStyle > 0 ? ((int) this.mPoints[(i3 * 4) + 1]) / 2 : (int) this.mPoints[(i3 * 4) + 1];
            float iDest = this.iStyle > 0 ? this.mPoints[(i3 * 4) + 3] / 2.0f : this.mPoints[(i3 * 4) + 3];
            float iDestCopy = iDest;
            if (hLineBase != iDest && CustomerUtil.isYFConfig() && hLineBase > iDestCopy && hLineBase > 0) {
                iDestCopy -= Math.min(20.0f, 20.0f * ((hLineBase - iDestCopy) / 50.0f));
            }
            int red = this.r;
            int green = this.g;
            int blue = this.b;
            while (hLineBase > iDestCopy && hLineBase > 0) {
                green = green + 4 < 255 ? green + 4 : 255;
                blue = blue + 2 < 255 ? blue + 2 : 255;
                if (red < 30 && green < 30 && blue < 30) {
                    this.mPaint.setColor(Color.argb(200, 0, 160, 0));
                } else {
                    this.mPaint.setColor(Color.rgb(red, green, blue));
                }
                canvas.drawLine(this.mPoints[i3 * 4], hLineBase - this.f_height, this.mPoints[(i3 * 4) + 2], hLineBase, this.mPaint);
                hLineBase -= this.f_height + this.p_height;
            }
            int red2 = this.r;
            int green2 = this.g;
            int blue2 = this.b;
            while (hLineBase2 < this.mPoints[(i3 * 4) + 1] - iDest && this.iStyle > 0) {
                green2 = green2 + 4 < 255 ? green2 + 4 : 255;
                blue2 = blue2 + 2 < 255 ? blue2 + 2 : 255;
                if (red2 < 30 && green2 < 30 && blue2 < 30) {
                    this.mPaint.setColor(Color.argb(200, 0, 160, 0));
                } else {
                    this.mPaint.setColor(Color.rgb(red2, green2, blue2));
                }
                canvas.drawLine(this.mPoints[i3 * 4], hLineBase2, this.mPoints[(i3 * 4) + 2], this.f_height + hLineBase2, this.mPaint);
                hLineBase2 += this.f_height + this.p_height;
            }
        }
        boolean drawline = this.enableLine;
        if (CustomerUtil.isYFConfig() && !App_Bt.bBtAvPlayState) {
            drawline = false;
        }
        if (drawline) {
            canvas.drawLines(this.mLinePoints, this.linePaint);
            if (this.iStyle > 0) {
                canvas.drawLines(this.mLinePointsDown, this.linePaint);
            }
        }
    }

    private void autoColor() {
        this.r = (int) Math.floor((Math.sin(this.colorCounter) + 1.0d) * 128.0d);
        this.g = (int) Math.floor((Math.sin(this.colorCounter + 2.0f) + 1.0d) * 128.0d);
        this.b = (int) Math.floor((Math.sin(this.colorCounter + 4.0f) + 1.0d) * 128.0d);
        this.mPaint.setColor(Color.argb(100, this.r, this.g, this.b));
        if (this.enableLine) {
            this.r = this.r + this.g + this.b;
            if (this.r > 255) {
                this.r = 255;
            }
            this.linePaint.setColor(Color.argb(255, this.r, this.r, this.r));
        }
        this.colorCounter = (float) (((double) this.colorCounter) + 0.03d);
    }
}
