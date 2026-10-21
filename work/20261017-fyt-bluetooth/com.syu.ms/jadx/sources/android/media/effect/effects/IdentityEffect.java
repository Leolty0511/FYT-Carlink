package android.media.effect.effects;

import android.filterfw.core.Frame;
import android.media.effect.EffectContext;
import android.media.effect.FilterEffect;

/* JADX INFO: loaded from: classes.dex */
public class IdentityEffect extends FilterEffect {
    public IdentityEffect(EffectContext effectContext, String str) {
        super(effectContext, str);
    }

    @Override // android.media.effect.Effect
    public void apply(int i2, int i3, int i4, int i5) {
        beginGLEffect();
        Frame frameFrameFromTexture = frameFromTexture(i2, i3, i4);
        Frame frameFrameFromTexture2 = frameFromTexture(i5, i3, i4);
        frameFrameFromTexture2.setDataFromFrame(frameFrameFromTexture);
        frameFrameFromTexture.release();
        frameFrameFromTexture2.release();
        endGLEffect();
    }

    @Override // android.media.effect.Effect
    public void release() {
    }

    @Override // android.media.effect.Effect
    public void setParameter(String str, Object obj) {
        throw new IllegalArgumentException("Unknown parameter " + str + " for IdentityEffect!");
    }
}
