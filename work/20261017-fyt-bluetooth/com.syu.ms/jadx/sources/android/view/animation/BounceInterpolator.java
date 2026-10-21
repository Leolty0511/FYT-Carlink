package android.view.animation;

import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class BounceInterpolator implements Interpolator {
    public BounceInterpolator() {
    }

    private static float bounce(float f2) {
        return f2 * f2 * 8.0f;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        float fBounce;
        float f3;
        float f4 = f2 * 1.1226f;
        if (f4 < 0.3535f) {
            return bounce(f4);
        }
        if (f4 < 0.7408f) {
            fBounce = bounce(f4 - 0.54719f);
            f3 = 0.7f;
        } else if (f4 < 0.9644f) {
            fBounce = bounce(f4 - 0.8526f);
            f3 = 0.9f;
        } else {
            fBounce = bounce(f4 - 1.0435f);
            f3 = 0.95f;
        }
        return fBounce + f3;
    }

    public BounceInterpolator(Context context, AttributeSet attributeSet) {
    }
}
