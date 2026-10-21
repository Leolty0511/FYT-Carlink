package android.media;

import android.accessibilityservice.c;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
class TtmlRenderingWidget extends LinearLayout implements SubtitleTrack.RenderingWidget {
    private SubtitleTrack.RenderingWidget.OnChangedListener mListener;
    private final TextView mTextView;

    public TtmlRenderingWidget(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setActiveCues(Vector<SubtitleTrack.Cue> vector) {
        int size = vector.size();
        String strN = "";
        for (int i2 = 0; i2 < size; i2++) {
            strN = c.n(c.r(strN), ((TtmlCue) vector.get(i2)).mText, "\n");
        }
        this.mTextView.setText(strN);
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
    }

    public TtmlRenderingWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TtmlRenderingWidget(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public TtmlRenderingWidget(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        setLayerType(1, null);
        CaptioningManager captioningManager = (CaptioningManager) context.getSystemService(Context.CAPTIONING_SERVICE);
        TextView textView = new TextView(context);
        this.mTextView = textView;
        textView.setTextColor(captioningManager.getUserStyle().foregroundColor);
        addView(textView, -1, -1);
        textView.setGravity(81);
    }
}
