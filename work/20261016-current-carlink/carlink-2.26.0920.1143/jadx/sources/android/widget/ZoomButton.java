package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class ZoomButton extends ImageButton implements View.OnLongClickListener {
    private boolean mIsInLongpress;
    private final Runnable mRunnable;
    private long mZoomSpeed;

    public ZoomButton(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public boolean dispatchUnhandledMove(View view, int i2) {
        clearFocus();
        return super.dispatchUnhandledMove(view, i2);
    }

    @Override // android.widget.ImageButton, android.widget.ImageView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ZoomButton.class.getName();
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        this.mIsInLongpress = false;
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.mIsInLongpress = true;
        post(this.mRunnable);
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
            this.mIsInLongpress = false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        if (!z2) {
            setPressed(false);
        }
        super.setEnabled(z2);
    }

    public void setZoomSpeed(long j2) {
        this.mZoomSpeed = j2;
    }

    public ZoomButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ZoomButton(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ZoomButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mRunnable = new Runnable() { // from class: android.widget.ZoomButton.1
            @Override // java.lang.Runnable
            public void run() {
                if (ZoomButton.this.hasOnClickListeners() && ZoomButton.this.mIsInLongpress && ZoomButton.this.isEnabled()) {
                    ZoomButton.this.callOnClick();
                    ZoomButton zoomButton = ZoomButton.this;
                    zoomButton.postDelayed(this, zoomButton.mZoomSpeed);
                }
            }
        };
        this.mZoomSpeed = 1000L;
        setOnLongClickListener(this);
    }
}
