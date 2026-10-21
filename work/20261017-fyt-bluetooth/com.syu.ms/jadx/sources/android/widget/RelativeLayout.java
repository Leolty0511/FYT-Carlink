package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Pools;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class RelativeLayout extends ViewGroup {
    public static final int ABOVE = 2;
    public static final int ALIGN_BASELINE = 4;
    public static final int ALIGN_BOTTOM = 8;
    public static final int ALIGN_END = 19;
    public static final int ALIGN_LEFT = 5;
    public static final int ALIGN_PARENT_BOTTOM = 12;
    public static final int ALIGN_PARENT_END = 21;
    public static final int ALIGN_PARENT_LEFT = 9;
    public static final int ALIGN_PARENT_RIGHT = 11;
    public static final int ALIGN_PARENT_START = 20;
    public static final int ALIGN_PARENT_TOP = 10;
    public static final int ALIGN_RIGHT = 7;
    public static final int ALIGN_START = 18;
    public static final int ALIGN_TOP = 6;
    public static final int BELOW = 3;
    public static final int CENTER_HORIZONTAL = 14;
    public static final int CENTER_IN_PARENT = 13;
    public static final int CENTER_VERTICAL = 15;
    private static final int DEFAULT_WIDTH = 65536;
    public static final int END_OF = 17;
    public static final int LEFT_OF = 0;
    public static final int RIGHT_OF = 1;
    public static final int START_OF = 16;
    public static final int TRUE = -1;
    private static final int VERB_COUNT = 22;
    private boolean mAllowBrokenMeasureSpecs;
    private View mBaselineView;
    private final Rect mContentBounds;
    private boolean mDirtyHierarchy;
    private final DependencyGraph mGraph;
    private int mGravity;
    private boolean mHasBaselineAlignedChild;
    private int mIgnoreGravity;
    private boolean mMeasureVerticalWithPaddingMargin;
    private final Rect mSelfBounds;
    private View[] mSortedHorizontalChildren;
    private View[] mSortedVerticalChildren;
    private SortedSet<View> mTopToBottomLeftToRightSet;
    private static final int[] RULES_VERTICAL = {2, 3, 4, 6, 8};
    private static final int[] RULES_HORIZONTAL = {0, 1, 5, 7, 16, 17, 18, 19};

    public static class DependencyGraph {
        private SparseArray<Node> mKeyNodes;
        private ArrayList<Node> mNodes;
        private ArrayDeque<Node> mRoots;

        public static class Node {
            private static final int POOL_LIMIT = 100;
            private static final Pools.SynchronizedPool<Node> sPool = new Pools.SynchronizedPool<>(100);
            public View view;
            public final ArrayMap<Node, DependencyGraph> dependents = new ArrayMap<>();
            public final SparseArray<Node> dependencies = new SparseArray<>();

            public static Node acquire(View view) {
                Node nodeAcquire = sPool.acquire();
                if (nodeAcquire == null) {
                    nodeAcquire = new Node();
                }
                nodeAcquire.view = view;
                return nodeAcquire;
            }

            public void release() {
                this.view = null;
                this.dependents.clear();
                this.dependencies.clear();
                sPool.release(this);
            }
        }

        private DependencyGraph() {
            this.mNodes = new ArrayList<>();
            this.mKeyNodes = new SparseArray<>();
            this.mRoots = new ArrayDeque<>();
        }

        private ArrayDeque<Node> findRoots(int[] iArr) {
            Node node;
            SparseArray<Node> sparseArray = this.mKeyNodes;
            ArrayList<Node> arrayList = this.mNodes;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Node node2 = arrayList.get(i2);
                node2.dependents.clear();
                node2.dependencies.clear();
            }
            for (int i3 = 0; i3 < size; i3++) {
                Node node3 = arrayList.get(i3);
                int[] iArr2 = ((LayoutParams) node3.view.getLayoutParams()).mRules;
                for (int i4 : iArr) {
                    int i5 = iArr2[i4];
                    if (i5 > 0 && (node = sparseArray.get(i5)) != null && node != node3) {
                        node.dependents.put(node3, this);
                        node3.dependencies.put(i5, node);
                    }
                }
            }
            ArrayDeque<Node> arrayDeque = this.mRoots;
            arrayDeque.clear();
            for (int i6 = 0; i6 < size; i6++) {
                Node node4 = arrayList.get(i6);
                if (node4.dependencies.size() == 0) {
                    arrayDeque.addLast(node4);
                }
            }
            return arrayDeque;
        }

        public void add(View view) {
            int id = view.getId();
            Node nodeAcquire = Node.acquire(view);
            if (id != -1) {
                this.mKeyNodes.put(id, nodeAcquire);
            }
            this.mNodes.add(nodeAcquire);
        }

        public void clear() {
            ArrayList<Node> arrayList = this.mNodes;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.get(i2).release();
            }
            arrayList.clear();
            this.mKeyNodes.clear();
            this.mRoots.clear();
        }

        public void getSortedViews(View[] viewArr, int... iArr) {
            ArrayDeque<Node> arrayDequeFindRoots = findRoots(iArr);
            int i2 = 0;
            while (true) {
                Node nodePollLast = arrayDequeFindRoots.pollLast();
                if (nodePollLast == null) {
                    break;
                }
                View view = nodePollLast.view;
                int id = view.getId();
                int i3 = i2 + 1;
                viewArr[i2] = view;
                ArrayMap<Node, DependencyGraph> arrayMap = nodePollLast.dependents;
                int size = arrayMap.size();
                for (int i4 = 0; i4 < size; i4++) {
                    Node nodeKeyAt = arrayMap.keyAt(i4);
                    SparseArray<Node> sparseArray = nodeKeyAt.dependencies;
                    sparseArray.remove(id);
                    if (sparseArray.size() == 0) {
                        arrayDequeFindRoots.add(nodeKeyAt);
                    }
                }
                i2 = i3;
            }
            if (i2 < viewArr.length) {
                throw new IllegalStateException("Circular dependencies cannot exist in RelativeLayout");
            }
        }
    }

    public class TopToBottomLeftToRightComparator implements Comparator<View> {
        private TopToBottomLeftToRightComparator() {
        }

        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            int top = view.getTop() - view2.getTop();
            if (top != 0) {
                return top;
            }
            int left = view.getLeft() - view2.getLeft();
            if (left != 0) {
                return left;
            }
            int height = view.getHeight() - view2.getHeight();
            if (height != 0) {
                return height;
            }
            int width = view.getWidth() - view2.getWidth();
            if (width != 0) {
                return width;
            }
            return 0;
        }
    }

    public RelativeLayout(Context context) {
        super(context);
        this.mBaselineView = null;
        this.mGravity = 8388659;
        this.mContentBounds = new Rect();
        this.mSelfBounds = new Rect();
        this.mTopToBottomLeftToRightSet = null;
        this.mGraph = new DependencyGraph();
        this.mAllowBrokenMeasureSpecs = false;
        this.mMeasureVerticalWithPaddingMargin = false;
        queryCompatibilityModes(context);
    }

    private void alignBaseline(View view, LayoutParams layoutParams) {
        LayoutParams relatedViewParams;
        int[] rules = layoutParams.getRules(getLayoutDirection());
        int relatedViewBaseline = getRelatedViewBaseline(rules, 4);
        if (relatedViewBaseline != -1 && (relatedViewParams = getRelatedViewParams(rules, 4)) != null) {
            int i2 = relatedViewParams.mTop + relatedViewBaseline;
            int baseline = view.getBaseline();
            if (baseline != -1) {
                i2 -= baseline;
            }
            int i3 = layoutParams.mBottom - layoutParams.mTop;
            layoutParams.mTop = i2;
            layoutParams.mBottom = layoutParams.mTop + i3;
        }
        View view2 = this.mBaselineView;
        if (view2 == null) {
            this.mBaselineView = view;
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
        if (layoutParams.mTop < layoutParams2.mTop || (layoutParams.mTop == layoutParams2.mTop && layoutParams.mLeft < layoutParams2.mLeft)) {
            this.mBaselineView = view;
        }
    }

    private void applyHorizontalSizeRules(LayoutParams layoutParams, int i2, int[] iArr) {
        layoutParams.mLeft = -1;
        layoutParams.mRight = -1;
        LayoutParams relatedViewParams = getRelatedViewParams(iArr, 0);
        if (relatedViewParams != null) {
            layoutParams.mRight = relatedViewParams.mLeft - (relatedViewParams.leftMargin + layoutParams.rightMargin);
        } else if (layoutParams.alignWithParent && iArr[0] != 0 && i2 >= 0) {
            layoutParams.mRight = (i2 - this.mPaddingRight) - layoutParams.rightMargin;
        }
        LayoutParams relatedViewParams2 = getRelatedViewParams(iArr, 1);
        if (relatedViewParams2 != null) {
            layoutParams.mLeft = relatedViewParams2.mRight + relatedViewParams2.rightMargin + layoutParams.leftMargin;
        } else if (layoutParams.alignWithParent && iArr[1] != 0) {
            layoutParams.mLeft = this.mPaddingLeft + layoutParams.leftMargin;
        }
        LayoutParams relatedViewParams3 = getRelatedViewParams(iArr, 5);
        if (relatedViewParams3 != null) {
            layoutParams.mLeft = relatedViewParams3.mLeft + layoutParams.leftMargin;
        } else if (layoutParams.alignWithParent && iArr[5] != 0) {
            layoutParams.mLeft = this.mPaddingLeft + layoutParams.leftMargin;
        }
        LayoutParams relatedViewParams4 = getRelatedViewParams(iArr, 7);
        if (relatedViewParams4 != null) {
            layoutParams.mRight = relatedViewParams4.mRight - layoutParams.rightMargin;
        } else if (layoutParams.alignWithParent && iArr[7] != 0 && i2 >= 0) {
            layoutParams.mRight = (i2 - this.mPaddingRight) - layoutParams.rightMargin;
        }
        if (iArr[9] != 0) {
            layoutParams.mLeft = this.mPaddingLeft + layoutParams.leftMargin;
        }
        if (iArr[11] == 0 || i2 < 0) {
            return;
        }
        layoutParams.mRight = (i2 - this.mPaddingRight) - layoutParams.rightMargin;
    }

    private void applyVerticalSizeRules(LayoutParams layoutParams, int i2) {
        int[] rules = layoutParams.getRules();
        layoutParams.mTop = -1;
        layoutParams.mBottom = -1;
        LayoutParams relatedViewParams = getRelatedViewParams(rules, 2);
        if (relatedViewParams != null) {
            layoutParams.mBottom = relatedViewParams.mTop - (relatedViewParams.topMargin + layoutParams.bottomMargin);
        } else if (layoutParams.alignWithParent && rules[2] != 0 && i2 >= 0) {
            layoutParams.mBottom = (i2 - this.mPaddingBottom) - layoutParams.bottomMargin;
        }
        LayoutParams relatedViewParams2 = getRelatedViewParams(rules, 3);
        if (relatedViewParams2 != null) {
            layoutParams.mTop = relatedViewParams2.mBottom + relatedViewParams2.bottomMargin + layoutParams.topMargin;
        } else if (layoutParams.alignWithParent && rules[3] != 0) {
            layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
        }
        LayoutParams relatedViewParams3 = getRelatedViewParams(rules, 6);
        if (relatedViewParams3 != null) {
            layoutParams.mTop = relatedViewParams3.mTop + layoutParams.topMargin;
        } else if (layoutParams.alignWithParent && rules[6] != 0) {
            layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
        }
        LayoutParams relatedViewParams4 = getRelatedViewParams(rules, 8);
        if (relatedViewParams4 != null) {
            layoutParams.mBottom = relatedViewParams4.mBottom - layoutParams.bottomMargin;
        } else if (layoutParams.alignWithParent && rules[8] != 0 && i2 >= 0) {
            layoutParams.mBottom = (i2 - this.mPaddingBottom) - layoutParams.bottomMargin;
        }
        if (rules[10] != 0) {
            layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
        }
        if (rules[12] != 0 && i2 >= 0) {
            layoutParams.mBottom = (i2 - this.mPaddingBottom) - layoutParams.bottomMargin;
        }
        if (rules[4] != 0) {
            this.mHasBaselineAlignedChild = true;
        }
    }

    private static void centerHorizontal(View view, LayoutParams layoutParams, int i2) {
        int measuredWidth = view.getMeasuredWidth();
        int i3 = (i2 - measuredWidth) / 2;
        layoutParams.mLeft = i3;
        layoutParams.mRight = i3 + measuredWidth;
    }

    private static void centerVertical(View view, LayoutParams layoutParams, int i2) {
        int measuredHeight = view.getMeasuredHeight();
        int i3 = (i2 - measuredHeight) / 2;
        layoutParams.mTop = i3;
        layoutParams.mBottom = i3 + measuredHeight;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0025 A[PHI: r0
  0x0025: PHI (r0v4 int) = (r0v0 int), (r0v2 int), (r0v0 int) binds: [B:25:0x0031, B:30:0x0039, B:19:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
    private int getChildMeasureSpec(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        int i10 = 1073741824;
        if (i9 < 0 && !this.mAllowBrokenMeasureSpecs) {
            return i4 >= 0 ? View.MeasureSpec.makeMeasureSpec(i4, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        int i11 = (i3 < 0 ? (i9 - i8) - i6 : i3) - (i2 < 0 ? i7 + i5 : i2);
        if (i2 >= 0 && i3 >= 0) {
            i4 = i11;
        } else if (i4 >= 0) {
            if (i11 >= 0) {
                i4 = Math.min(i11, i4);
            }
        } else if (i4 == -1) {
            i4 = i11;
        } else if (i4 != -2 || i11 < 0) {
            i4 = 0;
            i10 = 0;
        } else {
            i10 = Integer.MIN_VALUE;
            i4 = i11;
        }
        return View.MeasureSpec.makeMeasureSpec(i4, i10);
    }

    private View getRelatedView(int[] iArr, int i2) {
        DependencyGraph.Node node;
        int i3 = iArr[i2];
        if (i3 == 0 || (node = (DependencyGraph.Node) this.mGraph.mKeyNodes.get(i3)) == null) {
            return null;
        }
        View view = node.view;
        while (view.getVisibility() == 8) {
            DependencyGraph.Node node2 = (DependencyGraph.Node) this.mGraph.mKeyNodes.get(((LayoutParams) view.getLayoutParams()).getRules(view.getLayoutDirection())[i2]);
            if (node2 == null) {
                return null;
            }
            view = node2.view;
        }
        return view;
    }

    private int getRelatedViewBaseline(int[] iArr, int i2) {
        View relatedView = getRelatedView(iArr, i2);
        if (relatedView != null) {
            return relatedView.getBaseline();
        }
        return -1;
    }

    private LayoutParams getRelatedViewParams(int[] iArr, int i2) {
        View relatedView = getRelatedView(iArr, i2);
        if (relatedView == null || !(relatedView.getLayoutParams() instanceof LayoutParams)) {
            return null;
        }
        return (LayoutParams) relatedView.getLayoutParams();
    }

    private void initFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.RelativeLayout);
        this.mIgnoreGravity = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.mGravity = typedArrayObtainStyledAttributes.getInt(0, this.mGravity);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void measureChild(View view, LayoutParams layoutParams, int i2, int i3) {
        view.measure(getChildMeasureSpec(layoutParams.mLeft, layoutParams.mRight, layoutParams.width, layoutParams.leftMargin, layoutParams.rightMargin, this.mPaddingLeft, this.mPaddingRight, i2), getChildMeasureSpec(layoutParams.mTop, layoutParams.mBottom, layoutParams.height, layoutParams.topMargin, layoutParams.bottomMargin, this.mPaddingTop, this.mPaddingBottom, i3));
    }

    private void measureChildHorizontal(View view, LayoutParams layoutParams, int i2, int i3) {
        int iMakeMeasureSpec;
        int childMeasureSpec = getChildMeasureSpec(layoutParams.mLeft, layoutParams.mRight, layoutParams.width, layoutParams.leftMargin, layoutParams.rightMargin, this.mPaddingLeft, this.mPaddingRight, i2);
        int iMax = this.mMeasureVerticalWithPaddingMargin ? Math.max(0, (((i3 - this.mPaddingTop) - this.mPaddingBottom) - layoutParams.topMargin) - layoutParams.bottomMargin) : i3;
        if (i3 >= 0 || this.mAllowBrokenMeasureSpecs) {
            iMakeMeasureSpec = layoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec(iMax, 1073741824) : View.MeasureSpec.makeMeasureSpec(iMax, Integer.MIN_VALUE);
        } else {
            int i4 = layoutParams.height;
            iMakeMeasureSpec = i4 >= 0 ? View.MeasureSpec.makeMeasureSpec(i4, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, iMakeMeasureSpec);
    }

    private boolean positionChildHorizontal(View view, LayoutParams layoutParams, int i2, boolean z2) {
        int[] rules = layoutParams.getRules(getLayoutDirection());
        if (layoutParams.mLeft < 0 && layoutParams.mRight >= 0) {
            layoutParams.mLeft = layoutParams.mRight - view.getMeasuredWidth();
        } else if (layoutParams.mLeft >= 0 && layoutParams.mRight < 0) {
            layoutParams.mRight = layoutParams.mLeft + view.getMeasuredWidth();
        } else if (layoutParams.mLeft < 0 && layoutParams.mRight < 0) {
            if (rules[13] != 0 || rules[14] != 0) {
                if (z2) {
                    layoutParams.mLeft = this.mPaddingLeft + layoutParams.leftMargin;
                    layoutParams.mRight = layoutParams.mLeft + view.getMeasuredWidth();
                } else {
                    centerHorizontal(view, layoutParams, i2);
                }
                return true;
            }
            if (isLayoutRtl()) {
                layoutParams.mRight = (i2 - this.mPaddingRight) - layoutParams.rightMargin;
                layoutParams.mLeft = layoutParams.mRight - view.getMeasuredWidth();
            } else {
                layoutParams.mLeft = this.mPaddingLeft + layoutParams.leftMargin;
                layoutParams.mRight = layoutParams.mLeft + view.getMeasuredWidth();
            }
        }
        return rules[21] != 0;
    }

    private boolean positionChildVertical(View view, LayoutParams layoutParams, int i2, boolean z2) {
        int[] rules = layoutParams.getRules();
        if (layoutParams.mTop < 0 && layoutParams.mBottom >= 0) {
            layoutParams.mTop = layoutParams.mBottom - view.getMeasuredHeight();
        } else if (layoutParams.mTop >= 0 && layoutParams.mBottom < 0) {
            layoutParams.mBottom = layoutParams.mTop + view.getMeasuredHeight();
        } else if (layoutParams.mTop < 0 && layoutParams.mBottom < 0) {
            if (rules[13] != 0 || rules[15] != 0) {
                if (z2) {
                    layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
                    layoutParams.mBottom = layoutParams.mTop + view.getMeasuredHeight();
                } else {
                    centerVertical(view, layoutParams, i2);
                }
                return true;
            }
            layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
            layoutParams.mBottom = layoutParams.mTop + view.getMeasuredHeight();
        }
        return rules[12] != 0;
    }

    private void queryCompatibilityModes(Context context) {
        int i2 = context.getApplicationInfo().targetSdkVersion;
        this.mAllowBrokenMeasureSpecs = i2 <= 17;
        this.mMeasureVerticalWithPaddingMargin = i2 >= 18;
    }

    private void sortChildren() {
        int childCount = getChildCount();
        View[] viewArr = this.mSortedVerticalChildren;
        if (viewArr == null || viewArr.length != childCount) {
            this.mSortedVerticalChildren = new View[childCount];
        }
        View[] viewArr2 = this.mSortedHorizontalChildren;
        if (viewArr2 == null || viewArr2.length != childCount) {
            this.mSortedHorizontalChildren = new View[childCount];
        }
        DependencyGraph dependencyGraph = this.mGraph;
        dependencyGraph.clear();
        for (int i2 = 0; i2 < childCount; i2++) {
            dependencyGraph.add(getChildAt(i2));
        }
        dependencyGraph.getSortedViews(this.mSortedVerticalChildren, RULES_VERTICAL);
        dependencyGraph.getSortedViews(this.mSortedHorizontalChildren, RULES_HORIZONTAL);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (this.mTopToBottomLeftToRightSet == null) {
            this.mTopToBottomLeftToRightSet = new TreeSet(new TopToBottomLeftToRightComparator());
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            this.mTopToBottomLeftToRightSet.add(getChildAt(i2));
        }
        for (View view : this.mTopToBottomLeftToRightSet) {
            if (view.getVisibility() == 0 && view.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                this.mTopToBottomLeftToRightSet.clear();
                return true;
            }
        }
        this.mTopToBottomLeftToRightSet.clear();
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.View
    public int getBaseline() {
        View view = this.mBaselineView;
        return view != null ? view.getBaseline() : super.getBaseline();
    }

    public int getGravity() {
        return this.mGravity;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(RelativeLayout.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(RelativeLayout.class.getName());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                childAt.layout(layoutParams.mLeft, layoutParams.mTop, layoutParams.mRight, layoutParams.mBottom);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        boolean z2;
        int i7;
        int iResolveSize;
        int i8;
        int i9;
        int i10;
        int i11;
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            sortChildren();
        }
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode == 0) {
            size = -1;
        }
        if (mode2 == 0) {
            size2 = -1;
        }
        int iResolveSize2 = mode == 1073741824 ? size : 0;
        int iMax = mode2 == 1073741824 ? size2 : 0;
        this.mHasBaselineAlignedChild = false;
        View viewFindViewById = null;
        int i12 = this.mGravity;
        int i13 = 8388615 & i12;
        boolean z3 = (i13 == 8388611 || i13 == 0) ? false : true;
        int i14 = i12 & 112;
        boolean z4 = (i14 == 48 || i14 == 0) ? false : true;
        if ((z3 || z4) && (i4 = this.mIgnoreGravity) != -1) {
            viewFindViewById = findViewById(i4);
        }
        boolean z5 = mode != 1073741824;
        boolean z6 = mode2 != 1073741824;
        int layoutDirection = getLayoutDirection();
        if (isLayoutRtl() && size == -1) {
            size = 65536;
        }
        View[] viewArr = this.mSortedHorizontalChildren;
        int length = viewArr.length;
        int i15 = 0;
        boolean z7 = false;
        while (i15 < length) {
            View view = viewArr[i15];
            View[] viewArr2 = viewArr;
            if (view.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                applyHorizontalSizeRules(layoutParams, size, layoutParams.getRules(layoutDirection));
                measureChildHorizontal(view, layoutParams, size, size2);
                if (positionChildHorizontal(view, layoutParams, size, z5)) {
                    z7 = true;
                }
            }
            i15++;
            viewArr = viewArr2;
        }
        View[] viewArr3 = this.mSortedVerticalChildren;
        int length2 = viewArr3.length;
        int i16 = getContext().getApplicationInfo().targetSdkVersion;
        int iMax2 = Integer.MIN_VALUE;
        int iMax3 = Integer.MIN_VALUE;
        int iMin = Integer.MAX_VALUE;
        int iMin2 = Integer.MAX_VALUE;
        int i17 = 0;
        boolean z8 = false;
        while (i17 < length2) {
            int i18 = layoutDirection;
            View view2 = viewArr3[i17];
            View[] viewArr4 = viewArr3;
            int i19 = length2;
            if (view2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                applyVerticalSizeRules(layoutParams2, size2);
                measureChild(view2, layoutParams2, size, size2);
                if (positionChildVertical(view2, layoutParams2, size2, z6)) {
                    z8 = true;
                }
                if (!z5) {
                    i11 = size2;
                } else if (!isLayoutRtl()) {
                    i11 = size2;
                    iResolveSize2 = i16 < 19 ? Math.max(iResolveSize2, layoutParams2.mRight) : Math.max(iResolveSize2, layoutParams2.mRight + layoutParams2.rightMargin);
                } else if (i16 < 19) {
                    iResolveSize2 = Math.max(iResolveSize2, size - layoutParams2.mLeft);
                    i11 = size2;
                } else {
                    i11 = size2;
                    iResolveSize2 = Math.max(iResolveSize2, (size - layoutParams2.mLeft) - layoutParams2.leftMargin);
                }
                if (z6) {
                    iMax = i16 < 19 ? Math.max(iMax, layoutParams2.mBottom) : Math.max(iMax, layoutParams2.mBottom + layoutParams2.bottomMargin);
                }
                if (view2 != viewFindViewById || z4) {
                    iMin2 = Math.min(iMin2, layoutParams2.mLeft - layoutParams2.leftMargin);
                    iMin = Math.min(iMin, layoutParams2.mTop - layoutParams2.topMargin);
                }
                if (view2 != viewFindViewById || z3) {
                    iMax2 = Math.max(iMax2, layoutParams2.mRight + layoutParams2.rightMargin);
                    iMax3 = Math.max(iMax3, layoutParams2.mBottom + layoutParams2.bottomMargin);
                }
            } else {
                i11 = size2;
            }
            i17++;
            viewArr3 = viewArr4;
            layoutDirection = i18;
            length2 = i19;
            size2 = i11;
        }
        int i20 = layoutDirection;
        int i21 = length2;
        int iMax4 = iMax3;
        int iMin3 = iMin;
        int iMin4 = iMin2;
        if (this.mHasBaselineAlignedChild) {
            i7 = i21;
            int i22 = 0;
            while (i22 < i7) {
                View childAt = getChildAt(i22);
                int i23 = size;
                int i24 = iMax;
                if (childAt.getVisibility() != 8) {
                    LayoutParams layoutParams3 = (LayoutParams) childAt.getLayoutParams();
                    alignBaseline(childAt, layoutParams3);
                    if (childAt != viewFindViewById || z4) {
                        iMin4 = Math.min(iMin4, layoutParams3.mLeft - layoutParams3.leftMargin);
                        iMin3 = Math.min(iMin3, layoutParams3.mTop - layoutParams3.topMargin);
                    }
                    if (childAt != viewFindViewById || z3) {
                        int iMax5 = Math.max(iMax2, layoutParams3.mRight + layoutParams3.rightMargin);
                        iMax4 = Math.max(iMax4, layoutParams3.mBottom + layoutParams3.bottomMargin);
                        iMax2 = iMax5;
                    }
                } else {
                    z4 = z4;
                }
                i22++;
                iMax = i24;
                size = i23;
                z4 = z4;
            }
            i5 = size;
            i6 = iMax;
            z2 = z4;
        } else {
            i5 = size;
            i6 = iMax;
            z2 = z4;
            i7 = i21;
        }
        int i25 = iMin4;
        if (z5) {
            int iMax6 = iResolveSize2 + this.mPaddingRight;
            ViewGroup.LayoutParams layoutParams4 = this.mLayoutParams;
            if (layoutParams4 != null && (i10 = layoutParams4.width) >= 0) {
                iMax6 = Math.max(iMax6, i10);
            }
            iResolveSize2 = View.resolveSize(Math.max(iMax6, getSuggestedMinimumWidth()), i2);
            if (z7) {
                int i26 = 0;
                while (i26 < i7) {
                    View childAt2 = getChildAt(i26);
                    if (childAt2.getVisibility() != 8) {
                        LayoutParams layoutParams5 = (LayoutParams) childAt2.getLayoutParams();
                        i9 = i20;
                        int[] rules = layoutParams5.getRules(i9);
                        if (rules[13] != 0 || rules[14] != 0) {
                            centerHorizontal(childAt2, layoutParams5, iResolveSize2);
                        } else if (rules[11] != 0) {
                            int measuredWidth = childAt2.getMeasuredWidth();
                            layoutParams5.mLeft = (iResolveSize2 - this.mPaddingRight) - measuredWidth;
                            layoutParams5.mRight = layoutParams5.mLeft + measuredWidth;
                        }
                    } else {
                        i9 = i20;
                    }
                    i26++;
                    i20 = i9;
                }
            }
        }
        int i27 = i20;
        if (z6) {
            int iMax7 = i6 + this.mPaddingBottom;
            ViewGroup.LayoutParams layoutParams6 = this.mLayoutParams;
            if (layoutParams6 != null && (i8 = layoutParams6.height) >= 0) {
                iMax7 = Math.max(iMax7, i8);
            }
            iResolveSize = View.resolveSize(Math.max(iMax7, getSuggestedMinimumHeight()), i3);
            if (z8) {
                for (int i28 = 0; i28 < i7; i28++) {
                    View childAt3 = getChildAt(i28);
                    if (childAt3.getVisibility() != 8) {
                        LayoutParams layoutParams7 = (LayoutParams) childAt3.getLayoutParams();
                        int[] rules2 = layoutParams7.getRules(i27);
                        if (rules2[13] != 0 || rules2[15] != 0) {
                            centerVertical(childAt3, layoutParams7, iResolveSize);
                        } else if (rules2[12] != 0) {
                            int measuredHeight = childAt3.getMeasuredHeight();
                            layoutParams7.mTop = (iResolveSize - this.mPaddingBottom) - measuredHeight;
                            layoutParams7.mBottom = layoutParams7.mTop + measuredHeight;
                        }
                    }
                }
            }
        } else {
            iResolveSize = i6;
        }
        if (z3 || z2) {
            Rect rect = this.mSelfBounds;
            rect.set(this.mPaddingLeft, this.mPaddingTop, iResolveSize2 - this.mPaddingRight, iResolveSize - this.mPaddingBottom);
            Rect rect2 = this.mContentBounds;
            Gravity.apply(this.mGravity, iMax2 - i25, iMax4 - iMin3, rect, rect2, i27);
            int i29 = rect2.left - i25;
            int i30 = rect2.top - iMin3;
            if (i29 != 0 || i30 != 0) {
                for (int i31 = 0; i31 < i7; i31++) {
                    View childAt4 = getChildAt(i31);
                    if (childAt4.getVisibility() != 8 && childAt4 != viewFindViewById) {
                        LayoutParams layoutParams8 = (LayoutParams) childAt4.getLayoutParams();
                        if (z3) {
                            LayoutParams.access$112(layoutParams8, i29);
                            LayoutParams.access$212(layoutParams8, i29);
                        }
                        if (z2) {
                            LayoutParams.access$412(layoutParams8, i30);
                            LayoutParams.access$312(layoutParams8, i30);
                        }
                    }
                }
            }
        }
        if (isLayoutRtl()) {
            int i32 = i5 - iResolveSize2;
            for (int i33 = 0; i33 < i7; i33++) {
                View childAt5 = getChildAt(i33);
                if (childAt5.getVisibility() != 8) {
                    LayoutParams layoutParams9 = (LayoutParams) childAt5.getLayoutParams();
                    LayoutParams.access$120(layoutParams9, i32);
                    LayoutParams.access$220(layoutParams9, i32);
                }
            }
        }
        setMeasuredDimension(iResolveSize2, iResolveSize);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        this.mDirtyHierarchy = true;
    }

    @RemotableViewMethod
    public void setGravity(int i2) {
        if (this.mGravity != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= Gravity.START;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.mGravity = i2;
            requestLayout();
        }
    }

    @RemotableViewMethod
    public void setHorizontalGravity(int i2) {
        int i3 = i2 & 8388615;
        int i4 = this.mGravity;
        if ((8388615 & i4) != i3) {
            this.mGravity = i3 | ((-8388616) & i4);
            requestLayout();
        }
    }

    @RemotableViewMethod
    public void setIgnoreGravity(int i2) {
        this.mIgnoreGravity = i2;
    }

    @RemotableViewMethod
    public void setVerticalGravity(int i2) {
        int i3 = i2 & 112;
        int i4 = this.mGravity;
        if ((i4 & 112) != i3) {
            this.mGravity = i3 | (i4 & (-113));
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty(category = "layout")
        public boolean alignWithParent;
        private int mBottom;
        private int mEnd;
        private int[] mInitialRules;
        private boolean mIsRtlCompatibilityMode;
        private int mLeft;
        private int mRight;

        @ViewDebug.ExportedProperty(category = "layout", indexMapping = {@ViewDebug.IntToString(from = 2, to = "above"), @ViewDebug.IntToString(from = 4, to = "alignBaseline"), @ViewDebug.IntToString(from = 8, to = "alignBottom"), @ViewDebug.IntToString(from = 5, to = "alignLeft"), @ViewDebug.IntToString(from = 12, to = "alignParentBottom"), @ViewDebug.IntToString(from = 9, to = "alignParentLeft"), @ViewDebug.IntToString(from = 11, to = "alignParentRight"), @ViewDebug.IntToString(from = 10, to = "alignParentTop"), @ViewDebug.IntToString(from = 7, to = "alignRight"), @ViewDebug.IntToString(from = 6, to = "alignTop"), @ViewDebug.IntToString(from = 3, to = "below"), @ViewDebug.IntToString(from = 14, to = "centerHorizontal"), @ViewDebug.IntToString(from = 13, to = "center"), @ViewDebug.IntToString(from = 15, to = "centerVertical"), @ViewDebug.IntToString(from = 0, to = "leftOf"), @ViewDebug.IntToString(from = 1, to = "rightOf"), @ViewDebug.IntToString(from = 18, to = "alignStart"), @ViewDebug.IntToString(from = 19, to = "alignEnd"), @ViewDebug.IntToString(from = 20, to = "alignParentStart"), @ViewDebug.IntToString(from = 21, to = "alignParentEnd"), @ViewDebug.IntToString(from = 16, to = "startOf"), @ViewDebug.IntToString(from = 17, to = "endOf")}, mapping = {@ViewDebug.IntToString(from = -1, to = "true"), @ViewDebug.IntToString(from = 0, to = "false/NO_ID")}, resolveId = true)
        private int[] mRules;
        private boolean mRulesChanged;
        private int mStart;
        private int mTop;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mStart = Integer.MIN_VALUE;
            this.mEnd = Integer.MIN_VALUE;
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.RelativeLayout_Layout);
            this.mIsRtlCompatibilityMode = context.getApplicationInfo().targetSdkVersion < 17 || !context.getApplicationInfo().hasRtlSupport();
            int[] iArr = this.mRules;
            int[] iArr2 = this.mInitialRules;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                switch (index) {
                    case 0:
                        iArr[0] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 1:
                        iArr[1] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 2:
                        iArr[2] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 3:
                        iArr[3] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 4:
                        iArr[4] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 5:
                        iArr[5] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 6:
                        iArr[6] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 7:
                        iArr[7] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 8:
                        iArr[8] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 9:
                        iArr[9] = typedArrayObtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 10:
                        iArr[10] = typedArrayObtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 11:
                        iArr[11] = typedArrayObtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 12:
                        iArr[12] = typedArrayObtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 13:
                        iArr[13] = typedArrayObtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 14:
                        iArr[14] = typedArrayObtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 15:
                        iArr[15] = typedArrayObtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 16:
                        this.alignWithParent = typedArrayObtainStyledAttributes.getBoolean(index, false);
                        break;
                    case 17:
                        iArr[16] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 18:
                        iArr[17] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 19:
                        iArr[18] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 20:
                        iArr[19] = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 21:
                        iArr[20] = typedArrayObtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 22:
                        iArr[21] = typedArrayObtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                }
            }
            this.mRulesChanged = true;
            System.arraycopy(iArr, 0, iArr2, 0, 22);
            typedArrayObtainStyledAttributes.recycle();
        }

        public static /* synthetic */ int access$112(LayoutParams layoutParams, int i2) {
            int i3 = layoutParams.mLeft + i2;
            layoutParams.mLeft = i3;
            return i3;
        }

        public static /* synthetic */ int access$120(LayoutParams layoutParams, int i2) {
            int i3 = layoutParams.mLeft - i2;
            layoutParams.mLeft = i3;
            return i3;
        }

        public static /* synthetic */ int access$212(LayoutParams layoutParams, int i2) {
            int i3 = layoutParams.mRight + i2;
            layoutParams.mRight = i3;
            return i3;
        }

        public static /* synthetic */ int access$220(LayoutParams layoutParams, int i2) {
            int i3 = layoutParams.mRight - i2;
            layoutParams.mRight = i3;
            return i3;
        }

        public static /* synthetic */ int access$312(LayoutParams layoutParams, int i2) {
            int i3 = layoutParams.mBottom + i2;
            layoutParams.mBottom = i3;
            return i3;
        }

        public static /* synthetic */ int access$412(LayoutParams layoutParams, int i2) {
            int i3 = layoutParams.mTop + i2;
            layoutParams.mTop = i3;
            return i3;
        }

        private boolean hasRelativeRules() {
            int[] iArr = this.mInitialRules;
            return (iArr[16] == 0 && iArr[17] == 0 && iArr[18] == 0 && iArr[19] == 0 && iArr[20] == 0 && iArr[21] == 0) ? false : true;
        }

        private void resolveRules(int i2) {
            char c2 = i2 == 1 ? (char) 1 : (char) 0;
            System.arraycopy(this.mInitialRules, 0, this.mRules, 0, 22);
            if (this.mIsRtlCompatibilityMode) {
                int[] iArr = this.mRules;
                if (iArr[18] != 0) {
                    if (iArr[5] == 0) {
                        iArr[5] = iArr[18];
                    }
                    iArr[18] = 0;
                }
                if (iArr[19] != 0) {
                    if (iArr[7] == 0) {
                        iArr[7] = iArr[19];
                    }
                    iArr[19] = 0;
                }
                if (iArr[16] != 0) {
                    if (iArr[0] == 0) {
                        iArr[0] = iArr[16];
                    }
                    iArr[16] = 0;
                }
                if (iArr[17] != 0) {
                    if (iArr[1] == 0) {
                        iArr[1] = iArr[17];
                    }
                    iArr[17] = 0;
                }
                if (iArr[20] != 0) {
                    if (iArr[9] == 0) {
                        iArr[9] = iArr[20];
                    }
                    iArr[20] = 0;
                }
                if (iArr[11] == 0) {
                    if (iArr[11] == 0) {
                        iArr[11] = iArr[21];
                    }
                    iArr[21] = 0;
                }
            } else {
                int[] iArr2 = this.mRules;
                if ((iArr2[18] != 0 || iArr2[19] != 0) && (iArr2[5] != 0 || iArr2[7] != 0)) {
                    iArr2[5] = 0;
                    iArr2[7] = 0;
                }
                if (iArr2[18] != 0) {
                    iArr2[c2 != 0 ? (char) 7 : (char) 5] = iArr2[18];
                    iArr2[18] = 0;
                }
                if (iArr2[19] != 0) {
                    iArr2[c2 != 0 ? (char) 5 : (char) 7] = iArr2[19];
                    iArr2[19] = 0;
                }
                if ((iArr2[16] != 0 || iArr2[17] != 0) && (iArr2[0] != 0 || iArr2[1] != 0)) {
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                }
                if (iArr2[16] != 0) {
                    iArr2[c2] = iArr2[16];
                    iArr2[16] = 0;
                }
                if (iArr2[17] != 0) {
                    iArr2[c2 ^ 1] = iArr2[17];
                    iArr2[17] = 0;
                }
                if ((iArr2[20] != 0 || iArr2[21] != 0) && (iArr2[9] != 0 || iArr2[11] != 0)) {
                    iArr2[9] = 0;
                    iArr2[11] = 0;
                }
                if (iArr2[20] != 0) {
                    iArr2[c2 != 0 ? (char) 11 : '\t'] = iArr2[20];
                    iArr2[20] = 0;
                }
                if (iArr2[21] != 0) {
                    iArr2[c2 == 0 ? (char) 11 : '\t'] = iArr2[21];
                    iArr2[21] = 0;
                }
            }
            this.mRulesChanged = false;
        }

        public void addRule(int i2) {
            this.mRules[i2] = -1;
            this.mInitialRules[i2] = -1;
            this.mRulesChanged = true;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public String debug(String str) {
            return str + "ViewGroup.LayoutParams={ width=" + ViewGroup.LayoutParams.sizeToString(this.width) + ", height=" + ViewGroup.LayoutParams.sizeToString(this.height) + " }";
        }

        public int[] getRules(int i2) {
            if (hasRelativeRules() && (this.mRulesChanged || i2 != getLayoutDirection())) {
                resolveRules(i2);
                if (i2 != getLayoutDirection()) {
                    setLayoutDirection(i2);
                }
            }
            return this.mRules;
        }

        public void removeRule(int i2) {
            this.mRules[i2] = 0;
            this.mInitialRules[i2] = 0;
            this.mRulesChanged = true;
        }

        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public void resolveLayoutDirection(int i2) {
            if (isLayoutRtl()) {
                int i3 = this.mStart;
                if (i3 != Integer.MIN_VALUE) {
                    this.mRight = i3;
                }
                int i4 = this.mEnd;
                if (i4 != Integer.MIN_VALUE) {
                    this.mLeft = i4;
                }
            } else {
                int i5 = this.mStart;
                if (i5 != Integer.MIN_VALUE) {
                    this.mLeft = i5;
                }
                int i6 = this.mEnd;
                if (i6 != Integer.MIN_VALUE) {
                    this.mRight = i6;
                }
            }
            if (hasRelativeRules() && i2 != getLayoutDirection()) {
                resolveRules(i2);
            }
            super.resolveLayoutDirection(i2);
        }

        public void addRule(int i2, int i3) {
            this.mRules[i2] = i3;
            this.mInitialRules[i2] = i3;
            this.mRulesChanged = true;
        }

        public int[] getRules() {
            return this.mRules;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mStart = Integer.MIN_VALUE;
            this.mEnd = Integer.MIN_VALUE;
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mStart = Integer.MIN_VALUE;
            this.mEnd = Integer.MIN_VALUE;
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mStart = Integer.MIN_VALUE;
            this.mEnd = Integer.MIN_VALUE;
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            int[] iArr = new int[22];
            this.mRules = iArr;
            this.mInitialRules = new int[22];
            this.mStart = Integer.MIN_VALUE;
            this.mEnd = Integer.MIN_VALUE;
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
            this.mIsRtlCompatibilityMode = layoutParams.mIsRtlCompatibilityMode;
            this.mRulesChanged = layoutParams.mRulesChanged;
            this.alignWithParent = layoutParams.alignWithParent;
            System.arraycopy(layoutParams.mRules, 0, iArr, 0, 22);
            System.arraycopy(layoutParams.mInitialRules, 0, this.mInitialRules, 0, 22);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public RelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBaselineView = null;
        this.mGravity = 8388659;
        this.mContentBounds = new Rect();
        this.mSelfBounds = new Rect();
        this.mTopToBottomLeftToRightSet = null;
        this.mGraph = new DependencyGraph();
        this.mAllowBrokenMeasureSpecs = false;
        this.mMeasureVerticalWithPaddingMargin = false;
        initFromAttributes(context, attributeSet);
        queryCompatibilityModes(context);
    }

    public RelativeLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mBaselineView = null;
        this.mGravity = 8388659;
        this.mContentBounds = new Rect();
        this.mSelfBounds = new Rect();
        this.mTopToBottomLeftToRightSet = null;
        this.mGraph = new DependencyGraph();
        this.mAllowBrokenMeasureSpecs = false;
        this.mMeasureVerticalWithPaddingMargin = false;
        initFromAttributes(context, attributeSet);
        queryCompatibilityModes(context);
    }
}
