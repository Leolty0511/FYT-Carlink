package android.view;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class FocusFinder {
    private static final ThreadLocal<FocusFinder> tlFocusFinder = new ThreadLocal<FocusFinder>() { // from class: android.view.FocusFinder.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public FocusFinder initialValue() {
            return new FocusFinder();
        }
    };
    public final Rect mBestCandidateRect;
    public final Rect mFocusedRect;
    public final Rect mOtherRect;
    public final SequentialFocusComparator mSequentialFocusComparator;
    private final ArrayList<View> mTempList;

    public static final class SequentialFocusComparator implements Comparator<View> {
        private final Rect mFirstRect;
        private boolean mIsLayoutRtl;
        private ViewGroup mRoot;
        private final Rect mSecondRect;

        private SequentialFocusComparator() {
            this.mFirstRect = new Rect();
            this.mSecondRect = new Rect();
        }

        private void getRect(View view, Rect rect) {
            view.getDrawingRect(rect);
            this.mRoot.offsetDescendantRectToMyCoords(view, rect);
        }

        public void recycle() {
            this.mRoot = null;
        }

        public void setIsLayoutRtl(boolean z2) {
            this.mIsLayoutRtl = z2;
        }

        public void setRoot(ViewGroup viewGroup) {
            this.mRoot = viewGroup;
        }

        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            if (view == view2) {
                return 0;
            }
            getRect(view, this.mFirstRect);
            getRect(view2, this.mSecondRect);
            Rect rect = this.mFirstRect;
            int i2 = rect.top;
            Rect rect2 = this.mSecondRect;
            int i3 = rect2.top;
            if (i2 < i3) {
                return -1;
            }
            if (i2 > i3) {
                return 1;
            }
            int i4 = rect.left;
            int i5 = rect2.left;
            if (i4 < i5) {
                return this.mIsLayoutRtl ? 1 : -1;
            }
            if (i4 > i5) {
                return this.mIsLayoutRtl ? -1 : 1;
            }
            int i6 = rect.bottom;
            int i7 = rect2.bottom;
            if (i6 < i7) {
                return -1;
            }
            if (i6 > i7) {
                return 1;
            }
            int i8 = rect.right;
            int i9 = rect2.right;
            if (i8 < i9) {
                return this.mIsLayoutRtl ? 1 : -1;
            }
            if (i8 > i9) {
                return this.mIsLayoutRtl ? -1 : 1;
            }
            return 0;
        }
    }

    private View findNextFocusInRelativeDirection(ArrayList<View> arrayList, ViewGroup viewGroup, View view, Rect rect, int i2) {
        try {
            this.mSequentialFocusComparator.setRoot(viewGroup);
            this.mSequentialFocusComparator.setIsLayoutRtl(viewGroup.isLayoutRtl());
            Collections.sort(arrayList, this.mSequentialFocusComparator);
            this.mSequentialFocusComparator.recycle();
            int size = arrayList.size();
            if (i2 != 1) {
                return i2 != 2 ? arrayList.get(size - 1) : getNextFocusable(view, arrayList, size);
            }
            return getPreviousFocusable(view, arrayList, size);
        } catch (Throwable th) {
            this.mSequentialFocusComparator.recycle();
            throw th;
        }
    }

    private View findNextUserSpecifiedFocus(ViewGroup viewGroup, View view, int i2) {
        View viewFindUserSetNextFocus = view.findUserSetNextFocus(viewGroup, i2);
        if (viewFindUserSetNextFocus == null || !viewFindUserSetNextFocus.isFocusable()) {
            return null;
        }
        if (!viewFindUserSetNextFocus.isInTouchMode() || viewFindUserSetNextFocus.isFocusableInTouchMode()) {
            return viewFindUserSetNextFocus;
        }
        return null;
    }

    public static FocusFinder getInstance() {
        return tlFocusFinder.get();
    }

    private static View getNextFocusable(View view, ArrayList<View> arrayList, int i2) {
        int iLastIndexOf;
        int i3;
        if (view != null && (iLastIndexOf = arrayList.lastIndexOf(view)) >= 0 && (i3 = iLastIndexOf + 1) < i2) {
            return arrayList.get(i3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList.get(0);
    }

    private static View getPreviousFocusable(View view, ArrayList<View> arrayList, int i2) {
        int iIndexOf;
        if (view != null && (iIndexOf = arrayList.indexOf(view)) > 0) {
            return arrayList.get(iIndexOf - 1);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList.get(i2 - 1);
    }

    private boolean isTouchCandidate(int i2, int i3, Rect rect, int i4) {
        if (i4 == 17) {
            return rect.left <= i2 && rect.top <= i3 && i3 <= rect.bottom;
        }
        if (i4 == 33) {
            return rect.top <= i3 && rect.left <= i2 && i2 <= rect.right;
        }
        if (i4 == 66) {
            return rect.left >= i2 && rect.top <= i3 && i3 <= rect.bottom;
        }
        if (i4 == 130) {
            return rect.top >= i3 && rect.left <= i2 && i2 <= rect.right;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    public static int majorAxisDistance(int i2, Rect rect, Rect rect2) {
        return Math.max(0, majorAxisDistanceRaw(i2, rect, rect2));
    }

    public static int majorAxisDistanceRaw(int i2, Rect rect, Rect rect2) {
        int i3;
        int i4;
        if (i2 == 17) {
            i3 = rect.left;
            i4 = rect2.right;
        } else if (i2 == 33) {
            i3 = rect.top;
            i4 = rect2.bottom;
        } else if (i2 == 66) {
            i3 = rect2.left;
            i4 = rect.right;
        } else {
            if (i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i3 = rect2.top;
            i4 = rect.bottom;
        }
        return i3 - i4;
    }

    public static int majorAxisDistanceToFarEdge(int i2, Rect rect, Rect rect2) {
        return Math.max(1, majorAxisDistanceToFarEdgeRaw(i2, rect, rect2));
    }

    public static int majorAxisDistanceToFarEdgeRaw(int i2, Rect rect, Rect rect2) {
        int i3;
        int i4;
        if (i2 == 17) {
            i3 = rect.left;
            i4 = rect2.left;
        } else if (i2 == 33) {
            i3 = rect.top;
            i4 = rect2.top;
        } else if (i2 == 66) {
            i3 = rect2.right;
            i4 = rect.right;
        } else {
            if (i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i3 = rect2.bottom;
            i4 = rect.bottom;
        }
        return i3 - i4;
    }

    public static int minorAxisDistance(int i2, Rect rect, Rect rect2) {
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs((rect.left + (rect.width() / 2)) - (rect2.left + (rect2.width() / 2)));
        }
        return Math.abs((rect.top + (rect.height() / 2)) - (rect2.top + (rect2.height() / 2)));
    }

    private void setFocusBottomRight(ViewGroup viewGroup, Rect rect) {
        int scrollY = viewGroup.getScrollY() + viewGroup.getHeight();
        int scrollX = viewGroup.getScrollX() + viewGroup.getWidth();
        rect.set(scrollX, scrollY, scrollX, scrollY);
    }

    private void setFocusTopLeft(ViewGroup viewGroup, Rect rect) {
        int scrollY = viewGroup.getScrollY();
        int scrollX = viewGroup.getScrollX();
        rect.set(scrollX, scrollY, scrollX, scrollY);
    }

    public boolean beamBeats(int i2, Rect rect, Rect rect2, Rect rect3) {
        boolean zBeamsOverlap = beamsOverlap(i2, rect, rect2);
        if (beamsOverlap(i2, rect, rect3) || !zBeamsOverlap) {
            return false;
        }
        return !isToDirectionOf(i2, rect, rect3) || i2 == 17 || i2 == 66 || majorAxisDistance(i2, rect, rect2) < majorAxisDistanceToFarEdge(i2, rect, rect3);
    }

    public boolean beamsOverlap(int i2, Rect rect, Rect rect2) {
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x003d  */
    public View findNearestTouchable(ViewGroup viewGroup, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6;
        ArrayList<View> touchables = viewGroup.getTouchables();
        int size = touchables.size();
        int scaledEdgeSlop = ViewConfiguration.get(viewGroup.mContext).getScaledEdgeSlop();
        Rect rect = new Rect();
        Rect rect2 = this.mOtherRect;
        View view = null;
        int i7 = Integer.MAX_VALUE;
        for (int i8 = 0; i8 < size; i8++) {
            View view2 = touchables.get(i8);
            view2.getDrawingRect(rect2);
            viewGroup.offsetRectBetweenParentAndChild(view2, rect2, true, true);
            if (isTouchCandidate(i2, i3, rect2, i4)) {
                if (i4 != 17) {
                    if (i4 == 33) {
                        i5 = i3 - rect2.bottom;
                    } else if (i4 != 66) {
                        i6 = i4 != 130 ? Integer.MAX_VALUE : rect2.top;
                    } else {
                        i6 = rect2.left;
                    }
                    if (i6 >= scaledEdgeSlop && (view == null || rect.contains(rect2) || (!rect2.contains(rect) && i6 < i7))) {
                        rect.set(rect2);
                        if (i4 == 17) {
                            iArr[0] = -i6;
                        } else if (i4 == 33) {
                            iArr[1] = -i6;
                        } else if (i4 == 66) {
                            iArr[0] = i6;
                        } else if (i4 == 130) {
                            iArr[1] = i6;
                        }
                        i7 = i6;
                        view = view2;
                    }
                } else {
                    i5 = i2 - rect2.right;
                }
                i6 = i5 + 1;
                if (i6 >= scaledEdgeSlop) {
                }
            }
        }
        return view;
    }

    public final View findNextFocus(ViewGroup viewGroup, View view, int i2) {
        return findNextFocus(viewGroup, view, null, i2);
    }

    public View findNextFocusFromRect(ViewGroup viewGroup, Rect rect, int i2) {
        this.mFocusedRect.set(rect);
        return findNextFocus(viewGroup, null, this.mFocusedRect, i2);
    }

    public View findNextFocusInAbsoluteDirection(ArrayList<View> arrayList, ViewGroup viewGroup, View view, Rect rect, int i2) {
        this.mBestCandidateRect.set(rect);
        if (i2 == 17) {
            this.mBestCandidateRect.offset(rect.width() + 1, 0);
        } else if (i2 == 33) {
            this.mBestCandidateRect.offset(0, rect.height() + 1);
        } else if (i2 == 66) {
            this.mBestCandidateRect.offset(-(rect.width() + 1), 0);
        } else if (i2 == 130) {
            this.mBestCandidateRect.offset(0, -(rect.height() + 1));
        }
        View view2 = null;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view3 = arrayList.get(i3);
            if (view3 != view && view3 != viewGroup) {
                view3.getFocusedRect(this.mOtherRect);
                viewGroup.offsetDescendantRectToMyCoords(view3, this.mOtherRect);
                if (isBetterCandidate(i2, rect, this.mOtherRect, this.mBestCandidateRect)) {
                    this.mBestCandidateRect.set(this.mOtherRect);
                    view2 = view3;
                }
            }
        }
        return view2;
    }

    public int getWeightedDistanceFor(int i2, int i3) {
        return (i2 * 13 * i2) + (i3 * i3);
    }

    public boolean isBetterCandidate(int i2, Rect rect, Rect rect2, Rect rect3) {
        if (!isCandidate(rect, rect2, i2)) {
            return false;
        }
        if (isCandidate(rect, rect3, i2) && !beamBeats(i2, rect, rect2, rect3)) {
            return !beamBeats(i2, rect, rect3, rect2) && getWeightedDistanceFor(majorAxisDistance(i2, rect, rect2), minorAxisDistance(i2, rect, rect2)) < getWeightedDistanceFor(majorAxisDistance(i2, rect, rect3), minorAxisDistance(i2, rect, rect3));
        }
        return true;
    }

    public boolean isCandidate(Rect rect, Rect rect2, int i2) {
        if (i2 == 17) {
            int i3 = rect.right;
            int i4 = rect2.right;
            return (i3 > i4 || rect.left >= i4) && rect.left > rect2.left;
        }
        if (i2 == 33) {
            int i5 = rect.bottom;
            int i6 = rect2.bottom;
            return (i5 > i6 || rect.top >= i6) && rect.top > rect2.top;
        }
        if (i2 == 66) {
            int i7 = rect.left;
            int i8 = rect2.left;
            return (i7 < i8 || rect.right <= i8) && rect.right < rect2.right;
        }
        if (i2 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i9 = rect.top;
        int i10 = rect2.top;
        return (i9 < i10 || rect.bottom <= i10) && rect.bottom < rect2.bottom;
    }

    public boolean isToDirectionOf(int i2, Rect rect, Rect rect2) {
        if (i2 == 17) {
            return rect.left >= rect2.right;
        }
        if (i2 == 33) {
            return rect.top >= rect2.bottom;
        }
        if (i2 == 66) {
            return rect.right <= rect2.left;
        }
        if (i2 == 130) {
            return rect.bottom <= rect2.top;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    private FocusFinder() {
        this.mFocusedRect = new Rect();
        this.mOtherRect = new Rect();
        this.mBestCandidateRect = new Rect();
        this.mSequentialFocusComparator = new SequentialFocusComparator();
        this.mTempList = new ArrayList<>();
    }

    private View findNextFocus(ViewGroup viewGroup, View view, Rect rect, int i2) {
        View viewFindNextUserSpecifiedFocus = view != null ? findNextUserSpecifiedFocus(viewGroup, view, i2) : null;
        if (viewFindNextUserSpecifiedFocus != null) {
            return viewFindNextUserSpecifiedFocus;
        }
        ArrayList<View> arrayList = this.mTempList;
        try {
            arrayList.clear();
            viewGroup.addFocusables(arrayList, i2);
            if (!arrayList.isEmpty()) {
                viewFindNextUserSpecifiedFocus = findNextFocus(viewGroup, view, rect, i2, arrayList);
            }
            return viewFindNextUserSpecifiedFocus;
        } finally {
            arrayList.clear();
        }
    }

    private View findNextFocus(ViewGroup viewGroup, View view, Rect rect, int i2, ArrayList<View> arrayList) {
        Rect rect2;
        if (view != null) {
            rect2 = rect == null ? this.mFocusedRect : rect;
            view.getFocusedRect(rect2);
            viewGroup.offsetDescendantRectToMyCoords(view, rect2);
        } else if (rect == null) {
            rect2 = this.mFocusedRect;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 17 || i2 == 33) {
                        setFocusBottomRight(viewGroup, rect2);
                    } else if (i2 == 66 || i2 == 130) {
                        setFocusTopLeft(viewGroup, rect2);
                    }
                } else if (viewGroup.isLayoutRtl()) {
                    setFocusBottomRight(viewGroup, rect2);
                } else {
                    setFocusTopLeft(viewGroup, rect2);
                }
            } else if (viewGroup.isLayoutRtl()) {
                setFocusTopLeft(viewGroup, rect2);
            } else {
                setFocusBottomRight(viewGroup, rect2);
            }
        } else {
            rect2 = rect;
        }
        if (i2 == 1 || i2 == 2) {
            return findNextFocusInRelativeDirection(arrayList, viewGroup, view, rect2, i2);
        }
        if (i2 != 17 && i2 != 33 && i2 != 66 && i2 != 130) {
            throw new IllegalArgumentException("Unknown direction: " + i2);
        }
        return findNextFocusInAbsoluteDirection(arrayList, viewGroup, view, rect2, i2);
    }
}
