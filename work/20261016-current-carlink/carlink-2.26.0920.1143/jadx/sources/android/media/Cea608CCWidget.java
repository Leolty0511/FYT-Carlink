package android.media;

import android.app.m;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes.dex */
class Cea608CCWidget extends ClosedCaptionWidget implements Cea608CCParser.DisplayListener {
    private static final String mDummyText = "1234567890123456789012345678901234";
    private static final Rect mTextBounds = new Rect();

    public static class CCLayout extends LinearLayout implements ClosedCaptionWidget.ClosedCaptionLayout {
        private static final int MAX_ROWS = 15;
        private static final float SAFE_AREA_RATIO = 0.9f;
        private final CCLineBox[] mLineBoxes;

        public CCLayout(Context context) {
            super(context);
            this.mLineBoxes = new CCLineBox[15];
            setGravity(8388611);
            setOrientation(1);
            for (int i2 = 0; i2 < 15; i2++) {
                this.mLineBoxes[i2] = new CCLineBox(getContext());
                addView(this.mLineBoxes[i2], -2, -2);
            }
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
            int i6;
            int i7;
            int i8 = i4 - i2;
            int i9 = i5 - i3;
            int i10 = i8 * 3;
            int i11 = i9 * 4;
            if (i10 >= i11) {
                i7 = i11 / 3;
                i6 = i9;
            } else {
                i6 = i10 / 4;
                i7 = i8;
            }
            int i12 = (int) (i7 * SAFE_AREA_RATIO);
            int i13 = (int) (i6 * SAFE_AREA_RATIO);
            int i14 = (i8 - i12) / 2;
            int i15 = (i9 - i13) / 2;
            int i16 = 0;
            while (i16 < 15) {
                i16++;
                this.mLineBoxes[i16].layout(i14, m.z(i13, i16, 15, i15), i14 + i12, ((i13 * i16) / 15) + i15);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            int i4 = measuredWidth * 3;
            int i5 = measuredHeight * 4;
            if (i4 >= i5) {
                measuredWidth = i5 / 3;
            } else {
                measuredHeight = i4 / 4;
            }
            int i6 = (int) (measuredWidth * SAFE_AREA_RATIO);
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(((int) (measuredHeight * SAFE_AREA_RATIO)) / 15, 1073741824);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
            for (int i7 = 0; i7 < 15; i7++) {
                this.mLineBoxes[i7].measure(iMakeMeasureSpec2, iMakeMeasureSpec);
            }
        }

        @Override // android.media.ClosedCaptionWidget.ClosedCaptionLayout
        public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle) {
            for (int i2 = 0; i2 < 15; i2++) {
                this.mLineBoxes[i2].setCaptionStyle(captionStyle);
            }
        }

        @Override // android.media.ClosedCaptionWidget.ClosedCaptionLayout
        public void setFontScale(float f2) {
        }

        public void update(SpannableStringBuilder[] spannableStringBuilderArr) {
            for (int i2 = 0; i2 < 15; i2++) {
                SpannableStringBuilder spannableStringBuilder = spannableStringBuilderArr[i2];
                if (spannableStringBuilder != null) {
                    this.mLineBoxes[i2].setText(spannableStringBuilder, TextView.BufferType.SPANNABLE);
                    this.mLineBoxes[i2].setVisibility(0);
                } else {
                    this.mLineBoxes[i2].setVisibility(4);
                }
            }
        }
    }

    public static class CCLineBox extends TextView {
        private static final float EDGE_OUTLINE_RATIO = 0.1f;
        private static final float EDGE_SHADOW_RATIO = 0.05f;
        private static final float FONT_PADDING_RATIO = 0.75f;
        private int mBgColor;
        private int mEdgeColor;
        private int mEdgeType;
        private float mOutlineWidth;
        private float mShadowOffset;
        private float mShadowRadius;
        private int mTextColor;

        public CCLineBox(Context context) {
            super(context);
            this.mTextColor = -1;
            this.mBgColor = -16777216;
            this.mEdgeType = 0;
            this.mEdgeColor = 0;
            setGravity(17);
            setBackgroundColor(0);
            setTextColor(-1);
            setTypeface(Typeface.MONOSPACE);
            setVisibility(4);
            Resources resources = getContext().getResources();
            this.mOutlineWidth = resources.getDimensionPixelSize(R.dimen.subtitle_outline_width);
            this.mShadowRadius = resources.getDimensionPixelSize(R.dimen.subtitle_shadow_radius);
            this.mShadowOffset = resources.getDimensionPixelSize(R.dimen.subtitle_shadow_offset);
        }

