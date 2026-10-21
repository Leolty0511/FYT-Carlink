package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class ZoomControls extends LinearLayout {
    private final ZoomButton mZoomIn;
    private final ZoomButton mZoomOut;

    public ZoomControls(Context context) {
        this(context, null);
    }

    private void fade(int i2, float f2, float f3) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f3);
        alphaAnimation.setDuration(500L);
        startAnimation(alphaAnimation);
        setVisibility(i2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ZoomControls.class.getName();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.mZoomIn.hasFocus() || this.mZoomOut.hasFocus();
    }

    public void hide() {
        fade(8, 1.0f, 0.0f);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void setIsZoomInEnabled(boolean z2) {
        this.mZoomIn.setEnabled(z2);
    }

    public void setIsZoomOutEnabled(boolean z2) {
        this.mZoomOut.setEnabled(z2);
    }

    public void setOnZoomInClickListener(View.OnClickListener onClickListener) {
        this.mZoomIn.setOnClickListener(onClickListener);
    }

    public void setOnZoomOutClickListener(View.OnClickListener onClickListener) {
        this.mZoomOut.setOnClickListener(onClickListener);
    }

    public void setZoomSpeed(long j2) {
        this.mZoomIn.setZoomSpeed(j2);
        this.mZoomOut.setZoomSpeed(j2);
    }

    public void show() {
        fade(0, 0.0f, 1.0f);
    }

    public ZoomControls(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setFocusable(false);
        ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(R.layout.zoom_controls, (ViewGroup) this, true);
        this.mZoomIn = (ZoomButton) findViewById(R.id.zoomIn);
        this.mZoomOut = (ZoomButton) findViewById(R.id.zoomOut);
    }
}
