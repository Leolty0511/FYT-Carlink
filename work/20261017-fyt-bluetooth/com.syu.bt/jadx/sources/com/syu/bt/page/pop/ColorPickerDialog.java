package com.syu.bt.page.pop;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.os.Bundle;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class ColorPickerDialog extends Dialog {
    private final String TAG;
    Context context;
    private final boolean debug;
    public int dlg_height;
    public int dlg_width;
    private int mInitialColor;
    private OnColorChangedListener mListener;
    private String title;

    public interface OnColorChangedListener {
        void colorChanged(int i);
    }

    public ColorPickerDialog(Context context, String title, OnColorChangedListener listener) {
        this(context, ViewCompat.MEASURED_STATE_MASK, title, listener);
    }

    public ColorPickerDialog(Context context, int initialColor, String title, OnColorChangedListener listener) {
        super(context);
        this.debug = true;
        this.TAG = "ColorPicker";
        this.context = context;
        this.mListener = listener;
        this.mInitialColor = initialColor;
        this.title = title;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        WindowManager manager = getWindow().getWindowManager();
        this.dlg_height = (int) (manager.getDefaultDisplay().getHeight() * 0.82f);
        this.dlg_width = (int) (manager.getDefaultDisplay().getHeight() * 0.63f);
        ColorPickerView myView = new ColorPickerView(this.context, this.dlg_height, this.dlg_width);
        setContentView(myView);
        setTitle(this.title);
        getWindow().setBackgroundDrawable(App_Bt.getInstance().uiApp.getDrawableFromPath("bt_color_bk", null, null));
    }

    private class ColorPickerView extends View {
        private float centerRadius;
        private boolean downInCircle;
        private boolean downInRect;
        private boolean highlightCenter;
        private boolean highlightCenterLittle;
        private Paint mCenterPaint;
        private final int[] mCircleColors;
        private int mHeight;
        private Paint mLinePaint;
        private Paint mPaint;
        private Paint mPaintText;
        private final int[] mRectColors;
        private Paint mRectPaint;
        private int mWidth;
        private float r;
        private float rectBottom;
        private float rectLeft;
        private float rectRight;
        private Shader rectShader;
        private float rectTop;

        public ColorPickerView(Context context, int height, int width) {
            super(context);
            this.downInCircle = true;
            this.mHeight = height - 36;
            this.mWidth = width;
            setMinimumHeight(height - 36);
            setMinimumWidth(width);
            this.mCircleColors = new int[]{SupportMenu.CATEGORY_MASK, -65281, -16776961, -16711681, -16711936, -256, SupportMenu.CATEGORY_MASK};
            Shader s = new SweepGradient(0.0f, 0.0f, this.mCircleColors, (float[]) null);
            this.mPaint = new Paint(1);
            this.mPaint.setShader(s);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeWidth(ColorPickerDialog.this.dlg_height * 0.08f);
            this.r = ((width / 2) * 0.7f) - (this.mPaint.getStrokeWidth() * 0.5f);
            this.mCenterPaint = new Paint(1);
            this.mCenterPaint.setColor(ColorPickerDialog.this.mInitialColor);
            this.mCenterPaint.setStrokeWidth(5.0f);
            this.centerRadius = (this.r - (this.mPaint.getStrokeWidth() / 2.0f)) * 0.7f;
            this.mLinePaint = new Paint(1);
            this.mLinePaint.setColor(Color.parseColor("#000000"));
            this.mLinePaint.setStrokeWidth(4.0f);
            this.mRectColors = new int[]{ViewCompat.MEASURED_STATE_MASK, this.mCenterPaint.getColor(), -1};
            this.mRectPaint = new Paint(1);
            this.mRectPaint.setStrokeWidth(5.0f);
            this.rectLeft = (-this.r) - (this.mPaint.getStrokeWidth() * 0.5f);
            this.rectTop = this.r + (this.mPaint.getStrokeWidth() * 0.5f) + (this.mLinePaint.getStrokeMiter() * 0.5f) + (ColorPickerDialog.this.dlg_height * 0.07f);
            this.rectRight = this.r + (this.mPaint.getStrokeWidth() * 0.5f);
            this.rectBottom = this.rectTop + (ColorPickerDialog.this.dlg_height * 0.08f);
            this.mPaintText = new Paint(1);
            this.mPaintText.setColor(Color.parseColor("#000000"));
            this.mPaintText.setTextSize(ColorPickerDialog.this.dlg_height * 0.05f);
            this.mPaintText.setTextAlign(Paint.Align.CENTER);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.translate(this.mWidth / 2, this.mHeight * 0.45f);
            canvas.drawCircle(0.0f, 0.0f, this.centerRadius, this.mCenterPaint);
            if (this.highlightCenter || this.highlightCenterLittle) {
                int c = this.mCenterPaint.getColor();
                this.mCenterPaint.setStyle(Paint.Style.STROKE);
                if (this.highlightCenter) {
                    this.mCenterPaint.setAlpha(255);
                } else if (this.highlightCenterLittle) {
                    this.mCenterPaint.setAlpha(144);
                }
                canvas.drawCircle(0.0f, 0.0f, this.centerRadius + this.mCenterPaint.getStrokeWidth(), this.mCenterPaint);
                this.mCenterPaint.setStyle(Paint.Style.FILL);
                this.mCenterPaint.setColor(c);
            }
            canvas.drawOval(new RectF(-this.r, -this.r, this.r, this.r), this.mPaint);
            canvas.drawText(App_Bt.getInstance().uiApp.getString("ok"), 0.0f, ColorPickerDialog.this.dlg_height * 0.017f, this.mPaintText);
            canvas.drawText(App_Bt.getInstance().uiApp.getString("bt_bt_color"), 0.0f, (-ColorPickerDialog.this.dlg_height) * 0.37f, this.mPaintText);
            if (this.downInCircle) {
                this.mRectColors[1] = this.mCenterPaint.getColor();
            }
            this.rectShader = new LinearGradient(this.rectLeft, 0.0f, this.rectRight, 0.0f, this.mRectColors, (float[]) null, Shader.TileMode.MIRROR);
            this.mRectPaint.setShader(this.rectShader);
            canvas.drawRect(this.rectLeft, this.rectTop, this.rectRight, this.rectBottom, this.mRectPaint);
            float offset = this.mLinePaint.getStrokeWidth() / 2.0f;
            canvas.drawLine(this.rectLeft - offset, this.rectTop - (offset * 2.0f), this.rectLeft - offset, (offset * 2.0f) + this.rectBottom, this.mLinePaint);
            canvas.drawLine(this.rectLeft - (offset * 2.0f), this.rectTop - offset, (offset * 2.0f) + this.rectRight, this.rectTop - offset, this.mLinePaint);
            canvas.drawLine(this.rectRight + offset, this.rectTop - (offset * 2.0f), this.rectRight + offset, (offset * 2.0f) + this.rectBottom, this.mLinePaint);
            canvas.drawLine(this.rectLeft - (offset * 2.0f), this.rectBottom + offset, (offset * 2.0f) + this.rectRight, this.rectBottom + offset, this.mLinePaint);
            super.onDraw(canvas);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:21:0x00d3  */
        /* JADX WARN: Code duplicated, block: B:23:0x00d7 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:27:0x00e9  */
        /* JADX WARN: Code duplicated, block: B:29:0x00ed  */
        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent event) {
            float x = event.getX() - (this.mWidth / 2);
            float y = event.getY() - (this.mHeight * 0.45f);
            boolean inCircle = inColorCircle(x, y, this.r + (this.mPaint.getStrokeWidth() / 2.0f), this.r - (this.mPaint.getStrokeWidth() / 2.0f));
            boolean inCenter = inCenter(x, y, this.centerRadius);
            boolean inRect = inRect(x, y);
            switch (event.getAction()) {
                case 0:
                    this.downInCircle = inCircle;
                    this.downInRect = inRect;
                    this.highlightCenter = inCenter;
                    if (!this.downInCircle && inCircle) {
                        float angle = (float) Math.atan2(y, x);
                        float unit = (float) (((double) angle) / 6.283185307179586d);
                        if (unit < 0.0f) {
                            unit += 1.0f;
                        }
                        this.mCenterPaint.setColor(interpCircleColor(this.mCircleColors, unit));
                        Log.v("ColorPicker", "色环内, 坐标: " + x + "," + y);
                    } else if (this.downInRect && inRect) {
                        this.mCenterPaint.setColor(interpRectColor(this.mRectColors, x));
                    }
                    Log.v("ColorPicker", "[MOVE] 高亮: " + this.highlightCenter + "微亮: " + this.highlightCenterLittle + " 中心: " + inCenter);
                    if ((!this.highlightCenter && inCenter) || (this.highlightCenterLittle && inCenter)) {
                        this.highlightCenter = true;
                        this.highlightCenterLittle = false;
                    } else if (!this.highlightCenter || this.highlightCenterLittle) {
                        this.highlightCenter = false;
                        this.highlightCenterLittle = true;
                    } else {
                        this.highlightCenter = false;
                        this.highlightCenterLittle = false;
                    }
                    invalidate();
                    return true;
                case 1:
                    if (this.highlightCenter && inCenter && ColorPickerDialog.this.mListener != null) {
                        ColorPickerDialog.this.mListener.colorChanged(this.mCenterPaint.getColor());
                        ColorPickerDialog.this.dismiss();
                    }
                    if (this.downInCircle) {
                        this.downInCircle = false;
                    }
                    if (this.downInRect) {
                        this.downInRect = false;
                    }
                    if (this.highlightCenter) {
                        this.highlightCenter = false;
                    }
                    if (this.highlightCenterLittle) {
                        this.highlightCenterLittle = false;
                    }
                    invalidate();
                    return true;
                case 2:
                    if (!this.downInCircle) {
                        if (this.downInRect) {
                            this.mCenterPaint.setColor(interpRectColor(this.mRectColors, x));
                        }
                    } else if (this.downInRect) {
                        this.mCenterPaint.setColor(interpRectColor(this.mRectColors, x));
                    }
                    Log.v("ColorPicker", "[MOVE] 高亮: " + this.highlightCenter + "微亮: " + this.highlightCenterLittle + " 中心: " + inCenter);
                    if (!this.highlightCenter) {
                        if (!this.highlightCenter) {
                            this.highlightCenter = false;
                            this.highlightCenterLittle = true;
                        } else {
                            this.highlightCenter = false;
                            this.highlightCenterLittle = true;
                        }
                    } else if (!this.highlightCenter) {
                        this.highlightCenter = false;
                        this.highlightCenterLittle = true;
                    } else {
                        this.highlightCenter = false;
                        this.highlightCenterLittle = true;
                    }
                    invalidate();
                    return true;
                default:
                    return true;
            }
        }

        @Override // android.view.View
        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            super.onMeasure(this.mWidth, this.mHeight);
        }

        private boolean inColorCircle(float x, float y, float outRadius, float inRadius) {
            double outCircle = 3.141592653589793d * ((double) outRadius) * ((double) outRadius);
            double inCircle = 3.141592653589793d * ((double) inRadius) * ((double) inRadius);
            double fingerCircle = 3.141592653589793d * ((double) ((x * x) + (y * y)));
            return fingerCircle < outCircle && fingerCircle > inCircle;
        }

        private boolean inCenter(float x, float y, float centerRadius) {
            double centerCircle = ((double) centerRadius) * 3.141592653589793d * ((double) centerRadius);
            double fingerCircle = 3.141592653589793d * ((double) ((x * x) + (y * y)));
            return fingerCircle < centerCircle;
        }

        private boolean inRect(float x, float y) {
            return x <= this.rectRight && x >= this.rectLeft && y <= this.rectBottom && y >= this.rectTop;
        }

        private int interpCircleColor(int[] colors, float unit) {
            if (unit <= 0.0f) {
                return colors[0];
            }
            if (unit >= 1.0f) {
                return colors[colors.length - 1];
            }
            float p = unit * (colors.length - 1);
            int i = (int) p;
            float p2 = p - i;
            int c0 = colors[i];
            int c1 = colors[i + 1];
            int a = ave(Color.alpha(c0), Color.alpha(c1), p2);
            int r = ave(Color.red(c0), Color.red(c1), p2);
            int g = ave(Color.green(c0), Color.green(c1), p2);
            int b = ave(Color.blue(c0), Color.blue(c1), p2);
            return Color.argb(a, r, g, b);
        }

        private int interpRectColor(int[] colors, float x) {
            int c0;
            int c1;
            float p;
            if (x < 0.0f) {
                c0 = colors[0];
                c1 = colors[1];
                p = (this.rectRight + x) / this.rectRight;
            } else {
                c0 = colors[1];
                c1 = colors[2];
                p = x / this.rectRight;
            }
            int a = ave(Color.alpha(c0), Color.alpha(c1), p);
            int r = ave(Color.red(c0), Color.red(c1), p);
            int g = ave(Color.green(c0), Color.green(c1), p);
            int b = ave(Color.blue(c0), Color.blue(c1), p);
            return Color.argb(a, r, g, b);
        }

        private int ave(int s, int d, float p) {
            return Math.round((d - s) * p) + s;
        }
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getmInitialColor() {
        return this.mInitialColor;
    }

    public void setmInitialColor(int mInitialColor) {
        this.mInitialColor = mInitialColor;
    }

    public OnColorChangedListener getmListener() {
        return this.mListener;
    }

    public void setmListener(OnColorChangedListener mListener) {
        this.mListener = mListener;
    }
}
