package android.media;

import android.content.Context;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import android.widget.LinearLayout;
import com.android.internal.widget.SubtitleView;
import java.util.ArrayList;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
class WebVttRenderingWidget extends ViewGroup implements SubtitleTrack.RenderingWidget {
    private static final boolean DEBUG = false;
    private static final int DEBUG_CUE_BACKGROUND = -2130771968;
    private static final int DEBUG_REGION_BACKGROUND = -2147483393;
    private static final CaptioningManager.CaptionStyle DEFAULT_CAPTION_STYLE = CaptioningManager.CaptionStyle.DEFAULT;
    private static final float LINE_HEIGHT_RATIO = 0.0533f;
    private CaptioningManager.CaptionStyle mCaptionStyle;
    private final CaptioningManager.CaptioningChangeListener mCaptioningListener;
    private final ArrayMap<TextTrackCue, CueLayout> mCueBoxes;
    private float mFontSize;
    private boolean mHasChangeListener;
    private SubtitleTrack.RenderingWidget.OnChangedListener mListener;
    private final CaptioningManager mManager;
    private final ArrayMap<TextTrackRegion, RegionLayout> mRegionBoxes;

    public static class CueLayout extends LinearLayout {
        private boolean mActive;
        private CaptioningManager.CaptionStyle mCaptionStyle;
        public final TextTrackCue mCue;
        private float mFontSize;
        private int mOrder;

        public CueLayout(Context context, TextTrackCue textTrackCue, CaptioningManager.CaptionStyle captionStyle, float f2) {
            super(context);
            this.mCue = textTrackCue;
            this.mCaptionStyle = captionStyle;
            this.mFontSize = f2;
            int i2 = textTrackCue.mWritingDirection == 100 ? 1 : 0;
            setOrientation(i2);
            switch (textTrackCue.mAlignment) {
                case 200:
                    setGravity(i2 == 0 ? 16 : 1);
                    break;
                case 201:
                    setGravity(8388611);
                    break;
                case 202:
                    setGravity(8388613);
                    break;
                case 203:
                    setGravity(3);
                    break;
                case 204:
                    setGravity(5);
                    break;
            }
            update();
        }

        public TextTrackCue getCue() {
            return this.mCue;
        }

        public boolean isActive() {
            return this.mActive;
        }

        public void measureForParent(int i2, int i3) {
            int i4;
            TextTrackCue textTrackCue = this.mCue;
            int size = View.MeasureSpec.getSize(i2);
            int size2 = View.MeasureSpec.getSize(i3);
            int iResolveCueAlignment = WebVttRenderingWidget.resolveCueAlignment(getLayoutDirection(), textTrackCue.mAlignment);
            if (iResolveCueAlignment == 200) {
                int i5 = textTrackCue.mTextPosition;
                if (i5 > 50) {
                    i5 = 100 - i5;
                }
                i4 = i5 * 2;
            } else if (iResolveCueAlignment != 203) {
                i4 = iResolveCueAlignment != 204 ? 0 : textTrackCue.mTextPosition;
            } else {
                i4 = 100 - textTrackCue.mTextPosition;
            }
            measure(View.MeasureSpec.makeMeasureSpec((Math.min(textTrackCue.mSize, i4) * size) / 100, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
        }

        public void prepForPrune() {
            this.mActive = false;
        }

        public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle, float f2) {
            this.mCaptionStyle = captionStyle;
            this.mFontSize = f2;
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt instanceof SpanLayout) {
                    ((SpanLayout) childAt).setCaptionStyle(captionStyle, f2);
                }
            }
        }

        public void setOrder(int i2) {
            this.mOrder = i2;
        }

