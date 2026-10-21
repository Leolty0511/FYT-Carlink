package android.view;

import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.util.ArrayMap;
import android.util.ArraySet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FocusFinder {
    private static final ThreadLocal<FocusFinder> tlFocusFinder = new ThreadLocal<FocusFinder>() { // from class: android.view.FocusFinder.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public FocusFinder initialValue() {
            return new FocusFinder();
        }
    };
    final Rect mBestCandidateRect;
    private final FocusSorter mFocusSorter;
    final Rect mFocusedRect;
    final Rect mOtherRect;
    private final ArrayList<View> mTempList;
    private final UserSpecifiedFocusComparator mUserSpecifiedClusterComparator;
    private final UserSpecifiedFocusComparator mUserSpecifiedFocusComparator;

    public static final class FocusSorter {
        private int mLastPoolRect;
        private int mRtlMult;
        private Comparator<View> mSidesComparator;
        private Comparator<View> mTopsComparator;
        private ArrayList<Rect> mRectPool = new ArrayList<>();
        private HashMap<View, Rect> mRectByView = null;

        public FocusSorter() {
            final int i2 = 0;
            this.mTopsComparator = new Comparator(this) { // from class: android.view.a
                public final /* synthetic */ FocusFinder.FocusSorter c;

                {
                    this.c = this;
                }

                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int i3 = i2;
                    FocusFinder.FocusSorter focusSorter = this.c;
                    switch (i3) {
                        case 0:
                            return focusSorter.lambda$new$0((View) obj, (View) obj2);
                        default:
                            return focusSorter.lambda$new$1((View) obj, (View) obj2);
                    }
                }
            };
            final int i3 = 1;
            this.mSidesComparator = new Comparator(this) { // from class: android.view.a
                public final /* synthetic */ FocusFinder.FocusSorter c;

                {
                    this.c = this;
                }

                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int i4 = i3;
                    FocusFinder.FocusSorter focusSorter = this.c;
                    switch (i4) {
                        case 0:
                            return focusSorter.lambda$new$0((View) obj, (View) obj2);
                        default:
                            return focusSorter.lambda$new$1((View) obj, (View) obj2);
                    }
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ int lambda$new$0(View view, View view2) {
            if (view == view2) {
                return 0;
            }
            Rect rect = this.mRectByView.get(view);
            Rect rect2 = this.mRectByView.get(view2);
            int i2 = rect.top - rect2.top;
            return i2 == 0 ? rect.bottom - rect2.bottom : i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ int lambda$new$1(View view, View view2) {
            if (view == view2) {
                return 0;
            }
            Rect rect = this.mRectByView.get(view);
            Rect rect2 = this.mRectByView.get(view2);
            int i2 = rect.left - rect2.left;
            return i2 == 0 ? rect.right - rect2.right : this.mRtlMult * i2;
        }

        public void sort(View[] viewArr, int i2, int i3, ViewGroup viewGroup, boolean z2) {
            int i4 = i3 - i2;
            if (i4 < 2) {
                return;
            }
            if (this.mRectByView == null) {
                this.mRectByView = new HashMap<>();
            }
            this.mRtlMult = z2 ? -1 : 1;
            for (int size = this.mRectPool.size(); size < i4; size++) {
                this.mRectPool.add(new Rect());
            }
            for (int i5 = i2; i5 < i3; i5++) {
                ArrayList<Rect> arrayList = this.mRectPool;
                int i6 = this.mLastPoolRect;
                this.mLastPoolRect = i6 + 1;
                Rect rect = arrayList.get(i6);
                viewArr[i5].getDrawingRect(rect);
                viewGroup.offsetDescendantRectToMyCoords(viewArr[i5], rect);
                this.mRectByView.put(viewArr[i5], rect);
            }
            Arrays.sort(viewArr, i2, i4, this.mTopsComparator);
            int iMax = this.mRectByView.get(viewArr[i2]).bottom;
            int i7 = i2 + 1;
            while (i7 < i3) {
                Rect rect2 = this.mRectByView.get(viewArr[i7]);
                if (rect2.top >= iMax) {
                    if (i7 - i2 > 1) {
                        Arrays.sort(viewArr, i2, i7, this.mSidesComparator);
                    }
                    iMax = rect2.bottom;
                    i2 = i7;
                } else {
                    iMax = Math.max(iMax, rect2.bottom);
                }
                i7++;
            }
            if (i7 - i2 > 1) {
                Arrays.sort(viewArr, i2, i7, this.mSidesComparator);
            }
            this.mLastPoolRect = 0;
            this.mRectByView.clear();
        }
    }

    public static final class UserSpecifiedFocusComparator implements Comparator<View> {
        private final NextFocusGetter mNextFocusGetter;
        private View mRoot;
        private final ArrayMap<View, View> mNextFoci = new ArrayMap<>();
        private final ArraySet<View> mIsConnectedTo = new ArraySet<>();
        private final ArrayMap<View, View> mHeadsOfChains = new ArrayMap<>();
        private final ArrayMap<View, Integer> mOriginalOrdinal = new ArrayMap<>();

        public interface NextFocusGetter {
            View get(View view, View view2);
        }

        public UserSpecifiedFocusComparator(NextFocusGetter nextFocusGetter) {
            this.mNextFocusGetter = nextFocusGetter;
        }

        private void setHeadOfChain(View view) {
            View view2 = view;
            while (view != null) {
                View view3 = this.mHeadsOfChains.get(view);
                if (view3 != null) {
                    if (view3 == view2) {
                        return;
                    }
                    view = view2;
                    view2 = view3;
                }
                this.mHeadsOfChains.put(view, view2);
                view = this.mNextFoci.get(view);
            }
        }

        public void recycle() {
            this.mRoot = null;
            this.mHeadsOfChains.clear();
            this.mIsConnectedTo.clear();
            this.mOriginalOrdinal.clear();
            this.mNextFoci.clear();
        }

        public void setFocusables(List<View> list, View view) {
            this.mRoot = view;
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.mOriginalOrdinal.put(list.get(i2), Integer.valueOf(i2));
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                View view2 = list.get(size);
                View view3 = this.mNextFocusGetter.get(this.mRoot, view2);
                if (view3 != null && this.mOriginalOrdinal.containsKey(view3)) {
                    this.mNextFoci.put(view2, view3);
                    this.mIsConnectedTo.add(view3);
                }
            }
            for (int size2 = list.size() - 1; size2 >= 0; size2--) {
                View view4 = list.get(size2);
                if (this.mNextFoci.get(view4) != null && !this.mIsConnectedTo.contains(view4)) {
                    setHeadOfChain(view4);
                }
            }
        }

        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            boolean z2;
            if (view == view2) {
                return 0;
            }
            View view3 = this.mHeadsOfChains.get(view);
            View view4 = this.mHeadsOfChains.get(view2);
            if (view3 == view4 && view3 != null) {
                if (view == view3) {
                    return -1;
                }
                return (view2 == view3 || this.mNextFoci.get(view) == null) ? 1 : -1;
            }
            if (view3 != null) {
                view = view3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (view4 != null) {
                view2 = view4;
                z2 = true;
            }
            if (z2) {
                return this.mOriginalOrdinal.get(view).intValue() < this.mOriginalOrdinal.get(view2).intValue() ? -1 : 1;
            }
            return 0;
        }
    }

    private View findNextFocusInRelativeDirection(ArrayList<View> arrayList, ViewGroup viewGroup, View view, Rect rect, int i2) {
        try {
            this.mUserSpecifiedFocusComparator.setFocusables(arrayList, viewGroup);
            Collections.sort(arrayList, this.mUserSpecifiedFocusComparator);
            this.mUserSpecifiedFocusComparator.recycle();
            int size = arrayList.size();
            if (i2 != 1) {
                return i2 != 2 ? arrayList.get(size - 1) : getNextFocusable(view, arrayList, size);
            }
            return getPreviousFocusable(view, arrayList, size);
        } catch (Throwable th) {
            this.mUserSpecifiedFocusComparator.recycle();
            throw th;
        }
    }

    private View findNextUserSpecifiedFocus(ViewGroup viewGroup, View view, int i2) {
        View viewFindUserSetNextFocus = view.findUserSetNextFocus(viewGroup, i2);
        View viewFindUserSetNextFocus2 = viewFindUserSetNextFocus;
        boolean z2 = true;
        while (viewFindUserSetNextFocus != null) {
            if (viewFindUserSetNextFocus.isFocusable() && viewFindUserSetNextFocus.getVisibility() == 0 && (!viewFindUserSetNextFocus.isInTouchMode() || viewFindUserSetNextFocus.isFocusableInTouchMode())) {
                return viewFindUserSetNextFocus;
            }
            viewFindUserSetNextFocus = viewFindUserSetNextFocus.findUserSetNextFocus(viewGroup, i2);
            z2 = !z2;
            if (z2 && (viewFindUserSetNextFocus2 = viewFindUserSetNextFocus2.findUserSetNextFocus(viewGroup, i2)) == viewFindUserSetNextFocus) {
                return null;
            }
        }
        return null;
    }

    private View findNextUserSpecifiedKeyboardNavigationCluster(View view, View view2, int i2) {
        View viewFindUserSetNextKeyboardNavigationCluster = view2.findUserSetNextKeyboardNavigationCluster(view, i2);
        if (viewFindUserSetNextKeyboardNavigationCluster == null || !viewFindUserSetNextKeyboardNavigationCluster.hasFocusable()) {
            return null;
        }
        return viewFindUserSetNextKeyboardNavigationCluster;
    }

    private ViewGroup getEffectiveRoot(ViewGroup viewGroup, View view) {
        if (view != null && view != viewGroup) {
            ViewParent parent = view.getParent();
            ViewGroup viewGroup2 = null;
            while (parent != viewGroup) {
                ViewGroup viewGroup3 = (ViewGroup) parent;
                if (viewGroup3 != null && viewGroup3.getTouchscreenBlocksFocus() && view.getContext().getPackageManager().hasSystemFeature(PackageManager.FEATURE_TOUCHSCREEN) && viewGroup3.isKeyboardNavigationCluster()) {
                    viewGroup2 = viewGroup3;
                }
                if (parent != null) {
                    parent = parent.getParent();
                }
                if (!(parent instanceof ViewGroup)) {
                }
            }
            return viewGroup2 != null ? viewGroup2 : viewGroup;
        }
        return viewGroup;
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

    private static View getNextKeyboardNavigationCluster(View view, View view2, List<View> list, int i2) {
        int i3;
        if (view2 == null) {
            return list.get(0);
        }
        int iLastIndexOf = list.lastIndexOf(view2);
        return (iLastIndexOf < 0 || (i3 = iLastIndexOf + 1) >= i2) ? view : list.get(i3);
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

    private static View getPreviousKeyboardNavigationCluster(View view, View view2, List<View> list, int i2) {
        if (view2 == null) {
            return list.get(i2 - 1);
        }
        int iIndexOf = list.indexOf(view2);
        return iIndexOf > 0 ? list.get(iIndexOf - 1) : view;
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

    private static final boolean isValidId(int i2) {
        return (i2 == 0 || i2 == -1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ View lambda$new$0(View view, View view2) {
        if (isValidId(view2.getNextFocusForwardId())) {
            return view2.findUserSetNextFocus(view, 2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ View lambda$new$1(View view, View view2) {
        if (isValidId(view2.getNextClusterForwardId())) {
            return view2.findUserSetNextKeyboardNavigationCluster(view, 2);
        }
        return null;
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
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    private void setFocusBottomRight(ViewGroup viewGroup, Rect rect) {
        int height = viewGroup.getHeight() + viewGroup.getScrollY();
        int width = viewGroup.getWidth() + viewGroup.getScrollX();
        rect.set(width, height, width, height);
    }

    private void setFocusTopLeft(ViewGroup viewGroup, Rect rect) {
        int scrollY = viewGroup.getScrollY();
        int scrollX = viewGroup.getScrollX();
        rect.set(scrollX, scrollY, scrollX, scrollY);
    }

    public static void sort(View[] viewArr, int i2, int i3, ViewGroup viewGroup, boolean z2) {
        getInstance().mFocusSorter.sort(viewArr, i2, i3, viewGroup, z2);
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
            return rect2.right > rect.left && rect2.left < rect.right;
        }
        return rect2.bottom > rect.top && rect2.top < rect.bottom;
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
        int size = arrayList.size();
        View view2 = null;
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

    public View findNextKeyboardNavigationCluster(View view, View view2, int i2) {
        View viewFindNextKeyboardNavigationCluster;
        if (view2 != null) {
            viewFindNextKeyboardNavigationCluster = findNextUserSpecifiedKeyboardNavigationCluster(view, view2, i2);
            if (viewFindNextKeyboardNavigationCluster != null) {
                return viewFindNextKeyboardNavigationCluster;
            }
        } else {
            viewFindNextKeyboardNavigationCluster = null;
        }
        ArrayList<View> arrayList = this.mTempList;
        try {
            arrayList.clear();
            view.addKeyboardNavigationClusters(arrayList, i2);
            if (!arrayList.isEmpty()) {
                viewFindNextKeyboardNavigationCluster = findNextKeyboardNavigationCluster(view, view2, arrayList, i2);
            }
            return viewFindNextKeyboardNavigationCluster;
        } finally {
            arrayList.clear();
        }
    }

    public int getWeightedDistanceFor(int i2, int i3) {
        return (i3 * i3) + (i2 * 13 * i2);
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
        this.mUserSpecifiedFocusComparator = new UserSpecifiedFocusComparator(new android.os.a(4));
        this.mUserSpecifiedClusterComparator = new UserSpecifiedFocusComparator(new android.os.a(5));
        this.mFocusSorter = new FocusSorter();
        this.mTempList = new ArrayList<>();
    }

    private View findNextFocus(ViewGroup viewGroup, View view, Rect rect, int i2) {
        ViewGroup effectiveRoot = getEffectiveRoot(viewGroup, view);
        View viewFindNextUserSpecifiedFocus = view != null ? findNextUserSpecifiedFocus(effectiveRoot, view, i2) : null;
        if (viewFindNextUserSpecifiedFocus != null) {
            return viewFindNextUserSpecifiedFocus;
        }
        ArrayList<View> arrayList = this.mTempList;
        try {
            arrayList.clear();
            effectiveRoot.addFocusables(arrayList, i2);
            if (!arrayList.isEmpty()) {
                viewFindNextUserSpecifiedFocus = findNextFocus(effectiveRoot, view, rect, i2, arrayList);
            }
            return viewFindNextUserSpecifiedFocus;
        } finally {
            arrayList.clear();
        }
    }

    private View findNextKeyboardNavigationCluster(View view, View view2, List<View> list, int i2) {
        try {
            this.mUserSpecifiedClusterComparator.setFocusables(list, view);
            Collections.sort(list, this.mUserSpecifiedClusterComparator);
            this.mUserSpecifiedClusterComparator.recycle();
            int size = list.size();
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 17 && i2 != 33) {
                        if (i2 != 66 && i2 != 130) {
                            throw new IllegalArgumentException(android.accessibilityservice.c.d("Unknown direction: ", i2));
                        }
                    }
                }
                return getNextKeyboardNavigationCluster(view, view2, list, size);
            }
            return getPreviousKeyboardNavigationCluster(view, view2, list, size);
        } catch (Throwable th) {
            this.mUserSpecifiedClusterComparator.recycle();
            throw th;
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
            throw new IllegalArgumentException(android.accessibilityservice.c.d("Unknown direction: ", i2));
        }
        return findNextFocusInAbsoluteDirection(arrayList, viewGroup, view, rect2, i2);
    }
}
