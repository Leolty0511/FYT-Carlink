package android.widget;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.TtmlUtils;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Pools;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewHierarchyEncoder;
import android.view.accessibility.AccessibilityEvent;
import com.android.internal.R;
import com.google.android.material.badge.BadgeDrawable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
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
    private static final int VALUE_NOT_SET = Integer.MIN_VALUE;
    private static final int VERB_COUNT = 22;
    private boolean mAllowBrokenMeasureSpecs;
    private View mBaselineView;
    private final Rect mContentBounds;
    private boolean mDirtyHierarchy;
    private final DependencyGraph mGraph;
    private int mGravity;
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
            View view;
            final ArrayMap<Node, DependencyGraph> dependents = new ArrayMap<>();
            final SparseArray<Node> dependencies = new SparseArray<>();

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

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
        public boolean alignWithParent;
        private int mBottom;
        private int[] mInitialRules;
        private boolean mIsRtlCompatibilityMode;
        private int mLeft;
        private boolean mNeedsLayoutResolution;
        private int mRight;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT, indexMapping = {@ViewDebug.IntToString(from = 2, to = "above"), @ViewDebug.IntToString(from = 4, to = "alignBaseline"), @ViewDebug.IntToString(from = 8, to = "alignBottom"), @ViewDebug.IntToString(from = 5, to = "alignLeft"), @ViewDebug.IntToString(from = 12, to = "alignParentBottom"), @ViewDebug.IntToString(from = 9, to = "alignParentLeft"), @ViewDebug.IntToString(from = 11, to = "alignParentRight"), @ViewDebug.IntToString(from = 10, to = "alignParentTop"), @ViewDebug.IntToString(from = 7, to = "alignRight"), @ViewDebug.IntToString(from = 6, to = "alignTop"), @ViewDebug.IntToString(from = 3, to = "below"), @ViewDebug.IntToString(from = 14, to = "centerHorizontal"), @ViewDebug.IntToString(from = 13, to = "center"), @ViewDebug.IntToString(from = 15, to = "centerVertical"), @ViewDebug.IntToString(from = 0, to = "leftOf"), @ViewDebug.IntToString(from = 1, to = "rightOf"), @ViewDebug.IntToString(from = 18, to = "alignStart"), @ViewDebug.IntToString(from = 19, to = "alignEnd"), @ViewDebug.IntToString(from = 20, to = "alignParentStart"), @ViewDebug.IntToString(from = 21, to = "alignParentEnd"), @ViewDebug.IntToString(from = 16, to = "startOf"), @ViewDebug.IntToString(from = 17, to = "endOf")}, mapping = {@ViewDebug.IntToString(from = -1, to = "true"), @ViewDebug.IntToString(from = 0, to = "false/NO_ID")}, resolveId = true)
        private int[] mRules;
        private boolean mRulesChanged;
        private int mTop;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RelativeLayout_Layout);
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

        private boolean hasRelativeRules() {
            int[] iArr = this.mInitialRules;
            return (iArr[16] == 0 && iArr[17] == 0 && iArr[18] == 0 && iArr[19] == 0 && iArr[20] == 0 && iArr[21] == 0) ? false : true;
        }

        private boolean isRelativeRule(int i2) {
            return i2 == 16 || i2 == 17 || i2 == 18 || i2 == 19 || i2 == 20 || i2 == 21;
        }

        private void resolveRules(int i2) {
            char c = i2 == 1 ? (char) 1 : (char) 0;
            System.arraycopy(this.mInitialRules, 0, this.mRules, 0, 22);
            if (this.mIsRtlCompatibilityMode) {
                int[] iArr = this.mRules;
                int i3 = iArr[18];
                if (i3 != 0) {
                    if (iArr[5] == 0) {
                        iArr[5] = i3;
                    }
                    iArr[18] = 0;
                }
                int i4 = iArr[19];
                if (i4 != 0) {
                    if (iArr[7] == 0) {
                        iArr[7] = i4;
                    }
                    iArr[19] = 0;
                }
                int i5 = iArr[16];
                if (i5 != 0) {
                    if (iArr[0] == 0) {
                        iArr[0] = i5;
                    }
                    iArr[16] = 0;
                }
                int i6 = iArr[17];
                if (i6 != 0) {
                    if (iArr[1] == 0) {
                        iArr[1] = i6;
                    }
                    iArr[17] = 0;
                }
                int i7 = iArr[20];
                if (i7 != 0) {
                    if (iArr[9] == 0) {
                        iArr[9] = i7;
                    }
                    iArr[20] = 0;
                }
                int i8 = iArr[21];
                if (i8 != 0) {
                    if (iArr[11] == 0) {
                        iArr[11] = i8;
                    }
                    iArr[21] = 0;
                }
            } else {
                int[] iArr2 = this.mRules;
                int i9 = iArr2[18];
                if ((i9 != 0 || iArr2[19] != 0) && (iArr2[5] != 0 || iArr2[7] != 0)) {
                    iArr2[5] = 0;
                    iArr2[7] = 0;
                }
                if (i9 != 0) {
                    iArr2[c != 0 ? (char) 7 : (char) 5] = i9;
                    iArr2[18] = 0;
                }
                int i10 = iArr2[19];
                if (i10 != 0) {
                    iArr2[c != 0 ? (char) 5 : (char) 7] = i10;
                    iArr2[19] = 0;
                }
                int i11 = iArr2[16];
                if ((i11 != 0 || iArr2[17] != 0) && (iArr2[0] != 0 || iArr2[1] != 0)) {
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                }
                if (i11 != 0) {
                    iArr2[c] = i11;
                    iArr2[16] = 0;
                }
                int i12 = iArr2[17];
                if (i12 != 0) {
                    iArr2[c ^ 1] = i12;
                    iArr2[17] = 0;
                }
                int i13 = iArr2[20];
                if ((i13 != 0 || iArr2[21] != 0) && (iArr2[9] != 0 || iArr2[11] != 0)) {
                    iArr2[9] = 0;
                    iArr2[11] = 0;
                }
                if (i13 != 0) {
                    iArr2[c != 0 ? (char) 11 : '\t'] = i13;
                    iArr2[20] = 0;
                }
                int i14 = iArr2[21];
                if (i14 != 0) {
                    iArr2[c != 0 ? '\t' : (char) 11] = i14;
                    iArr2[21] = 0;
                }
            }
            this.mRulesChanged = false;
            this.mNeedsLayoutResolution = false;
        }

        private boolean shouldResolveLayoutDirection(int i2) {
            return (this.mNeedsLayoutResolution || hasRelativeRules()) && (this.mRulesChanged || i2 != getLayoutDirection());
        }

        public void addRule(int i2) {
            addRule(i2, -1);
        }

        @Override // android.view.ViewGroup.LayoutParams
        public String debug(String str) {
            StringBuilder sbU = android.accessibilityservice.c.u(str, "ViewGroup.LayoutParams={ width=");
            sbU.append(ViewGroup.LayoutParams.sizeToString(this.width));
            sbU.append(", height=");
            sbU.append(ViewGroup.LayoutParams.sizeToString(this.height));
            sbU.append(" }");
            return sbU.toString();
        }

        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            super.encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.addProperty("layout:alignWithParent", this.alignWithParent);
        }

        public int getRule(int i2) {
            return this.mRules[i2];
        }

        public int[] getRules(int i2) {
            resolveLayoutDirection(i2);
            return this.mRules;
        }

        public void removeRule(int i2) {
            addRule(i2, 0);
        }

        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public void resolveLayoutDirection(int i2) {
            if (shouldResolveLayoutDirection(i2)) {
                resolveRules(i2);
            }
            super.resolveLayoutDirection(i2);
        }

        public void addRule(int i2, int i3) {
            if (!this.mNeedsLayoutResolution && isRelativeRule(i2) && this.mInitialRules[i2] != 0 && i3 == 0) {
                this.mNeedsLayoutResolution = true;
            }
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
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            int[] iArr = new int[22];
            this.mRules = iArr;
            this.mInitialRules = new int[22];
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
            this.mIsRtlCompatibilityMode = layoutParams.mIsRtlCompatibilityMode;
            this.mRulesChanged = layoutParams.mRulesChanged;
            this.alignWithParent = layoutParams.alignWithParent;
            System.arraycopy(layoutParams.mRules, 0, iArr, 0, 22);
            System.arraycopy(layoutParams.mInitialRules, 0, this.mInitialRules, 0, 22);
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
        this(context, null);
    }

    private void applyHorizontalSizeRules(LayoutParams layoutParams, int i2, int[] iArr) {
        layoutParams.mLeft = Integer.MIN_VALUE;
        layoutParams.mRight = Integer.MIN_VALUE;
        LayoutParams relatedViewParams = getRelatedViewParams(iArr, 0);
        if (relatedViewParams != null) {
            layoutParams.mRight = relatedViewParams.mLeft - (relatedViewParams.leftMargin + layoutParams.rightMargin);
        } else if (layoutParams.alignWithParent && iArr[0] != 0 && i2 >= 0) {
            layoutParams.mRight = (i2 - this.mPaddingRight) - layoutParams.rightMargin;
        }
        LayoutParams relatedViewParams2 = getRelatedViewParams(iArr, 1);
        if (relatedViewParams2 != null) {
            layoutParams.mLeft = relatedViewParams2.rightMargin + layoutParams.leftMargin + relatedViewParams2.mRight;
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

    private void applyVerticalSizeRules(LayoutParams layoutParams, int i2, int i3) {
        int[] rules = layoutParams.getRules();
        int relatedViewBaselineOffset = getRelatedViewBaselineOffset(rules);
        if (relatedViewBaselineOffset != -1) {
            if (i3 != -1) {
                relatedViewBaselineOffset -= i3;
            }
            layoutParams.mTop = relatedViewBaselineOffset;
            layoutParams.mBottom = Integer.MIN_VALUE;
            return;
        }
        layoutParams.mTop = Integer.MIN_VALUE;
        layoutParams.mBottom = Integer.MIN_VALUE;
        LayoutParams relatedViewParams = getRelatedViewParams(rules, 2);
        if (relatedViewParams != null) {
            layoutParams.mBottom = relatedViewParams.mTop - (relatedViewParams.topMargin + layoutParams.bottomMargin);
        } else if (layoutParams.alignWithParent && rules[2] != 0 && i2 >= 0) {
            layoutParams.mBottom = (i2 - this.mPaddingBottom) - layoutParams.bottomMargin;
        }
        LayoutParams relatedViewParams2 = getRelatedViewParams(rules, 3);
        if (relatedViewParams2 != null) {
            layoutParams.mTop = relatedViewParams2.bottomMargin + layoutParams.topMargin + relatedViewParams2.mBottom;
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
        if (rules[12] == 0 || i2 < 0) {
            return;
        }
        layoutParams.mBottom = (i2 - this.mPaddingBottom) - layoutParams.bottomMargin;
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

    private int compareLayoutPosition(LayoutParams layoutParams, LayoutParams layoutParams2) {
        int i2 = layoutParams.mTop - layoutParams2.mTop;
        return i2 != 0 ? i2 : layoutParams.mLeft - layoutParams2.mLeft;
    }

    private int getChildMeasureSpec(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        int i10 = 0;
        boolean z2 = i9 < 0;
        int i11 = 1073741824;
        if (z2 && !this.mAllowBrokenMeasureSpecs) {
            if (i2 == Integer.MIN_VALUE || i3 == Integer.MIN_VALUE) {
                if (i4 < 0) {
                    i4 = 0;
                }
                return View.MeasureSpec.makeMeasureSpec(i4, i10);
            }
            i4 = Math.max(0, i3 - i2);
            i10 = 1073741824;
            return View.MeasureSpec.makeMeasureSpec(i4, i10);
        }
        int i12 = (i3 == Integer.MIN_VALUE ? (i9 - i8) - i6 : i3) - (i2 == Integer.MIN_VALUE ? i7 + i5 : i2);
        if (i2 != Integer.MIN_VALUE && i3 != Integer.MIN_VALUE) {
            i11 = z2 ? 0 : 1073741824;
            i4 = Math.max(0, i12);
        } else {
            if (i4 < 0) {
                if (i4 == -1) {
                    i11 = z2 ? 0 : 1073741824;
                    i4 = Math.max(0, i12);
                } else if (i4 != -2 || i12 < 0) {
                    i4 = 0;
                } else {
                    i4 = i12;
                    i10 = Integer.MIN_VALUE;
                }
                return View.MeasureSpec.makeMeasureSpec(i4, i10);
            }
            if (i12 >= 0) {
                i4 = Math.min(i12, i4);
            }
        }
        i10 = i11;
        return View.MeasureSpec.makeMeasureSpec(i4, i10);
    }

    private View getRelatedView(int[] iArr, int i2) {
        DependencyGraph.Node node;
        View view;
        int i3 = iArr[i2];
        if (i3 == 0 || (node = (DependencyGraph.Node) this.mGraph.mKeyNodes.get(i3)) == null) {
            return null;
        }
        View view2 = node.view;
        while (view2.getVisibility() == 8) {
            DependencyGraph.Node node2 = (DependencyGraph.Node) this.mGraph.mKeyNodes.get(((LayoutParams) view2.getLayoutParams()).getRules(view2.getLayoutDirection())[i2]);
            if (node2 == null || view2 == (view = node2.view)) {
                return null;
            }
            view2 = view;
        }
        return view2;
    }

    private int getRelatedViewBaselineOffset(int[] iArr) {
        int baseline;
        View relatedView = getRelatedView(iArr, 4);
        if (relatedView == null || (baseline = relatedView.getBaseline()) == -1 || !(relatedView.getLayoutParams() instanceof LayoutParams)) {
            return -1;
        }
        return ((LayoutParams) relatedView.getLayoutParams()).mTop + baseline;
    }

    private LayoutParams getRelatedViewParams(int[] iArr, int i2) {
        View relatedView = getRelatedView(iArr, i2);
        if (relatedView == null || !(relatedView.getLayoutParams() instanceof LayoutParams)) {
            return null;
        }
        return (LayoutParams) relatedView.getLayoutParams();
    }

    private void initFromAttributes(Context context, AttributeSet attributeSet, int i2, int i3) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RelativeLayout, i2, i3);
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
        if (i3 >= 0 || this.mAllowBrokenMeasureSpecs) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mMeasureVerticalWithPaddingMargin ? Math.max(0, (((i3 - this.mPaddingTop) - this.mPaddingBottom) - layoutParams.topMargin) - layoutParams.bottomMargin) : Math.max(0, i3), layoutParams.height != -1 ? Integer.MIN_VALUE : 1073741824);
        } else {
            int i4 = layoutParams.height;
            iMakeMeasureSpec = i4 >= 0 ? View.MeasureSpec.makeMeasureSpec(i4, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, iMakeMeasureSpec);
    }

    private void positionAtEdge(View view, LayoutParams layoutParams, int i2) {
        if (isLayoutRtl()) {
            layoutParams.mRight = (i2 - this.mPaddingRight) - layoutParams.rightMargin;
            layoutParams.mLeft = layoutParams.mRight - view.getMeasuredWidth();
        } else {
            layoutParams.mLeft = this.mPaddingLeft + layoutParams.leftMargin;
            layoutParams.mRight = view.getMeasuredWidth() + layoutParams.mLeft;
        }
    }

    private boolean positionChildHorizontal(View view, LayoutParams layoutParams, int i2, boolean z2) {
        int[] rules = layoutParams.getRules(getLayoutDirection());
        if (layoutParams.mLeft == Integer.MIN_VALUE && layoutParams.mRight != Integer.MIN_VALUE) {
            layoutParams.mLeft = layoutParams.mRight - view.getMeasuredWidth();
        } else if (layoutParams.mLeft != Integer.MIN_VALUE && layoutParams.mRight == Integer.MIN_VALUE) {
            layoutParams.mRight = view.getMeasuredWidth() + layoutParams.mLeft;
        } else if (layoutParams.mLeft == Integer.MIN_VALUE && layoutParams.mRight == Integer.MIN_VALUE) {
            if (rules[13] != 0 || rules[14] != 0) {
                if (z2) {
                    positionAtEdge(view, layoutParams, i2);
                } else {
                    centerHorizontal(view, layoutParams, i2);
                }
                return true;
            }
            positionAtEdge(view, layoutParams, i2);
        }
        return rules[21] != 0;
    }

    private boolean positionChildVertical(View view, LayoutParams layoutParams, int i2, boolean z2) {
        int[] rules = layoutParams.getRules();
        if (layoutParams.mTop == Integer.MIN_VALUE && layoutParams.mBottom != Integer.MIN_VALUE) {
            layoutParams.mTop = layoutParams.mBottom - view.getMeasuredHeight();
        } else if (layoutParams.mTop != Integer.MIN_VALUE && layoutParams.mBottom == Integer.MIN_VALUE) {
            layoutParams.mBottom = view.getMeasuredHeight() + layoutParams.mTop;
        } else if (layoutParams.mTop == Integer.MIN_VALUE && layoutParams.mBottom == Integer.MIN_VALUE) {
            if (rules[13] != 0 || rules[15] != 0) {
                if (z2) {
                    layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
                    layoutParams.mBottom = view.getMeasuredHeight() + layoutParams.mTop;
                } else {
                    centerVertical(view, layoutParams, i2);
                }
                return true;
            }
            layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
            layoutParams.mBottom = view.getMeasuredHeight() + layoutParams.mTop;
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

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
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

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return RelativeLayout.class.getName();
    }

    @Override // android.view.View
    public int getBaseline() {
        View view = this.mBaselineView;
        return view != null ? view.getBaseline() : super.getBaseline();
    }

    public int getGravity() {
        return this.mGravity;
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
        int i7;
        int i8;
        int i9 = 0;
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
        int iResolveSize = mode == 1073741824 ? size : 0;
        int iResolveSize2 = mode2 == 1073741824 ? size2 : 0;
        int i10 = this.mGravity;
        int i11 = 8388615 & i10;
        boolean z2 = (i11 == 8388611 || i11 == 0) ? false : true;
        int i12 = i10 & 112;
        boolean z3 = (i12 == 48 || i12 == 0) ? false : true;
        View viewFindViewById = ((z2 || z3) && (i4 = this.mIgnoreGravity) != -1) ? findViewById(i4) : null;
        boolean z4 = mode != 1073741824;
        boolean z5 = mode2 != 1073741824;
        int layoutDirection = getLayoutDirection();
        if (isLayoutRtl() && size == -1) {
            size = 65536;
        }
        View[] viewArr = this.mSortedHorizontalChildren;
        int length = viewArr.length;
        boolean z6 = false;
        while (i9 < length) {
            View view = viewArr[i9];
            View[] viewArr2 = viewArr;
            if (view.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                applyHorizontalSizeRules(layoutParams, size, layoutParams.getRules(layoutDirection));
                measureChildHorizontal(view, layoutParams, size, size2);
                if (positionChildHorizontal(view, layoutParams, size, z4)) {
                    z6 = true;
                }
            }
            i9++;
            viewArr = viewArr2;
        }
        View[] viewArr3 = this.mSortedVerticalChildren;
        int length2 = viewArr3.length;
        int i13 = getContext().getApplicationInfo().targetSdkVersion;
        int i14 = Integer.MIN_VALUE;
        int iMax = Integer.MIN_VALUE;
        int iMin = Integer.MAX_VALUE;
        int iMin2 = Integer.MAX_VALUE;
        int i15 = 0;
        boolean z7 = false;
        while (i15 < length2) {
            int i16 = layoutDirection;
            View view2 = viewArr3[i15];
            View[] viewArr4 = viewArr3;
            int i17 = length2;
            if (view2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                applyVerticalSizeRules(layoutParams2, size2, view2.getBaseline());
                measureChild(view2, layoutParams2, size, size2);
                if (positionChildVertical(view2, layoutParams2, size2, z5)) {
                    z7 = true;
                }
                if (!z4) {
                    i8 = size2;
                } else if (!isLayoutRtl()) {
                    i8 = size2;
                    iResolveSize = i13 < 19 ? Math.max(iResolveSize, layoutParams2.mRight) : Math.max(iResolveSize, layoutParams2.mRight + layoutParams2.rightMargin);
                } else if (i13 < 19) {
                    iResolveSize = Math.max(iResolveSize, size - layoutParams2.mLeft);
                    i8 = size2;
                } else {
                    i8 = size2;
                    iResolveSize = Math.max(iResolveSize, (size - layoutParams2.mLeft) + layoutParams2.leftMargin);
                }
                if (z5) {
                    iResolveSize2 = i13 < 19 ? Math.max(iResolveSize2, layoutParams2.mBottom) : Math.max(iResolveSize2, layoutParams2.mBottom + layoutParams2.bottomMargin);
                }
                if (view2 != viewFindViewById || z3) {
                    iMin2 = Math.min(iMin2, layoutParams2.mLeft - layoutParams2.leftMargin);
                    iMin = Math.min(iMin, layoutParams2.mTop - layoutParams2.topMargin);
                }
                if (view2 != viewFindViewById || z2) {
                    int iMax2 = Math.max(i14, layoutParams2.mRight + layoutParams2.rightMargin);
                    iMax = Math.max(iMax, layoutParams2.mBottom + layoutParams2.bottomMargin);
                    i14 = iMax2;
                }
            } else {
                i8 = size2;
            }
            i15++;
            layoutDirection = i16;
            viewArr3 = viewArr4;
            length2 = i17;
            size2 = i8;
        }
        View[] viewArr5 = viewArr3;
        int i18 = length2;
        int i19 = layoutDirection;
        int i20 = iMax;
        int i21 = iMin;
        int i22 = iMin2;
        int i23 = size;
        int i24 = 0;
        LayoutParams layoutParams3 = null;
        View view3 = null;
        while (i24 < i18) {
            View view4 = viewArr5[i24];
            View view5 = viewFindViewById;
            int i25 = i20;
            if (view4.getVisibility() != 8) {
                LayoutParams layoutParams4 = (LayoutParams) view4.getLayoutParams();
                if (view3 == null || layoutParams3 == null || compareLayoutPosition(layoutParams4, layoutParams3) < 0) {
                    layoutParams3 = layoutParams4;
                    view3 = view4;
                }
            }
            i24++;
            i20 = i25;
            viewFindViewById = view5;
        }
        int i26 = i20;
        View view6 = viewFindViewById;
        this.mBaselineView = view3;
        if (z4) {
            int iMax3 = iResolveSize + this.mPaddingRight;
            ViewGroup.LayoutParams layoutParams5 = this.mLayoutParams;
            if (layoutParams5 != null && (i7 = layoutParams5.width) >= 0) {
                iMax3 = Math.max(iMax3, i7);
            }
            iResolveSize = View.resolveSize(Math.max(iMax3, getSuggestedMinimumWidth()), i2);
            if (z6) {
                int i27 = 0;
                while (i27 < i18) {
                    View view7 = viewArr5[i27];
                    if (view7.getVisibility() != 8) {
                        LayoutParams layoutParams6 = (LayoutParams) view7.getLayoutParams();
                        i6 = i19;
                        int[] rules = layoutParams6.getRules(i6);
                        if (rules[13] != 0 || rules[14] != 0) {
                            centerHorizontal(view7, layoutParams6, iResolveSize);
                        } else if (rules[11] != 0) {
                            int measuredWidth = view7.getMeasuredWidth();
                            layoutParams6.mLeft = (iResolveSize - this.mPaddingRight) - measuredWidth;
                            layoutParams6.mRight = layoutParams6.mLeft + measuredWidth;
                        }
                    } else {
                        i6 = i19;
                    }
                    i27++;
                    i19 = i6;
                }
            }
        }
        int i28 = i19;
        if (z5) {
            int iMax4 = iResolveSize2 + this.mPaddingBottom;
            ViewGroup.LayoutParams layoutParams7 = this.mLayoutParams;
            if (layoutParams7 != null && (i5 = layoutParams7.height) >= 0) {
                iMax4 = Math.max(iMax4, i5);
            }
            iResolveSize2 = View.resolveSize(Math.max(iMax4, getSuggestedMinimumHeight()), i3);
            if (z7) {
                for (int i29 = 0; i29 < i18; i29++) {
                    View view8 = viewArr5[i29];
                    if (view8.getVisibility() != 8) {
                        LayoutParams layoutParams8 = (LayoutParams) view8.getLayoutParams();
                        int[] rules2 = layoutParams8.getRules(i28);
                        if (rules2[13] != 0 || rules2[15] != 0) {
                            centerVertical(view8, layoutParams8, iResolveSize2);
                        } else if (rules2[12] != 0) {
                            int measuredHeight = view8.getMeasuredHeight();
                            layoutParams8.mTop = (iResolveSize2 - this.mPaddingBottom) - measuredHeight;
                            layoutParams8.mBottom = layoutParams8.mTop + measuredHeight;
                        }
                    }
                }
            }
        }
        if (z2 || z3) {
            Rect rect = this.mSelfBounds;
            rect.set(this.mPaddingLeft, this.mPaddingTop, iResolveSize - this.mPaddingRight, iResolveSize2 - this.mPaddingBottom);
            Rect rect2 = this.mContentBounds;
            Gravity.apply(this.mGravity, i14 - i22, i26 - i21, rect, rect2, i28);
            int i30 = rect2.left - i22;
            int i31 = rect2.top - i21;
            if (i30 != 0 || i31 != 0) {
                int i32 = 0;
                while (i32 < i18) {
                    View view9 = viewArr5[i32];
                    View view10 = view6;
                    if (view9.getVisibility() != 8 && view9 != view10) {
                        LayoutParams layoutParams9 = (LayoutParams) view9.getLayoutParams();
                        if (z2) {
                            layoutParams9.mLeft += i30;
                            layoutParams9.mRight += i30;
                        }
                        if (z3) {
                            layoutParams9.mTop += i31;
                            layoutParams9.mBottom += i31;
                        }
                    }
                    i32++;
                    view6 = view10;
                }
            }
        }
        if (isLayoutRtl()) {
            int i33 = i23 - iResolveSize;
            for (int i34 = 0; i34 < i18; i34++) {
                View view11 = viewArr5[i34];
                if (view11.getVisibility() != 8) {
                    LayoutParams layoutParams10 = (LayoutParams) view11.getLayoutParams();
                    layoutParams10.mLeft -= i33;
                    layoutParams10.mRight -= i33;
                }
            }
        }
        setMeasuredDimension(iResolveSize, iResolveSize2);
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
                i2 |= 8388611;
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
            this.mGravity = i3 | (i4 & PackageManager.INSTALL_FAILED_NO_MATCHING_ABIS);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public RelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public RelativeLayout(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (View.sPreserveMarginParamsInLayoutParamConversion) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            }
        }
        return new LayoutParams(layoutParams);
    }

    public RelativeLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mBaselineView = null;
        this.mGravity = BadgeDrawable.TOP_START;
        this.mContentBounds = new Rect();
        this.mSelfBounds = new Rect();
        this.mTopToBottomLeftToRightSet = null;
        this.mGraph = new DependencyGraph();
        this.mAllowBrokenMeasureSpecs = false;
        this.mMeasureVerticalWithPaddingMargin = false;
        initFromAttributes(context, attributeSet, i2, i3);
        queryCompatibilityModes(context);
    }
}
