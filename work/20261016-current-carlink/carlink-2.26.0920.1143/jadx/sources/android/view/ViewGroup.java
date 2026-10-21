package android.view;

import android.animation.LayoutTransition;
import android.app.ActivityManager;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.media.TtmlUtils;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.security.keystore.KeyProperties;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pools;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LayoutAnimationController;
import android.view.animation.Transformation;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ViewGroup extends View implements ViewParent, ViewManager {
    private static final int ARRAY_CAPACITY_INCREMENT = 12;
    private static final int ARRAY_INITIAL_CAPACITY = 12;
    private static final int CHILD_LEFT_INDEX = 0;
    private static final int CHILD_TOP_INDEX = 1;
    protected static final int CLIP_TO_PADDING_MASK = 34;
    private static final boolean DBG = false;
    private static final int FLAG_ADD_STATES_FROM_CHILDREN = 8192;

    @Deprecated
    private static final int FLAG_ALWAYS_DRAWN_WITH_CACHE = 16384;

    @Deprecated
    private static final int FLAG_ANIMATION_CACHE = 64;
    static final int FLAG_ANIMATION_DONE = 16;

    @Deprecated
    private static final int FLAG_CHILDREN_DRAWN_WITH_CACHE = 32768;
    static final int FLAG_CLEAR_TRANSFORMATION = 256;
    static final int FLAG_CLIP_CHILDREN = 1;
    private static final int FLAG_CLIP_TO_PADDING = 2;
    protected static final int FLAG_DISALLOW_INTERCEPT = 524288;
    static final int FLAG_INVALIDATE_REQUIRED = 4;
    static final int FLAG_IS_TRANSITION_GROUP = 16777216;
    static final int FLAG_IS_TRANSITION_GROUP_SET = 33554432;
    private static final int FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET = 8388608;
    private static final int FLAG_MASK_FOCUSABILITY = 393216;
    private static final int FLAG_NOTIFY_ANIMATION_LISTENER = 512;
    private static final int FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE = 65536;
    static final int FLAG_OPTIMIZE_INVALIDATE = 128;
    private static final int FLAG_PADDING_NOT_NULL = 32;
    private static final int FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW = 4194304;
    private static final int FLAG_RUN_ANIMATION = 8;
    private static final int FLAG_SHOW_CONTEXT_MENU_WITH_COORDS = 536870912;
    private static final int FLAG_SPLIT_MOTION_EVENTS = 2097152;
    private static final int FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED = 268435456;
    private static final int FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED = 134217728;
    protected static final int FLAG_SUPPORT_STATIC_TRANSFORMATIONS = 2048;
    static final int FLAG_TOUCHSCREEN_BLOCKS_FOCUS = 67108864;
    protected static final int FLAG_USE_CHILD_DRAWING_ORDER = 1024;
    public static final int FOCUS_AFTER_DESCENDANTS = 262144;
    public static final int FOCUS_BEFORE_DESCENDANTS = 131072;
    public static final int FOCUS_BLOCK_DESCENDANTS = 393216;
    public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
    public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;
    private static final int LAYOUT_MODE_UNDEFINED = -1;
    public static final int PERSISTENT_ALL_CACHES = 3;
    public static final int PERSISTENT_ANIMATION_CACHE = 1;
    public static final int PERSISTENT_NO_CACHE = 0;
    public static final int PERSISTENT_SCROLLING_CACHE = 2;
    private static final String TAG = "ViewGroup";
    private static float[] sDebugLines;
    private Animation.AnimationListener mAnimationListener;
    Paint mCachePaint;

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    private int mChildCountWithTransientState;
    private Transformation mChildTransformation;
    private View[] mChildren;
    private int mChildrenCount;
    private HashSet<View> mChildrenInterestedInDrag;
    private View mCurrentDragChild;
    private DragEvent mCurrentDragStartEvent;
    private View mDefaultFocus;
    protected ArrayList<View> mDisappearingChildren;
    private HoverTarget mFirstHoverTarget;
    private TouchTarget mFirstTouchTarget;
    private View mFocused;
    View mFocusedInCluster;

    @ViewDebug.ExportedProperty(flagMapping = {@ViewDebug.FlagToString(equals = 1, mask = 1, name = "CLIP_CHILDREN"), @ViewDebug.FlagToString(equals = 2, mask = 2, name = "CLIP_TO_PADDING"), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "PADDING_NOT_NULL")}, formatToHexString = true)
    protected int mGroupFlags;
    private boolean mHoveredSelf;
    RectF mInvalidateRegion;
    Transformation mInvalidationTransformation;
    private boolean mIsInterestedInDrag;

    @ViewDebug.ExportedProperty(category = "events")
    private int mLastTouchDownIndex;

    @ViewDebug.ExportedProperty(category = "events")
    private long mLastTouchDownTime;

    @ViewDebug.ExportedProperty(category = "events")
    private float mLastTouchDownX;

    @ViewDebug.ExportedProperty(category = "events")
    private float mLastTouchDownY;
    private LayoutAnimationController mLayoutAnimationController;
    private boolean mLayoutCalledWhileSuppressed;
    private int mLayoutMode;
    private LayoutTransition.TransitionListener mLayoutTransitionListener;
    private PointF mLocalPoint;
    private int mNestedScrollAxes;
    protected OnHierarchyChangeListener mOnHierarchyChangeListener;
    protected int mPersistentDrawingCache;
    private ArrayList<View> mPreSortedChildren;
    boolean mSuppressLayout;
    private float[] mTempPoint;
    private View mTooltipHoverTarget;
    private boolean mTooltipHoveredSelf;
    private List<Integer> mTransientIndices;
    private List<View> mTransientViews;
    private LayoutTransition mTransition;
    private ArrayList<View> mTransitioningViews;
    private ArrayList<View> mVisibilityChangingChildren;
    private static final int[] DESCENDANT_FOCUSABILITY_FLAGS = {131072, 262144, 393216};
    public static int LAYOUT_MODE_DEFAULT = 0;
    private static final ActionMode SENTINEL_ACTION_MODE = new ActionMode() { // from class: android.view.ViewGroup.1
        @Override // android.view.ActionMode
        public void finish() {
        }

        @Override // android.view.ActionMode
        public View getCustomView() {
            return null;
        }

        @Override // android.view.ActionMode
        public Menu getMenu() {
            return null;
        }

        @Override // android.view.ActionMode
        public MenuInflater getMenuInflater() {
            return null;
        }

        @Override // android.view.ActionMode
        public CharSequence getSubtitle() {
            return null;
        }

        @Override // android.view.ActionMode
        public CharSequence getTitle() {
            return null;
        }

        @Override // android.view.ActionMode
        public void invalidate() {
        }

        @Override // android.view.ActionMode
        public void setCustomView(View view) {
        }

        @Override // android.view.ActionMode
        public void setSubtitle(int i2) {
        }

        @Override // android.view.ActionMode
        public void setTitle(int i2) {
        }

        @Override // android.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
        }

        @Override // android.view.ActionMode
        public void setTitle(CharSequence charSequence) {
        }
    };

    public static class ChildListForAccessibility {
        private static final int MAX_POOL_SIZE = 32;
        private static final Pools.SynchronizedPool<ChildListForAccessibility> sPool = new Pools.SynchronizedPool<>(32);
        private final ArrayList<View> mChildren = new ArrayList<>();
        private final ArrayList<ViewLocationHolder> mHolders = new ArrayList<>();

        private void clear() {
            this.mChildren.clear();
        }

        private void init(ViewGroup viewGroup, boolean z2) {
            ArrayList<View> arrayList = this.mChildren;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                arrayList.add(viewGroup.getChildAt(i2));
            }
            if (z2) {
                ArrayList<ViewLocationHolder> arrayList2 = this.mHolders;
                for (int i3 = 0; i3 < childCount; i3++) {
                    arrayList2.add(ViewLocationHolder.obtain(viewGroup, arrayList.get(i3)));
                }
                sort(arrayList2);
                for (int i4 = 0; i4 < childCount; i4++) {
                    ViewLocationHolder viewLocationHolder = arrayList2.get(i4);
                    arrayList.set(i4, viewLocationHolder.mView);
                    viewLocationHolder.recycle();
                }
                arrayList2.clear();
            }
        }

        public static ChildListForAccessibility obtain(ViewGroup viewGroup, boolean z2) {
            ChildListForAccessibility childListForAccessibilityAcquire = sPool.acquire();
            if (childListForAccessibilityAcquire == null) {
                childListForAccessibilityAcquire = new ChildListForAccessibility();
            }
            childListForAccessibilityAcquire.init(viewGroup, z2);
            return childListForAccessibilityAcquire;
        }

        private void sort(ArrayList<ViewLocationHolder> arrayList) {
            try {
                ViewLocationHolder.setComparisonStrategy(1);
                Collections.sort(arrayList);
            } catch (IllegalArgumentException unused) {
                ViewLocationHolder.setComparisonStrategy(2);
                Collections.sort(arrayList);
            }
        }

        public View getChildAt(int i2) {
            return this.mChildren.get(i2);
        }

        public int getChildCount() {
            return this.mChildren.size();
        }

        public void recycle() {
            clear();
            sPool.release(this);
        }
    }

    public static class ChildListForAutoFill extends ArrayList<View> {
        private static final int MAX_POOL_SIZE = 32;
        private static final Pools.SimplePool<ChildListForAutoFill> sPool = new Pools.SimplePool<>(32);

        public static ChildListForAutoFill obtain() {
            ChildListForAutoFill childListForAutoFillAcquire = sPool.acquire();
            return childListForAutoFillAcquire == null ? new ChildListForAutoFill() : childListForAutoFillAcquire;
        }

        public void recycle() {
            clear();
            sPool.release(this);
        }
    }

    public static final class HoverTarget {
        private static final int MAX_RECYCLED = 32;
        private static HoverTarget sRecycleBin;
        private static final Object sRecycleLock = new Object[0];
        private static int sRecycledCount;
        public View child;
        public HoverTarget next;

        private HoverTarget() {
        }

        public static HoverTarget obtain(View view) {
            HoverTarget hoverTarget;
            if (view == null) {
                throw new IllegalArgumentException("child must be non-null");
            }
            synchronized (sRecycleLock) {
                hoverTarget = sRecycleBin;
                if (hoverTarget == null) {
                    hoverTarget = new HoverTarget();
                } else {
                    sRecycleBin = hoverTarget.next;
                    sRecycledCount--;
                    hoverTarget.next = null;
                }
            }
            hoverTarget.child = view;
            return hoverTarget;
        }

        public void recycle() {
            if (this.child == null) {
                throw new IllegalStateException("already recycled once");
            }
            synchronized (sRecycleLock) {
                int i2 = sRecycledCount;
                if (i2 < 32) {
                    this.next = sRecycleBin;
                    sRecycleBin = this;
                    sRecycledCount = i2 + 1;
                } else {
                    this.next = null;
                }
                this.child = null;
            }
        }
    }

    public interface OnHierarchyChangeListener {
        void onChildViewAdded(View view, View view2);

        void onChildViewRemoved(View view, View view2);
    }

    public static final class TouchTarget {
        public static final int ALL_POINTER_IDS = -1;
        private static final int MAX_RECYCLED = 32;
        private static TouchTarget sRecycleBin;
        private static final Object sRecycleLock = new Object[0];
        private static int sRecycledCount;
        public View child;
        public TouchTarget next;
        public int pointerIdBits;

        private TouchTarget() {
        }

        public static TouchTarget obtain(View view, int i2) {
            TouchTarget touchTarget;
            if (view == null) {
                throw new IllegalArgumentException("child must be non-null");
            }
            synchronized (sRecycleLock) {
                touchTarget = sRecycleBin;
                if (touchTarget == null) {
                    touchTarget = new TouchTarget();
                } else {
                    sRecycleBin = touchTarget.next;
                    sRecycledCount--;
                    touchTarget.next = null;
                }
            }
            touchTarget.child = view;
            touchTarget.pointerIdBits = i2;
            return touchTarget;
        }

        public void recycle() {
            if (this.child == null) {
                throw new IllegalStateException("already recycled once");
            }
            synchronized (sRecycleLock) {
                int i2 = sRecycledCount;
                if (i2 < 32) {
                    this.next = sRecycleBin;
                    sRecycleBin = this;
                    sRecycledCount = i2 + 1;
                } else {
                    this.next = null;
                }
                this.child = null;
            }
        }
    }

    public static class ViewLocationHolder implements Comparable<ViewLocationHolder> {
        public static final int COMPARISON_STRATEGY_LOCATION = 2;
        public static final int COMPARISON_STRATEGY_STRIPE = 1;
        private static final int MAX_POOL_SIZE = 32;
        private int mLayoutDirection;
        private final Rect mLocation = new Rect();
        public View mView;
        private static final Pools.SynchronizedPool<ViewLocationHolder> sPool = new Pools.SynchronizedPool<>(32);
        private static int sComparisonStrategy = 1;

        private void clear() {
            this.mView = null;
            this.mLocation.set(0, 0, 0, 0);
        }

        private void init(ViewGroup viewGroup, View view) {
            Rect rect = this.mLocation;
            view.getDrawingRect(rect);
            try {
                viewGroup.offsetDescendantRectToMyCoords(view, rect);
            } catch (IllegalArgumentException e2) {
                Log.e(ViewGroup.TAG, Log.getStackTraceString(e2));
                if (rect != null) {
                    rect.set(-1, -1, -1, -1);
                }
            }
            this.mView = view;
            this.mLayoutDirection = viewGroup.getLayoutDirection();
        }

        public static ViewLocationHolder obtain(ViewGroup viewGroup, View view) {
            ViewLocationHolder viewLocationHolderAcquire = sPool.acquire();
            if (viewLocationHolderAcquire == null) {
                viewLocationHolderAcquire = new ViewLocationHolder();
            }
            viewLocationHolderAcquire.init(viewGroup, view);
            return viewLocationHolderAcquire;
        }

        public static void setComparisonStrategy(int i2) {
            sComparisonStrategy = i2;
        }

        public void recycle() {
            clear();
            sPool.release(this);
        }

        @Override // java.lang.Comparable
        public int compareTo(ViewLocationHolder viewLocationHolder) {
            if (viewLocationHolder == null) {
                return 1;
            }
            if (sComparisonStrategy == 1) {
                Rect rect = this.mLocation;
                int i2 = rect.bottom;
                Rect rect2 = viewLocationHolder.mLocation;
                if (i2 - rect2.top <= 0) {
                    return -1;
                }
                if (rect.top - rect2.bottom >= 0) {
                    return 1;
                }
            }
            if (this.mLayoutDirection == 0) {
                int i3 = this.mLocation.left - viewLocationHolder.mLocation.left;
                if (i3 != 0) {
                    return i3;
                }
            } else {
                int i4 = this.mLocation.right - viewLocationHolder.mLocation.right;
                if (i4 != 0) {
                    return -i4;
                }
            }
            Rect rect3 = this.mLocation;
            int i5 = rect3.top - viewLocationHolder.mLocation.top;
            if (i5 != 0) {
                return i5;
            }
            int iHeight = rect3.height() - viewLocationHolder.mLocation.height();
            if (iHeight != 0) {
                return -iHeight;
            }
            int iWidth = this.mLocation.width() - viewLocationHolder.mLocation.width();
            return iWidth != 0 ? -iWidth : this.mView.getAccessibilityViewId() - viewLocationHolder.mView.getAccessibilityViewId();
        }
    }

    public ViewGroup(Context context) {
        this(context, null);
    }

    private void addDisappearingView(View view) {
        ArrayList<View> arrayList = this.mDisappearingChildren;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.mDisappearingChildren = arrayList;
        }
        arrayList.add(view);
    }

    private void addInArray(View view, int i2) {
        View[] viewArr = this.mChildren;
        int i3 = this.mChildrenCount;
        int length = viewArr.length;
        if (i2 == i3) {
            if (length == i3) {
                View[] viewArr2 = new View[length + 12];
                this.mChildren = viewArr2;
                System.arraycopy(viewArr, 0, viewArr2, 0, length);
                viewArr = this.mChildren;
            }
            int i4 = this.mChildrenCount;
            this.mChildrenCount = i4 + 1;
            viewArr[i4] = view;
            return;
        }
        if (i2 >= i3) {
            throw new IndexOutOfBoundsException(android.app.m.e("index=", i2, " count=", i3));
        }
        if (length == i3) {
            View[] viewArr3 = new View[length + 12];
            this.mChildren = viewArr3;
            System.arraycopy(viewArr, 0, viewArr3, 0, i2);
            System.arraycopy(viewArr, i2, this.mChildren, i2 + 1, i3 - i2);
            viewArr = this.mChildren;
        } else {
            System.arraycopy(viewArr, i2, viewArr, i2 + 1, i3 - i2);
        }
        viewArr[i2] = view;
        this.mChildrenCount++;
        int i5 = this.mLastTouchDownIndex;
        if (i5 >= i2) {
            this.mLastTouchDownIndex = i5 + 1;
        }
    }

    private TouchTarget addTouchTarget(View view, int i2) {
        TouchTarget touchTargetObtain = TouchTarget.obtain(view, i2);
        touchTargetObtain.next = this.mFirstTouchTarget;
        this.mFirstTouchTarget = touchTargetObtain;
        return touchTargetObtain;
    }

    private void addViewInner(View view, int i2, LayoutParams layoutParams, boolean z2) {
        LayoutTransition layoutTransition = this.mTransition;
        if (layoutTransition != null) {
            layoutTransition.cancel(3);
        }
        if (view.getParent() != null) {
            throw new IllegalStateException("The specified child already has a parent. You must call removeView() on the child's parent first.");
        }
        LayoutTransition layoutTransition2 = this.mTransition;
        if (layoutTransition2 != null) {
            layoutTransition2.addChild(this, view);
        }
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        if (z2) {
            view.mLayoutParams = layoutParams;
        } else {
            view.setLayoutParams(layoutParams);
        }
        if (i2 < 0) {
            i2 = this.mChildrenCount;
        }
        addInArray(view, i2);
        if (z2) {
            view.assignParent(this);
        } else {
            view.mParent = this;
        }
        if (view.hasFocus()) {
            requestChildFocus(view, view.findFocus());
        }
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null && (this.mGroupFlags & 4194304) == 0) {
            boolean z3 = attachInfo.mKeepScreenOn;
            attachInfo.mKeepScreenOn = false;
            view.dispatchAttachedToWindow(attachInfo, this.mViewFlags & 12);
            if (attachInfo.mKeepScreenOn) {
                needGlobalAttributesUpdate(true);
            }
            attachInfo.mKeepScreenOn = z3;
        }
        if (view.isLayoutDirectionInherited()) {
            view.resetRtlProperties();
        }
        dispatchViewAdded(view);
        if ((view.mViewFlags & 4194304) == 4194304) {
            this.mGroupFlags |= 65536;
        }
        if (view.hasTransientState()) {
            childHasTransientStateChanged(view, true);
        }
        if (view.getVisibility() != 8) {
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
        List<Integer> list = this.mTransientIndices;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = this.mTransientIndices.get(i3).intValue();
                if (i2 <= iIntValue) {
                    this.mTransientIndices.set(i3, Integer.valueOf(iIntValue + 1));
                }
            }
        }
        if (this.mCurrentDragStartEvent != null && view.getVisibility() == 0) {
            notifyChildOfDragStart(view);
        }
        if (view.hasDefaultFocus()) {
            setDefaultFocus(view);
        }
    }

    private void bindLayoutAnimation(View view) {
        view.setAnimation(this.mLayoutAnimationController.getAnimationForView(view));
    }

    private static boolean canViewReceivePointerEvents(View view) {
        return (view.mViewFlags & 12) == 0 || view.getAnimation() != null;
    }

    private void cancelAndClearTouchTargets(MotionEvent motionEvent) {
        boolean z2;
        if (this.mFirstTouchTarget != null) {
            if (motionEvent == null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEvent = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                motionEvent.setSource(4098);
                z2 = true;
            } else {
                z2 = false;
            }
            for (TouchTarget touchTarget = this.mFirstTouchTarget; touchTarget != null; touchTarget = touchTarget.next) {
                resetCancelNextUpFlag(touchTarget.child);
                dispatchTransformedTouchEvent(motionEvent, true, touchTarget.child, touchTarget.pointerIdBits);
            }
            clearTouchTargets();
            if (z2) {
                motionEvent.recycle();
            }
        }
    }

    private void cancelHoverTarget(View view) {
        HoverTarget hoverTarget = this.mFirstHoverTarget;
        HoverTarget hoverTarget2 = null;
        while (hoverTarget != null) {
            HoverTarget hoverTarget3 = hoverTarget.next;
            if (hoverTarget.child == view) {
                if (hoverTarget2 == null) {
                    this.mFirstHoverTarget = hoverTarget3;
                } else {
                    hoverTarget2.next = hoverTarget3;
                }
                hoverTarget.recycle();
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 10, 0.0f, 0.0f, 0);
                motionEventObtain.setSource(4098);
                view.dispatchHoverEvent(motionEventObtain);
                motionEventObtain.recycle();
                return;
            }
            hoverTarget2 = hoverTarget;
            hoverTarget = hoverTarget3;
        }
    }

    private void cancelTouchTarget(View view) {
        TouchTarget touchTarget = this.mFirstTouchTarget;
        TouchTarget touchTarget2 = null;
        while (touchTarget != null) {
            TouchTarget touchTarget3 = touchTarget.next;
            if (touchTarget.child == view) {
                if (touchTarget2 == null) {
                    this.mFirstTouchTarget = touchTarget3;
                } else {
                    touchTarget2.next = touchTarget3;
                }
                touchTarget.recycle();
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                motionEventObtain.setSource(4098);
                view.dispatchTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
                return;
            }
            touchTarget2 = touchTarget;
            touchTarget = touchTarget3;
        }
    }

    private void clearCachedLayoutMode() {
        if (hasBooleanFlag(8388608)) {
            return;
        }
        this.mLayoutMode = -1;
    }

    private void clearTouchTargets() {
        TouchTarget touchTarget = this.mFirstTouchTarget;
        if (touchTarget == null) {
            return;
        }
        while (true) {
            TouchTarget touchTarget2 = touchTarget.next;
            touchTarget.recycle();
            if (touchTarget2 == null) {
                this.mFirstTouchTarget = null;
                return;
            }
            touchTarget = touchTarget2;
        }
    }

    private PointerIcon dispatchResolvePointerIcon(MotionEvent motionEvent, int i2, View view) {
        if (!view.hasIdentityMatrix()) {
            MotionEvent transformedMotionEvent = getTransformedMotionEvent(motionEvent, view);
            PointerIcon pointerIconOnResolvePointerIcon = view.onResolvePointerIcon(transformedMotionEvent, i2);
            transformedMotionEvent.recycle();
            return pointerIconOnResolvePointerIcon;
        }
        float f2 = this.mScrollX - view.mLeft;
        float f3 = this.mScrollY - view.mTop;
        motionEvent.offsetLocation(f2, f3);
        PointerIcon pointerIconOnResolvePointerIcon2 = view.onResolvePointerIcon(motionEvent, i2);
        motionEvent.offsetLocation(-f2, -f3);
        return pointerIconOnResolvePointerIcon2;
    }

    private boolean dispatchTransformedGenericPointerEvent(MotionEvent motionEvent, View view) {
        if (!view.hasIdentityMatrix()) {
            MotionEvent transformedMotionEvent = getTransformedMotionEvent(motionEvent, view);
            boolean zDispatchGenericMotionEvent = view.dispatchGenericMotionEvent(transformedMotionEvent);
            transformedMotionEvent.recycle();
            return zDispatchGenericMotionEvent;
        }
        float f2 = this.mScrollX - view.mLeft;
        float f3 = this.mScrollY - view.mTop;
        motionEvent.offsetLocation(f2, f3);
        boolean zDispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-f2, -f3);
        return zDispatchGenericMotionEvent2;
    }

    private boolean dispatchTransformedTouchEvent(MotionEvent motionEvent, boolean z2, View view, int i2) {
        MotionEvent motionEventSplit;
        boolean zDispatchTouchEvent;
        int action = motionEvent.getAction();
        if (z2 || action == 3) {
            motionEvent.setAction(3);
            boolean zDispatchTouchEvent2 = view == null ? super.dispatchTouchEvent(motionEvent) : view.dispatchTouchEvent(motionEvent);
            motionEvent.setAction(action);
            return zDispatchTouchEvent2;
        }
        int pointerIdBits = motionEvent.getPointerIdBits();
        int i3 = i2 & pointerIdBits;
        if (i3 == 0) {
            return false;
        }
        if (i3 != pointerIdBits) {
            motionEventSplit = motionEvent.split(i3);
        } else {
            if (view == null || view.hasIdentityMatrix()) {
                if (view == null) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                float f2 = this.mScrollX - view.mLeft;
                float f3 = this.mScrollY - view.mTop;
                motionEvent.offsetLocation(f2, f3);
                boolean zDispatchTouchEvent3 = view.dispatchTouchEvent(motionEvent);
                motionEvent.offsetLocation(-f2, -f3);
                return zDispatchTouchEvent3;
            }
            motionEventSplit = MotionEvent.obtain(motionEvent);
        }
        if (view == null) {
            zDispatchTouchEvent = super.dispatchTouchEvent(motionEventSplit);
        } else {
            motionEventSplit.offsetLocation(this.mScrollX - view.mLeft, this.mScrollY - view.mTop);
            if (!view.hasIdentityMatrix()) {
                motionEventSplit.transform(view.getInverseMatrix());
            }
            zDispatchTouchEvent = view.dispatchTouchEvent(motionEventSplit);
        }
        motionEventSplit.recycle();
        return zDispatchTouchEvent;
    }

    private static void drawCorner(Canvas canvas, Paint paint, int i2, int i3, int i4, int i5, int i6) {
        fillRect(canvas, paint, i2, i3, i2 + i4, (sign(i5) * i6) + i3);
        fillRect(canvas, paint, i2, i3, (i6 * sign(i4)) + i2, i3 + i5);
    }

    private static void drawRect(Canvas canvas, Paint paint, int i2, int i3, int i4, int i5) {
        if (sDebugLines == null) {
            sDebugLines = new float[16];
        }
        float[] fArr = sDebugLines;
        float f2 = i2;
        fArr[0] = f2;
        float f3 = i3;
        fArr[1] = f3;
        float f4 = i4;
        fArr[2] = f4;
        fArr[3] = f3;
        fArr[4] = f4;
        fArr[5] = f3;
        fArr[6] = f4;
        float f5 = i5;
        fArr[7] = f5;
        fArr[8] = f4;
        fArr[9] = f5;
        fArr[10] = f2;
        fArr[11] = f5;
        fArr[12] = f2;
        fArr[13] = f5;
        fArr[14] = f2;
        fArr[15] = f3;
        canvas.drawLines(fArr, paint);
    }

    private static void drawRectCorners(Canvas canvas, int i2, int i3, int i4, int i5, Paint paint, int i6, int i7) {
        drawCorner(canvas, paint, i2, i3, i6, i6, i7);
        int i8 = -i6;
        drawCorner(canvas, paint, i2, i5, i6, i8, i7);
        drawCorner(canvas, paint, i4, i3, i8, i6, i7);
        drawCorner(canvas, paint, i4, i5, i8, i8, i7);
    }

    private void exitHoverTargets() {
        if (this.mHoveredSelf || this.mFirstHoverTarget != null) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 10, 0.0f, 0.0f, 0);
            motionEventObtain.setSource(4098);
            dispatchHoverEvent(motionEventObtain);
            motionEventObtain.recycle();
        }
    }

    private void exitTooltipHoverTargets() {
        if (this.mTooltipHoveredSelf || this.mTooltipHoverTarget != null) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 10, 0.0f, 0.0f, 0);
            motionEventObtain.setSource(4098);
            dispatchTooltipHoverEvent(motionEventObtain);
            motionEventObtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fillDifference(Canvas canvas, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Paint paint) {
        int i10 = i2 - i6;
        int i11 = i4 + i8;
        fillRect(canvas, paint, i10, i3 - i7, i11, i3);
        fillRect(canvas, paint, i10, i3, i2, i5);
        fillRect(canvas, paint, i4, i3, i11, i5);
        fillRect(canvas, paint, i10, i5, i11, i5 + i9);
    }

    private static void fillRect(Canvas canvas, Paint paint, int i2, int i3, int i4, int i5) {
        if (i2 == i4 || i3 == i5) {
            return;
        }
        if (i2 > i4) {
            i4 = i2;
            i2 = i4;
        }
        if (i3 > i5) {
            i5 = i3;
            i3 = i5;
        }
        canvas.drawRect(i2, i3, i4, i5, paint);
    }

    private View findChildWithAccessibilityFocus() {
        View accessibilityFocusedHost;
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl == null || (accessibilityFocusedHost = viewRootImpl.getAccessibilityFocusedHost()) == null) {
            return null;
        }
        ViewParent parent = accessibilityFocusedHost.getParent();
        while (parent instanceof View) {
            if (parent == this) {
                return accessibilityFocusedHost;
            }
            accessibilityFocusedHost = parent;
            parent = accessibilityFocusedHost.getParent();
        }
        return null;
    }

    private int getAndVerifyPreorderedIndex(int i2, int i3, boolean z2) {
        if (!z2 || (i3 = getChildDrawingOrder(i2, i3)) < i2) {
            return i3;
        }
        throw new IndexOutOfBoundsException(android.app.m.f("getChildDrawingOrder() returned invalid index ", i3, " (child count is ", i2, ")"));
    }

    private static View getAndVerifyPreorderedView(ArrayList<View> arrayList, View[] viewArr, int i2) {
        if (arrayList == null) {
            return viewArr[i2];
        }
        View view = arrayList.get(i2);
        if (view != null) {
            return view;
        }
        throw new RuntimeException(android.accessibilityservice.c.d("Invalid preorderedList contained null child at index ", i2));
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003a A[PHI: r7
  0x003a: PHI (r7v2 int) = (r7v0 int), (r7v0 int), (r7v0 int), (r7v8 int) binds: [B:24:0x0038, B:13:0x0025, B:7:0x001b, B:10:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x003e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0044  */
    public static int getChildMeasureSpec(int i2, int i3, int i4) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2) - i3;
        int i5 = 0;
        int iMax = Math.max(0, size);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    if (i4 < 0) {
                        if (i4 == -1) {
                            i4 = iMax;
                        } else if (i4 == -2) {
                            i4 = iMax;
                            i5 = Integer.MIN_VALUE;
                        }
                    }
                    i5 = 1073741824;
                }
                i4 = 0;
            } else if (i4 >= 0) {
                i5 = 1073741824;
            } else if (i4 != -1 ? i4 != -2 || View.sUseZeroUnspecifiedMeasureSpec : View.sUseZeroUnspecifiedMeasureSpec) {
                i4 = 0;
            } else {
                i4 = iMax;
            }
        } else if (i4 >= 0) {
            i5 = 1073741824;
        } else if (i4 == -1 || i4 == -2) {
            i4 = iMax;
            i5 = Integer.MIN_VALUE;
        } else {
            i4 = 0;
        }
        return View.MeasureSpec.makeMeasureSpec(i4, i5);
    }

    private ChildListForAutoFill getChildrenForAutofill(int i2) {
        ChildListForAutoFill childListForAutoFillObtain = ChildListForAutoFill.obtain();
        populateChildrenForAutofill(childListForAutoFillObtain, i2);
        return childListForAutoFillObtain;
    }

    private PointF getLocalPoint() {
        if (this.mLocalPoint == null) {
            this.mLocalPoint = new PointF();
        }
        return this.mLocalPoint;
    }

    private float[] getTempPoint() {
        if (this.mTempPoint == null) {
            this.mTempPoint = new float[2];
        }
        return this.mTempPoint;
    }

    private TouchTarget getTouchTarget(View view) {
        for (TouchTarget touchTarget = this.mFirstTouchTarget; touchTarget != null; touchTarget = touchTarget.next) {
            if (touchTarget.child == view) {
                return touchTarget;
            }
        }
        return null;
    }

    private MotionEvent getTransformedMotionEvent(MotionEvent motionEvent, View view) {
        float f2 = this.mScrollX - view.mLeft;
        float f3 = this.mScrollY - view.mTop;
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(f2, f3);
        if (!view.hasIdentityMatrix()) {
            motionEventObtain.transform(view.getInverseMatrix());
        }
        return motionEventObtain;
    }

    private boolean hasBooleanFlag(int i2) {
        return (this.mGroupFlags & i2) == i2;
    }

    private boolean hasChildWithZ() {
        for (int i2 = 0; i2 < this.mChildrenCount; i2++) {
            if (this.mChildren[i2].getZ() != 0.0f) {
                return true;
            }
        }
        return false;
    }

    private void initFromAttributes(Context context, AttributeSet attributeSet, int i2, int i3) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewGroup, i2, i3);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i4);
            switch (index) {
                case 0:
                    setClipChildren(typedArrayObtainStyledAttributes.getBoolean(index, true));
                    break;
                case 1:
                    setClipToPadding(typedArrayObtainStyledAttributes.getBoolean(index, true));
                    break;
                case 2:
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId > 0) {
                        setLayoutAnimation(AnimationUtils.loadLayoutAnimation(this.mContext, resourceId));
                    }
                    break;
                case 3:
                    setAnimationCacheEnabled(typedArrayObtainStyledAttributes.getBoolean(index, true));
                    break;
                case 4:
                    setPersistentDrawingCache(typedArrayObtainStyledAttributes.getInt(index, 2));
                    break;
                case 5:
                    setAlwaysDrawnWithCacheEnabled(typedArrayObtainStyledAttributes.getBoolean(index, true));
                    break;
                case 6:
                    setAddStatesFromChildren(typedArrayObtainStyledAttributes.getBoolean(index, false));
                    break;
                case 7:
                    setDescendantFocusability(DESCENDANT_FOCUSABILITY_FLAGS[typedArrayObtainStyledAttributes.getInt(index, 0)]);
                    break;
                case 8:
                    setMotionEventSplittingEnabled(typedArrayObtainStyledAttributes.getBoolean(index, false));
                    break;
                case 9:
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        setLayoutTransition(new LayoutTransition());
                    }
                    break;
                case 10:
                    setLayoutMode(typedArrayObtainStyledAttributes.getInt(index, -1));
                    break;
                case 11:
                    setTransitionGroup(typedArrayObtainStyledAttributes.getBoolean(index, false));
                    break;
                case 12:
                    setTouchscreenBlocksFocus(typedArrayObtainStyledAttributes.getBoolean(index, false));
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void initViewGroup() {
        if (!debugDraw()) {
            setFlags(128, 128);
        }
        this.mGroupFlags = this.mGroupFlags | 1 | 2 | 16 | 64 | 16384;
        if (this.mContext.getApplicationInfo().targetSdkVersion >= 11) {
            this.mGroupFlags |= 2097152;
        }
        setDescendantFocusability(131072);
        this.mChildren = new View[12];
        this.mChildrenCount = 0;
        this.mPersistentDrawingCache = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAnimationListener() {
        this.mGroupFlags = (this.mGroupFlags & (-513)) | 16;
        if (this.mAnimationListener != null) {
            post(new Runnable() { // from class: android.view.ViewGroup.3
                @Override // java.lang.Runnable
                public void run() {
                    ViewGroup.this.mAnimationListener.onAnimationEnd(ViewGroup.this.mLayoutAnimationController.getAnimation());
                }
            });
        }
        invalidate(true);
    }

    private static MotionEvent obtainMotionEventNoHistoryOrSelf(MotionEvent motionEvent) {
        return motionEvent.getHistorySize() == 0 ? motionEvent : MotionEvent.obtainNoHistory(motionEvent);
    }

    private void populateChildrenForAutofill(ArrayList<View> arrayList, int i2) {
        int i3 = this.mChildrenCount;
        if (i3 <= 0) {
            return;
        }
        ArrayList<View> arrayListBuildOrderedChildList = buildOrderedChildList();
        boolean z2 = arrayListBuildOrderedChildList == null && isChildrenDrawingOrderEnabled();
        for (int i4 = 0; i4 < i3; i4++) {
            int andVerifyPreorderedIndex = getAndVerifyPreorderedIndex(i3, i4, z2);
            View view = arrayListBuildOrderedChildList == null ? this.mChildren[andVerifyPreorderedIndex] : arrayListBuildOrderedChildList.get(andVerifyPreorderedIndex);
            if ((i2 & 1) != 0 || view.isImportantForAutofill()) {
                arrayList.add(view);
            } else if (view instanceof ViewGroup) {
                ((ViewGroup) view).populateChildrenForAutofill(arrayList, i2);
            }
        }
    }

    private void recreateChildDisplayList(View view) {
        int i2 = view.mPrivateFlags;
        view.mRecreateDisplayList = (Integer.MIN_VALUE & i2) != 0;
        view.mPrivateFlags = i2 & Integer.MAX_VALUE;
        view.updateDisplayListIfDirty();
        view.mRecreateDisplayList = false;
    }

    private void removeFromArray(int i2) {
        View[] viewArr = this.mChildren;
        ArrayList<View> arrayList = this.mTransitioningViews;
        if (arrayList == null || !arrayList.contains(viewArr[i2])) {
            viewArr[i2].mParent = null;
        }
        int i3 = this.mChildrenCount;
        if (i2 == i3 - 1) {
            int i4 = i3 - 1;
            this.mChildrenCount = i4;
            viewArr[i4] = null;
        } else {
            if (i2 < 0 || i2 >= i3) {
                throw new IndexOutOfBoundsException();
            }
            System.arraycopy(viewArr, i2 + 1, viewArr, i2, (i3 - i2) - 1);
            int i5 = this.mChildrenCount - 1;
            this.mChildrenCount = i5;
            viewArr[i5] = null;
        }
        int i6 = this.mLastTouchDownIndex;
        if (i6 == i2) {
            this.mLastTouchDownTime = 0L;
            this.mLastTouchDownIndex = -1;
        } else if (i6 > i2) {
            this.mLastTouchDownIndex = i6 - 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001e  */
    private void removePointersFromTouchTargets(int i2) {
        TouchTarget touchTarget = this.mFirstTouchTarget;
        TouchTarget touchTarget2 = null;
        while (touchTarget != null) {
            TouchTarget touchTarget3 = touchTarget.next;
            int i3 = touchTarget.pointerIdBits;
            if ((i3 & i2) != 0) {
                int i4 = i3 & (~i2);
                touchTarget.pointerIdBits = i4;
                if (i4 == 0) {
                    if (touchTarget2 == null) {
                        this.mFirstTouchTarget = touchTarget3;
                    } else {
                        touchTarget2.next = touchTarget3;
                    }
                    touchTarget.recycle();
                } else {
                    touchTarget2 = touchTarget;
                }
            } else {
                touchTarget2 = touchTarget;
            }
            touchTarget = touchTarget3;
        }
    }

    private boolean removeViewInternal(View view) {
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild < 0) {
            return false;
        }
        removeViewInternal(iIndexOfChild, view);
        return true;
    }

    private void removeViewsInternal(int i2, int i3) {
        ArrayList<View> arrayList;
        int i4 = i2 + i3;
        if (i2 < 0 || i3 < 0 || i4 > this.mChildrenCount) {
            throw new IndexOutOfBoundsException();
        }
        View view = this.mFocused;
        boolean z2 = this.mAttachInfo != null;
        View[] viewArr = this.mChildren;
        boolean z3 = false;
        View view2 = null;
        for (int i5 = i2; i5 < i4; i5++) {
            View view3 = viewArr[i5];
            LayoutTransition layoutTransition = this.mTransition;
            if (layoutTransition != null) {
                layoutTransition.removeChild(this, view3);
            }
            if (view3 == view) {
                view3.unFocus(null);
                z3 = true;
            }
            if (view3 == this.mDefaultFocus) {
                view2 = view3;
            }
            if (view3 == this.mFocusedInCluster) {
                clearFocusedInCluster(view3);
            }
            view3.clearAccessibilityFocus();
            cancelTouchTarget(view3);
            cancelHoverTarget(view3);
            if (view3.getAnimation() != null || ((arrayList = this.mTransitioningViews) != null && arrayList.contains(view3))) {
                addDisappearingView(view3);
            } else if (z2) {
                view3.dispatchDetachedFromWindow();
            }
            if (view3.hasTransientState()) {
                childHasTransientStateChanged(view3, false);
            }
            needGlobalAttributesUpdate(false);
            dispatchViewRemoved(view3);
        }
        removeFromArray(i2, i3);
        if (view2 != null) {
            clearDefaultFocus(view2);
        }
        if (z3) {
            clearChildFocus(view);
            if (rootViewRequestFocus()) {
                return;
            }
            notifyGlobalFocusCleared(view);
        }
    }

    private static boolean resetCancelNextUpFlag(View view) {
        int i2 = view.mPrivateFlags;
        if ((67108864 & i2) == 0) {
            return false;
        }
        view.mPrivateFlags = i2 & (-67108865);
        return true;
    }

    private void resetTouchState() {
        clearTouchTargets();
        resetCancelNextUpFlag(this);
        this.mGroupFlags &= -524289;
        this.mNestedScrollAxes = 0;
    }

    private boolean restoreFocusInClusterInternal(int i2) {
        if (this.mFocusedInCluster != null && getDescendantFocusability() != 393216) {
            View view = this.mFocusedInCluster;
            if ((view.mViewFlags & 12) == 0 && view.restoreFocusInCluster(i2)) {
                return true;
            }
        }
        return super.restoreFocusInCluster(i2);
    }

    private void setBooleanFlag(int i2, boolean z2) {
        if (z2) {
            this.mGroupFlags = i2 | this.mGroupFlags;
        } else {
            this.mGroupFlags = (~i2) & this.mGroupFlags;
        }
    }

    private void setLayoutMode(int i2, boolean z2) {
        this.mLayoutMode = i2;
        setBooleanFlag(8388608, z2);
    }

    private void setTouchscreenBlocksFocusNoRefocus(boolean z2) {
        if (z2) {
            this.mGroupFlags |= 67108864;
        } else {
            this.mGroupFlags &= -67108865;
        }
    }

    private static int sign(int i2) {
        return i2 >= 0 ? 1 : -1;
    }

    @Override // android.view.View
    public void addChildrenForAccessibility(ArrayList<View> arrayList) {
        if (getAccessibilityNodeProvider() != null) {
            return;
        }
        ChildListForAccessibility childListForAccessibilityObtain = ChildListForAccessibility.obtain(this, true);
        try {
            int childCount = childListForAccessibilityObtain.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = childListForAccessibilityObtain.getChildAt(i2);
                if ((childAt.mViewFlags & 12) == 0) {
                    if (childAt.includeForAccessibility()) {
                        arrayList.add(childAt);
                    } else {
                        childAt.addChildrenForAccessibility(arrayList);
                    }
                }
            }
        } finally {
            childListForAccessibilityObtain.recycle();
        }
    }

    @Override // android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        boolean zShouldBlockFocusForTouchscreen = shouldBlockFocusForTouchscreen();
        boolean z2 = isFocusableInTouchMode() || !zShouldBlockFocusForTouchscreen;
        if (descendantFocusability == 393216) {
            if (z2) {
                super.addFocusables(arrayList, i2, i3);
                return;
            }
            return;
        }
        if (zShouldBlockFocusForTouchscreen) {
            i3 |= 1;
        }
        if (descendantFocusability == 131072 && z2) {
            super.addFocusables(arrayList, i2, i3);
        }
        View[] viewArr = new View[this.mChildrenCount];
        int i4 = 0;
        for (int i5 = 0; i5 < this.mChildrenCount; i5++) {
            View view = this.mChildren[i5];
            if ((view.mViewFlags & 12) == 0) {
                viewArr[i4] = view;
                i4++;
            }
        }
        FocusFinder.sort(viewArr, 0, i4, this, isLayoutRtl());
        for (int i6 = 0; i6 < i4; i6++) {
            viewArr[i6].addFocusables(arrayList, i2, i3);
        }
        if (descendantFocusability == 262144 && z2 && size == arrayList.size()) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    @Override // android.view.View
    public void addKeyboardNavigationClusters(Collection<View> collection, int i2) {
        int size = collection.size();
        if (isKeyboardNavigationCluster()) {
            boolean touchscreenBlocksFocus = getTouchscreenBlocksFocus();
            try {
                setTouchscreenBlocksFocusNoRefocus(false);
                super.addKeyboardNavigationClusters(collection, i2);
                setTouchscreenBlocksFocusNoRefocus(touchscreenBlocksFocus);
            } catch (Throwable th) {
                setTouchscreenBlocksFocusNoRefocus(touchscreenBlocksFocus);
                throw th;
            }
        } else {
            super.addKeyboardNavigationClusters(collection, i2);
        }
        if (size == collection.size() && getDescendantFocusability() != 393216) {
            View[] viewArr = new View[this.mChildrenCount];
            int i3 = 0;
            for (int i4 = 0; i4 < this.mChildrenCount; i4++) {
                View view = this.mChildren[i4];
                if ((view.mViewFlags & 12) == 0) {
                    viewArr[i3] = view;
                    i3++;
                }
            }
            FocusFinder.sort(viewArr, 0, i3, this, isLayoutRtl());
            for (int i5 = 0; i5 < i3; i5++) {
                viewArr[i5].addKeyboardNavigationClusters(collection, i2);
            }
        }
    }

    public boolean addStatesFromChildren() {
        return (this.mGroupFlags & 8192) != 0;
    }

    @Override // android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        super.addTouchables(arrayList);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if ((view.mViewFlags & 12) == 0) {
                view.addTouchables(arrayList);
            }
        }
    }

    public void addTransientView(View view, int i2) {
        if (i2 < 0) {
            return;
        }
        if (this.mTransientIndices == null) {
            this.mTransientIndices = new ArrayList();
            this.mTransientViews = new ArrayList();
        }
        int size = this.mTransientIndices.size();
        if (size > 0) {
            int i3 = 0;
            while (i3 < size && i2 >= this.mTransientIndices.get(i3).intValue()) {
                i3++;
            }
            this.mTransientIndices.add(i3, Integer.valueOf(i2));
            this.mTransientViews.add(i3, view);
        } else {
            this.mTransientIndices.add(Integer.valueOf(i2));
            this.mTransientViews.add(view);
        }
        view.mParent = this;
        view.dispatchAttachedToWindow(this.mAttachInfo, this.mViewFlags & 12);
        invalidate(true);
    }

    public void addView(View view) {
        addView(view, -1);
    }

    public boolean addViewInLayout(View view, int i2, LayoutParams layoutParams) {
        return addViewInLayout(view, i2, layoutParams, false);
    }

    public void attachLayoutAnimationParameters(View view, LayoutParams layoutParams, int i2, int i3) {
        LayoutAnimationController.AnimationParameters animationParameters = layoutParams.layoutAnimationParameters;
        if (animationParameters == null) {
            animationParameters = new LayoutAnimationController.AnimationParameters();
            layoutParams.layoutAnimationParameters = animationParameters;
        }
        animationParameters.count = i3;
        animationParameters.index = i2;
    }

    public void attachViewToParent(View view, int i2, LayoutParams layoutParams) {
        view.mLayoutParams = layoutParams;
        if (i2 < 0) {
            i2 = this.mChildrenCount;
        }
        addInArray(view, i2);
        view.mParent = this;
        view.mPrivateFlags = (view.mPrivateFlags & (-6291457) & (-32769)) | 32 | Integer.MIN_VALUE;
        this.mPrivateFlags |= Integer.MIN_VALUE;
        if (view.hasFocus()) {
            requestChildFocus(view, view.findFocus());
        }
        dispatchVisibilityAggregated(isAttachedToWindow() && getWindowVisibility() == 0 && isShown());
    }

    @Override // android.view.ViewParent
    public void bringChildToFront(View view) {
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            removeFromArray(iIndexOfChild);
            addInArray(view, this.mChildrenCount);
            view.mParent = this;
            requestLayout();
            invalidate();
        }
    }

    public ArrayList<View> buildOrderedChildList() {
        int i2 = this.mChildrenCount;
        if (i2 <= 1 || !hasChildWithZ()) {
            return null;
        }
        ArrayList<View> arrayList = this.mPreSortedChildren;
        if (arrayList == null) {
            this.mPreSortedChildren = new ArrayList<>(i2);
        } else {
            arrayList.clear();
            this.mPreSortedChildren.ensureCapacity(i2);
        }
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        for (int i3 = 0; i3 < i2; i3++) {
            View view = this.mChildren[getAndVerifyPreorderedIndex(i2, i3, zIsChildrenDrawingOrderEnabled)];
            float z2 = view.getZ();
            int i4 = i3;
            while (i4 > 0 && this.mPreSortedChildren.get(i4 - 1).getZ() > z2) {
                i4--;
            }
            this.mPreSortedChildren.add(i4, view);
        }
        return this.mPreSortedChildren;
    }

    public ArrayList<View> buildTouchDispatchChildList() {
        return buildOrderedChildList();
    }

    public boolean canAnimate() {
        return this.mLayoutAnimationController != null;
    }

    @Override // android.view.View
    public void captureTransitioningViews(List<View> list) {
        if (getVisibility() != 0) {
            return;
        }
        if (isTransitionGroup()) {
            list.add(this);
            return;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).captureTransitioningViews(list);
        }
    }

    public boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams != null;
    }

    @Override // android.view.ViewParent
    public void childDrawableStateChanged(View view) {
        if ((this.mGroupFlags & 8192) != 0) {
            refreshDrawableState();
        }
    }

    @Override // android.view.ViewParent
    public void childHasTransientStateChanged(View view, boolean z2) {
        boolean zHasTransientState = hasTransientState();
        if (z2) {
            this.mChildCountWithTransientState++;
        } else {
            this.mChildCountWithTransientState--;
        }
        boolean zHasTransientState2 = hasTransientState();
        ViewParent viewParent = this.mParent;
        if (viewParent == null || zHasTransientState == zHasTransientState2) {
            return;
        }
        try {
            viewParent.childHasTransientStateChanged(this, zHasTransientState2);
        } catch (AbstractMethodError e2) {
            Log.e(TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
        }
    }

    public void cleanupLayoutState(View view) {
        view.mPrivateFlags &= -4097;
    }

    @Override // android.view.ViewParent
    public void clearChildFocus(View view) {
        this.mFocused = null;
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.clearChildFocus(this);
        }
    }

    public void clearDefaultFocus(View view) {
        View view2 = this.mDefaultFocus;
        if (view2 == view || view2 == null || !view2.isFocusedByDefault()) {
            this.mDefaultFocus = null;
            for (int i2 = 0; i2 < this.mChildrenCount; i2++) {
                View view3 = this.mChildren[i2];
                if (view3.isFocusedByDefault()) {
                    this.mDefaultFocus = view3;
                    return;
                }
                if (this.mDefaultFocus == null && view3.hasDefaultFocus()) {
                    this.mDefaultFocus = view3;
                }
            }
            ViewParent viewParent = this.mParent;
            if (viewParent instanceof ViewGroup) {
                ((ViewGroup) viewParent).clearDefaultFocus(this);
            }
        }
    }

    public void clearDisappearingChildren() {
        ArrayList<View> arrayList = this.mDisappearingChildren;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = arrayList.get(i2);
                if (view.mAttachInfo != null) {
                    view.dispatchDetachedFromWindow();
                }
                view.clearAnimation();
            }
            arrayList.clear();
            invalidate();
        }
    }

    @Override // android.view.View
    public void clearFocus() {
        View view = this.mFocused;
        if (view == null) {
            super.clearFocus();
        } else {
            this.mFocused = null;
            view.clearFocus();
        }
    }

    public void clearFocusedInCluster(View view) {
        if (this.mFocusedInCluster != view) {
            return;
        }
        clearFocusedInCluster();
    }

    @Override // android.view.View
    public Insets computeOpticalInsets() {
        if (!isLayoutModeOptical()) {
            return Insets.NONE;
        }
        int iMax = 0;
        int iMax2 = 0;
        int iMax3 = 0;
        int iMax4 = 0;
        for (int i2 = 0; i2 < this.mChildrenCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                Insets opticalInsets = childAt.getOpticalInsets();
                iMax = Math.max(iMax, opticalInsets.left);
                iMax2 = Math.max(iMax2, opticalInsets.top);
                iMax3 = Math.max(iMax3, opticalInsets.right);
                iMax4 = Math.max(iMax4, opticalInsets.bottom);
            }
        }
        return Insets.of(iMax, iMax2, iMax3, iMax4);
    }

    @Override // android.view.View
    public Bitmap createSnapshot(Bitmap.Config config, int i2, boolean z2) {
        int[] iArr;
        int i3 = this.mChildrenCount;
        if (z2) {
            iArr = new int[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                View childAt = getChildAt(i4);
                int visibility = childAt.getVisibility();
                iArr[i4] = visibility;
                if (visibility == 0) {
                    childAt.mViewFlags = (childAt.mViewFlags & (-13)) | 4;
                }
            }
        } else {
            iArr = null;
        }
        Bitmap bitmapCreateSnapshot = super.createSnapshot(config, i2, z2);
        if (z2) {
            for (int i5 = 0; i5 < i3; i5++) {
                View childAt2 = getChildAt(i5);
                childAt2.mViewFlags = (childAt2.mViewFlags & (-13)) | (iArr[i5] & 12);
            }
        }
        return bitmapCreateSnapshot;
    }

    @Override // android.view.View
    public void debug(int i2) {
        super.debug(i2);
        if (this.mFocused != null) {
            Log.d("View", View.debugIndent(i2) + "mFocused");
            this.mFocused.debug(i2 + 1);
        }
        if (this.mDefaultFocus != null) {
            Log.d("View", View.debugIndent(i2) + "mDefaultFocus");
            this.mDefaultFocus.debug(i2 + 1);
        }
        if (this.mFocusedInCluster != null) {
            Log.d("View", View.debugIndent(i2) + "mFocusedInCluster");
            this.mFocusedInCluster.debug(i2 + 1);
        }
        if (this.mChildrenCount != 0) {
            Log.d("View", View.debugIndent(i2) + "{");
        }
        int i3 = this.mChildrenCount;
        for (int i4 = 0; i4 < i3; i4++) {
            this.mChildren[i4].debug(i2 + 1);
        }
        if (this.mChildrenCount != 0) {
            Log.d("View", View.debugIndent(i2) + "}");
        }
    }

    @Override // android.view.View
    public void destroyHardwareResources() {
        super.destroyHardwareResources();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).destroyHardwareResources();
        }
    }

    public void detachAllViewsFromParent() {
        int i2 = this.mChildrenCount;
        if (i2 <= 0) {
            return;
        }
        View[] viewArr = this.mChildren;
        this.mChildrenCount = 0;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            viewArr[i3].mParent = null;
            viewArr[i3] = null;
        }
    }

    public void detachViewFromParent(View view) {
        removeFromArray(indexOfChild(view));
    }

    public void detachViewsFromParent(int i2, int i3) {
        removeFromArray(i2, i3);
    }

    @Override // android.view.View
    public boolean dispatchActivityResult(String str, int i2, int i3, Intent intent) {
        if (super.dispatchActivityResult(str, i2, i3, intent)) {
            return true;
        }
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            if (getChildAt(i4).dispatchActivityResult(str, i2, i3, intent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        WindowInsets windowInsetsDispatchApplyWindowInsets = super.dispatchApplyWindowInsets(windowInsets);
        if (!windowInsetsDispatchApplyWindowInsets.isConsumed()) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                windowInsetsDispatchApplyWindowInsets = getChildAt(i2).dispatchApplyWindowInsets(windowInsetsDispatchApplyWindowInsets);
                if (windowInsetsDispatchApplyWindowInsets.isConsumed()) {
                    break;
                }
            }
        }
        return windowInsetsDispatchApplyWindowInsets;
    }

    @Override // android.view.View
    public void dispatchAttachedToWindow(View.AttachInfo attachInfo, int i2) {
        this.mGroupFlags |= 4194304;
        super.dispatchAttachedToWindow(attachInfo, i2);
        this.mGroupFlags &= -4194305;
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            View view = viewArr[i4];
            view.dispatchAttachedToWindow(attachInfo, combineVisibility(i2, view.getVisibility()));
        }
        List<Integer> list = this.mTransientIndices;
        int size = list == null ? 0 : list.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = this.mTransientViews.get(i5);
            view2.dispatchAttachedToWindow(attachInfo, combineVisibility(i2, view2.getVisibility()));
        }
    }

    @Override // android.view.View
    public void dispatchCancelPendingInputEvents() {
        super.dispatchCancelPendingInputEvents();
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchCancelPendingInputEvents();
        }
    }

    @Override // android.view.View
    public boolean dispatchCapturedPointerEvent(MotionEvent motionEvent) {
        if ((this.mPrivateFlags & 18) == 18) {
            return super.dispatchCapturedPointerEvent(motionEvent);
        }
        View view = this.mFocused;
        return view != null && (view.mPrivateFlags & 16) == 16 && view.dispatchCapturedPointerEvent(motionEvent);
    }

    @Override // android.view.View
    public void dispatchCollectViewAttributes(View.AttachInfo attachInfo, int i2) {
        if ((i2 & 12) == 0) {
            super.dispatchCollectViewAttributes(attachInfo, i2);
            int i3 = this.mChildrenCount;
            View[] viewArr = this.mChildren;
            for (int i4 = 0; i4 < i3; i4++) {
                View view = viewArr[i4];
                view.dispatchCollectViewAttributes(attachInfo, (view.mViewFlags & 12) | i2);
            }
        }
    }

    @Override // android.view.View
    public void dispatchConfigurationChanged(Configuration configuration) {
        super.dispatchConfigurationChanged(configuration);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchConfigurationChanged(configuration);
        }
    }

    @Override // android.view.View
    public void dispatchDetachedFromWindow() {
        cancelAndClearTouchTargets(null);
        exitHoverTargets();
        exitTooltipHoverTargets();
        this.mLayoutCalledWhileSuppressed = false;
        this.mChildrenInterestedInDrag = null;
        this.mIsInterestedInDrag = false;
        DragEvent dragEvent = this.mCurrentDragStartEvent;
        if (dragEvent != null) {
            dragEvent.recycle();
            this.mCurrentDragStartEvent = null;
        }
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchDetachedFromWindow();
        }
        clearDisappearingChildren();
        int size = this.mTransientViews == null ? 0 : this.mTransientIndices.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.mTransientViews.get(i4).dispatchDetachedFromWindow();
        }
        super.dispatchDetachedFromWindow();
    }

    @Override // android.view.View
    public void dispatchDisplayHint(int i2) {
        super.dispatchDisplayHint(i2);
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4].dispatchDisplayHint(i2);
        }
    }

    @Override // android.view.View
    public boolean dispatchDragEnterExitInPreN(DragEvent dragEvent) {
        View view;
        if (dragEvent.mAction == 6 && (view = this.mCurrentDragChild) != null) {
            view.dispatchDragEnterExitInPreN(dragEvent);
            this.mCurrentDragChild = null;
        }
        return this.mIsInterestedInDrag && super.dispatchDragEnterExitInPreN(dragEvent);
    }

    @Override // android.view.View
    public boolean dispatchDragEvent(DragEvent dragEvent) {
        boolean z2;
        boolean z3;
        float f2 = dragEvent.mX;
        float f3 = dragEvent.mY;
        ClipData clipData = dragEvent.mClipData;
        PointF localPoint = getLocalPoint();
        int i2 = dragEvent.mAction;
        if (i2 == 1) {
            this.mCurrentDragChild = null;
            this.mCurrentDragStartEvent = DragEvent.obtain(dragEvent);
            HashSet<View> hashSet = this.mChildrenInterestedInDrag;
            if (hashSet == null) {
                this.mChildrenInterestedInDrag = new HashSet<>();
            } else {
                hashSet.clear();
            }
            int i3 = this.mChildrenCount;
            View[] viewArr = this.mChildren;
            boolean z4 = false;
            for (int i4 = 0; i4 < i3; i4++) {
                View view = viewArr[i4];
                view.mPrivateFlags2 &= -4;
                if (view.getVisibility() == 0 && notifyChildOfDragStart(viewArr[i4])) {
                    z4 = true;
                }
            }
            boolean zDispatchDragEvent = super.dispatchDragEvent(dragEvent);
            this.mIsInterestedInDrag = zDispatchDragEvent;
            z2 = zDispatchDragEvent ? true : z4;
            if (!z2) {
                this.mCurrentDragStartEvent.recycle();
                this.mCurrentDragStartEvent = null;
            }
        } else {
            if (i2 == 2 || i2 == 3) {
                View viewFindFrontmostDroppableChildAt = findFrontmostDroppableChildAt(dragEvent.mX, dragEvent.mY, localPoint);
                View view2 = this.mCurrentDragChild;
                if (viewFindFrontmostDroppableChildAt != view2) {
                    if (View.sCascadedDragDrop) {
                        int i5 = dragEvent.mAction;
                        dragEvent.mX = 0.0f;
                        dragEvent.mY = 0.0f;
                        dragEvent.mClipData = null;
                        if (view2 != null) {
                            dragEvent.mAction = 6;
                            view2.dispatchDragEnterExitInPreN(dragEvent);
                        }
                        if (viewFindFrontmostDroppableChildAt != null) {
                            dragEvent.mAction = 5;
                            viewFindFrontmostDroppableChildAt.dispatchDragEnterExitInPreN(dragEvent);
                        }
                        dragEvent.mAction = i5;
                        dragEvent.mX = f2;
                        dragEvent.mY = f3;
                        dragEvent.mClipData = clipData;
                    }
                    this.mCurrentDragChild = viewFindFrontmostDroppableChildAt;
                }
                if (viewFindFrontmostDroppableChildAt == null && this.mIsInterestedInDrag) {
                    viewFindFrontmostDroppableChildAt = this;
                }
                if (viewFindFrontmostDroppableChildAt == null) {
                    return false;
                }
                if (viewFindFrontmostDroppableChildAt == this) {
                    return super.dispatchDragEvent(dragEvent);
                }
                dragEvent.mX = localPoint.f73x;
                dragEvent.mY = localPoint.f74y;
                boolean zDispatchDragEvent2 = viewFindFrontmostDroppableChildAt.dispatchDragEvent(dragEvent);
                dragEvent.mX = f2;
                dragEvent.mY = f3;
                if (this.mIsInterestedInDrag) {
                    return !(View.sCascadedDragDrop ? zDispatchDragEvent2 : dragEvent.mEventHandlerWasCalled) ? super.dispatchDragEvent(dragEvent) : zDispatchDragEvent2;
                }
                return zDispatchDragEvent2;
            }
            if (i2 != 4) {
                return false;
            }
            HashSet<View> hashSet2 = this.mChildrenInterestedInDrag;
            if (hashSet2 != null) {
                Iterator<View> it = hashSet2.iterator();
                z3 = false;
                while (it.hasNext()) {
                    if (it.next().dispatchDragEvent(dragEvent)) {
                        z3 = true;
                    }
                }
                hashSet2.clear();
            } else {
                z3 = false;
            }
            DragEvent dragEvent2 = this.mCurrentDragStartEvent;
            if (dragEvent2 != null) {
                dragEvent2.recycle();
                this.mCurrentDragStartEvent = null;
            }
            if (!this.mIsInterestedInDrag) {
                return z3;
            }
            z2 = super.dispatchDragEvent(dragEvent) ? true : z3;
            this.mIsInterestedInDrag = false;
        }
        return z2;
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        int iSave;
        boolean zIsRecordingFor = canvas.isRecordingFor(this.mRenderNode);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        int i3 = this.mGroupFlags;
        int i4 = 0;
        if ((i3 & 8) != 0 && canAnimate()) {
            isHardwareAccelerated();
            for (int i5 = 0; i5 < i2; i5++) {
                View view = viewArr[i5];
                if ((view.mViewFlags & 12) == 0) {
                    attachLayoutAnimationParameters(view, view.getLayoutParams(), i5, i2);
                    bindLayoutAnimation(view);
                }
            }
            LayoutAnimationController layoutAnimationController = this.mLayoutAnimationController;
            if (layoutAnimationController.willOverlap()) {
                this.mGroupFlags |= 128;
            }
            layoutAnimationController.start();
            this.mGroupFlags = this.mGroupFlags & (-9) & (-17);
            Animation.AnimationListener animationListener = this.mAnimationListener;
            if (animationListener != null) {
                animationListener.onAnimationStart(layoutAnimationController.getAnimation());
            }
        }
        boolean z2 = (i3 & 34) == 34;
        if (z2) {
            iSave = canvas.save(2);
            int i6 = this.mScrollX;
            int i7 = this.mPaddingLeft + i6;
            int i8 = this.mScrollY;
            canvas.clipRect(i7, this.mPaddingTop + i8, ((i6 + this.mRight) - this.mLeft) - this.mPaddingRight, ((i8 + this.mBottom) - this.mTop) - this.mPaddingBottom);
        } else {
            iSave = 0;
        }
        this.mPrivateFlags &= -65;
        this.mGroupFlags &= -5;
        long drawingTime = getDrawingTime();
        if (zIsRecordingFor) {
            canvas.insertReorderBarrier();
        }
        List<Integer> list = this.mTransientIndices;
        int size = list == null ? 0 : list.size();
        int i9 = size != 0 ? 0 : -1;
        ArrayList<View> arrayListBuildOrderedChildList = zIsRecordingFor ? null : buildOrderedChildList();
        boolean z3 = arrayListBuildOrderedChildList == null && isChildrenDrawingOrderEnabled();
        int i10 = i9;
        boolean zDrawChild = false;
        while (i4 < i2) {
            int i11 = i10;
            while (i11 >= 0 && this.mTransientIndices.get(i11).intValue() == i4) {
                View view2 = this.mTransientViews.get(i11);
                int i12 = iSave;
                if ((view2.mViewFlags & 12) == 0 || view2.getAnimation() != null) {
                    zDrawChild = drawChild(canvas, view2, drawingTime) | zDrawChild;
                }
                i11++;
                if (i11 >= size) {
                    i11 = -1;
                }
                iSave = i12;
            }
            int i13 = iSave;
            View andVerifyPreorderedView = getAndVerifyPreorderedView(arrayListBuildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i2, i4, z3));
            if ((andVerifyPreorderedView.mViewFlags & 12) == 0 || andVerifyPreorderedView.getAnimation() != null) {
                zDrawChild = drawChild(canvas, andVerifyPreorderedView, drawingTime) | zDrawChild;
            }
            i4++;
            i10 = i11;
            iSave = i13;
        }
        int i14 = iSave;
        int i15 = i10;
        while (i15 >= 0) {
            View view3 = this.mTransientViews.get(i15);
            if ((view3.mViewFlags & 12) == 0 || view3.getAnimation() != null) {
                zDrawChild = drawChild(canvas, view3, drawingTime) | zDrawChild;
            }
            i15++;
            if (i15 >= size) {
                break;
            }
        }
        if (arrayListBuildOrderedChildList != null) {
            arrayListBuildOrderedChildList.clear();
        }
        ArrayList<View> arrayList = this.mDisappearingChildren;
        if (arrayList != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                zDrawChild |= drawChild(canvas, arrayList.get(size2), drawingTime);
            }
        }
        if (zIsRecordingFor) {
            canvas.insertInorderBarrier();
        }
        if (debugDraw()) {
            onDebugDraw(canvas);
        }
        if (z2) {
            canvas.restoreToCount(i14);
        }
        int i16 = this.mGroupFlags;
        if ((i16 & 4) == 4) {
            invalidate(true);
        }
        if ((i16 & 16) == 0 && (i16 & 512) == 0 && this.mLayoutAnimationController.isDone() && !zDrawChild) {
            this.mGroupFlags |= 512;
            post(new Runnable() { // from class: android.view.ViewGroup.2
                @Override // java.lang.Runnable
                public void run() {
                    ViewGroup.this.notifyAnimationListener();
                }
            });
        }
    }

    @Override // android.view.View
    public void dispatchDrawableHotspotChanged(float f2, float f3) {
        int i2 = this.mChildrenCount;
        if (i2 == 0) {
            return;
        }
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            boolean z2 = (view.isClickable() || view.isLongClickable()) ? false : true;
            boolean z3 = (view.mViewFlags & 4194304) != 0;
            if (z2 || z3) {
                float[] tempPoint = getTempPoint();
                tempPoint[0] = f2;
                tempPoint[1] = f3;
                transformPointToViewLocal(tempPoint, view);
                view.drawableHotspotChanged(tempPoint[0], tempPoint[1]);
            }
        }
    }

    @Override // android.view.View
    public void dispatchFinishTemporaryDetach() {
        super.dispatchFinishTemporaryDetach();
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchFinishTemporaryDetach();
        }
    }

    public void dispatchFreezeSelfOnly(SparseArray<Parcelable> sparseArray) {
        super.dispatchSaveInstanceState(sparseArray);
    }

    @Override // android.view.View
    public boolean dispatchGenericFocusedEvent(MotionEvent motionEvent) {
        if ((this.mPrivateFlags & 18) == 18) {
            return super.dispatchGenericFocusedEvent(motionEvent);
        }
        View view = this.mFocused;
        if (view == null || (view.mPrivateFlags & 16) != 16) {
            return false;
        }
        return view.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchGenericPointerEvent(MotionEvent motionEvent) {
        int i2 = this.mChildrenCount;
        if (i2 != 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            ArrayList<View> arrayListBuildOrderedChildList = buildOrderedChildList();
            boolean z2 = arrayListBuildOrderedChildList == null && isChildrenDrawingOrderEnabled();
            View[] viewArr = this.mChildren;
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                View andVerifyPreorderedView = getAndVerifyPreorderedView(arrayListBuildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i2, i3, z2));
                if (canViewReceivePointerEvents(andVerifyPreorderedView) && isTransformedTouchPointInView(x2, y2, andVerifyPreorderedView, null) && dispatchTransformedGenericPointerEvent(motionEvent, andVerifyPreorderedView)) {
                    if (arrayListBuildOrderedChildList != null) {
                        arrayListBuildOrderedChildList.clear();
                    }
                    return true;
                }
            }
            if (arrayListBuildOrderedChildList != null) {
                arrayListBuildOrderedChildList.clear();
            }
        }
        return super.dispatchGenericPointerEvent(motionEvent);
    }

    @Override // android.view.View
    public void dispatchGetDisplayList() {
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if ((view.mViewFlags & 12) == 0 || view.getAnimation() != null) {
                recreateChildDisplayList(view);
            }
        }
        ViewOverlay viewOverlay = this.mOverlay;
        if (viewOverlay != null) {
            recreateChildDisplayList(viewOverlay.getOverlayView());
        }
        ArrayList<View> arrayList = this.mDisappearingChildren;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                recreateChildDisplayList(arrayList.get(i4));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:89:0x0177  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        boolean zDispatchHoverEvent;
        MotionEvent motionEventObtainMotionEventNoHistoryOrSelf;
        boolean z2;
        boolean zDispatchTransformedGenericPointerEvent;
        int action = motionEvent.getAction();
        boolean zOnInterceptHoverEvent = onInterceptHoverEvent(motionEvent);
        motionEvent.setAction(action);
        HoverTarget hoverTarget = this.mFirstHoverTarget;
        PointF pointF = null;
        this.mFirstHoverTarget = null;
        if (zOnInterceptHoverEvent || action == 10) {
            motionEvent2 = motionEvent;
            zDispatchHoverEvent = false;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int i2 = this.mChildrenCount;
            if (i2 != 0) {
                ArrayList<View> arrayListBuildOrderedChildList = buildOrderedChildList();
                boolean z3 = arrayListBuildOrderedChildList == null && isChildrenDrawingOrderEnabled();
                View[] viewArr = this.mChildren;
                motionEvent2 = motionEvent;
                HoverTarget hoverTarget2 = null;
                int i3 = i2 - 1;
                zDispatchHoverEvent = false;
                while (i3 >= 0) {
                    View andVerifyPreorderedView = getAndVerifyPreorderedView(arrayListBuildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i2, i3, z3));
                    if (canViewReceivePointerEvents(andVerifyPreorderedView) && isTransformedTouchPointInView(x2, y2, andVerifyPreorderedView, pointF)) {
                        HoverTarget hoverTargetObtain = hoverTarget;
                        HoverTarget hoverTarget3 = pointF;
                        while (true) {
                            if (hoverTargetObtain == null) {
                                hoverTargetObtain = HoverTarget.obtain(andVerifyPreorderedView);
                                z2 = false;
                                break;
                            }
                            if (hoverTargetObtain.child == andVerifyPreorderedView) {
                                if (hoverTarget3 != 0) {
                                    hoverTarget3.next = hoverTargetObtain.next;
                                } else {
                                    hoverTarget = hoverTargetObtain.next;
                                }
                                hoverTargetObtain.next = null;
                                z2 = true;
                                break;
                            }
                            hoverTarget3 = hoverTargetObtain;
                            hoverTargetObtain = hoverTargetObtain.next;
                        }
                        if (hoverTarget2 != null) {
                            hoverTarget2.next = hoverTargetObtain;
                        } else {
                            this.mFirstHoverTarget = hoverTargetObtain;
                        }
                        if (action == 9) {
                            if (!z2) {
                                zDispatchTransformedGenericPointerEvent = zDispatchHoverEvent | dispatchTransformedGenericPointerEvent(motionEvent, andVerifyPreorderedView);
                                zDispatchHoverEvent = zDispatchTransformedGenericPointerEvent;
                            }
                        } else if (action == 7) {
                            if (z2) {
                                zDispatchHoverEvent |= dispatchTransformedGenericPointerEvent(motionEvent, andVerifyPreorderedView);
                            } else {
                                MotionEvent motionEventObtainMotionEventNoHistoryOrSelf2 = obtainMotionEventNoHistoryOrSelf(motionEvent2);
                                motionEventObtainMotionEventNoHistoryOrSelf2.setAction(9);
                                boolean zDispatchTransformedGenericPointerEvent2 = zDispatchHoverEvent | dispatchTransformedGenericPointerEvent(motionEventObtainMotionEventNoHistoryOrSelf2, andVerifyPreorderedView);
                                motionEventObtainMotionEventNoHistoryOrSelf2.setAction(action);
                                zDispatchTransformedGenericPointerEvent = zDispatchTransformedGenericPointerEvent2 | dispatchTransformedGenericPointerEvent(motionEventObtainMotionEventNoHistoryOrSelf2, andVerifyPreorderedView);
                                motionEvent2 = motionEventObtainMotionEventNoHistoryOrSelf2;
                                zDispatchHoverEvent = zDispatchTransformedGenericPointerEvent;
                            }
                        }
                        if (zDispatchHoverEvent) {
                            break;
                        }
                        hoverTarget2 = hoverTargetObtain;
                    }
                    i3--;
                    pointF = null;
                }
                if (arrayListBuildOrderedChildList != null) {
                    arrayListBuildOrderedChildList.clear();
                }
            } else {
                motionEvent2 = motionEvent;
                zDispatchHoverEvent = false;
            }
        }
        while (hoverTarget != null) {
            View view = hoverTarget.child;
            if (action == 10) {
                zDispatchHoverEvent |= dispatchTransformedGenericPointerEvent(motionEvent, view);
            } else {
                if (action == 7) {
                    boolean zIsHoverExitPending = motionEvent.isHoverExitPending();
                    motionEvent.setHoverExitPending(true);
                    dispatchTransformedGenericPointerEvent(motionEvent, view);
                    motionEvent.setHoverExitPending(zIsHoverExitPending);
                }
                MotionEvent motionEventObtainMotionEventNoHistoryOrSelf3 = obtainMotionEventNoHistoryOrSelf(motionEvent2);
                motionEventObtainMotionEventNoHistoryOrSelf3.setAction(10);
                dispatchTransformedGenericPointerEvent(motionEventObtainMotionEventNoHistoryOrSelf3, view);
                motionEventObtainMotionEventNoHistoryOrSelf3.setAction(action);
                motionEvent2 = motionEventObtainMotionEventNoHistoryOrSelf3;
            }
            HoverTarget hoverTarget4 = hoverTarget.next;
            hoverTarget.recycle();
            hoverTarget = hoverTarget4;
        }
        boolean z4 = (zDispatchHoverEvent || action == 10 || motionEvent.isHoverExitPending()) ? false : true;
        boolean z5 = this.mHoveredSelf;
        if (z4 != z5) {
            if (z5) {
                if (action == 10) {
                    zDispatchHoverEvent |= super.dispatchHoverEvent(motionEvent);
                } else {
                    if (action == 7) {
                        super.dispatchHoverEvent(motionEvent);
                    }
                    MotionEvent motionEventObtainMotionEventNoHistoryOrSelf4 = obtainMotionEventNoHistoryOrSelf(motionEvent2);
                    motionEventObtainMotionEventNoHistoryOrSelf4.setAction(10);
                    super.dispatchHoverEvent(motionEventObtainMotionEventNoHistoryOrSelf4);
                    motionEventObtainMotionEventNoHistoryOrSelf4.setAction(action);
                    motionEvent2 = motionEventObtainMotionEventNoHistoryOrSelf4;
                }
                this.mHoveredSelf = false;
            }
            if (z4) {
                if (action == 9) {
                    zDispatchHoverEvent |= super.dispatchHoverEvent(motionEvent);
                    this.mHoveredSelf = true;
                } else if (action == 7) {
                    motionEventObtainMotionEventNoHistoryOrSelf = obtainMotionEventNoHistoryOrSelf(motionEvent2);
                    motionEventObtainMotionEventNoHistoryOrSelf.setAction(9);
                    boolean zDispatchHoverEvent2 = zDispatchHoverEvent | super.dispatchHoverEvent(motionEventObtainMotionEventNoHistoryOrSelf);
                    motionEventObtainMotionEventNoHistoryOrSelf.setAction(action);
                    zDispatchHoverEvent = zDispatchHoverEvent2 | super.dispatchHoverEvent(motionEventObtainMotionEventNoHistoryOrSelf);
                    this.mHoveredSelf = true;
                }
            }
            if (motionEventObtainMotionEventNoHistoryOrSelf != motionEvent) {
                motionEventObtainMotionEventNoHistoryOrSelf.recycle();
            }
            return zDispatchHoverEvent;
        }
        if (z4) {
            zDispatchHoverEvent |= super.dispatchHoverEvent(motionEvent);
        }
        motionEventObtainMotionEventNoHistoryOrSelf = motionEvent2;
        if (motionEventObtainMotionEventNoHistoryOrSelf != motionEvent) {
            motionEventObtainMotionEventNoHistoryOrSelf.recycle();
        }
        return zDispatchHoverEvent;
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onKeyEvent(keyEvent, 1);
        }
        if ((this.mPrivateFlags & 18) != 18) {
            View view = this.mFocused;
            if (view != null && (view.mPrivateFlags & 16) == 16 && view.dispatchKeyEvent(keyEvent)) {
                return true;
            }
        } else if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        InputEventConsistencyVerifier inputEventConsistencyVerifier2 = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier2 == null) {
            return false;
        }
        inputEventConsistencyVerifier2.onUnhandledEvent(keyEvent, 1);
        return false;
    }

    @Override // android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if ((this.mPrivateFlags & 18) == 18) {
            return super.dispatchKeyEventPreIme(keyEvent);
        }
        View view = this.mFocused;
        if (view == null || (view.mPrivateFlags & 16) != 16) {
            return false;
        }
        return view.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if ((this.mPrivateFlags & 18) == 18) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        View view = this.mFocused;
        if (view == null || (view.mPrivateFlags & 16) != 16) {
            return false;
        }
        return view.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.view.View
    public void dispatchMovedToDisplay(Display display, Configuration configuration) {
        super.dispatchMovedToDisplay(display, configuration);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchMovedToDisplay(display, configuration);
        }
    }

    @Override // android.view.View
    public void dispatchPointerCaptureChanged(boolean z2) {
        exitHoverTargets();
        super.dispatchPointerCaptureChanged(z2);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchPointerCaptureChanged(z2);
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        boolean zDispatchPopulateAccessibilityEvent;
        boolean zDispatchPopulateAccessibilityEventInternal;
        if (includeForAccessibility() && (zDispatchPopulateAccessibilityEventInternal = super.dispatchPopulateAccessibilityEventInternal(accessibilityEvent))) {
            return zDispatchPopulateAccessibilityEventInternal;
        }
        ChildListForAccessibility childListForAccessibilityObtain = ChildListForAccessibility.obtain(this, true);
        try {
            int childCount = childListForAccessibilityObtain.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = childListForAccessibilityObtain.getChildAt(i2);
                if ((childAt.mViewFlags & 12) == 0 && (zDispatchPopulateAccessibilityEvent = childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent))) {
                    return zDispatchPopulateAccessibilityEvent;
                }
            }
            return false;
        } finally {
            childListForAccessibilityObtain.recycle();
        }
    }

    @Override // android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        super.dispatchProvideAutofillStructure(viewStructure, i2);
        if (viewStructure.getChildCount() != 0) {
            return;
        }
        if (!isLaidOut()) {
            Log.v("View", "dispatchProvideAutofillStructure(): not laid out, ignoring " + this.mChildrenCount + " children of " + getAutofillId());
            return;
        }
        ChildListForAutoFill childrenForAutofill = getChildrenForAutofill(i2);
        int size = childrenForAutofill.size();
        viewStructure.setChildCount(size);
        for (int i3 = 0; i3 < size; i3++) {
            childrenForAutofill.get(i3).dispatchProvideAutofillStructure(viewStructure.newChild(i3), i2);
        }
        childrenForAutofill.recycle();
    }

    @Override // android.view.View
    public void dispatchProvideStructure(ViewStructure viewStructure) {
        int i2;
        int andVerifyPreorderedIndex;
        super.dispatchProvideStructure(viewStructure);
        if (isAssistBlocked() || viewStructure.getChildCount() != 0 || (i2 = this.mChildrenCount) <= 0) {
            return;
        }
        if (!isLaidOut()) {
            StringBuilder sbS = android.accessibilityservice.c.s("dispatchProvideStructure(): not laid out, ignoring ", i2, " children of ");
            sbS.append(getAccessibilityViewId());
            Log.v("View", sbS.toString());
            return;
        }
        viewStructure.setChildCount(i2);
        ArrayList<View> arrayListBuildOrderedChildList = buildOrderedChildList();
        boolean z2 = arrayListBuildOrderedChildList == null && isChildrenDrawingOrderEnabled();
        for (int i3 = 0; i3 < i2; i3++) {
            try {
                andVerifyPreorderedIndex = getAndVerifyPreorderedIndex(i2, i3, z2);
            } catch (IndexOutOfBoundsException e2) {
                if (this.mContext.getApplicationInfo().targetSdkVersion >= 23) {
                    throw e2;
                }
                Log.w(TAG, android.app.m.e("Bad getChildDrawingOrder while collecting assist @ ", i3, " of ", i2), e2);
                if (i3 > 0) {
                    int[] iArr = new int[i2];
                    SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
                    for (int i4 = 0; i4 < i3; i4++) {
                        int childDrawingOrder = getChildDrawingOrder(i2, i4);
                        iArr[i4] = childDrawingOrder;
                        sparseBooleanArray.put(childDrawingOrder, true);
                    }
                    int i5 = 0;
                    for (int i6 = i3; i6 < i2; i6++) {
                        while (sparseBooleanArray.get(i5, false)) {
                            i5++;
                        }
                        iArr[i6] = i5;
                        i5++;
                    }
                    ArrayList<View> arrayList = new ArrayList<>(i2);
                    for (int i7 = 0; i7 < i2; i7++) {
                        arrayList.add(this.mChildren[iArr[i7]]);
                    }
                    arrayListBuildOrderedChildList = arrayList;
                    andVerifyPreorderedIndex = i3;
                    z2 = false;
                } else {
                    z2 = false;
                    andVerifyPreorderedIndex = i3;
                }
            }
            getAndVerifyPreorderedView(arrayListBuildOrderedChildList, this.mChildren, andVerifyPreorderedIndex).dispatchProvideStructure(viewStructure.newChild(i3));
        }
        if (arrayListBuildOrderedChildList != null) {
            arrayListBuildOrderedChildList.clear();
        }
    }

    @Override // android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        super.dispatchRestoreInstanceState(sparseArray);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if (view == null) {
                Log.d(TAG, "dispatchRestoreInstanceState count: " + i3 + " is null, this: " + this);
            } else if ((view.mViewFlags & 536870912) != 536870912) {
                view.dispatchRestoreInstanceState(sparseArray);
            }
        }
    }

    @Override // android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        super.dispatchSaveInstanceState(sparseArray);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if ((view.mViewFlags & 536870912) != 536870912) {
                view.dispatchSaveInstanceState(sparseArray);
            }
        }
    }

    @Override // android.view.View
    public void dispatchScreenStateChanged(int i2) {
        super.dispatchScreenStateChanged(i2);
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4].dispatchScreenStateChanged(i2);
        }
    }

    @Override // android.view.View
    public void dispatchSetActivated(boolean z2) {
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].setActivated(z2);
        }
    }

    @Override // android.view.View
    public void dispatchSetPressed(boolean z2) {
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if (!z2 || (!view.isClickable() && !view.isLongClickable())) {
                view.setPressed(z2);
            }
        }
    }

    @Override // android.view.View
    public void dispatchSetSelected(boolean z2) {
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].setSelected(z2);
        }
    }

    @Override // android.view.View
    public void dispatchStartTemporaryDetach() {
        super.dispatchStartTemporaryDetach();
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchStartTemporaryDetach();
        }
    }

    @Override // android.view.View
    public void dispatchSystemUiVisibilityChanged(int i2) {
        super.dispatchSystemUiVisibilityChanged(i2);
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4].dispatchSystemUiVisibilityChanged(i2);
        }
    }

    public void dispatchThawSelfOnly(SparseArray<Parcelable> sparseArray) {
        super.dispatchRestoreInstanceState(sparseArray);
    }

    @Override // android.view.View
    public boolean dispatchTooltipHoverEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        View view = null;
        if (action != 7) {
            if (action == 10) {
                View view2 = this.mTooltipHoverTarget;
                if (view2 != null) {
                    view2.dispatchTooltipHoverEvent(motionEvent);
                    this.mTooltipHoverTarget = null;
                } else if (this.mTooltipHoveredSelf) {
                    super.dispatchTooltipHoverEvent(motionEvent);
                    this.mTooltipHoveredSelf = false;
                }
            }
            return false;
        }
        int i2 = this.mChildrenCount;
        if (i2 != 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            ArrayList<View> arrayListBuildOrderedChildList = buildOrderedChildList();
            boolean z2 = arrayListBuildOrderedChildList == null && isChildrenDrawingOrderEnabled();
            View[] viewArr = this.mChildren;
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                View andVerifyPreorderedView = getAndVerifyPreorderedView(arrayListBuildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i2, i3, z2));
                if (canViewReceivePointerEvents(andVerifyPreorderedView) && isTransformedTouchPointInView(x2, y2, andVerifyPreorderedView, null) && dispatchTooltipHoverEvent(motionEvent, andVerifyPreorderedView)) {
                    view = andVerifyPreorderedView;
                    break;
                }
            }
            if (arrayListBuildOrderedChildList != null) {
                arrayListBuildOrderedChildList.clear();
            }
        }
        View view3 = this.mTooltipHoverTarget;
        if (view3 != view) {
            if (view3 != null) {
                motionEvent.setAction(10);
                this.mTooltipHoverTarget.dispatchTooltipHoverEvent(motionEvent);
                motionEvent.setAction(action);
            }
            this.mTooltipHoverTarget = view;
        }
        if (this.mTooltipHoverTarget == null) {
            boolean zDispatchTooltipHoverEvent = super.dispatchTooltipHoverEvent(motionEvent);
            this.mTooltipHoveredSelf = zDispatchTooltipHoverEvent;
            return zDispatchTooltipHoverEvent;
        }
        if (this.mTooltipHoveredSelf) {
            this.mTooltipHoveredSelf = false;
            motionEvent.setAction(10);
            super.dispatchTooltipHoverEvent(motionEvent);
            motionEvent.setAction(action);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x016d  */
    /* JADX WARN: Code duplicated, block: B:159:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x0102 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x00db  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:85:0x010a  */
    /* JADX WARN: Code duplicated, block: B:87:0x010d  */
    /* JADX WARN: Code duplicated, block: B:90:0x0118 A[LOOP:1: B:86:0x010b->B:90:0x0118, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:91:0x011b  */
    /* JADX WARN: Code duplicated, block: B:93:0x0130  */
    /* JADX WARN: Code duplicated, block: B:94:0x0136  */
    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        InputEventConsistencyVerifier inputEventConsistencyVerifier;
        boolean zOnInterceptTouchEvent;
        TouchTarget touchTargetAddTouchTarget;
        boolean z2;
        boolean z3;
        TouchTarget touchTarget;
        View view;
        TouchTarget touchTarget2;
        int i2;
        InputEventConsistencyVerifier inputEventConsistencyVerifier2 = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier2 != null) {
            inputEventConsistencyVerifier2.onTouchEvent(motionEvent, 1);
        }
        boolean zDispatchTransformedTouchEvent = false;
        if (motionEvent.isTargetAccessibilityFocus() && isAccessibilityFocusedViewOrHost()) {
            motionEvent.setTargetAccessibilityFocus(false);
        }
        if (onFilterTouchEventForSecurity(motionEvent)) {
            int action = motionEvent.getAction();
            int i3 = action & 255;
            if (i3 == 0) {
                cancelAndClearTouchTargets(motionEvent);
                resetTouchState();
            }
            if (i3 != 0 && this.mFirstTouchTarget == null) {
                zOnInterceptTouchEvent = true;
            } else if ((this.mGroupFlags & 524288) != 0) {
                zOnInterceptTouchEvent = false;
            } else {
                zOnInterceptTouchEvent = onInterceptTouchEvent(motionEvent);
                motionEvent.setAction(action);
            }
            if (zOnInterceptTouchEvent || this.mFirstTouchTarget != null) {
                motionEvent.setTargetAccessibilityFocus(false);
            }
            boolean z4 = resetCancelNextUpFlag(this) || i3 == 3;
            boolean z5 = (this.mGroupFlags & 2097152) != 0;
            if (z4 || zOnInterceptTouchEvent) {
                touchTargetAddTouchTarget = null;
                z2 = false;
            } else {
                View viewFindChildWithAccessibilityFocus = motionEvent.isTargetAccessibilityFocus() ? findChildWithAccessibilityFocus() : null;
                if (i3 == 0 || ((z5 && i3 == 5) || i3 == 7)) {
                    int actionIndex = motionEvent.getActionIndex();
                    int pointerId = z5 ? 1 << motionEvent.getPointerId(actionIndex) : -1;
                    removePointersFromTouchTargets(pointerId);
                    int i4 = this.mChildrenCount;
                    if (i4 != 0) {
                        float x2 = motionEvent.getX(actionIndex);
                        float y2 = motionEvent.getY(actionIndex);
                        ArrayList<View> arrayListBuildTouchDispatchChildList = buildTouchDispatchChildList();
                        boolean z6 = arrayListBuildTouchDispatchChildList == null && isChildrenDrawingOrderEnabled();
                        View[] viewArr = this.mChildren;
                        int i5 = i4 - 1;
                        touchTargetAddTouchTarget = null;
                        while (true) {
                            if (i5 < 0) {
                                z3 = false;
                                zDispatchTransformedTouchEvent = false;
                                break;
                            }
                            TouchTarget touchTarget3 = touchTargetAddTouchTarget;
                            int andVerifyPreorderedIndex = getAndVerifyPreorderedIndex(i4, i5, z6);
                            boolean z7 = z6;
                            View andVerifyPreorderedView = getAndVerifyPreorderedView(arrayListBuildTouchDispatchChildList, viewArr, andVerifyPreorderedIndex);
                            if (viewFindChildWithAccessibilityFocus == null) {
                                if (canViewReceivePointerEvents(andVerifyPreorderedView)) {
                                    view = viewFindChildWithAccessibilityFocus;
                                    if (!isTransformedTouchPointInView(x2, y2, andVerifyPreorderedView, null)) {
                                        touchTarget2 = getTouchTarget(andVerifyPreorderedView);
                                        if (touchTarget2 != null) {
                                            touchTarget2.pointerIdBits |= pointerId;
                                            z3 = false;
                                            zDispatchTransformedTouchEvent = false;
                                            touchTargetAddTouchTarget = touchTarget2;
                                            break;
                                        }
                                        resetCancelNextUpFlag(andVerifyPreorderedView);
                                        y2 = y2;
                                        if (dispatchTransformedTouchEvent(motionEvent, false, andVerifyPreorderedView, pointerId)) {
                                            this.mLastTouchDownTime = motionEvent.getDownTime();
                                            if (arrayListBuildTouchDispatchChildList != null) {
                                                for (i2 = 0; i2 < i4; i2++) {
                                                    if (viewArr[andVerifyPreorderedIndex] == this.mChildren[i2]) {
                                                        this.mLastTouchDownIndex = i2;
                                                        break;
                                                    }
                                                }
                                            } else {
                                                this.mLastTouchDownIndex = andVerifyPreorderedIndex;
                                            }
                                            this.mLastTouchDownX = motionEvent.getX();
                                            this.mLastTouchDownY = motionEvent.getY();
                                            touchTargetAddTouchTarget = addTouchTarget(andVerifyPreorderedView, pointerId);
                                            z3 = false;
                                            zDispatchTransformedTouchEvent = true;
                                            break;
                                        }
                                        motionEvent.setTargetAccessibilityFocus(false);
                                        touchTargetAddTouchTarget = touchTarget2;
                                    }
                                    viewFindChildWithAccessibilityFocus = view;
                                    i5--;
                                    z6 = z7;
                                    y2 = y2;
                                } else {
                                    view = viewFindChildWithAccessibilityFocus;
                                }
                                motionEvent.setTargetAccessibilityFocus(false);
                                touchTargetAddTouchTarget = touchTarget3;
                                viewFindChildWithAccessibilityFocus = view;
                                i5--;
                                z6 = z7;
                                y2 = y2;
                            } else {
                                if (viewFindChildWithAccessibilityFocus != andVerifyPreorderedView) {
                                    y2 = y2;
                                    touchTargetAddTouchTarget = touchTarget3;
                                } else {
                                    viewFindChildWithAccessibilityFocus = null;
                                    i5 = i5;
                                    if (canViewReceivePointerEvents(andVerifyPreorderedView)) {
                                        view = viewFindChildWithAccessibilityFocus;
                                        if (!isTransformedTouchPointInView(x2, y2, andVerifyPreorderedView, null)) {
                                            touchTarget2 = getTouchTarget(andVerifyPreorderedView);
                                            if (touchTarget2 != null) {
                                                touchTarget2.pointerIdBits |= pointerId;
                                                z3 = false;
                                                zDispatchTransformedTouchEvent = false;
                                                touchTargetAddTouchTarget = touchTarget2;
                                                break;
                                            }
                                            resetCancelNextUpFlag(andVerifyPreorderedView);
                                            y2 = y2;
                                            if (dispatchTransformedTouchEvent(motionEvent, false, andVerifyPreorderedView, pointerId)) {
                                                this.mLastTouchDownTime = motionEvent.getDownTime();
                                                if (arrayListBuildTouchDispatchChildList != null) {
                                                    while (i2 < i4) {
                                                        if (viewArr[andVerifyPreorderedIndex] == this.mChildren[i2]) {
                                                            this.mLastTouchDownIndex = i2;
                                                            break;
                                                        }
                                                    }
                                                } else {
                                                    this.mLastTouchDownIndex = andVerifyPreorderedIndex;
                                                }
                                                this.mLastTouchDownX = motionEvent.getX();
                                                this.mLastTouchDownY = motionEvent.getY();
                                                touchTargetAddTouchTarget = addTouchTarget(andVerifyPreorderedView, pointerId);
                                                z3 = false;
                                                zDispatchTransformedTouchEvent = true;
                                                break;
                                            }
                                            motionEvent.setTargetAccessibilityFocus(false);
                                            touchTargetAddTouchTarget = touchTarget2;
                                        }
                                        viewFindChildWithAccessibilityFocus = view;
                                    } else {
                                        view = viewFindChildWithAccessibilityFocus;
                                    }
                                    motionEvent.setTargetAccessibilityFocus(false);
                                    touchTargetAddTouchTarget = touchTarget3;
                                    viewFindChildWithAccessibilityFocus = view;
                                }
                                i5--;
                                z6 = z7;
                                y2 = y2;
                            }
                        }
                        if (arrayListBuildTouchDispatchChildList != null) {
                            arrayListBuildTouchDispatchChildList.clear();
                        }
                    } else {
                        touchTargetAddTouchTarget = null;
                        z3 = false;
                    }
                    if (touchTargetAddTouchTarget == null && (touchTarget = this.mFirstTouchTarget) != null) {
                        do {
                            touchTargetAddTouchTarget = touchTarget;
                            touchTarget = touchTargetAddTouchTarget.next;
                        } while (touchTarget != null);
                        touchTargetAddTouchTarget.pointerIdBits |= pointerId;
                    }
                    boolean z8 = zDispatchTransformedTouchEvent;
                    zDispatchTransformedTouchEvent = z3;
                    z2 = z8;
                } else {
                    touchTargetAddTouchTarget = null;
                    z2 = false;
                }
            }
            TouchTarget touchTarget4 = this.mFirstTouchTarget;
            if (touchTarget4 == null) {
                zDispatchTransformedTouchEvent = dispatchTransformedTouchEvent(motionEvent, z4, null, -1);
            } else {
                TouchTarget touchTarget5 = null;
                boolean z9 = zDispatchTransformedTouchEvent;
                while (touchTarget4 != null && this.mFirstTouchTarget != null) {
                    TouchTarget touchTarget6 = touchTarget4.next;
                    if (z2 && touchTarget4 == touchTargetAddTouchTarget) {
                        z9 = true;
                    } else {
                        View view2 = touchTarget4.child;
                        if (view2 == null) {
                            StringBuilder sbS = android.accessibilityservice.c.s("Current action is :", i3, ", Check TouchTarget: mFirstTouchTarget:");
                            sbS.append(this.mFirstTouchTarget);
                            sbS.append(", target:");
                            sbS.append(touchTarget4);
                            sbS.append(", next:");
                            sbS.append(touchTarget6);
                            sbS.append(", mFirstTouchTarget child: ");
                            sbS.append(this.mFirstTouchTarget.child);
                            Log.w(TAG, sbS.toString());
                            Throwable th = new Throwable();
                            th.fillInStackTrace();
                            Log.d(TAG, "Throw", th);
                        } else {
                            boolean z10 = (resetCancelNextUpFlag(view2) || zOnInterceptTouchEvent) ? true : zDispatchTransformedTouchEvent;
                            if (dispatchTransformedTouchEvent(motionEvent, z10, touchTarget4.child, touchTarget4.pointerIdBits)) {
                                z9 = true;
                            }
                            if (z10) {
                                if (touchTarget5 == null) {
                                    this.mFirstTouchTarget = touchTarget6;
                                } else {
                                    touchTarget5.next = touchTarget6;
                                }
                                touchTarget4.recycle();
                            }
                            touchTarget4 = touchTarget6;
                        }
                    }
                    touchTarget5 = touchTarget4;
                    touchTarget4 = touchTarget6;
                }
                zDispatchTransformedTouchEvent = z9;
            }
            if (z4 || i3 == 1 || i3 == 7) {
                resetTouchState();
            } else if (z5 && i3 == 6) {
                removePointersFromTouchTargets(1 << motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        if (!zDispatchTransformedTouchEvent && (inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier) != null) {
            inputEventConsistencyVerifier.onUnhandledEvent(motionEvent, 1);
        }
        return zDispatchTransformedTouchEvent;
    }

    @Override // android.view.View
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onTrackballEvent(motionEvent, 1);
        }
        if ((this.mPrivateFlags & 18) != 18) {
            View view = this.mFocused;
            if (view != null && (view.mPrivateFlags & 16) == 16 && view.dispatchTrackballEvent(motionEvent)) {
                return true;
            }
        } else if (super.dispatchTrackballEvent(motionEvent)) {
            return true;
        }
        InputEventConsistencyVerifier inputEventConsistencyVerifier2 = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier2 == null) {
            return false;
        }
        inputEventConsistencyVerifier2.onUnhandledEvent(motionEvent, 1);
        return false;
    }

    @Override // android.view.View
    public boolean dispatchUnhandledMove(View view, int i2) {
        View view2 = this.mFocused;
        return view2 != null && view2.dispatchUnhandledMove(view, i2);
    }

    public void dispatchViewAdded(View view) {
        onViewAdded(view);
        OnHierarchyChangeListener onHierarchyChangeListener = this.mOnHierarchyChangeListener;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(this, view);
        }
    }

    public void dispatchViewRemoved(View view) {
        onViewRemoved(view);
        OnHierarchyChangeListener onHierarchyChangeListener = this.mOnHierarchyChangeListener;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(this, view);
        }
    }

    @Override // android.view.View
    public boolean dispatchVisibilityAggregated(boolean z2) {
        boolean zDispatchVisibilityAggregated = super.dispatchVisibilityAggregated(z2);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            if (viewArr[i3].getVisibility() == 0) {
                viewArr[i3].dispatchVisibilityAggregated(zDispatchVisibilityAggregated);
            }
        }
        return zDispatchVisibilityAggregated;
    }

    @Override // android.view.View
    public void dispatchVisibilityChanged(View view, int i2) {
        super.dispatchVisibilityChanged(view, i2);
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4].dispatchVisibilityChanged(view, i2);
        }
    }

    @Override // android.view.View
    public void dispatchWindowFocusChanged(boolean z2) {
        super.dispatchWindowFocusChanged(z2);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchWindowFocusChanged(z2);
        }
    }

    @Override // android.view.View
    public void dispatchWindowSystemUiVisiblityChanged(int i2) {
        super.dispatchWindowSystemUiVisiblityChanged(i2);
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4].dispatchWindowSystemUiVisiblityChanged(i2);
        }
    }

    @Override // android.view.View
    public void dispatchWindowVisibilityChanged(int i2) {
        super.dispatchWindowVisibilityChanged(i2);
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4].dispatchWindowVisibilityChanged(i2);
        }
    }

    public boolean drawChild(Canvas canvas, View view, long j2) {
        return view.draw(canvas, this, j2);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int i2 = this.mGroupFlags;
        if ((65536 & i2) != 0) {
            if ((i2 & 8192) != 0) {
                throw new IllegalStateException("addStateFromChildren cannot be enabled if a child has duplicateParentState set to true");
            }
            View[] viewArr = this.mChildren;
            int i3 = this.mChildrenCount;
            for (int i4 = 0; i4 < i3; i4++) {
                View view = viewArr[i4];
                if ((view.mViewFlags & 4194304) != 0) {
                    view.refreshDrawableState();
                }
            }
        }
    }

    @Override // android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("focus:descendantFocusability", getDescendantFocusability());
        viewHierarchyEncoder.addProperty("drawing:clipChildren", getClipChildren());
        viewHierarchyEncoder.addProperty("drawing:clipToPadding", getClipToPadding());
        viewHierarchyEncoder.addProperty("drawing:childrenDrawingOrderEnabled", isChildrenDrawingOrderEnabled());
        viewHierarchyEncoder.addProperty("drawing:persistentDrawingCache", getPersistentDrawingCache());
        int childCount = getChildCount();
        viewHierarchyEncoder.addProperty("meta:__childCount__", (short) childCount);
        for (int i2 = 0; i2 < childCount; i2++) {
            viewHierarchyEncoder.addPropertyKey("meta:__child__" + i2);
            getChildAt(i2).encode(viewHierarchyEncoder);
        }
    }

    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.mTransitioningViews;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.mDisappearingChildren;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                return;
            }
            arrayList2.remove(view);
            ArrayList<View> arrayList3 = this.mVisibilityChangingChildren;
            if (arrayList3 == null || !arrayList3.contains(view)) {
                if (view.mAttachInfo != null) {
                    view.dispatchDetachedFromWindow();
                }
                if (view.mParent != null) {
                    view.mParent = null;
                }
            } else {
                this.mVisibilityChangingChildren.remove(view);
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public View findFocus() {
        if (isFocused()) {
            return this;
        }
        View view = this.mFocused;
        if (view != null) {
            return view.findFocus();
        }
        return null;
    }

    public View findFrontmostDroppableChildAt(float f2, float f3, PointF pointF) {
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            View view = viewArr[i3];
            if (view.canAcceptDrag() && isTransformedTouchPointInView(f2, f3, view, pointF)) {
                return view;
            }
        }
        return null;
    }

    @Override // android.view.View
    public void findNamedViews(Map<String, View> map) {
        if (getVisibility() == 0 || this.mGhostView != null) {
            super.findNamedViews(map);
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).findNamedViews(map);
            }
        }
    }

    @Override // android.view.View
    public View findViewByAccessibilityIdTraversal(int i2) {
        View viewFindViewByAccessibilityIdTraversal = super.findViewByAccessibilityIdTraversal(i2);
        if (viewFindViewByAccessibilityIdTraversal != null) {
            return viewFindViewByAccessibilityIdTraversal;
        }
        if (getAccessibilityNodeProvider() != null) {
            return null;
        }
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            View viewFindViewByAccessibilityIdTraversal2 = viewArr[i4].findViewByAccessibilityIdTraversal(i2);
            if (viewFindViewByAccessibilityIdTraversal2 != null) {
                return viewFindViewByAccessibilityIdTraversal2;
            }
        }
        return null;
    }

    @Override // android.view.View
    public View findViewByAutofillIdTraversal(int i2) {
        View viewFindViewByAutofillIdTraversal = super.findViewByAutofillIdTraversal(i2);
        if (viewFindViewByAutofillIdTraversal != null) {
            return viewFindViewByAutofillIdTraversal;
        }
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            View viewFindViewByAutofillIdTraversal2 = viewArr[i4].findViewByAutofillIdTraversal(i2);
            if (viewFindViewByAutofillIdTraversal2 != null) {
                return viewFindViewByAutofillIdTraversal2;
            }
        }
        return null;
    }

    @Override // android.view.View
    public <T extends View> T findViewByPredicateTraversal(Predicate<View> predicate, View view) {
        T t2;
        if (predicate.test(this)) {
            return this;
        }
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            View view2 = viewArr[i3];
            if (view2 != view && (view2.mPrivateFlags & 8) == 0 && (t2 = (T) view2.findViewByPredicate(predicate)) != null) {
                return t2;
            }
        }
        return null;
    }

    @Override // android.view.View
    public <T extends View> T findViewTraversal(int i2) {
        T t2;
        if (i2 == this.mID) {
            return this;
        }
        View[] viewArr = this.mChildren;
        int i3 = this.mChildrenCount;
        for (int i4 = 0; i4 < i3; i4++) {
            View view = viewArr[i4];
            if ((view.mPrivateFlags & 8) == 0 && (t2 = (T) view.findViewById(i2)) != null) {
                return t2;
            }
        }
        return null;
    }

    @Override // android.view.View
    public <T extends View> T findViewWithTagTraversal(Object obj) {
        T t2;
        if (obj != null && obj.equals(this.mTag)) {
            return this;
        }
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if ((view.mPrivateFlags & 8) == 0 && (t2 = (T) view.findViewWithTag(obj)) != null) {
                return t2;
            }
        }
        return null;
    }

    @Override // android.view.View
    public void findViewsWithText(ArrayList<View> arrayList, CharSequence charSequence, int i2) {
        super.findViewsWithText(arrayList, charSequence, i2);
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            View view = viewArr[i4];
            if ((view.mViewFlags & 12) == 0 && (view.mPrivateFlags & 8) == 0) {
                view.findViewsWithText(arrayList, charSequence, i2);
            }
        }
    }

    public void finishAnimatingView(View view, Animation animation) {
        ArrayList<View> arrayList = this.mDisappearingChildren;
        if (arrayList != null && arrayList.contains(view)) {
            arrayList.remove(view);
            if (view.mAttachInfo != null) {
                view.dispatchDetachedFromWindow();
            }
            view.clearAnimation();
            this.mGroupFlags |= 4;
        }
        if (animation != null && !animation.getFillAfter()) {
            view.clearAnimation();
        }
        if ((view.mPrivateFlags & 65536) == 65536) {
            view.onAnimationEnd();
            view.mPrivateFlags &= -65537;
            this.mGroupFlags |= 4;
        }
    }

    @Override // android.view.ViewParent
    public View focusSearch(View view, int i2) {
        if (isRootNamespace()) {
            return FocusFinder.getInstance().findNextFocus(this, view, i2);
        }
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            return viewParent.focusSearch(view, i2);
        }
        return null;
    }

    @Override // android.view.ViewParent
    public void focusableViewAvailable(View view) {
        if (this.mParent == null || getDescendantFocusability() == 393216 || (this.mViewFlags & 12) != 0) {
            return;
        }
        if (isFocusableInTouchMode() || !shouldBlockFocusForTouchscreen()) {
            if (!isFocused() || getDescendantFocusability() == 262144) {
                this.mParent.focusableViewAvailable(view);
            }
        }
    }

    @Override // android.view.View
    public boolean gatherTransparentRegion(Region region) {
        boolean z2;
        boolean z3 = (this.mPrivateFlags & 512) == 0;
        if (z3 && region == null) {
            return true;
        }
        super.gatherTransparentRegion(region);
        int i2 = this.mChildrenCount;
        if (i2 > 0) {
            ArrayList<View> arrayListBuildOrderedChildList = buildOrderedChildList();
            boolean z4 = arrayListBuildOrderedChildList == null && isChildrenDrawingOrderEnabled();
            View[] viewArr = this.mChildren;
            z2 = true;
            for (int i3 = 0; i3 < i2; i3++) {
                View andVerifyPreorderedView = getAndVerifyPreorderedView(arrayListBuildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i2, i3, z4));
                if (((andVerifyPreorderedView.mViewFlags & 12) == 0 || andVerifyPreorderedView.getAnimation() != null) && !andVerifyPreorderedView.gatherTransparentRegion(region)) {
                    z2 = false;
                }
            }
            if (arrayListBuildOrderedChildList != null) {
                arrayListBuildOrderedChildList.clear();
            }
        } else {
            z2 = true;
        }
        return z3 || z2;
    }

    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return layoutParams;
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return ViewGroup.class.getName();
    }

    public View getChildAt(int i2) {
        if (i2 < 0 || i2 >= this.mChildrenCount) {
            return null;
        }
        return this.mChildren[i2];
    }

    public int getChildCount() {
        return this.mChildrenCount;
    }

    public int getChildDrawingOrder(int i2, int i3) {
        return i3;
    }

    public boolean getChildStaticTransformation(View view, Transformation transformation) {
        return false;
    }

    public Transformation getChildTransformation() {
        if (this.mChildTransformation == null) {
            this.mChildTransformation = new Transformation();
        }
        return this.mChildTransformation;
    }

    @Override // android.view.ViewParent
    public boolean getChildVisibleRect(View view, Rect rect, Point point) {
        return getChildVisibleRect(view, rect, point, false);
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean getClipChildren() {
        return (this.mGroupFlags & 1) != 0;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean getClipToPadding() {
        return hasBooleanFlag(2);
    }

    public View getDeepestFocusedChild() {
        View focusedChild = this;
        while (focusedChild != null) {
            if (focusedChild.isFocused()) {
                return focusedChild;
            }
            focusedChild = focusedChild instanceof ViewGroup ? ((ViewGroup) focusedChild).getFocusedChild() : null;
        }
        return null;
    }

    @ViewDebug.ExportedProperty(category = "focus", mapping = {@ViewDebug.IntToString(from = 131072, to = "FOCUS_BEFORE_DESCENDANTS"), @ViewDebug.IntToString(from = 262144, to = "FOCUS_AFTER_DESCENDANTS"), @ViewDebug.IntToString(from = 393216, to = "FOCUS_BLOCK_DESCENDANTS")})
    public int getDescendantFocusability() {
        return this.mGroupFlags & 393216;
    }

    public View getFocusedChild() {
        return this.mFocused;
    }

    public LayoutAnimationController getLayoutAnimation() {
        return this.mLayoutAnimationController;
    }

    public Animation.AnimationListener getLayoutAnimationListener() {
        return this.mAnimationListener;
    }

    public int getLayoutMode() {
        if (this.mLayoutMode == -1) {
            ViewParent viewParent = this.mParent;
            setLayoutMode(viewParent instanceof ViewGroup ? ((ViewGroup) viewParent).getLayoutMode() : LAYOUT_MODE_DEFAULT, false);
        }
        return this.mLayoutMode;
    }

    public LayoutTransition getLayoutTransition() {
        return this.mTransition;
    }

    public int getNestedScrollAxes() {
        return this.mNestedScrollAxes;
    }

    public int getNumChildrenForAccessibility() {
        int numChildrenForAccessibility = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.includeForAccessibility()) {
                numChildrenForAccessibility++;
            } else if (childAt instanceof ViewGroup) {
                numChildrenForAccessibility = ((ViewGroup) childAt).getNumChildrenForAccessibility() + numChildrenForAccessibility;
            }
        }
        return numChildrenForAccessibility;
    }

    @ViewDebug.ExportedProperty(category = "drawing", mapping = {@ViewDebug.IntToString(from = 0, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 1, to = "ANIMATION"), @ViewDebug.IntToString(from = 2, to = "SCROLLING"), @ViewDebug.IntToString(from = 3, to = "ALL")})
    public int getPersistentDrawingCache() {
        return this.mPersistentDrawingCache;
    }

    @Override // android.view.View
    public void getScrollIndicatorBounds(Rect rect) {
        super.getScrollIndicatorBounds(rect);
        if ((this.mGroupFlags & 34) == 34) {
            rect.left += this.mPaddingLeft;
            rect.right -= this.mPaddingRight;
            rect.top += this.mPaddingTop;
            rect.bottom -= this.mPaddingBottom;
        }
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public boolean getTouchscreenBlocksFocus() {
        return (this.mGroupFlags & 67108864) != 0;
    }

    public View getTransientView(int i2) {
        List<View> list = this.mTransientViews;
        if (list == null || i2 >= list.size()) {
            return null;
        }
        return this.mTransientViews.get(i2);
    }

    public int getTransientViewCount() {
        List<Integer> list = this.mTransientIndices;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public int getTransientViewIndex(int i2) {
        List<Integer> list;
        if (i2 < 0 || (list = this.mTransientIndices) == null || i2 >= list.size()) {
            return -1;
        }
        return this.mTransientIndices.get(i2).intValue();
    }

    @Override // android.view.View
    public void handleFocusGainInternal(int i2, Rect rect) {
        View view = this.mFocused;
        if (view != null) {
            view.unFocus(this);
            this.mFocused = null;
            this.mFocusedInCluster = null;
        }
        super.handleFocusGainInternal(i2, rect);
    }

    @Override // android.view.View
    public boolean hasDefaultFocus() {
        return this.mDefaultFocus != null || super.hasDefaultFocus();
    }

    @Override // android.view.View
    public boolean hasFocus() {
        return ((this.mPrivateFlags & 2) == 0 && this.mFocused == null) ? false : true;
    }

    @Override // android.view.View
    public boolean hasFocusable(boolean z2, boolean z3) {
        if ((this.mViewFlags & 12) != 0) {
            return false;
        }
        if ((z2 || getFocusable() != 16) && isFocusable()) {
            return true;
        }
        if (getDescendantFocusability() != 393216) {
            return hasFocusableChild(z3);
        }
        return false;
    }

    public boolean hasFocusableChild(boolean z2) {
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if (z2 && view.hasExplicitFocusable()) {
                return true;
            }
            if (!z2 && view.hasFocusable()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean hasHoveredChild() {
        return this.mFirstHoverTarget != null;
    }

    @Override // android.view.View
    public boolean hasTransientState() {
        return this.mChildCountWithTransientState > 0 || super.hasTransientState();
    }

    public int indexOfChild(View view) {
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            if (viewArr[i3] == view) {
                return i3;
            }
        }
        return -1;
    }

    @Override // android.view.View
    public void internalSetPadding(int i2, int i3, int i4, int i5) {
        super.internalSetPadding(i2, i3, i4, i5);
        if ((this.mPaddingLeft | this.mPaddingTop | this.mPaddingRight | this.mPaddingBottom) != 0) {
            this.mGroupFlags |= 32;
        } else {
            this.mGroupFlags &= -33;
        }
    }

    @Override // android.view.ViewParent
    @Deprecated
    public final void invalidateChild(View view, Rect rect) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null && attachInfo.mHardwareAccelerated) {
            onDescendantInvalidated(view, view);
            return;
        }
        if (attachInfo != null) {
            boolean z2 = (view.mPrivateFlags & 64) != 0;
            Matrix matrix = view.getMatrix();
            int i2 = view.isOpaque() && !z2 && view.getAnimation() == null && matrix.isIdentity() ? 4194304 : 2097152;
            if (view.mLayerType != 0) {
                this.mPrivateFlags = (this.mPrivateFlags | Integer.MIN_VALUE) & (-32769);
            }
            int[] iArr = attachInfo.mInvalidateChildLocation;
            iArr[0] = view.mLeft;
            iArr[1] = view.mTop;
            if (!matrix.isIdentity() || (this.mGroupFlags & 2048) != 0) {
                RectF rectF = attachInfo.mTmpTransformRect;
                rectF.set(rect);
                if ((this.mGroupFlags & 2048) != 0) {
                    Transformation transformation = attachInfo.mTmpTransformation;
                    if (getChildStaticTransformation(view, transformation)) {
                        Matrix matrix2 = attachInfo.mTmpMatrix;
                        matrix2.set(transformation.getMatrix());
                        if (!matrix.isIdentity()) {
                            matrix2.preConcat(matrix);
                        }
                        matrix = matrix2;
                    }
                }
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            ViewParent viewParentInvalidateChildInParent = this;
            do {
                View view2 = viewParentInvalidateChildInParent instanceof View ? (View) viewParentInvalidateChildInParent : null;
                if (z2) {
                    if (view2 != null) {
                        view2.mPrivateFlags |= 64;
                    } else if (viewParentInvalidateChildInParent instanceof ViewRootImpl) {
                        ((ViewRootImpl) viewParentInvalidateChildInParent).mIsAnimating = true;
                    }
                }
                if (view2 != null) {
                    if ((view2.mViewFlags & 12288) != 0 && view2.getSolidColor() == 0) {
                        i2 = 2097152;
                    }
                    int i3 = view2.mPrivateFlags;
                    if ((6291456 & i3) != 2097152) {
                        view2.mPrivateFlags = (i3 & (-6291457)) | i2;
                    }
                }
                viewParentInvalidateChildInParent = viewParentInvalidateChildInParent.invalidateChildInParent(iArr, rect);
                if (view2 != null) {
                    Matrix matrix3 = view2.getMatrix();
                    if (!matrix3.isIdentity()) {
                        RectF rectF2 = attachInfo.mTmpTransformRect;
                        rectF2.set(rect);
                        matrix3.mapRect(rectF2);
                        rect.set((int) Math.floor(rectF2.left), (int) Math.floor(rectF2.top), (int) Math.ceil(rectF2.right), (int) Math.ceil(rectF2.bottom));
                    }
                }
            } while (viewParentInvalidateChildInParent != null);
        }
    }

    @Override // android.view.ViewParent
    @Deprecated
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        if ((this.mPrivateFlags & 32800) == 0) {
            return null;
        }
        int i2 = this.mGroupFlags;
        if ((i2 & 144) != 128) {
            rect.offset(iArr[0] - this.mScrollX, iArr[1] - this.mScrollY);
            if ((this.mGroupFlags & 1) == 0) {
                rect.union(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
            }
            int i3 = this.mLeft;
            int i4 = this.mTop;
            if ((this.mGroupFlags & 1) == 1 && !rect.intersect(0, 0, this.mRight - i3, this.mBottom - i4)) {
                rect.setEmpty();
            }
            iArr[0] = i3;
            iArr[1] = i4;
        } else {
            if ((i2 & 1) == 1) {
                rect.set(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
            } else {
                rect.union(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
            }
            iArr[0] = this.mLeft;
            iArr[1] = this.mTop;
            this.mPrivateFlags &= -33;
        }
        int i5 = this.mPrivateFlags & (-32769);
        this.mPrivateFlags = i5;
        if (this.mLayerType != 0) {
            this.mPrivateFlags = i5 | Integer.MIN_VALUE;
        }
        return this.mParent;
    }

    @Override // android.view.View
    public void invalidateInheritedLayoutMode(int i2) {
        int i3 = this.mLayoutMode;
        if (i3 == -1 || i3 == i2 || hasBooleanFlag(8388608)) {
            return;
        }
        setLayoutMode(-1, false);
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            getChildAt(i4).invalidateInheritedLayoutMode(i2);
        }
    }

    @Deprecated
    public boolean isAlwaysDrawnWithCacheEnabled() {
        return (this.mGroupFlags & 16384) == 16384;
    }

    @Deprecated
    public boolean isAnimationCacheEnabled() {
        return (this.mGroupFlags & 64) == 64;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean isChildrenDrawingOrderEnabled() {
        return (this.mGroupFlags & 1024) == 1024;
    }

    @Deprecated
    public boolean isChildrenDrawnWithCacheEnabled() {
        return (this.mGroupFlags & 32768) == 32768;
    }

    public boolean isLayoutModeOptical() {
        return this.mLayoutMode == 1;
    }

    public boolean isLayoutSuppressed() {
        return this.mSuppressLayout;
    }

    public boolean isMotionEventSplittingEnabled() {
        return (this.mGroupFlags & 2097152) == 2097152;
    }

    public final boolean isShowingContextMenuWithCoords() {
        return (this.mGroupFlags & 536870912) != 0;
    }

    public boolean isTransformedTouchPointInView(float f2, float f3, View view, PointF pointF) {
        float[] tempPoint = getTempPoint();
        tempPoint[0] = f2;
        tempPoint[1] = f3;
        transformPointToViewLocal(tempPoint, view);
        boolean zPointInView = view.pointInView(tempPoint[0], tempPoint[1]);
        if (zPointInView && pointF != null) {
            pointF.set(tempPoint[0], tempPoint[1]);
        }
        return zPointInView;
    }

    public boolean isTransitionGroup() {
        int i2 = this.mGroupFlags;
        if ((33554432 & i2) != 0) {
            return (i2 & 16777216) != 0;
        }
        ViewOutlineProvider outlineProvider = getOutlineProvider();
        return (getBackground() == null && getTransitionName() == null && (outlineProvider == null || outlineProvider == ViewOutlineProvider.BACKGROUND)) ? false : true;
    }

    public boolean isViewTransitioning(View view) {
        ArrayList<View> arrayList = this.mTransitioningViews;
        return arrayList != null && arrayList.contains(view);
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].jumpDrawablesToCurrentState();
        }
    }

    @Override // android.view.View
    public final void layout(int i2, int i3, int i4, int i5) {
        LayoutTransition layoutTransition;
        if (this.mSuppressLayout || ((layoutTransition = this.mTransition) != null && layoutTransition.isChangingLayout())) {
            this.mLayoutCalledWhileSuppressed = true;
            return;
        }
        LayoutTransition layoutTransition2 = this.mTransition;
        if (layoutTransition2 != null) {
            layoutTransition2.layoutChange(this);
        }
        super.layout(i2, i3, i4, i5);
    }

    @Override // android.view.View
    public void makeOptionalFitsSystemWindows() {
        super.makeOptionalFitsSystemWindows();
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].makeOptionalFitsSystemWindows();
        }
    }

    public void measureChild(View view, int i2, int i3) {
        LayoutParams layoutParams = view.getLayoutParams();
        view.measure(getChildMeasureSpec(i2, this.mPaddingLeft + this.mPaddingRight, layoutParams.width), getChildMeasureSpec(i3, this.mPaddingTop + this.mPaddingBottom, layoutParams.height));
    }

    public void measureChildWithMargins(View view, int i2, int i3, int i4, int i5) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i2, this.mPaddingLeft + this.mPaddingRight + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width), getChildMeasureSpec(i4, this.mPaddingTop + this.mPaddingBottom + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
    }

    public void measureChildren(int i2, int i3) {
        int i4 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i5 = 0; i5 < i4; i5++) {
            View view = viewArr[i5];
            if ((view.mViewFlags & 12) != 8) {
                measureChild(view, i2, i3);
            }
        }
    }

    public boolean notifyChildOfDragStart(View view) {
        DragEvent dragEvent = this.mCurrentDragStartEvent;
        float f2 = dragEvent.mX;
        float f3 = dragEvent.mY;
        float[] tempPoint = getTempPoint();
        tempPoint[0] = f2;
        tempPoint[1] = f3;
        transformPointToViewLocal(tempPoint, view);
        DragEvent dragEvent2 = this.mCurrentDragStartEvent;
        dragEvent2.mX = tempPoint[0];
        dragEvent2.mY = tempPoint[1];
        boolean zDispatchDragEvent = view.dispatchDragEvent(dragEvent2);
        DragEvent dragEvent3 = this.mCurrentDragStartEvent;
        dragEvent3.mX = f2;
        dragEvent3.mY = f3;
        dragEvent3.mEventHandlerWasCalled = false;
        if (zDispatchDragEvent) {
            this.mChildrenInterestedInDrag.add(view);
            if (!view.canAcceptDrag()) {
                view.mPrivateFlags2 |= 1;
                view.refreshDrawableState();
            }
        }
        return zDispatchDragEvent;
    }

    @Override // android.view.ViewParent
    public void notifySubtreeAccessibilityStateChanged(View view, View view2, int i2) {
        if (getAccessibilityLiveRegion() != 0) {
            notifyViewAccessibilityStateChangedIfNeeded(1);
            return;
        }
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            try {
                viewParent.notifySubtreeAccessibilityStateChanged(this, view2, i2);
            } catch (AbstractMethodError e2) {
                Log.e("View", this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
            }
        }
    }

    @Override // android.view.View
    public void notifySubtreeAccessibilityStateChangedIfNeeded() {
        if (!AccessibilityManager.getInstance(this.mContext).isEnabled() || this.mAttachInfo == null) {
            return;
        }
        if (getImportantForAccessibility() != 4 && !isImportantForAccessibility() && getChildCount() > 0) {
            Object parentForAccessibility = getParentForAccessibility();
            if (parentForAccessibility instanceof View) {
                ((View) parentForAccessibility).notifySubtreeAccessibilityStateChangedIfNeeded();
                return;
            }
        }
        super.notifySubtreeAccessibilityStateChangedIfNeeded();
    }

    public void offsetChildrenTopAndBottom(int i2) {
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        boolean z2 = false;
        for (int i4 = 0; i4 < i3; i4++) {
            View view = viewArr[i4];
            view.mTop += i2;
            view.mBottom += i2;
            RenderNode renderNode = view.mRenderNode;
            if (renderNode != null) {
                renderNode.offsetTopAndBottom(i2);
                z2 = true;
            }
        }
        if (z2) {
            invalidateViewProperty(false, false);
        }
        notifySubtreeAccessibilityStateChangedIfNeeded();
    }

    public final void offsetDescendantRectToMyCoords(View view, Rect rect) {
        offsetRectBetweenParentAndChild(view, rect, true, false);
    }

    public void offsetRectBetweenParentAndChild(View view, Rect rect, boolean z2, boolean z3) {
        if (view == this) {
            return;
        }
        ViewParent viewParent = view.mParent;
        View view2 = view;
        while (viewParent != null && (viewParent instanceof View) && viewParent != this) {
            if (z2) {
                rect.offset(view2.mLeft - view2.mScrollX, view2.mTop - view2.mScrollY);
                if (z3) {
                    View view3 = (View) viewParent;
                    if (!rect.intersect(0, 0, view3.mRight - view3.mLeft, view3.mBottom - view3.mTop)) {
                        rect.setEmpty();
                    }
                }
            } else {
                if (z3) {
                    View view4 = (View) viewParent;
                    if (!rect.intersect(0, 0, view4.mRight - view4.mLeft, view4.mBottom - view4.mTop)) {
                        rect.setEmpty();
                    }
                }
                rect.offset(view2.mScrollX - view2.mLeft, view2.mScrollY - view2.mTop);
            }
            view2 = (View) viewParent;
            viewParent = view2.mParent;
        }
        if (viewParent == this) {
            if (z2) {
                rect.offset(view2.mLeft - view2.mScrollX, view2.mTop - view2.mScrollY);
                return;
            } else {
                rect.offset(view2.mScrollX - view2.mLeft, view2.mScrollY - view2.mTop);
                return;
            }
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("parameter must be a descendant of this view");
        Log.e(TAG, "descendant:" + view);
        if (!ActivityManager.isUserAMonkey()) {
            throw illegalArgumentException;
        }
        Log.e(TAG, Log.getStackTraceString(illegalArgumentException));
        if (rect != null) {
            rect.set(-1, -1, -1, -1);
        }
    }

    public final void offsetRectIntoDescendantCoords(View view, Rect rect) {
        offsetRectBetweenParentAndChild(view, rect, false, false);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        clearCachedLayoutMode();
    }

    public void onChildVisibilityChanged(View view, int i2, int i3) {
        LayoutTransition layoutTransition = this.mTransition;
        if (layoutTransition != null) {
            if (i3 == 0) {
                layoutTransition.showChild(this, view, i2);
            } else {
                layoutTransition.hideChild(this, view, i3);
                ArrayList<View> arrayList = this.mTransitioningViews;
                if (arrayList != null && arrayList.contains(view)) {
                    if (this.mVisibilityChangingChildren == null) {
                        this.mVisibilityChangingChildren = new ArrayList<>();
                    }
                    this.mVisibilityChangingChildren.add(view);
                    addDisappearingView(view);
                }
            }
        }
        if (i3 != 0 || this.mCurrentDragStartEvent == null || this.mChildrenInterestedInDrag.contains(view)) {
            return;
        }
        notifyChildOfDragStart(view);
    }

    @Override // android.view.View
    public int[] onCreateDrawableState(int i2) {
        if ((this.mGroupFlags & 8192) == 0) {
            return super.onCreateDrawableState(i2);
        }
        int childCount = getChildCount();
        int length = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            int[] drawableState = getChildAt(i3).getDrawableState();
            if (drawableState != null) {
                length += drawableState.length;
            }
        }
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + length);
        for (int i4 = 0; i4 < childCount; i4++) {
            int[] drawableState2 = getChildAt(i4).getDrawableState();
            if (drawableState2 != null) {
                iArrOnCreateDrawableState = View.mergeDrawableStates(iArrOnCreateDrawableState, drawableState2);
            }
        }
        return iArrOnCreateDrawableState;
    }

    public void onDebugDraw(Canvas canvas) {
        Paint debugPaint = View.getDebugPaint();
        debugPaint.setColor(-65536);
        debugPaint.setStyle(Paint.Style.STROKE);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                Insets opticalInsets = childAt.getOpticalInsets();
                drawRect(canvas, debugPaint, childAt.getLeft() + opticalInsets.left, childAt.getTop() + opticalInsets.top, (childAt.getRight() - opticalInsets.right) - 1, (childAt.getBottom() - opticalInsets.bottom) - 1);
            }
        }
        debugPaint.setColor(Color.argb(63, 255, 0, 255));
        Paint.Style style = Paint.Style.FILL;
        debugPaint.setStyle(style);
        onDebugDrawMargins(canvas, debugPaint);
        debugPaint.setColor(View.DEBUG_CORNERS_COLOR);
        debugPaint.setStyle(style);
        int iDipsToPixels = dipsToPixels(8);
        int iDipsToPixels2 = dipsToPixels(1);
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt2 = getChildAt(i3);
            if (childAt2.getVisibility() != 8) {
                drawRectCorners(canvas, childAt2.getLeft(), childAt2.getTop(), childAt2.getRight(), childAt2.getBottom(), debugPaint, iDipsToPixels, iDipsToPixels2);
            }
        }
    }

    public void onDebugDrawMargins(Canvas canvas, Paint paint) {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            childAt.getLayoutParams().onDebugDraw(childAt, canvas, paint);
        }
    }

    @Override // android.view.ViewParent
    public void onDescendantInvalidated(View view, View view2) {
        int i2 = this.mPrivateFlags | (view2.mPrivateFlags & 64);
        this.mPrivateFlags = i2;
        if ((view2.mPrivateFlags & (-6291457)) != 0) {
            this.mPrivateFlags = ((i2 & (-6291457)) | 2097152) & (-32769);
        }
        if (this.mLayerType == 1) {
            this.mPrivateFlags |= -2145386496;
            view2 = this;
        }
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.onDescendantInvalidated(this, view2);
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearCachedLayoutMode();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        View.AttachInfo attachInfo;
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        if (getAccessibilityNodeProvider() == null && (attachInfo = this.mAttachInfo) != null) {
            ArrayList<View> arrayList = attachInfo.mTempArrayList;
            arrayList.clear();
            addChildrenForAccessibility(arrayList);
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                accessibilityNodeInfo.addChildUnchecked(arrayList.get(i2));
            }
            arrayList.clear();
        }
    }

    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        if (!motionEvent.isFromSource(8194)) {
            return false;
        }
        int action = motionEvent.getAction();
        return (action == 7 || action == 9) && isOnScrollbar(motionEvent.getX(), motionEvent.getY());
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return motionEvent.isFromSource(8194) && motionEvent.getAction() == 0 && motionEvent.isButtonPressed(1) && isOnScrollbarThumb(motionEvent.getX(), motionEvent.getY());
    }

    @Override // android.view.View
    public abstract void onLayout(boolean z2, int i2, int i3, int i4, int i5);

    @Override // android.view.ViewParent
    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        return dispatchNestedFling(f2, f3, z2);
    }

    @Override // android.view.ViewParent
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return dispatchNestedPreFling(f2, f3);
    }

    @Override // android.view.ViewParent
    public boolean onNestedPrePerformAccessibilityAction(View view, int i2, Bundle bundle) {
        return false;
    }

    @Override // android.view.ViewParent
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        dispatchNestedPreScroll(i2, i3, iArr, null);
    }

    @Override // android.view.ViewParent
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        dispatchNestedScroll(i2, i3, i4, i5, null);
    }

    @Override // android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.mNestedScrollAxes = i2;
    }

    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        int i5;
        int i6 = this.mChildrenCount;
        if ((i2 & 2) != 0) {
            i4 = i6;
            i3 = 0;
            i5 = 1;
        } else {
            i3 = i6 - 1;
            i4 = -1;
            i5 = -1;
        }
        View[] viewArr = this.mChildren;
        while (i3 != i4) {
            View view = viewArr[i3];
            if ((view.mViewFlags & 12) == 0 && view.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i5;
        }
        return false;
    }

    public boolean onRequestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        View.AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
        return accessibilityDelegate != null ? accessibilityDelegate.onRequestSendAccessibilityEvent(this, view, accessibilityEvent) : onRequestSendAccessibilityEventInternal(view, accessibilityEvent);
    }

    public boolean onRequestSendAccessibilityEventInternal(View view, AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        PointerIcon pointerIconDispatchResolvePointerIcon;
        float x2 = motionEvent.getX(i2);
        float y2 = motionEvent.getY(i2);
        if (isOnScrollbarThumb(x2, y2) || isDraggingScrollBar()) {
            return PointerIcon.getSystemIcon(this.mContext, 1000);
        }
        int i3 = this.mChildrenCount;
        if (i3 != 0) {
            ArrayList<View> arrayListBuildOrderedChildList = buildOrderedChildList();
            boolean z2 = arrayListBuildOrderedChildList == null && isChildrenDrawingOrderEnabled();
            View[] viewArr = this.mChildren;
            for (int i4 = i3 - 1; i4 >= 0; i4--) {
                View andVerifyPreorderedView = getAndVerifyPreorderedView(arrayListBuildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i3, i4, z2));
                if (canViewReceivePointerEvents(andVerifyPreorderedView) && isTransformedTouchPointInView(x2, y2, andVerifyPreorderedView, null) && (pointerIconDispatchResolvePointerIcon = dispatchResolvePointerIcon(motionEvent, i2, andVerifyPreorderedView)) != null) {
                    if (arrayListBuildOrderedChildList != null) {
                        arrayListBuildOrderedChildList.clear();
                    }
                    return pointerIconDispatchResolvePointerIcon;
                }
            }
            if (arrayListBuildOrderedChildList != null) {
                arrayListBuildOrderedChildList.clear();
            }
        }
        return super.onResolvePointerIcon(motionEvent, i2);
    }

    public void onSetLayoutParams(View view, LayoutParams layoutParams) {
        requestLayout();
    }

    @Override // android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return false;
    }

    @Override // android.view.ViewParent
    public void onStopNestedScroll(View view) {
        stopNestedScroll();
        this.mNestedScrollAxes = 0;
    }

    public void onViewAdded(View view) {
    }

    public void onViewRemoved(View view) {
    }

    @Override // android.view.ViewParent
    public void recomputeViewAttributes(View view) {
        ViewParent viewParent;
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || attachInfo.mRecomputeGlobalAttributes || (viewParent = this.mParent) == null) {
            return;
        }
        viewParent.recomputeViewAttributes(this);
    }

    public void removeAllViews() {
        removeAllViewsInLayout();
        requestLayout();
        invalidate(true);
    }

    public void removeAllViewsInLayout() {
        ArrayList<View> arrayList;
        int i2 = this.mChildrenCount;
        if (i2 <= 0) {
            return;
        }
        View[] viewArr = this.mChildren;
        this.mChildrenCount = 0;
        View view = this.mFocused;
        boolean z2 = this.mAttachInfo != null;
        needGlobalAttributesUpdate(false);
        boolean z3 = false;
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            View view2 = viewArr[i3];
            LayoutTransition layoutTransition = this.mTransition;
            if (layoutTransition != null) {
                layoutTransition.removeChild(this, view2);
            }
            if (view2 == view) {
                view2.unFocus(null);
                z3 = true;
            }
            view2.clearAccessibilityFocus();
            cancelTouchTarget(view2);
            cancelHoverTarget(view2);
            if (view2.getAnimation() != null || ((arrayList = this.mTransitioningViews) != null && arrayList.contains(view2))) {
                addDisappearingView(view2);
            } else if (z2) {
                view2.dispatchDetachedFromWindow();
            }
            if (view2.hasTransientState()) {
                childHasTransientStateChanged(view2, false);
            }
            dispatchViewRemoved(view2);
            view2.mParent = null;
            viewArr[i3] = null;
        }
        View view3 = this.mDefaultFocus;
        if (view3 != null) {
            clearDefaultFocus(view3);
        }
        View view4 = this.mFocusedInCluster;
        if (view4 != null) {
            clearFocusedInCluster(view4);
        }
        if (z3) {
            clearChildFocus(view);
            if (rootViewRequestFocus()) {
                return;
            }
            notifyGlobalFocusCleared(view);
        }
    }

    public void removeDetachedView(View view, boolean z2) {
        ArrayList<View> arrayList;
        LayoutTransition layoutTransition = this.mTransition;
        if (layoutTransition != null) {
            layoutTransition.removeChild(this, view);
        }
        if (view == this.mFocused) {
            view.clearFocus();
        }
        if (view == this.mDefaultFocus) {
            clearDefaultFocus(view);
        }
        if (view == this.mFocusedInCluster) {
            clearFocusedInCluster(view);
        }
        view.clearAccessibilityFocus();
        cancelTouchTarget(view);
        cancelHoverTarget(view);
        if ((z2 && view.getAnimation() != null) || ((arrayList = this.mTransitioningViews) != null && arrayList.contains(view))) {
            addDisappearingView(view);
        } else if (view.mAttachInfo != null) {
            view.dispatchDetachedFromWindow();
        }
        if (view.hasTransientState()) {
            childHasTransientStateChanged(view, false);
        }
        dispatchViewRemoved(view);
    }

    public void removeTransientView(View view) {
        List<View> list = this.mTransientViews;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (view == this.mTransientViews.get(i2)) {
                this.mTransientViews.remove(i2);
                this.mTransientIndices.remove(i2);
                view.mParent = null;
                view.dispatchDetachedFromWindow();
                invalidate(true);
                return;
            }
        }
    }

    @Override // android.view.ViewManager
    public void removeView(View view) {
        if (removeViewInternal(view)) {
            requestLayout();
            invalidate(true);
        }
    }

    public void removeViewAt(int i2) {
        removeViewInternal(i2, getChildAt(i2));
        requestLayout();
        invalidate(true);
    }

    public void removeViewInLayout(View view) {
        removeViewInternal(view);
    }

    public void removeViews(int i2, int i3) {
        removeViewsInternal(i2, i3);
        requestLayout();
        invalidate(true);
    }

    public void removeViewsInLayout(int i2, int i3) {
        removeViewsInternal(i2, i3);
    }

    @Override // android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        super.unFocus(view2);
        View view3 = this.mFocused;
        if (view3 != view) {
            if (view3 != null) {
                view3.unFocus(view2);
            }
            this.mFocused = view;
        }
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.requestChildFocus(this, view2);
        }
    }

    @Override // android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return false;
    }

    @Override // android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int i2 = this.mGroupFlags;
        if (z2 == ((i2 & 524288) != 0)) {
            return;
        }
        if (z2) {
            this.mGroupFlags = i2 | 524288;
        } else {
            this.mGroupFlags = i2 & (-524289);
        }
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.requestDisallowInterceptTouchEvent(z2);
        }
    }

    @Override // android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability == 131072) {
            boolean zRequestFocus = super.requestFocus(i2, rect);
            return zRequestFocus ? zRequestFocus : onRequestFocusInDescendants(i2, rect);
        }
        if (descendantFocusability == 262144) {
            boolean zOnRequestFocusInDescendants = onRequestFocusInDescendants(i2, rect);
            return zOnRequestFocusInDescendants ? zOnRequestFocusInDescendants : super.requestFocus(i2, rect);
        }
        if (descendantFocusability == 393216) {
            return super.requestFocus(i2, rect);
        }
        throw new IllegalStateException(android.accessibilityservice.c.d("descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is ", descendantFocusability));
    }

    @Override // android.view.ViewParent
    public boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        ViewParent viewParent = this.mParent;
        if (viewParent != null && onRequestSendAccessibilityEvent(view, accessibilityEvent)) {
            return viewParent.requestSendAccessibilityEvent(this, accessibilityEvent);
        }
        return false;
    }

    public void requestTransitionStart(LayoutTransition layoutTransition) {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.requestTransitionStart(layoutTransition);
        }
    }

    @Override // android.view.ViewParent
    public void requestTransparentRegion(View view) {
        if (view != null) {
            view.mPrivateFlags |= 512;
            ViewParent viewParent = this.mParent;
            if (viewParent != null) {
                viewParent.requestTransparentRegion(this);
            }
        }
    }

    @Override // android.view.View
    public void resetResolvedDrawables() {
        super.resetResolvedDrawables();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.isLayoutDirectionInherited()) {
                childAt.resetResolvedDrawables();
            }
        }
    }

    @Override // android.view.View
    public void resetResolvedLayoutDirection() {
        super.resetResolvedLayoutDirection();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.isLayoutDirectionInherited()) {
                childAt.resetResolvedLayoutDirection();
            }
        }
    }

    @Override // android.view.View
    public void resetResolvedPadding() {
        super.resetResolvedPadding();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.isLayoutDirectionInherited()) {
                childAt.resetResolvedPadding();
            }
        }
    }

    @Override // android.view.View
    public void resetResolvedTextAlignment() {
        super.resetResolvedTextAlignment();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.isTextAlignmentInherited()) {
                childAt.resetResolvedTextAlignment();
            }
        }
    }

    @Override // android.view.View
    public void resetResolvedTextDirection() {
        super.resetResolvedTextDirection();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.isTextDirectionInherited()) {
                childAt.resetResolvedTextDirection();
            }
        }
    }

    @Override // android.view.View
    public void resetSubtreeAccessibilityStateChanged() {
        super.resetSubtreeAccessibilityStateChanged();
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].resetSubtreeAccessibilityStateChanged();
        }
    }

    @Override // android.view.View
    public void resolveDrawables() {
        super.resolveDrawables();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.isLayoutDirectionInherited() && !childAt.areDrawablesResolved()) {
                childAt.resolveDrawables();
            }
        }
    }

    @Override // android.view.View
    public boolean resolveLayoutDirection() {
        boolean zResolveLayoutDirection = super.resolveLayoutDirection();
        if (zResolveLayoutDirection) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.isLayoutDirectionInherited()) {
                    childAt.resolveLayoutDirection();
                }
            }
        }
        return zResolveLayoutDirection;
    }

    @Override // android.view.View
    public void resolveLayoutParams() {
        super.resolveLayoutParams();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).resolveLayoutParams();
        }
    }

    @Override // android.view.View
    public void resolvePadding() {
        super.resolvePadding();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.isLayoutDirectionInherited() && !childAt.isPaddingResolved()) {
                childAt.resolvePadding();
            }
        }
    }

    @Override // android.view.View
    public boolean resolveRtlPropertiesIfNeeded() {
        boolean zResolveRtlPropertiesIfNeeded = super.resolveRtlPropertiesIfNeeded();
        if (zResolveRtlPropertiesIfNeeded) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.isLayoutDirectionInherited()) {
                    childAt.resolveRtlPropertiesIfNeeded();
                }
            }
        }
        return zResolveRtlPropertiesIfNeeded;
    }

    @Override // android.view.View
    public boolean resolveTextAlignment() {
        boolean zResolveTextAlignment = super.resolveTextAlignment();
        if (zResolveTextAlignment) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.isTextAlignmentInherited()) {
                    childAt.resolveTextAlignment();
                }
            }
        }
        return zResolveTextAlignment;
    }

    @Override // android.view.View
    public boolean resolveTextDirection() {
        boolean zResolveTextDirection = super.resolveTextDirection();
        if (zResolveTextDirection) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.isTextDirectionInherited()) {
                    childAt.resolveTextDirection();
                }
            }
        }
        return zResolveTextDirection;
    }

    @Override // android.view.View
    public boolean restoreDefaultFocus() {
        if (this.mDefaultFocus != null && getDescendantFocusability() != 393216) {
            View view = this.mDefaultFocus;
            if ((view.mViewFlags & 12) == 0 && view.restoreDefaultFocus()) {
                return true;
            }
        }
        return super.restoreDefaultFocus();
    }

    @Override // android.view.View
    public boolean restoreFocusInCluster(int i2) {
        if (!isKeyboardNavigationCluster()) {
            return restoreFocusInClusterInternal(i2);
        }
        boolean touchscreenBlocksFocus = getTouchscreenBlocksFocus();
        try {
            setTouchscreenBlocksFocusNoRefocus(false);
            return restoreFocusInClusterInternal(i2);
        } finally {
            setTouchscreenBlocksFocusNoRefocus(touchscreenBlocksFocus);
        }
    }

    @Override // android.view.View
    public boolean restoreFocusNotInCluster() {
        if (this.mFocusedInCluster != null) {
            return restoreFocusInCluster(130);
        }
        if (!isKeyboardNavigationCluster() && (this.mViewFlags & 12) == 0) {
            int descendantFocusability = getDescendantFocusability();
            if (descendantFocusability == 393216) {
                return super.requestFocus(130, null);
            }
            if (descendantFocusability == 131072 && super.requestFocus(130, null)) {
                return true;
            }
            for (int i2 = 0; i2 < this.mChildrenCount; i2++) {
                View view = this.mChildren[i2];
                if (!view.isKeyboardNavigationCluster() && view.restoreFocusNotInCluster()) {
                    return true;
                }
            }
            if (descendantFocusability == 262144 && !hasFocusableChild(false)) {
                return super.requestFocus(130, null);
            }
        }
        return false;
    }

    public void scheduleLayoutAnimation() {
        this.mGroupFlags |= 8;
    }

    public void setAddStatesFromChildren(boolean z2) {
        if (z2) {
            this.mGroupFlags |= 8192;
        } else {
            this.mGroupFlags &= -8193;
        }
        refreshDrawableState();
    }

    @Deprecated
    public void setAlwaysDrawnWithCacheEnabled(boolean z2) {
        setBooleanFlag(16384, z2);
    }

    @Deprecated
    public void setAnimationCacheEnabled(boolean z2) {
        setBooleanFlag(64, z2);
    }

    public void setChildrenDrawingCacheEnabled(boolean z2) {
        if (z2 || (this.mPersistentDrawingCache & 3) != 3) {
            View[] viewArr = this.mChildren;
            int i2 = this.mChildrenCount;
            for (int i3 = 0; i3 < i2; i3++) {
                viewArr[i3].setDrawingCacheEnabled(z2);
            }
        }
    }

    public void setChildrenDrawingOrderEnabled(boolean z2) {
        setBooleanFlag(1024, z2);
    }

    @Deprecated
    public void setChildrenDrawnWithCacheEnabled(boolean z2) {
        setBooleanFlag(32768, z2);
    }

    public void setClipChildren(boolean z2) {
        if (z2 != ((this.mGroupFlags & 1) == 1)) {
            setBooleanFlag(1, z2);
            for (int i2 = 0; i2 < this.mChildrenCount; i2++) {
                RenderNode renderNode = getChildAt(i2).mRenderNode;
                if (renderNode != null) {
                    renderNode.setClipToBounds(z2);
                }
            }
            invalidate(true);
        }
    }

    public void setClipToPadding(boolean z2) {
        if (hasBooleanFlag(2) != z2) {
            setBooleanFlag(2, z2);
            invalidate(true);
        }
    }

    public void setDefaultFocus(View view) {
        View view2 = this.mDefaultFocus;
        if (view2 == null || !view2.isFocusedByDefault()) {
            this.mDefaultFocus = view;
            ViewParent viewParent = this.mParent;
            if (viewParent instanceof ViewGroup) {
                ((ViewGroup) viewParent).setDefaultFocus(this);
            }
        }
    }

    public void setDescendantFocusability(int i2) {
        if (i2 != 131072 && i2 != 262144 && i2 != 393216) {
            throw new IllegalArgumentException("must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS");
        }
        this.mGroupFlags = (i2 & 393216) | (this.mGroupFlags & (-393217));
    }

    public void setLayoutAnimation(LayoutAnimationController layoutAnimationController) {
        this.mLayoutAnimationController = layoutAnimationController;
        if (layoutAnimationController != null) {
            this.mGroupFlags |= 8;
        }
    }

    public void setLayoutAnimationListener(Animation.AnimationListener animationListener) {
        this.mAnimationListener = animationListener;
    }

    public void setLayoutTransition(LayoutTransition layoutTransition) {
        LayoutTransition layoutTransition2 = this.mTransition;
        if (layoutTransition2 != null) {
            layoutTransition2.cancel();
            layoutTransition2.removeTransitionListener(this.mLayoutTransitionListener);
        }
        this.mTransition = layoutTransition;
        if (layoutTransition != null) {
            layoutTransition.addTransitionListener(this.mLayoutTransitionListener);
        }
    }

    public void setMotionEventSplittingEnabled(boolean z2) {
        if (z2) {
            this.mGroupFlags |= 2097152;
        } else {
            this.mGroupFlags &= -2097153;
        }
    }

    public void setOnHierarchyChangeListener(OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setPersistentDrawingCache(int i2) {
        this.mPersistentDrawingCache = i2 & 3;
    }

    public void setStaticTransformationsEnabled(boolean z2) {
        setBooleanFlag(2048, z2);
    }

    public void setTouchscreenBlocksFocus(boolean z2) {
        View viewFocusSearch;
        if (!z2) {
            this.mGroupFlags &= -67108865;
            return;
        }
        this.mGroupFlags |= 67108864;
        if (!hasFocus() || isKeyboardNavigationCluster() || getDeepestFocusedChild().isFocusableInTouchMode() || (viewFocusSearch = focusSearch(2)) == null) {
            return;
        }
        viewFocusSearch.requestFocus();
    }

    public void setTransitionGroup(boolean z2) {
        int i2 = this.mGroupFlags | 33554432;
        this.mGroupFlags = i2;
        if (z2) {
            this.mGroupFlags = 16777216 | i2;
        } else {
            this.mGroupFlags = (-16777217) & i2;
        }
    }

    public boolean shouldBlockFocusForTouchscreen() {
        return getTouchscreenBlocksFocus() && this.mContext.getPackageManager().hasSystemFeature(PackageManager.FEATURE_TOUCHSCREEN) && (!isKeyboardNavigationCluster() || (!hasFocus() && findKeyboardNavigationCluster() == this));
    }

    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        ViewParent viewParent;
        return (isShowingContextMenuWithCoords() || (viewParent = this.mParent) == null || !viewParent.showContextMenuForChild(view)) ? false : true;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        int i2 = this.mGroupFlags;
        if ((134217728 & i2) != 0) {
            return SENTINEL_ACTION_MODE;
        }
        try {
            this.mGroupFlags = i2 | 268435456;
            return startActionModeForChild(view, callback, 0);
        } finally {
            this.mGroupFlags &= -268435457;
        }
    }

    public void startLayoutAnimation() {
        if (this.mLayoutAnimationController != null) {
            this.mGroupFlags |= 8;
            requestLayout();
        }
    }

    public void startViewTransition(View view) {
        if (view.mParent == this) {
            if (this.mTransitioningViews == null) {
                this.mTransitioningViews = new ArrayList<>();
            }
            this.mTransitioningViews.add(view);
        }
    }

    public void suppressLayout(boolean z2) {
        this.mSuppressLayout = z2;
        if (z2 || !this.mLayoutCalledWhileSuppressed) {
            return;
        }
        requestLayout();
        this.mLayoutCalledWhileSuppressed = false;
    }

    public void transformPointToViewLocal(float[] fArr, View view) {
        fArr[0] = fArr[0] + (this.mScrollX - view.mLeft);
        fArr[1] = fArr[1] + (this.mScrollY - view.mTop);
        if (view.hasIdentityMatrix()) {
            return;
        }
        view.getInverseMatrix().mapPoints(fArr);
    }

    @Override // android.view.View
    public void unFocus(View view) {
        View view2 = this.mFocused;
        if (view2 == null) {
            super.unFocus(view);
        } else {
            view2.unFocus(view);
            this.mFocused = null;
        }
    }

    @Override // android.view.View
    public boolean updateLocalSystemUiVisibility(int i2, int i3) {
        boolean zUpdateLocalSystemUiVisibility = super.updateLocalSystemUiVisibility(i2, i3);
        int i4 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i5 = 0; i5 < i4; i5++) {
            zUpdateLocalSystemUiVisibility |= viewArr[i5].updateLocalSystemUiVisibility(i2, i3);
        }
        return zUpdateLocalSystemUiVisibility;
    }

    @Override // android.view.ViewManager
    public void updateViewLayout(View view, LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            throw new IllegalArgumentException("Invalid LayoutParams supplied to " + this);
        }
        if (view.mParent == this) {
            view.setLayoutParams(layoutParams);
        } else {
            throw new IllegalArgumentException("Given view not a child of " + this);
        }
    }

    public ViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void addView(View view, int i2) {
        if (view == null) {
            throw new IllegalArgumentException("Cannot add a null child view to a ViewGroup");
        }
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null && (layoutParams = generateDefaultLayoutParams()) == null) {
            throw new IllegalArgumentException("generateDefaultLayoutParams() cannot return null");
        }
        addView(view, i2, layoutParams);
    }

    public boolean addViewInLayout(View view, int i2, LayoutParams layoutParams, boolean z2) {
        if (view == null) {
            throw new IllegalArgumentException("Cannot add a null child view to a ViewGroup");
        }
        view.mParent = null;
        addViewInner(view, i2, layoutParams, z2);
        view.mPrivateFlags = (view.mPrivateFlags & (-6291457)) | 32;
        return true;
    }

    public void detachViewFromParent(int i2) {
        removeFromArray(i2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public boolean getChildVisibleRect(View view, Rect rect, Point point, boolean z2) {
        Rect rect2;
        ViewParent viewParent;
        View.AttachInfo attachInfo = this.mAttachInfo;
        RectF rectF = attachInfo != null ? attachInfo.mTmpTransformRect : new RectF();
        rectF.set(rect);
        if (!view.hasIdentityMatrix()) {
            view.getMatrix().mapRect(rectF);
        }
        int i2 = view.mLeft - this.mScrollX;
        int i3 = view.mTop - this.mScrollY;
        rectF.offset(i2, i3);
        boolean zIntersect = true;
        if (point != null) {
            if (!view.hasIdentityMatrix()) {
                View.AttachInfo attachInfo2 = this.mAttachInfo;
                float[] fArr = attachInfo2 != null ? attachInfo2.mTmpTransformLocation : new float[2];
                fArr[0] = point.f71x;
                fArr[1] = point.f72y;
                view.getMatrix().mapPoints(fArr);
                point.f71x = Math.round(fArr[0]);
                point.f72y = Math.round(fArr[1]);
            }
            point.f71x += i2;
            point.f72y += i3;
        }
        int i4 = this.mRight - this.mLeft;
        int i5 = this.mBottom - this.mTop;
        ViewParent viewParent2 = this.mParent;
        if (viewParent2 == null || ((viewParent2 instanceof ViewGroup) && ((ViewGroup) viewParent2).getClipChildren())) {
            zIntersect = rectF.intersect(0.0f, 0.0f, i4, i5);
        }
        if ((z2 || zIntersect) && (this.mGroupFlags & 34) == 34) {
            zIntersect = rectF.intersect(this.mPaddingLeft, this.mPaddingTop, i4 - this.mPaddingRight, i5 - this.mPaddingBottom);
        }
        if ((z2 || zIntersect) && (rect2 = this.mClipBounds) != null) {
            zIntersect = rectF.intersect(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        if ((z2 || zIntersect) && (viewParent = this.mParent) != null) {
            return viewParent instanceof ViewGroup ? ((ViewGroup) viewParent).getChildVisibleRect(this, rect, point, z2) : viewParent.getChildVisibleRect(this, rect, point);
        }
        return zIntersect;
    }

    @Override // android.view.View
    public ViewGroupOverlay getOverlay() {
        if (this.mOverlay == null) {
            this.mOverlay = new ViewGroupOverlay(this.mContext, this);
        }
        return (ViewGroupOverlay) this.mOverlay;
    }

    public ViewGroup(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    private void removeViewInternal(int i2, View view) {
        boolean z2;
        ArrayList<View> arrayList;
        LayoutTransition layoutTransition = this.mTransition;
        if (layoutTransition != null) {
            layoutTransition.removeChild(this, view);
        }
        if (view == this.mFocused) {
            view.unFocus(null);
            z2 = true;
        } else {
            z2 = false;
        }
        if (view == this.mFocusedInCluster) {
            clearFocusedInCluster(view);
        }
        view.clearAccessibilityFocus();
        cancelTouchTarget(view);
        cancelHoverTarget(view);
        if (view.getAnimation() == null && ((arrayList = this.mTransitioningViews) == null || !arrayList.contains(view))) {
            if (view.mAttachInfo != null) {
                view.dispatchDetachedFromWindow();
            }
        } else {
            addDisappearingView(view);
        }
        if (view.hasTransientState()) {
            childHasTransientStateChanged(view, false);
        }
        needGlobalAttributesUpdate(false);
        removeFromArray(i2);
        if (view == this.mDefaultFocus) {
            clearDefaultFocus(view);
        }
        if (z2) {
            clearChildFocus(view);
            if (!rootViewRequestFocus()) {
                notifyGlobalFocusCleared(this);
            }
        }
        dispatchViewRemoved(view);
        if (view.getVisibility() != 8) {
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
        List<Integer> list = this.mTransientIndices;
        int size = list == null ? 0 : list.size();
        for (int i3 = 0; i3 < size; i3++) {
            int iIntValue = this.mTransientIndices.get(i3).intValue();
            if (i2 < iIntValue) {
                this.mTransientIndices.set(i3, Integer.valueOf(iIntValue - 1));
            }
        }
        if (this.mCurrentDragStartEvent != null) {
            this.mChildrenInterestedInDrag.remove(view);
        }
    }

    public void clearFocusedInCluster() {
        View viewFindKeyboardNavigationCluster = findKeyboardNavigationCluster();
        ViewParent parent = this;
        do {
            ((ViewGroup) parent).mFocusedInCluster = null;
            if (parent == viewFindKeyboardNavigationCluster) {
                return;
            } else {
                parent = parent.getParent();
            }
        } while (parent instanceof ViewGroup);
    }

    public void setLayoutMode(int i2) {
        if (this.mLayoutMode != i2) {
            invalidateInheritedLayoutMode(i2);
            setLayoutMode(i2, i2 != -1);
            requestLayout();
        }
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View view, float f2, float f3) {
        try {
            this.mGroupFlags |= 536870912;
            if (showContextMenuForChild(view)) {
                this.mGroupFlags &= -536870913;
                return true;
            }
            this.mGroupFlags = (-536870913) & this.mGroupFlags;
            ViewParent viewParent = this.mParent;
            return viewParent != null && viewParent.showContextMenuForChild(view, f2, f3);
        } catch (Throwable th) {
            this.mGroupFlags &= -536870913;
            throw th;
        }
    }

    public static class LayoutParams {

        @Deprecated
        public static final int FILL_PARENT = -1;
        public static final int MATCH_PARENT = -1;
        public static final int WRAP_CONTENT = -2;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT, mapping = {@ViewDebug.IntToString(from = -1, to = "MATCH_PARENT"), @ViewDebug.IntToString(from = -2, to = "WRAP_CONTENT")})
        public int height;
        public LayoutAnimationController.AnimationParameters layoutAnimationParameters;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT, mapping = {@ViewDebug.IntToString(from = -1, to = "MATCH_PARENT"), @ViewDebug.IntToString(from = -2, to = "WRAP_CONTENT")})
        public int width;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewGroup_Layout);
            setBaseAttributes(typedArrayObtainStyledAttributes, 0, 1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public static String sizeToString(int i2) {
            if (i2 == -2) {
                return "wrap-content";
            }
            return i2 == -1 ? "match-parent" : String.valueOf(i2);
        }

        public String debug(String str) {
            StringBuilder sbU = android.accessibilityservice.c.u(str, "ViewGroup.LayoutParams={ width=");
            sbU.append(sizeToString(this.width));
            sbU.append(", height=");
            sbU.append(sizeToString(this.height));
            sbU.append(" }");
            return sbU.toString();
        }

        public void encode(ViewHierarchyEncoder viewHierarchyEncoder) {
            viewHierarchyEncoder.beginObject(this);
            encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.endObject();
        }

        public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            viewHierarchyEncoder.addProperty("width", this.width);
            viewHierarchyEncoder.addProperty("height", this.height);
        }

        public void onDebugDraw(View view, Canvas canvas, Paint paint) {
        }

        public void resolveLayoutDirection(int i2) {
        }

        public void setBaseAttributes(TypedArray typedArray, int i2, int i3) {
            this.width = typedArray.getLayoutDimension(i2, "layout_width");
            this.height = typedArray.getLayoutDimension(i3, "layout_height");
        }

        public LayoutParams(int i2, int i3) {
            this.width = i2;
            this.height = i3;
        }

        public LayoutParams(LayoutParams layoutParams) {
            this.width = layoutParams.width;
            this.height = layoutParams.height;
        }

        public LayoutParams() {
        }
    }

    public ViewGroup(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mLastTouchDownIndex = -1;
        this.mLayoutMode = -1;
        this.mSuppressLayout = false;
        this.mLayoutCalledWhileSuppressed = false;
        this.mChildCountWithTransientState = 0;
        this.mTransientIndices = null;
        this.mTransientViews = null;
        this.mLayoutTransitionListener = new LayoutTransition.TransitionListener() { // from class: android.view.ViewGroup.4
            @Override // android.animation.LayoutTransition.TransitionListener
            public void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i4) {
                if (ViewGroup.this.mLayoutCalledWhileSuppressed && !layoutTransition.isChangingLayout()) {
                    ViewGroup.this.requestLayout();
                    ViewGroup.this.mLayoutCalledWhileSuppressed = false;
                }
                if (i4 != 3 || ViewGroup.this.mTransitioningViews == null) {
                    return;
                }
                ViewGroup.this.endViewTransition(view);
            }

            @Override // android.animation.LayoutTransition.TransitionListener
            public void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i4) {
                if (i4 == 3) {
                    ViewGroup.this.startViewTransition(view);
                }
            }
        };
        initViewGroup();
        initFromAttributes(context, attributeSet, i2, i3);
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2) {
        int i3 = this.mGroupFlags;
        if ((268435456 & i3) == 0 && i2 == 0) {
            try {
                this.mGroupFlags = i3 | 134217728;
                ActionMode actionModeStartActionModeForChild = startActionModeForChild(view, callback);
                this.mGroupFlags = (-134217729) & this.mGroupFlags;
                if (actionModeStartActionModeForChild != SENTINEL_ACTION_MODE) {
                    return actionModeStartActionModeForChild;
                }
            } catch (Throwable th) {
                this.mGroupFlags &= -134217729;
                throw th;
            }
        }
        ViewParent viewParent = this.mParent;
        if (viewParent == null) {
            return null;
        }
        try {
            return viewParent.startActionModeForChild(view, callback, i2);
        } catch (AbstractMethodError unused) {
            return this.mParent.startActionModeForChild(view, callback);
        }
    }

    public void addView(View view, int i2, int i3) {
        LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        layoutParamsGenerateDefaultLayoutParams.width = i2;
        layoutParamsGenerateDefaultLayoutParams.height = i3;
        addView(view, -1, layoutParamsGenerateDefaultLayoutParams);
    }

    @Override // android.view.ViewManager
    public void addView(View view, LayoutParams layoutParams) {
        addView(view, -1, layoutParams);
    }

    public void addView(View view, int i2, LayoutParams layoutParams) {
        if (view != null) {
            requestLayout();
            invalidate(true);
            addViewInner(view, i2, layoutParams, false);
            return;
        }
        throw new IllegalArgumentException("Cannot add a null child view to a ViewGroup");
    }

    private void removeFromArray(int i2, int i3) {
        View[] viewArr = this.mChildren;
        int i4 = this.mChildrenCount;
        int iMax = Math.max(0, i2);
        int iMin = Math.min(i4, i3 + iMax);
        if (iMax == iMin) {
            return;
        }
        if (iMin == i4) {
            for (int i5 = iMax; i5 < iMin; i5++) {
                viewArr[i5].mParent = null;
                viewArr[i5] = null;
            }
        } else {
            for (int i6 = iMax; i6 < iMin; i6++) {
                viewArr[i6].mParent = null;
            }
            System.arraycopy(viewArr, iMin, viewArr, iMax, i4 - iMin);
            for (int i7 = i4 - (iMin - iMax); i7 < i4; i7++) {
                viewArr[i7] = null;
            }
        }
        this.mChildrenCount -= iMin - iMax;
    }

    private boolean dispatchTooltipHoverEvent(MotionEvent motionEvent, View view) {
        if (!view.hasIdentityMatrix()) {
            MotionEvent transformedMotionEvent = getTransformedMotionEvent(motionEvent, view);
            boolean zDispatchTooltipHoverEvent = view.dispatchTooltipHoverEvent(transformedMotionEvent);
            transformedMotionEvent.recycle();
            return zDispatchTooltipHoverEvent;
        }
        float f2 = this.mScrollX - view.mLeft;
        float f3 = this.mScrollY - view.mTop;
        motionEvent.offsetLocation(f2, f3);
        boolean zDispatchTooltipHoverEvent2 = view.dispatchTooltipHoverEvent(motionEvent);
        motionEvent.offsetLocation(-f2, -f3);
        return zDispatchTooltipHoverEvent2;
    }

    public static class MarginLayoutParams extends LayoutParams {
        public static final int DEFAULT_MARGIN_RELATIVE = Integer.MIN_VALUE;
        private static final int DEFAULT_MARGIN_RESOLVED = 0;
        private static final int LAYOUT_DIRECTION_MASK = 3;
        private static final int LEFT_MARGIN_UNDEFINED_MASK = 4;
        private static final int NEED_RESOLUTION_MASK = 32;
        private static final int RIGHT_MARGIN_UNDEFINED_MASK = 8;
        private static final int RTL_COMPATIBILITY_MODE_MASK = 16;
        private static final int UNDEFINED_MARGIN = Integer.MIN_VALUE;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
        public int bottomMargin;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
        private int endMargin;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
        public int leftMargin;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT, flagMapping = {@ViewDebug.FlagToString(equals = 3, mask = 3, name = "LAYOUT_DIRECTION"), @ViewDebug.FlagToString(equals = 4, mask = 4, name = "LEFT_MARGIN_UNDEFINED_MASK"), @ViewDebug.FlagToString(equals = 8, mask = 8, name = "RIGHT_MARGIN_UNDEFINED_MASK"), @ViewDebug.FlagToString(equals = 16, mask = 16, name = "RTL_COMPATIBILITY_MODE_MASK"), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "NEED_RESOLUTION_MASK")}, formatToHexString = true)
        byte mMarginFlags;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
        public int rightMargin;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
        private int startMargin;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
        public int topMargin;

        public MarginLayoutParams(Context context, AttributeSet attributeSet) {
            this.startMargin = Integer.MIN_VALUE;
            this.endMargin = Integer.MIN_VALUE;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewGroup_MarginLayout);
            setBaseAttributes(typedArrayObtainStyledAttributes, 0, 1);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
            if (dimensionPixelSize >= 0) {
                this.leftMargin = dimensionPixelSize;
                this.topMargin = dimensionPixelSize;
                this.rightMargin = dimensionPixelSize;
                this.bottomMargin = dimensionPixelSize;
            } else {
                int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, -1);
                int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, -1);
                if (dimensionPixelSize2 >= 0) {
                    this.leftMargin = dimensionPixelSize2;
                    this.rightMargin = dimensionPixelSize2;
                } else {
                    int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, Integer.MIN_VALUE);
                    this.leftMargin = dimensionPixelSize4;
                    if (dimensionPixelSize4 == Integer.MIN_VALUE) {
                        this.mMarginFlags = (byte) (this.mMarginFlags | 4);
                        this.leftMargin = 0;
                    }
                    int dimensionPixelSize5 = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, Integer.MIN_VALUE);
                    this.rightMargin = dimensionPixelSize5;
                    if (dimensionPixelSize5 == Integer.MIN_VALUE) {
                        this.mMarginFlags = (byte) (this.mMarginFlags | 8);
                        this.rightMargin = 0;
                    }
                }
                this.startMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, Integer.MIN_VALUE);
                this.endMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, Integer.MIN_VALUE);
                if (dimensionPixelSize3 >= 0) {
                    this.topMargin = dimensionPixelSize3;
                    this.bottomMargin = dimensionPixelSize3;
                } else {
                    this.topMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
                    this.bottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
                }
                if (isMarginRelative()) {
                    this.mMarginFlags = (byte) (this.mMarginFlags | 32);
                }
            }
            boolean zHasRtlSupport = context.getApplicationInfo().hasRtlSupport();
            if (context.getApplicationInfo().targetSdkVersion < 17 || !zHasRtlSupport) {
                this.mMarginFlags = (byte) (this.mMarginFlags | 16);
            }
            this.mMarginFlags = (byte) (this.mMarginFlags | 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        private void doResolveMargins() {
            int i2;
            int i3;
            byte b2 = this.mMarginFlags;
            if ((b2 & 16) == 16) {
                if ((b2 & 4) == 4 && (i3 = this.startMargin) > Integer.MIN_VALUE) {
                    this.leftMargin = i3;
                }
                if ((b2 & 8) == 8 && (i2 = this.endMargin) > Integer.MIN_VALUE) {
                    this.rightMargin = i2;
                }
            } else {
                if ((b2 & 3) != 1) {
                    int i4 = this.startMargin;
                    if (i4 <= Integer.MIN_VALUE) {
                        i4 = 0;
                    }
                    this.leftMargin = i4;
                    int i5 = this.endMargin;
                    this.rightMargin = i5 > Integer.MIN_VALUE ? i5 : 0;
                } else {
                    int i6 = this.endMargin;
                    if (i6 <= Integer.MIN_VALUE) {
                        i6 = 0;
                    }
                    this.leftMargin = i6;
                    int i7 = this.startMargin;
                    this.rightMargin = i7 > Integer.MIN_VALUE ? i7 : 0;
                }
            }
            this.mMarginFlags = (byte) (b2 & (-33));
        }

        public final void copyMarginsFrom(MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
            this.startMargin = marginLayoutParams.startMargin;
            this.endMargin = marginLayoutParams.endMargin;
            this.mMarginFlags = marginLayoutParams.mMarginFlags;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            super.encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.addProperty("leftMargin", this.leftMargin);
            viewHierarchyEncoder.addProperty("topMargin", this.topMargin);
            viewHierarchyEncoder.addProperty("rightMargin", this.rightMargin);
            viewHierarchyEncoder.addProperty("bottomMargin", this.bottomMargin);
            viewHierarchyEncoder.addProperty("startMargin", this.startMargin);
            viewHierarchyEncoder.addProperty("endMargin", this.endMargin);
        }

        public int getLayoutDirection() {
            return this.mMarginFlags & 3;
        }

        public int getMarginEnd() {
            int i2 = this.endMargin;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if ((this.mMarginFlags & 32) == 32) {
                doResolveMargins();
            }
            return (this.mMarginFlags & 3) != 1 ? this.rightMargin : this.leftMargin;
        }

        public int getMarginStart() {
            int i2 = this.startMargin;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if ((this.mMarginFlags & 32) == 32) {
                doResolveMargins();
            }
            return (this.mMarginFlags & 3) != 1 ? this.leftMargin : this.rightMargin;
        }

        public boolean isLayoutRtl() {
            return (this.mMarginFlags & 3) == 1;
        }

        public boolean isMarginRelative() {
            return (this.startMargin == Integer.MIN_VALUE && this.endMargin == Integer.MIN_VALUE) ? false : true;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void onDebugDraw(View view, Canvas canvas, Paint paint) {
            Insets opticalInsets = View.isLayoutModeOptical(view.mParent) ? view.getOpticalInsets() : Insets.NONE;
            ViewGroup.fillDifference(canvas, view.getLeft() + opticalInsets.left, view.getTop() + opticalInsets.top, view.getRight() - opticalInsets.right, view.getBottom() - opticalInsets.bottom, this.leftMargin, this.topMargin, this.rightMargin, this.bottomMargin, paint);
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void resolveLayoutDirection(int i2) {
            setLayoutDirection(i2);
            if (isMarginRelative() && (this.mMarginFlags & 32) == 32) {
                doResolveMargins();
            }
        }

        public void setLayoutDirection(int i2) {
            if (i2 == 0 || i2 == 1) {
                byte b2 = this.mMarginFlags;
                if (i2 != (b2 & 3)) {
                    this.mMarginFlags = (byte) ((i2 & 3) | ((byte) (b2 & (-4))));
                    if (isMarginRelative()) {
                        this.mMarginFlags = (byte) (this.mMarginFlags | 32);
                    } else {
                        this.mMarginFlags = (byte) (this.mMarginFlags & (-33));
                    }
                }
            }
        }

        public void setMarginEnd(int i2) {
            this.endMargin = i2;
            this.mMarginFlags = (byte) (this.mMarginFlags | 32);
        }

        public void setMarginStart(int i2) {
            this.startMargin = i2;
            this.mMarginFlags = (byte) (this.mMarginFlags | 32);
        }

        public void setMargins(int i2, int i3, int i4, int i5) {
            this.leftMargin = i2;
            this.topMargin = i3;
            this.rightMargin = i4;
            this.bottomMargin = i5;
            this.mMarginFlags = (byte) (((byte) (this.mMarginFlags & (-5))) & (-9));
            if (isMarginRelative()) {
                this.mMarginFlags = (byte) (this.mMarginFlags | 32);
            } else {
                this.mMarginFlags = (byte) (this.mMarginFlags & (-33));
            }
        }

        public void setMarginsRelative(int i2, int i3, int i4, int i5) {
            this.startMargin = i2;
            this.topMargin = i3;
            this.endMargin = i4;
            this.bottomMargin = i5;
            this.mMarginFlags = (byte) (this.mMarginFlags | 32);
        }

        public MarginLayoutParams(int i2, int i3) {
            super(i2, i3);
            this.startMargin = Integer.MIN_VALUE;
            this.endMargin = Integer.MIN_VALUE;
            this.mMarginFlags = (byte) (((byte) (((byte) (((byte) (this.mMarginFlags | 4)) | 8)) & (-33))) & (-17));
        }

        public MarginLayoutParams(MarginLayoutParams marginLayoutParams) {
            this.startMargin = Integer.MIN_VALUE;
            this.endMargin = Integer.MIN_VALUE;
            this.width = marginLayoutParams.width;
            this.height = marginLayoutParams.height;
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
            this.startMargin = marginLayoutParams.startMargin;
            this.endMargin = marginLayoutParams.endMargin;
            this.mMarginFlags = marginLayoutParams.mMarginFlags;
        }

        public MarginLayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.startMargin = Integer.MIN_VALUE;
            this.endMargin = Integer.MIN_VALUE;
            this.mMarginFlags = (byte) (((byte) (((byte) (((byte) (this.mMarginFlags | 4)) | 8)) & (-33))) & (-17));
        }
    }
}
