package android.view;

import android.animation.LayoutTransition;
import android.content.Context;
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
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pools;
import android.util.SparseArray;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LayoutAnimationController;
import android.view.animation.Transformation;
import i.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import u.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewGroup extends View implements ViewParent, ViewManager {
    private static final int ARRAY_CAPACITY_INCREMENT = 12;
    private static final int ARRAY_INITIAL_CAPACITY = 12;
    private static final int CHILD_LEFT_INDEX = 0;
    private static final int CHILD_TOP_INDEX = 1;
    public static final int CLIP_TO_PADDING_MASK = 34;
    private static final boolean DBG = false;
    public static boolean DEBUG_DRAW = false;
    private static final int FLAG_ADD_STATES_FROM_CHILDREN = 8192;
    public static final int FLAG_ALPHA_LOWER_THAN_ONE = 4096;
    public static final int FLAG_ALWAYS_DRAWN_WITH_CACHE = 16384;
    private static final int FLAG_ANIMATION_CACHE = 64;
    public static final int FLAG_ANIMATION_DONE = 16;
    public static final int FLAG_CHILDREN_DRAWN_WITH_CACHE = 32768;
    public static final int FLAG_CLEAR_TRANSFORMATION = 256;
    public static final int FLAG_CLIP_CHILDREN = 1;
    private static final int FLAG_CLIP_TO_PADDING = 2;
    public static final int FLAG_DISALLOW_INTERCEPT = 524288;
    public static final int FLAG_INVALIDATE_REQUIRED = 4;
    private static final int FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET = 8388608;
    private static final int FLAG_MASK_FOCUSABILITY = 393216;
    private static final int FLAG_NOTIFY_ANIMATION_LISTENER = 512;
    private static final int FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE = 65536;
    public static final int FLAG_OPTIMIZE_INVALIDATE = 128;
    private static final int FLAG_PADDING_NOT_NULL = 32;
    private static final int FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW = 4194304;
    private static final int FLAG_RUN_ANIMATION = 8;
    private static final int FLAG_SPLIT_MOTION_EVENTS = 2097152;
    public static final int FLAG_SUPPORT_STATIC_TRANSFORMATIONS = 2048;
    public static final int FLAG_USE_CHILD_DRAWING_ORDER = 1024;
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
    private static Paint sDebugPaint;
    private Animation.AnimationListener mAnimationListener;
    public Paint mCachePaint;
    private boolean mChildAcceptsDrag;

    @ViewDebug.ExportedProperty(category = "layout")
    private int mChildCountWithTransientState;
    private Transformation mChildTransformation;
    private View[] mChildren;
    private int mChildrenCount;
    private DragEvent mCurrentDrag;
    private View mCurrentDragView;
    public ArrayList<View> mDisappearingChildren;
    private HashSet<View> mDragNotifiedChildren;
    private HoverTarget mFirstHoverTarget;
    private TouchTarget mFirstTouchTarget;
    private View mFocused;

    @ViewDebug.ExportedProperty(flagMapping = {@ViewDebug.FlagToString(equals = 1, mask = 1, name = "CLIP_CHILDREN"), @ViewDebug.FlagToString(equals = 2, mask = 2, name = "CLIP_TO_PADDING"), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "PADDING_NOT_NULL")})
    public int mGroupFlags;
    private boolean mHoveredSelf;
    public RectF mInvalidateRegion;
    public Transformation mInvalidationTransformation;

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
    public OnHierarchyChangeListener mOnHierarchyChangeListener;
    public int mPersistentDrawingCache;
    public boolean mSuppressLayout;
    private LayoutTransition mTransition;
    private ArrayList<View> mTransitioningViews;
    private ArrayList<View> mVisibilityChangingChildren;
    private static final int[] DESCENDANT_FOCUSABILITY_FLAGS = {131072, 262144, 393216};
    public static int LAYOUT_MODE_DEFAULT = 0;

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
                Collections.sort(arrayList2);
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

        public View getChildAt(int i2) {
            return this.mChildren.get(i2);
        }

        public int getChildCount() {
            return this.mChildren.size();
        }

        public int getChildIndex(View view) {
            return this.mChildren.indexOf(view);
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
        private static final int MAX_POOL_SIZE = 32;
        private static final Pools.SynchronizedPool<ViewLocationHolder> sPool = new Pools.SynchronizedPool<>(32);
        private int mLayoutDirection;
        private final Rect mLocation = new Rect();
        public View mView;

        private void clear() {
            this.mView = null;
            this.mLocation.set(0, 0, 0, 0);
        }

        private void init(ViewGroup viewGroup, View view) {
            Rect rect = this.mLocation;
            view.getDrawingRect(rect);
            viewGroup.offsetDescendantRectToMyCoords(view, rect);
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

        public void recycle() {
            clear();
            sPool.release(this);
        }

        @Override // java.lang.Comparable
        public int compareTo(ViewLocationHolder viewLocationHolder) {
            if (viewLocationHolder == null || getClass() != viewLocationHolder.getClass()) {
                return 1;
            }
            Rect rect = this.mLocation;
            int i2 = rect.bottom;
            Rect rect2 = viewLocationHolder.mLocation;
            int i3 = rect2.top;
            if (i2 - i3 <= 0) {
                return -1;
            }
            int i4 = rect.top;
            if (i4 - rect2.bottom >= 0) {
                return 1;
            }
            if (this.mLayoutDirection == 0) {
                int i5 = rect.left - rect2.left;
                if (i5 != 0) {
                    return i5;
                }
            } else {
                int i6 = rect.right - rect2.right;
                if (i6 != 0) {
                    return -i6;
                }
            }
            int i7 = i4 - i3;
            if (i7 != 0) {
                return i7;
            }
            int iHeight = rect.height() - viewLocationHolder.mLocation.height();
            if (iHeight != 0) {
                return -iHeight;
            }
            int iWidth = this.mLocation.width() - viewLocationHolder.mLocation.width();
            return iWidth != 0 ? -iWidth : this.mView.getAccessibilityViewId() - viewLocationHolder.mView.getAccessibilityViewId();
        }
    }

    public ViewGroup(Context context) {
        super(context);
        this.mLastTouchDownIndex = -1;
        this.mLayoutMode = -1;
        this.mSuppressLayout = false;
        this.mLayoutCalledWhileSuppressed = false;
        this.mChildCountWithTransientState = 0;
        this.mLayoutTransitionListener = new LayoutTransition.TransitionListener() { // from class: android.view.ViewGroup.3
            @Override // android.animation.LayoutTransition.TransitionListener
            public void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i2) {
                if (ViewGroup.this.mLayoutCalledWhileSuppressed && !layoutTransition.isChangingLayout()) {
                    ViewGroup.this.requestLayout();
                    ViewGroup.this.mLayoutCalledWhileSuppressed = false;
                }
                if (i2 != 3 || ViewGroup.this.mTransitioningViews == null) {
                    return;
                }
                ViewGroup.this.endViewTransition(view);
            }

            @Override // android.animation.LayoutTransition.TransitionListener
            public void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i2) {
                if (i2 == 3) {
                    ViewGroup.this.startViewTransition(view);
                }
            }
        };
        initViewGroup();
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
            throw new IndexOutOfBoundsException("index=" + i2 + " count=" + i3);
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
        onViewAdded(view);
        if ((view.mViewFlags & 4194304) == 4194304) {
            this.mGroupFlags |= 65536;
        }
        if (view.hasTransientState()) {
            childHasTransientStateChanged(view, true);
        }
        if (!view.isImportantForAccessibility() || view.getVisibility() == 8) {
            return;
        }
        notifySubtreeAccessibilityStateChangedIfNeeded();
    }

    private void bindLayoutAnimation(View view) {
        view.setAnimation(this.mLayoutAnimationController.getAnimationForView(view));
    }

    private static boolean canViewReceivePointerEvents(View view) {
        return (view.mViewFlags & 12) == 0 || view.getAnimation() != null;
    }

    private void cancelAndClearTouchTargets(MotionEvent motionEvent) {
        if (this.mFirstTouchTarget != null) {
            boolean z2 = false;
            if (motionEvent == null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEvent = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                motionEvent.setSource(InputDevice.SOURCE_TOUCHSCREEN);
                z2 = true;
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
                motionEventObtain.setSource(InputDevice.SOURCE_TOUCHSCREEN);
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
                motionEventObtain.setSource(InputDevice.SOURCE_TOUCHSCREEN);
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

    private boolean debugDraw() {
        View.AttachInfo attachInfo;
        return DEBUG_DRAW || ((attachInfo = this.mAttachInfo) != null && attachInfo.mDebugLayout);
    }

    private int dipsToPixels(int i2) {
        return (int) ((i2 * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    private boolean dispatchTransformedGenericPointerEvent(MotionEvent motionEvent, View view) {
        float f2 = this.mScrollX - view.mLeft;
        float f3 = this.mScrollY - view.mTop;
        if (view.hasIdentityMatrix()) {
            motionEvent.offsetLocation(f2, f3);
            boolean zDispatchGenericMotionEvent = view.dispatchGenericMotionEvent(motionEvent);
            motionEvent.offsetLocation(-f2, -f3);
            return zDispatchGenericMotionEvent;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(f2, f3);
        motionEventObtain.transform(view.getInverseMatrix());
        boolean zDispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEventObtain);
        motionEventObtain.recycle();
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
        fillRect(canvas, paint, i2, i3, i2 + i4, i3 + (sign(i5) * i6));
        fillRect(canvas, paint, i2, i3, i2 + (i6 * sign(i4)), i3 + i5);
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
            motionEventObtain.setSource(InputDevice.SOURCE_TOUCHSCREEN);
            dispatchHoverEvent(motionEventObtain);
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

    /* JADX WARN: Code duplicated, block: B:16:0x002a A[PHI: r7
  0x002a: PHI (r7v2 int) = (r7v0 int), (r7v0 int), (r7v0 int), (r7v5 int) binds: [B:15:0x0028, B:13:0x0025, B:7:0x001b, B:10:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:18:0x002e  */
    /* JADX WARN: Code duplicated, block: B:21:0x0034  */
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
            } else {
                i4 = 0;
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

    private static Paint getDebugPaint() {
        if (sDebugPaint == null) {
            Paint paint = new Paint();
            sDebugPaint = paint;
            paint.setAntiAlias(false);
        }
        return sDebugPaint;
    }

    private PointF getLocalPoint() {
        if (this.mLocalPoint == null) {
            this.mLocalPoint = new PointF();
        }
        return this.mLocalPoint;
    }

    private TouchTarget getTouchTarget(View view) {
        for (TouchTarget touchTarget = this.mFirstTouchTarget; touchTarget != null; touchTarget = touchTarget.next) {
            if (touchTarget.child == view) {
                return touchTarget;
            }
        }
        return null;
    }

    private boolean hasBooleanFlag(int i2) {
        return (this.mGroupFlags & i2) == i2;
    }

    private void initFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ViewGroup);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
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
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void initViewGroup() {
        if (!debugDraw()) {
            setFlags(128, 128);
        }
        int i2 = this.mGroupFlags | 1;
        this.mGroupFlags = i2;
        int i3 = i2 | 2;
        this.mGroupFlags = i3;
        int i4 = i3 | 16;
        this.mGroupFlags = i4;
        int i5 = i4 | 64;
        this.mGroupFlags = i5;
        this.mGroupFlags = i5 | 16384;
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
        int i2 = this.mGroupFlags & (-513);
        this.mGroupFlags = i2;
        this.mGroupFlags = i2 | 16;
        if (this.mAnimationListener != null) {
            post(new Runnable() { // from class: android.view.ViewGroup.2
                @Override // java.lang.Runnable
                public void run() {
                    ViewGroup.this.mAnimationListener.onAnimationEnd(ViewGroup.this.mLayoutAnimationController.getAnimation());
                }
            });
        }
        int i3 = this.mGroupFlags;
        if ((i3 & 64) == 64) {
            this.mGroupFlags = i3 & (-32769);
            if ((this.mPersistentDrawingCache & 1) == 0) {
                setChildrenDrawingCacheEnabled(false);
            }
        }
        invalidate(true);
    }

    private static MotionEvent obtainMotionEventNoHistoryOrSelf(MotionEvent motionEvent) {
        return motionEvent.getHistorySize() == 0 ? motionEvent : MotionEvent.obtainNoHistory(motionEvent);
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

    private void removeViewInternal(View view) {
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            removeViewInternal(iIndexOfChild, view);
        }
    }

    private void removeViewsInternal(int i2, int i3) {
        ArrayList<View> arrayList;
        View view = this.mFocused;
        boolean z2 = this.mAttachInfo != null;
        View[] viewArr = this.mChildren;
        int i4 = i2 + i3;
        boolean z3 = false;
        for (int i5 = i2; i5 < i4; i5++) {
            View view2 = viewArr[i5];
            LayoutTransition layoutTransition = this.mTransition;
            if (layoutTransition != null) {
                layoutTransition.removeChild(this, view2);
            }
            if (view2 == view) {
                view2.unFocus();
                z3 = true;
            }
            if (view2.isAccessibilityFocused()) {
                view2.clearAccessibilityFocus();
            }
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
            needGlobalAttributesUpdate(false);
            onViewRemoved(view2);
        }
        removeFromArray(i2, i3);
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

    private static int sign(int i2) {
        return i2 >= 0 ? 1 : -1;
    }

    @Override // android.view.View
    public void addChildrenForAccessibility(ArrayList<View> arrayList) {
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
        if (descendantFocusability != 393216) {
            int i4 = this.mChildrenCount;
            View[] viewArr = this.mChildren;
            for (int i5 = 0; i5 < i4; i5++) {
                View view = viewArr[i5];
                if ((view.mViewFlags & 12) == 0) {
                    view.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if (descendantFocusability != 262144 || size == arrayList.size()) {
            super.addFocusables(arrayList, i2, i3);
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

    public boolean canAnimate() {
        return this.mLayoutAnimationController != null;
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
            Log.e(TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e2);
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

    public void clearDisappearingChildren() {
        ArrayList<View> arrayList = this.mDisappearingChildren;
        if (arrayList != null) {
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
                iArr[i4] = childAt.getVisibility();
                if (iArr[i4] == 0) {
                    childAt.setVisibility(4);
                }
            }
        } else {
            iArr = null;
        }
        Bitmap bitmapCreateSnapshot = super.createSnapshot(config, i2, z2);
        if (z2) {
            for (int i5 = 0; i5 < i3; i5++) {
                getChildAt(i5).setVisibility(iArr[i5]);
            }
        }
        return bitmapCreateSnapshot;
    }

    @Override // android.view.View
    public void debug(int i2) {
        super.debug(i2);
        if (this.mFocused != null) {
            Log.d(View.VIEW_LOG_TAG, View.debugIndent(i2) + "mFocused");
        }
        if (this.mChildrenCount != 0) {
            Log.d(View.VIEW_LOG_TAG, View.debugIndent(i2) + "{");
        }
        int i3 = this.mChildrenCount;
        for (int i4 = 0; i4 < i3; i4++) {
            this.mChildren[i4].debug(i2 + 1);
        }
        if (this.mChildrenCount != 0) {
            Log.d(View.VIEW_LOG_TAG, View.debugIndent(i2) + "}");
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
    public void dispatchAttachedToWindow(View.AttachInfo attachInfo, int i2) {
        this.mGroupFlags |= 4194304;
        super.dispatchAttachedToWindow(attachInfo, i2);
        this.mGroupFlags &= -4194305;
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            View view = viewArr[i4];
            view.dispatchAttachedToWindow(attachInfo, (view.mViewFlags & 12) | i2);
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
        this.mLayoutCalledWhileSuppressed = false;
        this.mDragNotifiedChildren = null;
        DragEvent dragEvent = this.mCurrentDrag;
        if (dragEvent != null) {
            dragEvent.recycle();
            this.mCurrentDrag = null;
        }
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchDetachedFromWindow();
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
    public boolean dispatchDragEvent(DragEvent dragEvent) {
        View view;
        float f2 = dragEvent.mX;
        float f3 = dragEvent.mY;
        ViewRootImpl viewRootImpl = getViewRootImpl();
        PointF localPoint = getLocalPoint();
        int i2 = dragEvent.mAction;
        zDispatchDragEvent = false;
        zDispatchDragEvent = false;
        zDispatchDragEvent = false;
        zDispatchDragEvent = false;
        zDispatchDragEvent = false;
        boolean zDispatchDragEvent = false;
        if (i2 == 1) {
            this.mCurrentDragView = null;
            this.mCurrentDrag = DragEvent.obtain(dragEvent);
            HashSet<View> hashSet = this.mDragNotifiedChildren;
            if (hashSet == null) {
                this.mDragNotifiedChildren = new HashSet<>();
            } else {
                hashSet.clear();
            }
            this.mChildAcceptsDrag = false;
            int i3 = this.mChildrenCount;
            View[] viewArr = this.mChildren;
            for (int i4 = 0; i4 < i3; i4++) {
                View view2 = viewArr[i4];
                view2.mPrivateFlags2 &= -4;
                if (view2.getVisibility() == 0 && notifyChildOfDrag(viewArr[i4])) {
                    this.mChildAcceptsDrag = true;
                }
            }
            zDispatchDragEvent = this.mChildAcceptsDrag;
        } else if (i2 == 2) {
            View viewFindFrontmostDroppableChildAt = findFrontmostDroppableChildAt(dragEvent.mX, dragEvent.mY, localPoint);
            if (this.mCurrentDragView != viewFindFrontmostDroppableChildAt) {
                viewRootImpl.setDragFocus(viewFindFrontmostDroppableChildAt);
                int i5 = dragEvent.mAction;
                View view3 = this.mCurrentDragView;
                if (view3 != null) {
                    dragEvent.mAction = 6;
                    view3.dispatchDragEvent(dragEvent);
                    view3.mPrivateFlags2 &= -3;
                    view3.refreshDrawableState();
                }
                this.mCurrentDragView = viewFindFrontmostDroppableChildAt;
                if (viewFindFrontmostDroppableChildAt != null) {
                    dragEvent.mAction = 5;
                    viewFindFrontmostDroppableChildAt.dispatchDragEvent(dragEvent);
                    viewFindFrontmostDroppableChildAt.mPrivateFlags2 |= 2;
                    viewFindFrontmostDroppableChildAt.refreshDrawableState();
                }
                dragEvent.mAction = i5;
            }
            if (viewFindFrontmostDroppableChildAt != null) {
                dragEvent.mX = localPoint.f139x;
                dragEvent.mY = localPoint.f140y;
                zDispatchDragEvent = viewFindFrontmostDroppableChildAt.dispatchDragEvent(dragEvent);
                dragEvent.mX = f2;
                dragEvent.mY = f3;
            }
        } else if (i2 == 3) {
            View viewFindFrontmostDroppableChildAt2 = findFrontmostDroppableChildAt(dragEvent.mX, dragEvent.mY, localPoint);
            if (viewFindFrontmostDroppableChildAt2 != null) {
                dragEvent.mX = localPoint.f139x;
                dragEvent.mY = localPoint.f140y;
                zDispatchDragEvent = viewFindFrontmostDroppableChildAt2.dispatchDragEvent(dragEvent);
                dragEvent.mX = f2;
                dragEvent.mY = f3;
            }
        } else if (i2 == 4) {
            HashSet<View> hashSet2 = this.mDragNotifiedChildren;
            if (hashSet2 != null) {
                for (View view4 : hashSet2) {
                    view4.dispatchDragEvent(dragEvent);
                    view4.mPrivateFlags2 &= -4;
                    view4.refreshDrawableState();
                }
                this.mDragNotifiedChildren.clear();
                DragEvent dragEvent2 = this.mCurrentDrag;
                if (dragEvent2 != null) {
                    dragEvent2.recycle();
                    this.mCurrentDrag = null;
                }
            }
            if (this.mChildAcceptsDrag) {
                zDispatchDragEvent = true;
            }
        } else if (i2 == 6 && (view = this.mCurrentDragView) != null) {
            view.dispatchDragEvent(dragEvent);
            view.mPrivateFlags2 &= -3;
            view.refreshDrawableState();
            this.mCurrentDragView = null;
        }
        return !zDispatchDragEvent ? super.dispatchDragEvent(dragEvent) : zDispatchDragEvent;
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        int iSave;
        boolean zDrawChild;
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        int i3 = this.mGroupFlags;
        int i4 = 0;
        if ((i3 & 8) != 0 && canAnimate()) {
            boolean z2 = (this.mGroupFlags & 64) == 64;
            boolean z3 = !isHardwareAccelerated();
            for (int i5 = 0; i5 < i2; i5++) {
                View view = viewArr[i5];
                if ((view.mViewFlags & 12) == 0) {
                    attachLayoutAnimationParameters(view, view.getLayoutParams(), i5, i2);
                    bindLayoutAnimation(view);
                    if (z2) {
                        view.setDrawingCacheEnabled(true);
                        if (z3) {
                            view.buildDrawingCache(true);
                        }
                    }
                }
            }
            LayoutAnimationController layoutAnimationController = this.mLayoutAnimationController;
            if (layoutAnimationController.willOverlap()) {
                this.mGroupFlags |= 128;
            }
            layoutAnimationController.start();
            int i6 = this.mGroupFlags & (-9);
            this.mGroupFlags = i6;
            int i7 = i6 & (-17);
            this.mGroupFlags = i7;
            if (z2) {
                this.mGroupFlags = 32768 | i7;
            }
            Animation.AnimationListener animationListener = this.mAnimationListener;
            if (animationListener != null) {
                animationListener.onAnimationStart(layoutAnimationController.getAnimation());
            }
        }
        boolean z4 = (i3 & 34) == 34;
        if (z4) {
            iSave = canvas.save();
            int i8 = this.mScrollX;
            int i9 = this.mPaddingLeft + i8;
            int i10 = this.mScrollY;
            canvas.clipRect(i9, this.mPaddingTop + i10, ((i8 + this.mRight) - this.mLeft) - this.mPaddingRight, ((i10 + this.mBottom) - this.mTop) - this.mPaddingBottom);
        } else {
            iSave = 0;
        }
        this.mPrivateFlags &= -65;
        this.mGroupFlags &= -5;
        long drawingTime = getDrawingTime();
        if ((i3 & 1024) == 0) {
            zDrawChild = false;
            while (i4 < i2) {
                View view2 = viewArr[i4];
                if ((view2.mViewFlags & 12) == 0 || view2.getAnimation() != null) {
                    zDrawChild |= drawChild(canvas, view2, drawingTime);
                }
                i4++;
            }
        } else {
            zDrawChild = false;
            while (i4 < i2) {
                View view3 = viewArr[getChildDrawingOrder(i2, i4)];
                if ((view3.mViewFlags & 12) == 0 || view3.getAnimation() != null) {
                    zDrawChild |= drawChild(canvas, view3, drawingTime);
                }
                i4++;
            }
        }
        ArrayList<View> arrayList = this.mDisappearingChildren;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                zDrawChild |= drawChild(canvas, arrayList.get(size), drawingTime);
            }
        }
        if (debugDraw()) {
            onDebugDraw(canvas);
        }
        if (z4) {
            canvas.restoreToCount(iSave);
        }
        int i11 = this.mGroupFlags;
        if ((i11 & 4) == 4) {
            invalidate(true);
        }
        if ((i11 & 16) == 0 && (i11 & 512) == 0 && this.mLayoutAnimationController.isDone() && !zDrawChild) {
            this.mGroupFlags |= 512;
            post(new Runnable() { // from class: android.view.ViewGroup.1
                @Override // java.lang.Runnable
                public void run() {
                    ViewGroup.this.notifyAnimationListener();
                }
            });
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
            View[] viewArr = this.mChildren;
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                View view = viewArr[zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(i2, i3) : i3];
                if (canViewReceivePointerEvents(view) && isTransformedTouchPointInView(x2, y2, view, null) && dispatchTransformedGenericPointerEvent(motionEvent, view)) {
                    return true;
                }
            }
        }
        return super.dispatchGenericPointerEvent(motionEvent);
    }

    @Override // android.view.View
    public void dispatchGetDisplayList() {
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            View view = viewArr[i3];
            if (((view.mViewFlags & 12) == 0 || view.getAnimation() != null) && view.hasStaticLayer()) {
                int i4 = view.mPrivateFlags;
                view.mRecreateDisplayList = (i4 & Integer.MIN_VALUE) == Integer.MIN_VALUE;
                view.mPrivateFlags = Integer.MAX_VALUE & i4;
                view.getDisplayList();
                view.mRecreateDisplayList = false;
            }
            i3++;
        }
        ViewOverlay viewOverlay = this.mOverlay;
        if (viewOverlay != null) {
            ViewGroup overlayView = viewOverlay.getOverlayView();
            int i5 = overlayView.mPrivateFlags;
            overlayView.mRecreateDisplayList = (i5 & Integer.MIN_VALUE) == Integer.MIN_VALUE;
            overlayView.mPrivateFlags = i5 & Integer.MAX_VALUE;
            overlayView.getDisplayList();
            overlayView.mRecreateDisplayList = false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:77:0x0147  */
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
        this.mFirstHoverTarget = null;
        if (zOnInterceptHoverEvent || action == 10) {
            motionEvent2 = motionEvent;
            zDispatchHoverEvent = false;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int i2 = this.mChildrenCount;
            if (i2 != 0) {
                boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
                View[] viewArr = this.mChildren;
                motionEvent2 = motionEvent;
                HoverTarget hoverTarget2 = null;
                zDispatchHoverEvent = false;
                for (int i3 = i2 - 1; i3 >= 0; i3--) {
                    View view = viewArr[zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(i2, i3) : i3];
                    if (canViewReceivePointerEvents(view) && isTransformedTouchPointInView(x2, y2, view, null)) {
                        HoverTarget hoverTargetObtain = hoverTarget;
                        HoverTarget hoverTarget3 = null;
                        while (true) {
                            if (hoverTargetObtain == null) {
                                hoverTargetObtain = HoverTarget.obtain(view);
                                z2 = false;
                                break;
                            }
                            if (hoverTargetObtain.child == view) {
                                if (hoverTarget3 != null) {
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
                                zDispatchTransformedGenericPointerEvent = dispatchTransformedGenericPointerEvent(motionEvent, view);
                                zDispatchHoverEvent |= zDispatchTransformedGenericPointerEvent;
                            }
                        } else if (action == 7) {
                            if (z2) {
                                zDispatchTransformedGenericPointerEvent = dispatchTransformedGenericPointerEvent(motionEvent, view);
                                zDispatchHoverEvent |= zDispatchTransformedGenericPointerEvent;
                            } else {
                                MotionEvent motionEventObtainMotionEventNoHistoryOrSelf2 = obtainMotionEventNoHistoryOrSelf(motionEvent2);
                                motionEventObtainMotionEventNoHistoryOrSelf2.setAction(9);
                                boolean zDispatchTransformedGenericPointerEvent2 = zDispatchHoverEvent | dispatchTransformedGenericPointerEvent(motionEventObtainMotionEventNoHistoryOrSelf2, view);
                                motionEventObtainMotionEventNoHistoryOrSelf2.setAction(action);
                                zDispatchHoverEvent = dispatchTransformedGenericPointerEvent(motionEventObtainMotionEventNoHistoryOrSelf2, view) | zDispatchTransformedGenericPointerEvent2;
                                motionEvent2 = motionEventObtainMotionEventNoHistoryOrSelf2;
                            }
                        }
                        if (zDispatchHoverEvent) {
                            break;
                        }
                        hoverTarget2 = hoverTargetObtain;
                    }
                }
            } else {
                motionEvent2 = motionEvent;
                zDispatchHoverEvent = false;
            }
        }
        while (hoverTarget != null) {
            View view2 = hoverTarget.child;
            if (action == 10) {
                zDispatchHoverEvent |= dispatchTransformedGenericPointerEvent(motionEvent, view2);
            } else {
                if (action == 7) {
                    dispatchTransformedGenericPointerEvent(motionEvent, view2);
                }
                MotionEvent motionEventObtainMotionEventNoHistoryOrSelf3 = obtainMotionEventNoHistoryOrSelf(motionEvent2);
                motionEventObtainMotionEventNoHistoryOrSelf3.setAction(10);
                dispatchTransformedGenericPointerEvent(motionEventObtainMotionEventNoHistoryOrSelf3, view2);
                motionEventObtainMotionEventNoHistoryOrSelf3.setAction(action);
                motionEvent2 = motionEventObtainMotionEventNoHistoryOrSelf3;
            }
            HoverTarget hoverTarget4 = hoverTarget.next;
            hoverTarget.recycle();
            hoverTarget = hoverTarget4;
        }
        boolean z3 = !zDispatchHoverEvent;
        boolean z4 = this.mHoveredSelf;
        if (z3 != z4) {
            if (z4) {
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
            if (z3) {
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
        if (z3) {
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
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        super.dispatchRestoreInstanceState(sparseArray);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if ((view.mViewFlags & 536870912) != 536870912) {
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
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        InputEventConsistencyVerifier inputEventConsistencyVerifier;
        boolean zOnInterceptTouchEvent;
        boolean z2;
        TouchTarget touchTarget;
        TouchTarget touchTargetAddTouchTarget;
        InputEventConsistencyVerifier inputEventConsistencyVerifier2 = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier2 != null) {
            inputEventConsistencyVerifier2.onTouchEvent(motionEvent, 1);
        }
        boolean zDispatchTransformedTouchEvent = false;
        if (onFilterTouchEventForSecurity(motionEvent)) {
            int action = motionEvent.getAction();
            int i2 = action & 255;
            if (i2 == 0) {
                cancelAndClearTouchTargets(motionEvent);
                resetTouchState();
            }
            if (i2 == 0 || this.mFirstTouchTarget != null) {
                if ((this.mGroupFlags & 524288) != 0) {
                    zOnInterceptTouchEvent = false;
                } else {
                    zOnInterceptTouchEvent = onInterceptTouchEvent(motionEvent);
                    motionEvent.setAction(action);
                }
            } else {
                zOnInterceptTouchEvent = true;
            }
            boolean z3 = resetCancelNextUpFlag(this) || i2 == 3;
            boolean z4 = (this.mGroupFlags & 2097152) != 0;
            PointF pointF = null;
            if (z3 || zOnInterceptTouchEvent || !(i2 == 0 || ((z4 && i2 == 5) || i2 == 7))) {
                z2 = false;
                touchTarget = null;
            } else {
                int actionIndex = motionEvent.getActionIndex();
                int pointerId = z4 ? 1 << motionEvent.getPointerId(actionIndex) : -1;
                removePointersFromTouchTargets(pointerId);
                int i3 = this.mChildrenCount;
                if (i3 != 0) {
                    float x2 = motionEvent.getX(actionIndex);
                    float y2 = motionEvent.getY(actionIndex);
                    View[] viewArr = this.mChildren;
                    boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
                    int i4 = i3 - 1;
                    touchTargetAddTouchTarget = null;
                    while (true) {
                        if (i4 < 0) {
                            z2 = false;
                            break;
                        }
                        int childDrawingOrder = zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(i3, i4) : i4;
                        View view = viewArr[childDrawingOrder];
                        if (canViewReceivePointerEvents(view) && isTransformedTouchPointInView(x2, y2, view, pointF)) {
                            TouchTarget touchTarget2 = getTouchTarget(view);
                            if (touchTarget2 != null) {
                                touchTarget2.pointerIdBits |= pointerId;
                                z2 = false;
                                touchTargetAddTouchTarget = touchTarget2;
                                break;
                            }
                            resetCancelNextUpFlag(view);
                            if (dispatchTransformedTouchEvent(motionEvent, false, view, pointerId)) {
                                this.mLastTouchDownTime = motionEvent.getDownTime();
                                this.mLastTouchDownIndex = childDrawingOrder;
                                this.mLastTouchDownX = motionEvent.getX();
                                this.mLastTouchDownY = motionEvent.getY();
                                touchTargetAddTouchTarget = addTouchTarget(view, pointerId);
                                z2 = true;
                                break;
                            }
                            touchTargetAddTouchTarget = touchTarget2;
                        }
                        i4--;
                        pointF = null;
                    }
                } else {
                    z2 = false;
                    touchTargetAddTouchTarget = null;
                }
                if (touchTargetAddTouchTarget != null || (touchTarget = this.mFirstTouchTarget) == null) {
                    touchTarget = touchTargetAddTouchTarget;
                } else {
                    while (true) {
                        TouchTarget touchTarget3 = touchTarget.next;
                        if (touchTarget3 == null) {
                            break;
                        }
                        touchTarget = touchTarget3;
                    }
                    touchTarget.pointerIdBits |= pointerId;
                }
            }
            TouchTarget touchTarget4 = this.mFirstTouchTarget;
            if (touchTarget4 == null) {
                zDispatchTransformedTouchEvent = dispatchTransformedTouchEvent(motionEvent, z3, null, -1);
            } else {
                TouchTarget touchTarget5 = null;
                TouchTarget touchTarget6 = touchTarget4;
                boolean z5 = false;
                while (touchTarget6 != null) {
                    TouchTarget touchTarget7 = touchTarget6.next;
                    if (z2 && touchTarget6 == touchTarget) {
                        z5 = true;
                    } else {
                        boolean z6 = resetCancelNextUpFlag(touchTarget6.child) || zOnInterceptTouchEvent;
                        if (dispatchTransformedTouchEvent(motionEvent, z6, touchTarget6.child, touchTarget6.pointerIdBits)) {
                            z5 = true;
                        }
                        if (z6) {
                            if (touchTarget5 == null) {
                                this.mFirstTouchTarget = touchTarget7;
                            } else {
                                touchTarget5.next = touchTarget7;
                            }
                            touchTarget6.recycle();
                        }
                        touchTarget6 = touchTarget7;
                    }
                    touchTarget5 = touchTarget6;
                    touchTarget6 = touchTarget7;
                }
                zDispatchTransformedTouchEvent = z5;
            }
            if (z3 || i2 == 1 || i2 == 7) {
                resetTouchState();
            } else if (z4 && i2 == 6) {
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
    public View findViewByAccessibilityIdTraversal(int i2) {
        View viewFindViewByAccessibilityIdTraversal = super.findViewByAccessibilityIdTraversal(i2);
        if (viewFindViewByAccessibilityIdTraversal != null) {
            return viewFindViewByAccessibilityIdTraversal;
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
    public View findViewByPredicateTraversal(k<View> kVar, View view) {
        View viewFindViewByPredicate;
        if (kVar.apply(this)) {
            return this;
        }
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            View view2 = viewArr[i3];
            if (view2 != view && (view2.mPrivateFlags & 8) == 0 && (viewFindViewByPredicate = view2.findViewByPredicate(kVar)) != null) {
                return viewFindViewByPredicate;
            }
        }
        return null;
    }

    @Override // android.view.View
    public View findViewTraversal(int i2) {
        View viewFindViewById;
        if (i2 == this.mID) {
            return this;
        }
        View[] viewArr = this.mChildren;
        int i3 = this.mChildrenCount;
        for (int i4 = 0; i4 < i3; i4++) {
            View view = viewArr[i4];
            if ((view.mPrivateFlags & 8) == 0 && (viewFindViewById = view.findViewById(i2)) != null) {
                return viewFindViewById;
            }
        }
        return null;
    }

    @Override // android.view.View
    public View findViewWithTagTraversal(Object obj) {
        View viewFindViewWithTag;
        if (obj != null && obj.equals(this.mTag)) {
            return this;
        }
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if ((view.mPrivateFlags & 8) == 0 && (viewFindViewWithTag = view.findViewWithTag(obj)) != null) {
                return viewFindViewWithTag;
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

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        boolean zFitSystemWindows = super.fitSystemWindows(rect);
        if (!zFitSystemWindows) {
            int i2 = this.mChildrenCount;
            View[] viewArr = this.mChildren;
            for (int i3 = 0; i3 < i2; i3++) {
                zFitSystemWindows = viewArr[i3].fitSystemWindows(rect);
                if (zFitSystemWindows) {
                    break;
                }
            }
        }
        return zFitSystemWindows;
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
        if (this.mParent == null || getDescendantFocusability() == 393216) {
            return;
        }
        if (!isFocused() || getDescendantFocusability() == 262144) {
            this.mParent.focusableViewAvailable(view);
        }
    }

    @Override // android.view.View
    public boolean gatherTransparentRegion(Region region) {
        boolean z2 = (this.mPrivateFlags & 512) == 0;
        if (z2 && region == null) {
            return true;
        }
        super.gatherTransparentRegion(region);
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        boolean z3 = true;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if (((view.mViewFlags & 12) == 0 || view.getAnimation() != null) && !view.gatherTransparentRegion(region)) {
                z3 = false;
            }
        }
        return z2 || z3;
    }

    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return layoutParams;
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
        View.AttachInfo attachInfo = this.mAttachInfo;
        RectF rectF = attachInfo != null ? attachInfo.mTmpTransformRect : new RectF();
        rectF.set(rect);
        if (!view.hasIdentityMatrix()) {
            view.getMatrix().mapRect(rectF);
        }
        int i2 = view.mLeft - this.mScrollX;
        int i3 = view.mTop - this.mScrollY;
        rectF.offset(i2, i3);
        if (point != null) {
            if (!view.hasIdentityMatrix()) {
                View.AttachInfo attachInfo2 = this.mAttachInfo;
                float[] fArr = attachInfo2 != null ? attachInfo2.mTmpTransformLocation : new float[2];
                fArr[0] = point.f137x;
                fArr[1] = point.f138y;
                view.getMatrix().mapPoints(fArr);
                point.f137x = (int) (fArr[0] + 0.5f);
                point.f138y = (int) (fArr[1] + 0.5f);
            }
            point.f137x += i2;
            point.f138y += i3;
        }
        if (!rectF.intersect(0.0f, 0.0f, this.mRight - this.mLeft, this.mBottom - this.mTop)) {
            return false;
        }
        if (this.mParent == null) {
            return true;
        }
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
        return this.mParent.getChildVisibleRect(this, rect, point);
    }

    public boolean getClipChildren() {
        return (this.mGroupFlags & 1) != 0;
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

    @ViewDebug.ExportedProperty(category = "drawing", mapping = {@ViewDebug.IntToString(from = 0, to = "NONE"), @ViewDebug.IntToString(from = 1, to = "ANIMATION"), @ViewDebug.IntToString(from = 2, to = "SCROLLING"), @ViewDebug.IntToString(from = 3, to = "ALL")})
    public int getPersistentDrawingCache() {
        return this.mPersistentDrawingCache;
    }

    @Override // android.view.View
    public void handleFocusGainInternal(int i2, Rect rect) {
        View view = this.mFocused;
        if (view != null) {
            view.unFocus();
            this.mFocused = null;
        }
        super.handleFocusGainInternal(i2, rect);
    }

    @Override // android.view.View
    public boolean hasFocus() {
        return ((this.mPrivateFlags & 2) == 0 && this.mFocused == null) ? false : true;
    }

    @Override // android.view.View
    public boolean hasFocusable() {
        if ((this.mViewFlags & 12) != 0) {
            return false;
        }
        if (isFocusable()) {
            return true;
        }
        if (getDescendantFocusability() != 393216) {
            int i2 = this.mChildrenCount;
            View[] viewArr = this.mChildren;
            for (int i3 = 0; i3 < i2; i3++) {
                if (viewArr[i3].hasFocusable()) {
                    return true;
                }
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
    public final void invalidateChild(View view, Rect rect) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            boolean z2 = (view.mPrivateFlags & 64) == 64;
            Matrix matrix = view.getMatrix();
            int i2 = view.isOpaque() && !z2 && view.getAnimation() == null && matrix.isIdentity() ? 4194304 : 2097152;
            if (view.mLayerType != 0) {
                int i3 = this.mPrivateFlags | Integer.MIN_VALUE;
                this.mPrivateFlags = i3;
                this.mPrivateFlags = i3 & (-32769);
                view.mLocalDirtyRect.union(rect);
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
                rect.set((int) (rectF.left - 0.5f), (int) (rectF.top - 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
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
                    int i4 = view2.mPrivateFlags;
                    if ((6291456 & i4) != 2097152) {
                        view2.mPrivateFlags = (i4 & (-6291457)) | i2;
                    }
                }
                viewParentInvalidateChildInParent = viewParentInvalidateChildInParent.invalidateChildInParent(iArr, rect);
                if (view2 != null) {
                    Matrix matrix3 = view2.getMatrix();
                    if (!matrix3.isIdentity()) {
                        RectF rectF2 = attachInfo.mTmpTransformRect;
                        rectF2.set(rect);
                        matrix3.mapRect(rectF2);
                        rect.set((int) (rectF2.left - 0.5f), (int) (rectF2.top - 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
                    }
                }
            } while (viewParentInvalidateChildInParent != null);
        }
    }

    public void invalidateChildFast(View view, Rect rect) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            if (view.mLayerType != 0) {
                view.mLocalDirtyRect.union(rect);
            }
            int i2 = view.mLeft;
            int i3 = view.mTop;
            if (!view.getMatrix().isIdentity()) {
                view.transformRect(rect);
            }
            ViewParent viewParentInvalidateChildInParent = this;
            do {
                if (viewParentInvalidateChildInParent instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) viewParentInvalidateChildInParent;
                    if (viewGroup.mLayerType != 0) {
                        viewGroup.invalidate();
                        viewParentInvalidateChildInParent = null;
                    } else {
                        ViewParent viewParentInvalidateChildInParentFast = viewGroup.invalidateChildInParentFast(i2, i3, rect);
                        int i4 = viewGroup.mLeft;
                        i3 = viewGroup.mTop;
                        viewParentInvalidateChildInParent = viewParentInvalidateChildInParentFast;
                        i2 = i4;
                    }
                } else {
                    int[] iArr = attachInfo.mInvalidateChildLocation;
                    iArr[0] = i2;
                    iArr[1] = i3;
                    viewParentInvalidateChildInParent = viewParentInvalidateChildInParent.invalidateChildInParent(iArr, rect);
                }
            } while (viewParentInvalidateChildInParent != null);
        }
    }

    @Override // android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        int i2 = this.mPrivateFlags;
        if ((i2 & 32) != 32 && (i2 & 32768) != 32768) {
            return null;
        }
        int i3 = this.mGroupFlags;
        if ((i3 & 144) == 128) {
            this.mPrivateFlags = i2 & (-32801);
            int i4 = this.mLeft;
            iArr[0] = i4;
            int i5 = this.mTop;
            iArr[1] = i5;
            if ((i3 & 1) == 1) {
                rect.set(0, 0, this.mRight - i4, this.mBottom - i5);
            } else {
                rect.union(0, 0, this.mRight - i4, this.mBottom - i5);
            }
            if (this.mLayerType != 0) {
                this.mPrivateFlags |= Integer.MIN_VALUE;
                this.mLocalDirtyRect.union(rect);
            }
            return this.mParent;
        }
        rect.offset(iArr[0] - this.mScrollX, iArr[1] - this.mScrollY);
        if ((this.mGroupFlags & 1) == 0) {
            rect.union(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
        }
        int i6 = this.mLeft;
        int i7 = this.mTop;
        if ((this.mGroupFlags & 1) == 1 && !rect.intersect(0, 0, this.mRight - i6, this.mBottom - i7)) {
            rect.setEmpty();
        }
        int i8 = this.mPrivateFlags & (-32769);
        this.mPrivateFlags = i8;
        iArr[0] = i6;
        iArr[1] = i7;
        if (this.mLayerType != 0) {
            this.mPrivateFlags = i8 | Integer.MIN_VALUE;
            this.mLocalDirtyRect.union(rect);
        }
        return this.mParent;
    }

    public ViewParent invalidateChildInParentFast(int i2, int i3, Rect rect) {
        int i4 = this.mPrivateFlags;
        if ((i4 & 32) != 32 && (i4 & 32768) != 32768) {
            return null;
        }
        rect.offset(i2 - this.mScrollX, i3 - this.mScrollY);
        if ((this.mGroupFlags & 1) == 0) {
            rect.union(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
        }
        if ((this.mGroupFlags & 1) != 0 && !rect.intersect(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop)) {
            return null;
        }
        if (this.mLayerType != 0) {
            this.mLocalDirtyRect.union(rect);
        }
        if (!getMatrix().isIdentity()) {
            transformRect(rect);
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

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean isAlwaysDrawnWithCacheEnabled() {
        return (this.mGroupFlags & 16384) == 16384;
    }

    @ViewDebug.ExportedProperty
    public boolean isAnimationCacheEnabled() {
        return (this.mGroupFlags & 64) == 64;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean isChildrenDrawingOrderEnabled() {
        return (this.mGroupFlags & 1024) == 1024;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
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

    public boolean isTransformedTouchPointInView(float f2, float f3, View view, PointF pointF) {
        View.AttachInfo attachInfo;
        float f4 = (f2 + this.mScrollX) - view.mLeft;
        float f5 = (f3 + this.mScrollY) - view.mTop;
        if (!view.hasIdentityMatrix() && (attachInfo = this.mAttachInfo) != null) {
            float[] fArr = attachInfo.mTmpTransformLocation;
            fArr[0] = f4;
            fArr[1] = f5;
            view.getInverseMatrix().mapPoints(fArr);
            float f6 = fArr[0];
            f5 = fArr[1];
            f4 = f6;
        }
        boolean zPointInView = view.pointInView(f4, f5);
        if (zPointInView && pointF != null) {
            pointF.set(f4, f5);
        }
        return zPointInView;
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

    public boolean notifyChildOfDrag(View view) {
        if (this.mDragNotifiedChildren.contains(view)) {
            return false;
        }
        this.mDragNotifiedChildren.add(view);
        boolean zDispatchDragEvent = view.dispatchDragEvent(this.mCurrentDrag);
        if (!zDispatchDragEvent || view.canAcceptDrag()) {
            return zDispatchDragEvent;
        }
        view.mPrivateFlags2 |= 1;
        view.refreshDrawableState();
        return zDispatchDragEvent;
    }

    @Override // android.view.ViewParent
    public void notifySubtreeAccessibilityStateChanged(View view, View view2, int i2) {
        if (getAccessibilityLiveRegion() != 0) {
            notifyViewAccessibilityStateChangedIfNeeded(i2);
            return;
        }
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            try {
                viewParent.notifySubtreeAccessibilityStateChanged(this, view2, i2);
            } catch (AbstractMethodError e2) {
                Log.e(View.VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e2);
            }
        }
    }

    public void offsetChildrenTopAndBottom(int i2) {
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        boolean z2 = false;
        for (int i4 = 0; i4 < i3; i4++) {
            View view = viewArr[i4];
            view.mTop += i2;
            view.mBottom += i2;
            DisplayList displayList = view.mDisplayList;
            if (displayList != null) {
                displayList.offsetTopAndBottom(i2);
                z2 = true;
            }
        }
        if (z2) {
            invalidateViewProperty(false, false);
        }
    }

    public final void offsetDescendantRectToMyCoords(View view, Rect rect) {
        offsetRectBetweenParentAndChild(view, rect, true, false);
    }

    public void offsetRectBetweenParentAndChild(View view, Rect rect, boolean z2, boolean z3) {
        if (view == this) {
            return;
        }
        ViewParent viewParent = view.mParent;
        while (viewParent != null && (viewParent instanceof View) && viewParent != this) {
            if (z2) {
                rect.offset(view.mLeft - view.mScrollX, view.mTop - view.mScrollY);
                if (z3) {
                    View view2 = (View) viewParent;
                    rect.intersect(0, 0, view2.mRight - view2.mLeft, view2.mBottom - view2.mTop);
                }
            } else {
                if (z3) {
                    View view3 = (View) viewParent;
                    rect.intersect(0, 0, view3.mRight - view3.mLeft, view3.mBottom - view3.mTop);
                }
                rect.offset(view.mScrollX - view.mLeft, view.mScrollY - view.mTop);
            }
            view = (View) viewParent;
            viewParent = view.mParent;
        }
        if (viewParent != this) {
            throw new IllegalArgumentException("parameter must be a descendant of this view");
        }
        if (z2) {
            rect.offset(view.mLeft - view.mScrollX, view.mTop - view.mScrollY);
        } else {
            rect.offset(view.mScrollX - view.mLeft, view.mScrollY - view.mTop);
        }
    }

    public final void offsetRectIntoDescendantCoords(View view, Rect rect) {
        offsetRectBetweenParentAndChild(view, rect, false, false);
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        int i2 = this.mGroupFlags;
        if ((i2 & 64) == 64) {
            this.mGroupFlags = i2 & (-32769);
            if ((this.mPersistentDrawingCache & 1) == 0) {
                setChildrenDrawingCacheEnabled(false);
            }
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        if ((this.mGroupFlags & 64) == 64) {
            int i2 = this.mChildrenCount;
            View[] viewArr = this.mChildren;
            boolean z2 = !isHardwareAccelerated();
            for (int i3 = 0; i3 < i2; i3++) {
                View view = viewArr[i3];
                if ((view.mViewFlags & 12) == 0) {
                    view.setDrawingCacheEnabled(true);
                    if (z2) {
                        view.buildDrawingCache(true);
                    }
                }
            }
            this.mGroupFlags |= 32768;
        }
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
        if (this.mCurrentDrag == null || i3 != 0) {
            return;
        }
        notifyChildOfDrag(view);
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
        Paint debugPaint = getDebugPaint();
        debugPaint.setColor(-65536);
        debugPaint.setStyle(Paint.Style.STROKE);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            Insets opticalInsets = childAt.getOpticalInsets();
            drawRect(canvas, debugPaint, childAt.getLeft() + opticalInsets.left, childAt.getTop() + opticalInsets.top, (childAt.getRight() - opticalInsets.right) - 1, (childAt.getBottom() - opticalInsets.bottom) - 1);
        }
        debugPaint.setColor(Color.argb(63, 255, 0, 255));
        Paint.Style style = Paint.Style.FILL;
        debugPaint.setStyle(style);
        onDebugDrawMargins(canvas, debugPaint);
        debugPaint.setColor(Color.rgb(63, 127, 255));
        debugPaint.setStyle(style);
        int iDipsToPixels = dipsToPixels(8);
        int iDipsToPixels2 = dipsToPixels(1);
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt2 = getChildAt(i3);
            drawRectCorners(canvas, childAt2.getLeft(), childAt2.getTop(), childAt2.getRight(), childAt2.getBottom(), debugPaint, iDipsToPixels, iDipsToPixels2);
        }
    }

    public void onDebugDrawMargins(Canvas canvas, Paint paint) {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            childAt.getLayoutParams().onDebugDraw(childAt, canvas, paint);
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearCachedLayoutMode();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEventInternal(accessibilityEvent);
        accessibilityEvent.setClassName(ViewGroup.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            ArrayList<View> arrayList = attachInfo.mTempArrayList;
            arrayList.clear();
            addChildrenForAccessibility(arrayList);
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                accessibilityNodeInfo.addChild(arrayList.get(i2));
            }
            arrayList.clear();
        }
    }

    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public abstract void onLayout(boolean z2, int i2, int i3, int i4, int i5);

    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        int i5 = this.mChildrenCount;
        int i6 = -1;
        if ((i2 & 2) != 0) {
            i6 = i5;
            i3 = 0;
            i4 = 1;
        } else {
            i3 = i5 - 1;
            i4 = -1;
        }
        View[] viewArr = this.mChildren;
        while (i3 != i6) {
            View view = viewArr[i3];
            if ((view.mViewFlags & 12) == 0 && view.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i4;
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

    public void onSetLayoutParams(View view, LayoutParams layoutParams) {
    }

    public void onViewAdded(View view) {
        OnHierarchyChangeListener onHierarchyChangeListener = this.mOnHierarchyChangeListener;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(this, view);
        }
    }

    public void onViewRemoved(View view) {
        OnHierarchyChangeListener onHierarchyChangeListener = this.mOnHierarchyChangeListener;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(this, view);
        }
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
                view2.unFocus();
                z3 = true;
            }
            if (view2.isAccessibilityFocused()) {
                view2.clearAccessibilityFocus();
            }
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
            onViewRemoved(view2);
            view2.mParent = null;
            viewArr[i3] = null;
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
        onViewRemoved(view);
    }

    @Override // android.view.ViewManager
    public void removeView(View view) {
        removeViewInternal(view);
        requestLayout();
        invalidate(true);
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
        super.unFocus();
        View view3 = this.mFocused;
        if (view3 != view) {
            if (view3 != null) {
                view3.unFocus();
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
        throw new IllegalStateException("descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is " + descendantFocusability);
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
            if (childAt.isLayoutDirectionInherited()) {
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
            if (childAt.isLayoutDirectionInherited()) {
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

    public void setAlwaysDrawnWithCacheEnabled(boolean z2) {
        setBooleanFlag(16384, z2);
    }

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

    public void setChildrenDrawnWithCacheEnabled(boolean z2) {
        setBooleanFlag(32768, z2);
    }

    public void setClipChildren(boolean z2) {
        if (z2 != ((this.mGroupFlags & 1) == 1)) {
            setBooleanFlag(1, z2);
            for (int i2 = 0; i2 < this.mChildrenCount; i2++) {
                DisplayList displayList = getChildAt(i2).mDisplayList;
                if (displayList != null) {
                    displayList.setClipToBounds(z2);
                }
            }
        }
    }

    public void setClipToPadding(boolean z2) {
        setBooleanFlag(2, z2);
    }

    public void setDescendantFocusability(int i2) {
        if (i2 != 131072 && i2 != 262144 && i2 != 393216) {
            throw new IllegalArgumentException("must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS");
        }
        int i3 = this.mGroupFlags & (-393217);
        this.mGroupFlags = i3;
        this.mGroupFlags = (i2 & 393216) | i3;
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

    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        ViewParent viewParent = this.mParent;
        return viewParent != null && viewParent.showContextMenuForChild(view);
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            return viewParent.startActionModeForChild(view, callback);
        }
        return null;
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

    @Override // android.view.View
    public void unFocus() {
        View view = this.mFocused;
        if (view == null) {
            super.unFocus();
        } else {
            view.unFocus();
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
            return;
        }
        throw new IllegalArgumentException("Given view not a child of " + this);
    }

    public void addView(View view, int i2) {
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null && (layoutParams = generateDefaultLayoutParams()) == null) {
            throw new IllegalArgumentException("generateDefaultLayoutParams() cannot return null");
        }
        addView(view, i2, layoutParams);
    }

    public boolean addViewInLayout(View view, int i2, LayoutParams layoutParams, boolean z2) {
        view.mParent = null;
        addViewInner(view, i2, layoutParams, z2);
        view.mPrivateFlags = (view.mPrivateFlags & (-6291457)) | 32;
        return true;
    }

    public void detachViewFromParent(int i2) {
        removeFromArray(i2);
    }

    @Override // android.view.View
    public ViewGroupOverlay getOverlay() {
        if (this.mOverlay == null) {
            this.mOverlay = new ViewGroupOverlay(this.mContext, this);
        }
        return (ViewGroupOverlay) this.mOverlay;
    }

    private void removeViewInternal(int i2, View view) {
        boolean z2;
        ArrayList<View> arrayList;
        LayoutTransition layoutTransition = this.mTransition;
        if (layoutTransition != null) {
            layoutTransition.removeChild(this, view);
        }
        if (view == this.mFocused) {
            view.unFocus();
            z2 = true;
        } else {
            z2 = false;
        }
        if (view.isAccessibilityFocused()) {
            view.clearAccessibilityFocus();
        }
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
        if (z2) {
            clearChildFocus(view);
            if (!rootViewRequestFocus()) {
                notifyGlobalFocusCleared(this);
            }
        }
        onViewRemoved(view);
        if (!view.isImportantForAccessibility() || view.getVisibility() == 8) {
            return;
        }
        notifySubtreeAccessibilityStateChangedIfNeeded();
    }

    public void setLayoutMode(int i2) {
        if (this.mLayoutMode != i2) {
            invalidateInheritedLayoutMode(i2);
            setLayoutMode(i2, i2 != -1);
            requestLayout();
        }
    }

    public static class LayoutParams {

        @Deprecated
        public static final int FILL_PARENT = -1;
        public static final int MATCH_PARENT = -1;
        public static final int WRAP_CONTENT = -2;

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = "MATCH_PARENT"), @ViewDebug.IntToString(from = -2, to = "WRAP_CONTENT")})
        public int height;
        public LayoutAnimationController.AnimationParameters layoutAnimationParameters;

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = "MATCH_PARENT"), @ViewDebug.IntToString(from = -2, to = "WRAP_CONTENT")})
        public int width;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ViewGroup_Layout);
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
            return str + "ViewGroup.LayoutParams={ width=" + sizeToString(this.width) + ", height=" + sizeToString(this.height) + " }";
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

    public void addView(View view, int i2, int i3) {
        LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        layoutParamsGenerateDefaultLayoutParams.width = i2;
        layoutParamsGenerateDefaultLayoutParams.height = i3;
        addView(view, -1, layoutParamsGenerateDefaultLayoutParams);
    }

    public ViewGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastTouchDownIndex = -1;
        this.mLayoutMode = -1;
        this.mSuppressLayout = false;
        this.mLayoutCalledWhileSuppressed = false;
        this.mChildCountWithTransientState = 0;
        this.mLayoutTransitionListener = new LayoutTransition.TransitionListener() { // from class: android.view.ViewGroup.3
            @Override // android.animation.LayoutTransition.TransitionListener
            public void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i2) {
                if (ViewGroup.this.mLayoutCalledWhileSuppressed && !layoutTransition.isChangingLayout()) {
                    ViewGroup.this.requestLayout();
                    ViewGroup.this.mLayoutCalledWhileSuppressed = false;
                }
                if (i2 != 3 || ViewGroup.this.mTransitioningViews == null) {
                    return;
                }
                ViewGroup.this.endViewTransition(view);
            }

            @Override // android.animation.LayoutTransition.TransitionListener
            public void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i2) {
                if (i2 == 3) {
                    ViewGroup.this.startViewTransition(view);
                }
            }
        };
        initViewGroup();
        initFromAttributes(context, attributeSet);
    }

    @Override // android.view.ViewManager
    public void addView(View view, LayoutParams layoutParams) {
        addView(view, -1, layoutParams);
    }

    public void addView(View view, int i2, LayoutParams layoutParams) {
        requestLayout();
        invalidate(true);
        addViewInner(view, i2, layoutParams, false);
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

    public ViewGroup(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mLastTouchDownIndex = -1;
        this.mLayoutMode = -1;
        this.mSuppressLayout = false;
        this.mLayoutCalledWhileSuppressed = false;
        this.mChildCountWithTransientState = 0;
        this.mLayoutTransitionListener = new LayoutTransition.TransitionListener() { // from class: android.view.ViewGroup.3
            @Override // android.animation.LayoutTransition.TransitionListener
            public void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i3) {
                if (ViewGroup.this.mLayoutCalledWhileSuppressed && !layoutTransition.isChangingLayout()) {
                    ViewGroup.this.requestLayout();
                    ViewGroup.this.mLayoutCalledWhileSuppressed = false;
                }
                if (i3 != 3 || ViewGroup.this.mTransitioningViews == null) {
                    return;
                }
                ViewGroup.this.endViewTransition(view);
            }

            @Override // android.animation.LayoutTransition.TransitionListener
            public void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i3) {
                if (i3 == 3) {
                    ViewGroup.this.startViewTransition(view);
                }
            }
        };
        initViewGroup();
        initFromAttributes(context, attributeSet);
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

        @ViewDebug.ExportedProperty(category = "layout")
        public int bottomMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        private int endMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        public int leftMargin;

        @ViewDebug.ExportedProperty(category = "layout", flagMapping = {@ViewDebug.FlagToString(equals = 3, mask = 3, name = "LAYOUT_DIRECTION"), @ViewDebug.FlagToString(equals = 4, mask = 4, name = "LEFT_MARGIN_UNDEFINED_MASK"), @ViewDebug.FlagToString(equals = 8, mask = 8, name = "RIGHT_MARGIN_UNDEFINED_MASK"), @ViewDebug.FlagToString(equals = 16, mask = 16, name = "RTL_COMPATIBILITY_MODE_MASK"), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "NEED_RESOLUTION_MASK")})
        public byte mMarginFlags;

        @ViewDebug.ExportedProperty(category = "layout")
        public int rightMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        private int startMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        public int topMargin;

        public MarginLayoutParams(Context context, AttributeSet attributeSet) {
            this.startMargin = Integer.MIN_VALUE;
            this.endMargin = Integer.MIN_VALUE;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ViewGroup_MarginLayout);
            setBaseAttributes(typedArrayObtainStyledAttributes, 0, 1);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
            if (dimensionPixelSize >= 0) {
                this.leftMargin = dimensionPixelSize;
                this.topMargin = dimensionPixelSize;
                this.rightMargin = dimensionPixelSize;
                this.bottomMargin = dimensionPixelSize;
            } else {
                int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, Integer.MIN_VALUE);
                this.leftMargin = dimensionPixelSize2;
                if (dimensionPixelSize2 == Integer.MIN_VALUE) {
                    this.mMarginFlags = (byte) (this.mMarginFlags | 4);
                    this.leftMargin = 0;
                }
                int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, Integer.MIN_VALUE);
                this.rightMargin = dimensionPixelSize3;
                if (dimensionPixelSize3 == Integer.MIN_VALUE) {
                    this.mMarginFlags = (byte) (this.mMarginFlags | 8);
                    this.rightMargin = 0;
                }
                this.topMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
                this.bottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
                this.startMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, Integer.MIN_VALUE);
                this.endMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, Integer.MIN_VALUE);
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
                    byte b3 = (byte) (b2 & (-4));
                    this.mMarginFlags = b3;
                    this.mMarginFlags = (byte) ((i2 & 3) | b3);
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
            byte b2 = (byte) (this.mMarginFlags & (-5));
            this.mMarginFlags = b2;
            this.mMarginFlags = (byte) (b2 & (-9));
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
            byte b2 = (byte) (this.mMarginFlags | 4);
            this.mMarginFlags = b2;
            byte b3 = (byte) (b2 | 8);
            this.mMarginFlags = b3;
            byte b4 = (byte) (b3 & (-33));
            this.mMarginFlags = b4;
            this.mMarginFlags = (byte) (b4 & (-17));
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
            byte b2 = (byte) (this.mMarginFlags | 4);
            this.mMarginFlags = b2;
            byte b3 = (byte) (b2 | 8);
            this.mMarginFlags = b3;
            byte b4 = (byte) (b3 & (-33));
            this.mMarginFlags = b4;
            this.mMarginFlags = (byte) (b4 & (-17));
        }
    }
}