        private void drawEdgeOutline(Canvas canvas) {
            TextPaint paint = getPaint();
            Paint.Style style = paint.getStyle();
            Paint.Join strokeJoin = paint.getStrokeJoin();
            float strokeWidth = paint.getStrokeWidth();
            setTextColor(this.mEdgeColor);
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setStrokeWidth(this.mOutlineWidth);
            super.onDraw(canvas);
            setTextColor(this.mTextColor);
            paint.setStyle(style);
            paint.setStrokeJoin(strokeJoin);
            paint.setStrokeWidth(strokeWidth);
            setBackgroundSpans(0);
            super.onDraw(canvas);
            setBackgroundSpans(this.mBgColor);
        }

        private void drawEdgeRaisedOrDepressed(Canvas canvas) {
            TextPaint paint = getPaint();
            Paint.Style style = paint.getStyle();
            paint.setStyle(Paint.Style.FILL);
            boolean z2 = this.mEdgeType == 3;
            int i2 = z2 ? -1 : this.mEdgeColor;
            int i3 = z2 ? this.mEdgeColor : -1;
            float f2 = this.mShadowRadius;
            float f3 = f2 / 2.0f;
            float f4 = -f3;
            setShadowLayer(f2, f4, f4, i2);
            super.onDraw(canvas);
            setBackgroundSpans(0);
            setShadowLayer(this.mShadowRadius, f3, f3, i3);
            super.onDraw(canvas);
            paint.setStyle(style);
            setBackgroundSpans(this.mBgColor);
        }

        private void setBackgroundSpans(int i2) {
            CharSequence text = getText();
            if (text instanceof Spannable) {
                Spannable spannable = (Spannable) text;
                for (Cea608CCParser.MutableBackgroundColorSpan mutableBackgroundColorSpan : (Cea608CCParser.MutableBackgroundColorSpan[]) spannable.getSpans(0, spannable.length(), Cea608CCParser.MutableBackgroundColorSpan.class)) {
                    mutableBackgroundColorSpan.setBackgroundColor(i2);
                }
            }
        }

        @Override // android.widget.TextView, android.view.View
        public void onDraw(Canvas canvas) {
            int i2 = this.mEdgeType;
            if (i2 == -1 || i2 == 0 || i2 == 2) {
                super.onDraw(canvas);
            } else if (i2 == 1) {
                drawEdgeOutline(canvas);
            } else {
                drawEdgeRaisedOrDepressed(canvas);
            }
        }

        @Override // android.widget.TextView, android.view.View
        public void onMeasure(int i2, int i3) {
            float size = View.MeasureSpec.getSize(i3) * 0.75f;
            setTextSize(0, size);
            this.mOutlineWidth = (0.1f * size) + 1.0f;
            float f2 = (size * EDGE_SHADOW_RATIO) + 1.0f;
            this.mShadowRadius = f2;
            this.mShadowOffset = f2;
            setScaleX(1.0f);
            getPaint().getTextBounds(Cea608CCWidget.mDummyText, 0, 34, Cea608CCWidget.mTextBounds);
            setScaleX(View.MeasureSpec.getSize(i2) / Cea608CCWidget.mTextBounds.width());
            super.onMeasure(i2, i3);
        }

        public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle) {
            int i2 = captionStyle.foregroundColor;
            this.mTextColor = i2;
            this.mBgColor = captionStyle.backgroundColor;
            this.mEdgeType = captionStyle.edgeType;
            this.mEdgeColor = captionStyle.edgeColor;
            setTextColor(i2);
            if (this.mEdgeType == 2) {
                float f2 = this.mShadowRadius;
                float f3 = this.mShadowOffset;
                setShadowLayer(f2, f3, f3, this.mEdgeColor);
            } else {
                setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            }
            invalidate();
        }
    }

    public Cea608CCWidget(Context context) {
        this(context, null);
    }

    @Override // android.media.ClosedCaptionWidget
    public ClosedCaptionWidget.ClosedCaptionLayout createCaptionLayout(Context context) {
        return new CCLayout(context);
    }

    @Override // android.media.Cea608CCParser.DisplayListener
    public CaptioningManager.CaptionStyle getCaptionStyle() {
        return this.mCaptionStyle;
    }

    @Override // android.media.Cea608CCParser.DisplayListener
    public void onDisplayChanged(SpannableStringBuilder[] spannableStringBuilderArr) {
        ((CCLayout) this.mClosedCaptionLayout).update(spannableStringBuilderArr);
        SubtitleTrack.RenderingWidget.OnChangedListener onChangedListener = this.mListener;
        if (onChangedListener != null) {
            onChangedListener.onChanged(this);
        }
    }

    public Cea608CCWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Cea608CCWidget(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public Cea608CCWidget(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
