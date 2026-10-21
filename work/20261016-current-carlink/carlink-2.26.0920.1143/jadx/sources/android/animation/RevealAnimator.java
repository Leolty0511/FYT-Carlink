package android.animation;

import android.view.RenderNodeAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class RevealAnimator extends RenderNodeAnimator {
    private View mClipView;

    public RevealAnimator(View view, int i2, int i3, float f2, float f3) {
        super(i2, i3, f2, f3);
        this.mClipView = view;
        setTarget(view);
    }

    @Override // android.view.RenderNodeAnimator
    public void onFinished() {
        this.mClipView.setRevealClip(false, 0.0f, 0.0f, 0.0f);
        super.onFinished();
    }
}
