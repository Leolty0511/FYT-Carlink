package android.media;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;

/* JADX INFO: loaded from: classes.dex */
abstract class ClosedCaptionWidget extends ViewGroup implements SubtitleTrack.RenderingWidget {
    private static final CaptioningManager.CaptionStyle DEFAULT_CAPTION_STYLE = CaptioningManager.CaptionStyle.DEFAULT;
    protected CaptioningManager.CaptionStyle mCaptionStyle;
    private final CaptioningManager.CaptioningChangeListener mCaptioningListener;
    protected ClosedCaptionLayout mClosedCaptionLayout;
    private boolean mHasChangeListener;
    protected SubtitleTrack.RenderingWidget.OnChangedListener mListener;
    private final CaptioningManager mManager;

    public interface ClosedCaptionLayout {
        void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle);

        void setFontScale(float f2);
    }

    public ClosedCaptionWidget(Context context) {
        this(context, null);
    }

    private void manageChangeListener() {
        boolean z2 = isAttachedToWindow() && getVisibility() == 0;
        if (this.mHasChangeListener != z2) {
            this.mHasChangeListener = z2;
            if (z2) {
                this.mManager.addCaptioningChangeListener(this.mCaptioningListener);
            } else {
                this.mManager.removeCaptioningChangeListener(this.mCaptioningListener);
            }
        }
    }

    public abstract ClosedCaptionLayout createCaptionLayout(Context context);

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
        ((ViewGroup) this.mClosedCaptionLayout).layout(i2, i3, i4, i5);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        ((ViewGroup) this.mClosedCaptionLayout).measure(i2, i3);
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

    public ClosedCaptionWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ClosedCaptionWidget(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ClosedCaptionWidget(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mCaptioningListener = new CaptioningManager.CaptioningChangeListener() { // from class: android.media.ClosedCaptionWidget.1
            @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
            public void onFontScaleChanged(float f2) {
                ClosedCaptionWidget.this.mClosedCaptionLayout.setFontScale(f2);
            }

            @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
            public void onUserStyleChanged(CaptioningManager.CaptionStyle captionStyle) {
                ClosedCaptionWidget.this.mCaptionStyle = ClosedCaptionWidget.DEFAULT_CAPTION_STYLE.applyStyle(captionStyle);
                ClosedCaptionWidget closedCaptionWidget = ClosedCaptionWidget.this;
                closedCaptionWidget.mClosedCaptionLayout.setCaptionStyle(closedCaptionWidget.mCaptionStyle);
            }
        };
        setLayerType(1, null);
        CaptioningManager captioningManager = (CaptioningManager) context.getSystemService(Context.CAPTIONING_SERVICE);
        this.mManager = captioningManager;
        this.mCaptionStyle = DEFAULT_CAPTION_STYLE.applyStyle(captioningManager.getUserStyle());
        ClosedCaptionLayout closedCaptionLayoutCreateCaptionLayout = createCaptionLayout(context);
        this.mClosedCaptionLayout = closedCaptionLayoutCreateCaptionLayout;
        closedCaptionLayoutCreateCaptionLayout.setCaptionStyle(this.mCaptionStyle);
        this.mClosedCaptionLayout.setFontScale(captioningManager.getFontScale());
        addView((ViewGroup) this.mClosedCaptionLayout, -1, -1);
        requestLayout();
    }
}
