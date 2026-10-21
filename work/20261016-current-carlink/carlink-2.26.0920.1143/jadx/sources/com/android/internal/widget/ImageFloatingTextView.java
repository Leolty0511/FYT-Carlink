package com.android.internal.widget;

import android.content.Context;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.view.View;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
@RemoteViews.RemoteView
public class ImageFloatingTextView extends TextView {
    private boolean mBlockLayouts;
    private boolean mFirstMeasure;
    private int mIndentLines;
    private int mLayoutMaxLines;
    private int mMaxLinesForHeight;
    private int mResolvedDirection;

    public ImageFloatingTextView(Context context) {
        this(context, null);
    }

    public int getLayoutHeight() {
        return getLayout().getHeight();
    }

    @Override // android.widget.TextView
    public Layout makeSingleLayout(int i2, BoringLayout.Metrics metrics, int i3, Layout.Alignment alignment, boolean z2, TextUtils.TruncateAt truncateAt, boolean z3) {
        int[] iArr;
        TransformationMethod transformationMethod = getTransformationMethod();
        CharSequence text = getText();
        if (transformationMethod != null) {
            text = transformationMethod.getTransformation(text, this);
        }
        if (text == null) {
            text = "";
        }
        StaticLayout.Builder hyphenationFrequency = StaticLayout.Builder.obtain(text, 0, text.length(), getPaint(), i2).setAlignment(alignment).setTextDirection(getTextDirectionHeuristic()).setLineSpacing(getLineSpacingExtra(), getLineSpacingMultiplier()).setIncludePad(getIncludeFontPadding()).setBreakStrategy(1).setHyphenationFrequency(2);
        int maxLines = this.mMaxLinesForHeight;
        if (maxLines <= 0) {
            maxLines = getMaxLines() >= 0 ? getMaxLines() : Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(maxLines);
        this.mLayoutMaxLines = maxLines;
        if (z2) {
            hyphenationFrequency.setEllipsize(truncateAt).setEllipsizedWidth(i3);
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.notification_content_picture_margin);
        int i4 = this.mIndentLines;
        if (i4 > 0) {
            iArr = new int[i4 + 1];
            for (int i5 = 0; i5 < this.mIndentLines; i5++) {
                iArr[i5] = dimensionPixelSize;
            }
        } else {
            iArr = null;
        }
        if (this.mResolvedDirection == 1) {
            hyphenationFrequency.setIndents(iArr, null);
        } else {
            hyphenationFrequency.setIndents(null, iArr);
        }
        return hyphenationFrequency.build();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i3) {
        int iMax = Math.max(1, ((View.MeasureSpec.getSize(i3) - this.mPaddingTop) - this.mPaddingBottom) / getLineHeight());
        if (getMaxLines() > 0) {
            iMax = Math.min(getMaxLines(), iMax);
        }
        if (iMax != this.mMaxLinesForHeight) {
            this.mMaxLinesForHeight = iMax;
            if (getLayout() != null && this.mMaxLinesForHeight != this.mLayoutMaxLines) {
                this.mBlockLayouts = true;
                setHint(getHint());
                this.mBlockLayouts = false;
            }
        }
        super.onMeasure(i2, i3);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        if (i2 == this.mResolvedDirection || !isLayoutDirectionResolved()) {
            return;
        }
        this.mResolvedDirection = i2;
        if (this.mIndentLines > 0) {
            setHint(getHint());
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mBlockLayouts) {
            return;
        }
        super.requestLayout();
    }

    @RemotableViewMethod
    public void setHasImage(boolean z2) {
        setNumIndentLines(z2 ? 2 : 0);
    }

    public boolean setNumIndentLines(int i2) {
        if (this.mIndentLines == i2) {
            return false;
        }
        this.mIndentLines = i2;
        setHint(getHint());
        return true;
    }

    public ImageFloatingTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ImageFloatingTextView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ImageFloatingTextView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mResolvedDirection = -1;
        this.mMaxLinesForHeight = -1;
        this.mFirstMeasure = true;
        this.mLayoutMaxLines = -1;
    }
}
