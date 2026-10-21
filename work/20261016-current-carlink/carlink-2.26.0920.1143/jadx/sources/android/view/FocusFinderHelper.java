package android.view;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public class FocusFinderHelper {
    private FocusFinder mFocusFinder;

    public FocusFinderHelper(FocusFinder focusFinder) {
        this.mFocusFinder = focusFinder;
    }

    public static int majorAxisDistance(int i2, Rect rect, Rect rect2) {
        return FocusFinder.majorAxisDistance(i2, rect, rect2);
    }

    public static int majorAxisDistanceToFarEdge(int i2, Rect rect, Rect rect2) {
        return FocusFinder.majorAxisDistanceToFarEdge(i2, rect, rect2);
    }

    public boolean beamBeats(int i2, Rect rect, Rect rect2, Rect rect3) {
        return this.mFocusFinder.beamBeats(i2, rect, rect2, rect3);
    }

    public boolean beamsOverlap(int i2, Rect rect, Rect rect2) {
        return this.mFocusFinder.beamsOverlap(i2, rect, rect2);
    }

    public boolean isBetterCandidate(int i2, Rect rect, Rect rect2, Rect rect3) {
        return this.mFocusFinder.isBetterCandidate(i2, rect, rect2, rect3);
    }

    public boolean isCandidate(Rect rect, Rect rect2, int i2) {
        return this.mFocusFinder.isCandidate(rect, rect2, i2);
    }
}
