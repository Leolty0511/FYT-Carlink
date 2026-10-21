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
public class OvershootInterpolator extends BaseInterpolator implements NativeInterpolatorFactory {
    private final float mTension;

    public OvershootInterpolator() {
        this.mTension = 2.0f;
    }

    @Override // com.android.internal.view.animation.NativeInterpolatorFactory
    public long createNativeInterpolator() {
        return NativeInterpolatorFactoryHelper.createOvershootInterpolator(this.mTension);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        float f3 = f2 - 1.0f;
        float f4 = this.mTension;
        return ((((f4 + 1.0f) * f3) + f4) * f3 * f3) + 1.0f;
    }

    public OvershootInterpolator(float f2) {
        this.mTension = f2;
    }

    public OvershootInterpolator(Context context, AttributeSet attributeSet) {
        this(context.getResources(), context.getTheme(), attributeSet);
    }

    public OvershootInterpolator(Resources resources, Resources.Theme theme, AttributeSet attributeSet) {
        TypedArray typedArrayObtainAttributes;
        if (theme != null) {
            typedArrayObtainAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.OvershootInterpolator, 0, 0);
        } else {
            typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.OvershootInterpolator);
        }
        this.mTension = typedArrayObtainAttributes.getFloat(0, 2.0f);
        setChangingConfiguration(typedArrayObtainAttributes.getChangingConfigurations());
        typedArrayObtainAttributes.recycle();
    }
}
