package android.view.animation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.internal.R;
import com.android.internal.view.animation.HasNativeInterpolator;
import com.android.internal.view.animation.NativeInterpolatorFactory;
import com.android.internal.view.animation.NativeInterpolatorFactoryHelper;

/* JADX INFO: loaded from: classes2.dex */
@HasNativeInterpolator
public class AnticipateOvershootInterpolator extends BaseInterpolator implements NativeInterpolatorFactory {
    private final float mTension;

    public AnticipateOvershootInterpolator() {
        this.mTension = 3.0f;
    }

    private static float a(float f2, float f3) {
        return (((1.0f + f3) * f2) - f3) * f2 * f2;
    }

    private static float o(float f2, float f3) {
        return (((1.0f + f3) * f2) + f3) * f2 * f2;
    }

    @Override // com.android.internal.view.animation.NativeInterpolatorFactory
    public long createNativeInterpolator() {
        return NativeInterpolatorFactoryHelper.createAnticipateOvershootInterpolator(this.mTension);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return (f2 < 0.5f ? a(f2 * 2.0f, this.mTension) : o((f2 * 2.0f) - 2.0f, this.mTension) + 2.0f) * 0.5f;
    }

    public AnticipateOvershootInterpolator(float f2) {
        this.mTension = f2 * 1.5f;
    }

    public AnticipateOvershootInterpolator(float f2, float f3) {
        this.mTension = f2 * f3;
    }

    public AnticipateOvershootInterpolator(Context context, AttributeSet attributeSet) {
        this(context.getResources(), context.getTheme(), attributeSet);
    }

    public AnticipateOvershootInterpolator(Resources resources, Resources.Theme theme, AttributeSet attributeSet) {
        TypedArray typedArrayObtainAttributes;
        if (theme != null) {
            typedArrayObtainAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.AnticipateOvershootInterpolator, 0, 0);
        } else {
            typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.AnticipateOvershootInterpolator);
        }
        this.mTension = typedArrayObtainAttributes.getFloat(1, 1.5f) * typedArrayObtainAttributes.getFloat(0, 2.0f);
        setChangingConfiguration(typedArrayObtainAttributes.getChangingConfigurations());
        typedArrayObtainAttributes.recycle();
    }
}
