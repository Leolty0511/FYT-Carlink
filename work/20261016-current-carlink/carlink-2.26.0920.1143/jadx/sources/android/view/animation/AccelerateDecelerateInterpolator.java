package android.view.animation;

import android.content.Context;
import android.util.AttributeSet;
import com.android.internal.view.animation.HasNativeInterpolator;
import com.android.internal.view.animation.NativeInterpolatorFactory;
import com.android.internal.view.animation.NativeInterpolatorFactoryHelper;

/* JADX INFO: loaded from: classes2.dex */
@HasNativeInterpolator
public class AccelerateDecelerateInterpolator extends BaseInterpolator implements NativeInterpolatorFactory {
    public AccelerateDecelerateInterpolator() {
    }

    @Override // com.android.internal.view.animation.NativeInterpolatorFactory
    public long createNativeInterpolator() {
        return NativeInterpolatorFactoryHelper.createAccelerateDecelerateInterpolator();
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return ((float) (Math.cos(((double) (f2 + 1.0f)) * 3.141592653589793d) / 2.0d)) + 0.5f;
    }

    public AccelerateDecelerateInterpolator(Context context, AttributeSet attributeSet) {
    }
}
