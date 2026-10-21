package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.PointerIcon;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class ImageButton extends ImageView {
    public ImageButton(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ImageButton.class.getName();
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        return (getPointerIcon() == null && isClickable() && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i2);
    }

    @Override // android.view.View
    public boolean onSetAlpha(int i2) {
        return false;
    }

    public ImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842866);
    }

    public ImageButton(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ImageButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        setFocusable(true);
    }
}
