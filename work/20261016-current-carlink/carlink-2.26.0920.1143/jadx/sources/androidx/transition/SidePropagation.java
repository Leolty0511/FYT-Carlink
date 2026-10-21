package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public class SidePropagation extends VisibilityPropagation {
    private float mPropagationSpeed = 3.0f;
    private int mSide = 80;

    /* JADX WARN: Code duplicated, block: B:10:0x0017  */
    /* JADX WARN: Code duplicated, block: B:9:0x0015  */
    private int distance(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        int i10 = this.mSide;
        if (i10 == 8388611) {
            if (ViewCompat.getLayoutDirection(view) == 1) {
                i10 = 5;
            } else {
                i10 = 3;
            }
        } else if (i10 == 8388613) {
            if (ViewCompat.getLayoutDirection(view) == 1) {
                i10 = 3;
            } else {
                i10 = 5;
            }
        }
        if (i10 == 3) {
            return Math.abs(i5 - i3) + (i8 - i2);
        }
        if (i10 == 5) {
            return Math.abs(i5 - i3) + (i2 - i6);
        }
        if (i10 == 48) {
            return Math.abs(i4 - i2) + (i9 - i3);
        }
        if (i10 != 80) {
            return 0;
        }
        return Math.abs(i4 - i2) + (i3 - i7);
    }

    private int getMaxDistance(ViewGroup viewGroup) {
        int i2 = this.mSide;
        return (i2 == 3 || i2 == 5 || i2 == 8388611 || i2 == 8388613) ? viewGroup.getWidth() : viewGroup.getHeight();
    }

    @Override // androidx.transition.TransitionPropagation
    public long getStartDelay(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i2;
        int iCenterX;
        int iCenterY;
        TransitionValues transitionValues3 = transitionValues;
        if (transitionValues3 == null && transitionValues2 == null) {
            return 0L;
        }
        Rect epicenter = transition.getEpicenter();
        if (transitionValues2 == null || getViewVisibility(transitionValues3) == 0) {
            i2 = -1;
        } else {
            transitionValues3 = transitionValues2;
            i2 = 1;
        }
        int viewX = getViewX(transitionValues3);
        int viewY = getViewY(transitionValues3);
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        int iRound = iArr[0] + Math.round(viewGroup.getTranslationX());
        int iRound2 = Math.round(viewGroup.getTranslationY()) + iArr[1];
        int width = viewGroup.getWidth() + iRound;
        int height = viewGroup.getHeight() + iRound2;
        if (epicenter != null) {
            iCenterX = epicenter.centerX();
            iCenterY = epicenter.centerY();
        } else {
            iCenterX = (iRound + width) / 2;
            iCenterY = (iRound2 + height) / 2;
        }
        float fDistance = distance(viewGroup, viewX, viewY, iCenterX, iCenterY, iRound, iRound2, width, height) / getMaxDistance(viewGroup);
        long duration = transition.getDuration();
        if (duration < 0) {
            duration = 300;
        }
        return Math.round(((duration * ((long) i2)) / this.mPropagationSpeed) * fDistance);
    }

    public void setPropagationSpeed(float f2) {
        if (f2 == 0.0f) {
            throw new IllegalArgumentException("propagationSpeed may not be 0");
        }
        this.mPropagationSpeed = f2;
    }

    public void setSide(int i2) {
        this.mSide = i2;
    }
}
