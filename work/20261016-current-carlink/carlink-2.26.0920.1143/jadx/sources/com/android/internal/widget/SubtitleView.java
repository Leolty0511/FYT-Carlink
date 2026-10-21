package com.android.internal.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;

/* JADX INFO: loaded from: classes3.dex */
public class SubtitleView extends View {
    private static final int COLOR_BEVEL_DARK = Integer.MIN_VALUE;
    private static final int COLOR_BEVEL_LIGHT = -2130706433;
    private static final float INNER_PADDING_RATIO = 0.125f;
    private Layout.Alignment mAlignment;
    private int mBackgroundColor;
    private final float mCornerRadius;
    private int mEdgeColor;
    private int mEdgeType;
    private int mForegroundColor;
    private boolean mHasMeasurements;
    private int mInnerPaddingX;
    private int mLastMeasuredWidth;
    private StaticLayout mLayout;
    private final RectF mLineBounds;
    private final float mOutlineWidth;
    private Paint mPaint;
    private final float mShadowOffsetX;
    private final float mShadowOffsetY;
    private final float mShadowRadius;
    private float mSpacingAdd;
    private float mSpacingMult;
    private final SpannableStringBuilder mText;
    private TextPaint mTextPaint;

    public SubtitleView(Context context) {
        this(context, null);
    }

    private boolean computeMeasurements(int i2) {
        if (this.mHasMeasurements && i2 == this.mLastMeasuredWidth) {
            return true;
        }
        int i3 = i2 - ((this.mInnerPaddingX * 2) + (this.mPaddingLeft + this.mPaddingRight));
        if (i3 <= 0) {
            return false;
        }
        this.mHasMeasurements = true;
        this.mLastMeasuredWidth = i3;
        this.mLayout = new StaticLayout(this.mText, this.mTextPaint, i3, this.mAlignment, this.mSpacingMult, this.mSpacingAdd, true);
        return true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        StaticLayout staticLayout = this.mLayout;
        if (staticLayout == null) {
            return;
        }
        int iSave = canvas.save();
        int i2 = this.mInnerPaddingX;
        canvas.translate(this.mPaddingLeft + i2, this.mPaddingTop);
        int lineCount = staticLayout.getLineCount();
        TextPaint textPaint = this.mTextPaint;
        Paint paint = this.mPaint;
        RectF rectF = this.mLineBounds;
        if (Color.alpha(this.mBackgroundColor) > 0) {
            float f2 = this.mCornerRadius;
            float lineTop = staticLayout.getLineTop(0);
            paint.setColor(this.mBackgroundColor);
            paint.setStyle(Paint.Style.FILL);
            for (int i3 = 0; i3 < lineCount; i3++) {
                float f3 = i2;
                rectF.left = staticLayout.getLineLeft(i3) - f3;
                rectF.right = staticLayout.getLineRight(i3) + f3;
                rectF.top = lineTop;
                lineTop = staticLayout.getLineBottom(i3);
                rectF.bottom = lineTop;
                canvas.drawRoundRect(rectF, f2, f2, paint);
            }
        }
        int i4 = this.mEdgeType;
        if (i4 == 1) {
            textPaint.setStrokeJoin(Paint.Join.ROUND);
            textPaint.setStrokeWidth(this.mOutlineWidth);
            textPaint.setColor(this.mEdgeColor);
            textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            for (int i5 = 0; i5 < lineCount; i5++) {
                staticLayout.drawText(canvas, i5, i5);
            }
        } else if (i4 == 2) {
            textPaint.setShadowLayer(this.mShadowRadius, this.mShadowOffsetX, this.mShadowOffsetY, this.mEdgeColor);
        } else if (i4 == 3 || i4 == 4) {
            boolean z2 = i4 == 3;
            int i6 = z2 ? -1 : this.mEdgeColor;
            int i7 = z2 ? this.mEdgeColor : -1;
            float f4 = this.mShadowRadius / 2.0f;
            textPaint.setColor(this.mForegroundColor);
            textPaint.setStyle(Paint.Style.FILL);
            float f5 = -f4;
            textPaint.setShadowLayer(this.mShadowRadius, f5, f5, i6);
            for (int i8 = 0; i8 < lineCount; i8++) {
                staticLayout.drawText(canvas, i8, i8);
            }
            textPaint.setShadowLayer(this.mShadowRadius, f4, f4, i7);
        }
        textPaint.setColor(this.mForegroundColor);
        textPaint.setStyle(Paint.Style.FILL);
        for (int i9 = 0; i9 < lineCount; i9++) {
            staticLayout.drawText(canvas, i9, i9);
        }
        textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        computeMeasurements(i4 - i2);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        if (!computeMeasurements(View.MeasureSpec.getSize(i2))) {
            setMeasuredDimension(16777216, 16777216);
            return;
        }
        StaticLayout staticLayout = this.mLayout;
        setMeasuredDimension(staticLayout.getWidth() + (this.mInnerPaddingX * 2) + this.mPaddingLeft + this.mPaddingRight, staticLayout.getHeight() + this.mPaddingTop + this.mPaddingBottom);
    }

