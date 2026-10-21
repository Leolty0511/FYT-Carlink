package android.media.effect;

import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.format.ImageFormat;

/* JADX INFO: loaded from: classes.dex */
public abstract class FilterEffect extends Effect {
    public EffectContext mEffectContext;
    private String mName;

    public FilterEffect(EffectContext effectContext, String str) {
        this.mEffectContext = effectContext;
        this.mName = str;
    }

    public void beginGLEffect() {
        this.mEffectContext.assertValidGLState();
        this.mEffectContext.saveGLState();
    }

    public void endGLEffect() {
        this.mEffectContext.restoreGLState();
    }

    public Frame frameFromTexture(int i2, int i3, int i4) {
        Frame frameNewBoundFrame = getFilterContext().getFrameManager().newBoundFrame(ImageFormat.create(i3, i4, 3, 3), 100, i2);
        frameNewBoundFrame.setTimestamp(-1L);
        return frameNewBoundFrame;
    }

    public FilterContext getFilterContext() {
        return this.mEffectContext.mFilterContext;
    }

    @Override // android.media.effect.Effect
    public String getName() {
        return this.mName;
    }
}