        public void update() {
            this.mActive = true;
            removeAllViews();
            int iResolveCueAlignment = WebVttRenderingWidget.resolveCueAlignment(getLayoutDirection(), this.mCue.mAlignment);
            Layout.Alignment alignment = iResolveCueAlignment != 203 ? iResolveCueAlignment != 204 ? Layout.Alignment.ALIGN_CENTER : Layout.Alignment.ALIGN_RIGHT : Layout.Alignment.ALIGN_LEFT;
            CaptioningManager.CaptionStyle captionStyle = this.mCaptionStyle;
            float f2 = this.mFontSize;
            for (TextTrackCueSpan[] textTrackCueSpanArr : this.mCue.mLines) {
                SpanLayout spanLayout = new SpanLayout(getContext(), textTrackCueSpanArr);
                spanLayout.setAlignment(alignment);
                spanLayout.setCaptionStyle(captionStyle, f2);
                addView(spanLayout, -2, -2);
            }
        }
    }

    public static class RegionLayout extends LinearLayout {
        private CaptioningManager.CaptionStyle mCaptionStyle;
        private float mFontSize;
        private final TextTrackRegion mRegion;
        private final ArrayList<CueLayout> mRegionCueBoxes;

        public RegionLayout(Context context, TextTrackRegion textTrackRegion, CaptioningManager.CaptionStyle captionStyle, float f2) {
            super(context);
            this.mRegionCueBoxes = new ArrayList<>();
            this.mRegion = textTrackRegion;
            this.mCaptionStyle = captionStyle;
            this.mFontSize = f2;
            setOrientation(1);
            setBackgroundColor(captionStyle.windowColor);
        }

        public TextTrackRegion getRegion() {
            return this.mRegion;
        }

        public void measureForParent(int i2, int i3) {
            TextTrackRegion textTrackRegion = this.mRegion;
            measure(View.MeasureSpec.makeMeasureSpec((((int) textTrackRegion.mWidth) * View.MeasureSpec.getSize(i2)) / 100, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), Integer.MIN_VALUE));
        }

        public void prepForPrune() {
            int size = this.mRegionCueBoxes.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mRegionCueBoxes.get(i2).prepForPrune();
            }
        }

        public boolean prune() {
            int size = this.mRegionCueBoxes.size();
            int i2 = 0;
            while (i2 < size) {
                CueLayout cueLayout = this.mRegionCueBoxes.get(i2);
                if (!cueLayout.isActive()) {
                    this.mRegionCueBoxes.remove(i2);
                    removeView(cueLayout);
                    size--;
                    i2--;
                }
                i2++;
            }
            return this.mRegionCueBoxes.isEmpty();
        }

        public void put(TextTrackCue textTrackCue) {
            int size = this.mRegionCueBoxes.size();
            for (int i2 = 0; i2 < size; i2++) {
                CueLayout cueLayout = this.mRegionCueBoxes.get(i2);
                if (cueLayout.getCue() == textTrackCue) {
                    cueLayout.update();
                    return;
                }
            }
            CueLayout cueLayout2 = new CueLayout(getContext(), textTrackCue, this.mCaptionStyle, this.mFontSize);
            this.mRegionCueBoxes.add(cueLayout2);
            addView(cueLayout2, -2, -2);
            if (getChildCount() > this.mRegion.mLines) {
                removeViewAt(0);
            }
        }

        public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle, float f2) {
            this.mCaptionStyle = captionStyle;
            this.mFontSize = f2;
            int size = this.mRegionCueBoxes.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mRegionCueBoxes.get(i2).setCaptionStyle(captionStyle, f2);
            }
            setBackgroundColor(captionStyle.windowColor);
        }
    }

    public static class SpanLayout extends SubtitleView {
        private final SpannableStringBuilder mBuilder;
        private final TextTrackCueSpan[] mSpans;

        public SpanLayout(Context context, TextTrackCueSpan[] textTrackCueSpanArr) {
            super(context);
            this.mBuilder = new SpannableStringBuilder();
            this.mSpans = textTrackCueSpanArr;
            update();
        }

        public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle, float f2) {
            setBackgroundColor(captionStyle.backgroundColor);
            setForegroundColor(captionStyle.foregroundColor);
            setEdgeColor(captionStyle.edgeColor);
            setEdgeType(captionStyle.edgeType);
            setTypeface(captionStyle.getTypeface());
            setTextSize(f2);
        }

        public void update() {
            SpannableStringBuilder spannableStringBuilder = this.mBuilder;
            TextTrackCueSpan[] textTrackCueSpanArr = this.mSpans;
            spannableStringBuilder.clear();
            spannableStringBuilder.clearSpans();
            for (TextTrackCueSpan textTrackCueSpan : textTrackCueSpanArr) {
                if (textTrackCueSpan.mEnabled) {
                    spannableStringBuilder.append((CharSequence) textTrackCueSpan.mText);
                }
            }
            setText(spannableStringBuilder);
        }
    }

    public WebVttRenderingWidget(Context context) {
        this(context, null);
    }

    private int calculateLinePosition(CueLayout cueLayout) {
        TextTrackCue cue = cueLayout.getCue();
        Integer num = cue.mLinePosition;
        boolean z2 = cue.mSnapToLines;
        boolean z3 = num == null;
        if (!z2 && !z3 && (num.intValue() < 0 || num.intValue() > 100)) {
            return 100;
        }
        if (!z3) {
            return num.intValue();
        }
        if (z2) {
            return -(cueLayout.mOrder + 1);
        }
        return 100;
    }

    private void layoutCue(int i2, int i3, CueLayout cueLayout) {
        int i4;
        TextTrackCue cue = cueLayout.getCue();
        int layoutDirection = getLayoutDirection();
        int iResolveCueAlignment = resolveCueAlignment(layoutDirection, cue.mAlignment);
        boolean z2 = cue.mSnapToLines;
        int measuredWidth = (cueLayout.getMeasuredWidth() * 100) / i2;
        if (iResolveCueAlignment != 203) {
            i4 = iResolveCueAlignment != 204 ? cue.mTextPosition - (measuredWidth / 2) : cue.mTextPosition - measuredWidth;
        } else {
            i4 = cue.mTextPosition;
        }
        if (layoutDirection == 1) {
            i4 = 100 - i4;
        }
        if (z2) {
            int paddingLeft = (getPaddingLeft() * 100) / i2;
            int paddingRight = (getPaddingRight() * 100) / i2;
            if (i4 < paddingLeft && i4 + measuredWidth > paddingLeft) {
                i4 += paddingLeft;
                measuredWidth -= paddingLeft;
            }
            float f2 = 100 - paddingRight;
            if (i4 < f2 && i4 + measuredWidth > f2) {
                measuredWidth -= paddingRight;
            }
        }
        int i5 = (i4 * i2) / 100;
        int i6 = (measuredWidth * i2) / 100;
        int iCalculateLinePosition = calculateLinePosition(cueLayout);
        int measuredHeight = cueLayout.getMeasuredHeight();
        int i7 = iCalculateLinePosition < 0 ? (iCalculateLinePosition * measuredHeight) + i3 : ((i3 - measuredHeight) * iCalculateLinePosition) / 100;
        cueLayout.layout(i5, i7, i6 + i5, measuredHeight + i7);
    }

    private void layoutRegion(int i2, int i3, RegionLayout regionLayout) {
        TextTrackRegion region = regionLayout.getRegion();
        int measuredHeight = regionLayout.getMeasuredHeight();
        int measuredWidth = regionLayout.getMeasuredWidth();
        int i4 = (int) ((region.mViewportAnchorPointX * (i2 - measuredWidth)) / 100.0f);
        int i5 = (int) ((region.mViewportAnchorPointY * (i3 - measuredHeight)) / 100.0f);
        regionLayout.layout(i4, i5, measuredWidth + i4, measuredHeight + i5);
    }

    private void manageChangeListener() {
        boolean z2 = isAttachedToWindow() && getVisibility() == 0;
        if (this.mHasChangeListener != z2) {
            this.mHasChangeListener = z2;
            if (!z2) {
                this.mManager.removeCaptioningChangeListener(this.mCaptioningListener);
            } else {
                this.mManager.addCaptioningChangeListener(this.mCaptioningListener);
                setCaptionStyle(this.mManager.getUserStyle(), this.mManager.getFontScale() * getHeight() * LINE_HEIGHT_RATIO);
            }
        }
    }

    private void prepForPrune() {
        int size = this.mRegionBoxes.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mRegionBoxes.valueAt(i2).prepForPrune();
        }
        int size2 = this.mCueBoxes.size();
        for (int i3 = 0; i3 < size2; i3++) {
            this.mCueBoxes.valueAt(i3).prepForPrune();
        }
    }

    private void prune() {
        int size = this.mRegionBoxes.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            RegionLayout regionLayoutValueAt = this.mRegionBoxes.valueAt(i3);
            if (regionLayoutValueAt.prune()) {
                removeView(regionLayoutValueAt);
                this.mRegionBoxes.removeAt(i3);
                size--;
                i3--;
            }
            i3++;
        }
        int size2 = this.mCueBoxes.size();
        while (i2 < size2) {
            CueLayout cueLayoutValueAt = this.mCueBoxes.valueAt(i2);
            if (!cueLayoutValueAt.isActive()) {
                removeView(cueLayoutValueAt);
                this.mCueBoxes.removeAt(i2);
                size2--;
                i2--;
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int resolveCueAlignment(int i2, int i3) {
        if (i3 == 201) {
            return i2 == 0 ? 203 : 204;
        }
        if (i3 != 202) {
            return i3;
        }
        return i2 == 0 ? 204 : 203;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle, float f2) {
        CaptioningManager.CaptionStyle captionStyleApplyStyle = DEFAULT_CAPTION_STYLE.applyStyle(captionStyle);
        this.mCaptionStyle = captionStyleApplyStyle;
        this.mFontSize = f2;
        int size = this.mCueBoxes.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mCueBoxes.valueAt(i2).setCaptionStyle(captionStyleApplyStyle, f2);
        }
        int size2 = this.mRegionBoxes.size();
        for (int i3 = 0; i3 < size2; i3++) {
            this.mRegionBoxes.valueAt(i3).setCaptionStyle(captionStyleApplyStyle, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        manageChangeListener();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        manageChangeListener();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        setCaptionStyle(this.mCaptionStyle, this.mManager.getFontScale() * LINE_HEIGHT_RATIO * i7);
        int size = this.mRegionBoxes.size();
        for (int i8 = 0; i8 < size; i8++) {
            layoutRegion(i6, i7, this.mRegionBoxes.valueAt(i8));
        }
        int size2 = this.mCueBoxes.size();
        for (int i9 = 0; i9 < size2; i9++) {
            layoutCue(i6, i7, this.mCueBoxes.valueAt(i9));
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int size = this.mRegionBoxes.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.mRegionBoxes.valueAt(i4).measureForParent(i2, i3);
        }
        int size2 = this.mCueBoxes.size();
        for (int i5 = 0; i5 < size2; i5++) {
            this.mCueBoxes.valueAt(i5).measureForParent(i2, i3);
        }
    }

    public void setActiveCues(Vector<SubtitleTrack.Cue> vector) {
        Context context = getContext();
        CaptioningManager.CaptionStyle captionStyle = this.mCaptionStyle;
        float f2 = this.mFontSize;
        prepForPrune();
        int size = vector.size();
        for (int i2 = 0; i2 < size; i2++) {
            TextTrackCue textTrackCue = (TextTrackCue) vector.get(i2);
            TextTrackRegion textTrackRegion = textTrackCue.mRegion;
            if (textTrackRegion != null) {
                RegionLayout regionLayout = this.mRegionBoxes.get(textTrackRegion);
                if (regionLayout == null) {
                    regionLayout = new RegionLayout(context, textTrackRegion, captionStyle, f2);
                    this.mRegionBoxes.put(textTrackRegion, regionLayout);
                    addView(regionLayout, -2, -2);
                }
                regionLayout.put(textTrackCue);
            } else {
                CueLayout cueLayout = this.mCueBoxes.get(textTrackCue);
                if (cueLayout == null) {
                    cueLayout = new CueLayout(context, textTrackCue, captionStyle, f2);
                    this.mCueBoxes.put(textTrackCue, cueLayout);
                    addView(cueLayout, -2, -2);
                }
                cueLayout.update();
                cueLayout.setOrder(i2);
            }
        }
        prune();
        setSize(getWidth(), getHeight());
        SubtitleTrack.RenderingWidget.OnChangedListener onChangedListener = this.mListener;
        if (onChangedListener != null) {
            onChangedListener.onChanged(this);
        }
    }

    @Override // android.media.SubtitleTrack.RenderingWidget
    public void setOnChangedListener(SubtitleTrack.RenderingWidget.OnChangedListener onChangedListener) {
        this.mListener = onChangedListener;
    }

    @Override // android.media.SubtitleTrack.RenderingWidget
    public void setSize(int i2, int i3) {
        measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        layout(0, 0, i2, i3);
    }

    @Override // android.media.SubtitleTrack.RenderingWidget
    public void setVisible(boolean z2) {
        if (z2) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
        manageChangeListener();
    }

    public WebVttRenderingWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WebVttRenderingWidget(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public WebVttRenderingWidget(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mRegionBoxes = new ArrayMap<>();
        this.mCueBoxes = new ArrayMap<>();
        this.mCaptioningListener = new CaptioningManager.CaptioningChangeListener() { // from class: android.media.WebVttRenderingWidget.1
            @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
            public void onFontScaleChanged(float f2) {
                float height = f2 * WebVttRenderingWidget.this.getHeight() * WebVttRenderingWidget.LINE_HEIGHT_RATIO;
                WebVttRenderingWidget webVttRenderingWidget = WebVttRenderingWidget.this;
                webVttRenderingWidget.setCaptionStyle(webVttRenderingWidget.mCaptionStyle, height);
            }

            @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
            public void onUserStyleChanged(CaptioningManager.CaptionStyle captionStyle) {
                WebVttRenderingWidget webVttRenderingWidget = WebVttRenderingWidget.this;
                webVttRenderingWidget.setCaptionStyle(captionStyle, webVttRenderingWidget.mFontSize);
            }
        };
        setLayerType(1, null);
        CaptioningManager captioningManager = (CaptioningManager) context.getSystemService(Context.CAPTIONING_SERVICE);
        this.mManager = captioningManager;
        this.mCaptionStyle = captioningManager.getUserStyle();
        this.mFontSize = captioningManager.getFontScale() * getHeight() * LINE_HEIGHT_RATIO;
    }
}