    public void setAlignment(Layout.Alignment alignment) {
        if (this.mAlignment != alignment) {
            this.mAlignment = alignment;
            this.mHasMeasurements = false;
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.mBackgroundColor = i2;
        invalidate();
    }

    public void setEdgeColor(int i2) {
        this.mEdgeColor = i2;
        invalidate();
    }

    public void setEdgeType(int i2) {
        this.mEdgeType = i2;
        invalidate();
    }

    public void setForegroundColor(int i2) {
        this.mForegroundColor = i2;
        invalidate();
    }

    public void setStyle(int i2) {
        CaptioningManager.CaptionStyle customStyle = i2 == -1 ? CaptioningManager.CaptionStyle.getCustomStyle(this.mContext.getContentResolver()) : CaptioningManager.CaptionStyle.PRESETS[i2];
        CaptioningManager.CaptionStyle captionStyle = CaptioningManager.CaptionStyle.DEFAULT;
        this.mForegroundColor = customStyle.hasForegroundColor() ? customStyle.foregroundColor : captionStyle.foregroundColor;
        this.mBackgroundColor = customStyle.hasBackgroundColor() ? customStyle.backgroundColor : captionStyle.backgroundColor;
        this.mEdgeType = customStyle.hasEdgeType() ? customStyle.edgeType : captionStyle.edgeType;
        this.mEdgeColor = customStyle.hasEdgeColor() ? customStyle.edgeColor : captionStyle.edgeColor;
        this.mHasMeasurements = false;
        setTypeface(customStyle.getTypeface());
        requestLayout();
    }

    public void setText(int i2) {
        setText(getContext().getText(i2));
    }

    public void setTextSize(float f2) {
        if (this.mTextPaint.getTextSize() != f2) {
            this.mTextPaint.setTextSize(f2);
            this.mInnerPaddingX = (int) ((f2 * INNER_PADDING_RATIO) + 0.5f);
            this.mHasMeasurements = false;
            requestLayout();
            invalidate();
        }
    }

    public void setTypeface(Typeface typeface) {
        if (this.mTextPaint.getTypeface() != typeface) {
            this.mTextPaint.setTypeface(typeface);
            this.mHasMeasurements = false;
            requestLayout();
            invalidate();
        }
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SubtitleView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public void setText(CharSequence charSequence) {
        this.mText.clear();
        this.mText.append(charSequence);
        this.mHasMeasurements = false;
        requestLayout();
        invalidate();
    }

    public SubtitleView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet);
        this.mLineBounds = new RectF();
        this.mText = new SpannableStringBuilder();
        this.mSpacingMult = 1.0f;
        this.mSpacingAdd = 0.0f;
        this.mInnerPaddingX = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TextView, i2, i3);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        CharSequence text = "";
        int dimensionPixelSize = 15;
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i4);
            if (index == 0) {
                dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize);
            } else if (index == 18) {
                text = typedArrayObtainStyledAttributes.getText(index);
            } else if (index == 53) {
                this.mSpacingAdd = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, (int) this.mSpacingAdd);
            } else if (index == 54) {
                this.mSpacingMult = typedArrayObtainStyledAttributes.getFloat(index, this.mSpacingMult);
            }
        }
        Resources resources = getContext().getResources();
        this.mCornerRadius = resources.getDimensionPixelSize(com.android.internal.R.dimen.subtitle_corner_radius);
        this.mOutlineWidth = resources.getDimensionPixelSize(com.android.internal.R.dimen.subtitle_outline_width);
        this.mShadowRadius = resources.getDimensionPixelSize(com.android.internal.R.dimen.subtitle_shadow_radius);
        float dimensionPixelSize2 = resources.getDimensionPixelSize(com.android.internal.R.dimen.subtitle_shadow_offset);
        this.mShadowOffsetX = dimensionPixelSize2;
        this.mShadowOffsetY = dimensionPixelSize2;
        TextPaint textPaint = new TextPaint();
        this.mTextPaint = textPaint;
        textPaint.setAntiAlias(true);
        this.mTextPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        setText(text);
        setTextSize(dimensionPixelSize);
    }
}
