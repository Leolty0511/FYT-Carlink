package android.widget;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StrictMode;
import android.os.Trace;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.StateSet;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import i.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsListView extends AdapterView<ListAdapter> implements TextWatcher, ViewTreeObserver.OnGlobalLayoutListener, Filter.FilterListener, ViewTreeObserver.OnTouchModeChangeListener, RemoteViewsAdapter.RemoteAdapterConnectionCallback {
    private static final int CHECK_POSITION_SEARCH_DISTANCE = 20;
    public static final int CHOICE_MODE_MULTIPLE = 2;
    public static final int CHOICE_MODE_MULTIPLE_MODAL = 3;
    public static final int CHOICE_MODE_NONE = 0;
    public static final int CHOICE_MODE_SINGLE = 1;
    private static final int INVALID_POINTER = -1;
    public static final int LAYOUT_FORCE_BOTTOM = 3;
    public static final int LAYOUT_FORCE_TOP = 1;
    public static final int LAYOUT_MOVE_SELECTION = 6;
    public static final int LAYOUT_NORMAL = 0;
    public static final int LAYOUT_SET_SELECTION = 2;
    public static final int LAYOUT_SPECIFIC = 4;
    public static final int LAYOUT_SYNC = 5;
    public static final int OVERSCROLL_LIMIT_DIVISOR = 3;
    private static final boolean PROFILE_FLINGING = false;
    private static final boolean PROFILE_SCROLLING = false;
    private static final String TAG = "AbsListView";
    public static final int TOUCH_MODE_DONE_WAITING = 2;
    public static final int TOUCH_MODE_DOWN = 0;
    public static final int TOUCH_MODE_FLING = 4;
    private static final int TOUCH_MODE_OFF = 1;
    private static final int TOUCH_MODE_ON = 0;
    public static final int TOUCH_MODE_OVERFLING = 6;
    public static final int TOUCH_MODE_OVERSCROLL = 5;
    public static final int TOUCH_MODE_REST = -1;
    public static final int TOUCH_MODE_SCROLL = 3;
    public static final int TOUCH_MODE_TAP = 1;
    private static final int TOUCH_MODE_UNKNOWN = -1;
    public static final int TRANSCRIPT_MODE_ALWAYS_SCROLL = 2;
    public static final int TRANSCRIPT_MODE_DISABLED = 0;
    public static final int TRANSCRIPT_MODE_NORMAL = 1;
    public static final Interpolator sLinearInterpolator = new LinearInterpolator();
    private ListItemAccessibilityDelegate mAccessibilityDelegate;
    private int mActivePointerId;
    public ListAdapter mAdapter;
    public boolean mAdapterHasStableIds;
    private int mCacheColorHint;
    public boolean mCachingActive;
    public boolean mCachingStarted;
    public SparseBooleanArray mCheckStates;
    public LongSparseArray<Integer> mCheckedIdStates;
    public int mCheckedItemCount;
    public ActionMode mChoiceActionMode;
    public int mChoiceMode;
    private Runnable mClearScrollingCache;
    private ContextMenu.ContextMenuInfo mContextMenuInfo;
    public AdapterDataSetObserver mDataSetObserver;
    private InputConnection mDefInputConnection;
    private boolean mDeferNotifyDataSetChanged;
    private float mDensityScale;
    private int mDirection;
    public boolean mDrawSelectorOnTop;
    private EdgeEffect mEdgeGlowBottom;
    private EdgeEffect mEdgeGlowTop;
    public boolean mFastScrollAlwaysVisible;
    public boolean mFastScrollEnabled;
    private FastScroller mFastScroller;
    private boolean mFiltered;
    private int mFirstPositionDistanceGuess;
    private boolean mFlingProfilingStarted;
    private FlingRunnable mFlingRunnable;
    private StrictMode.Span mFlingStrictSpan;
    private boolean mForceTranscriptScroll;
    private boolean mGlobalLayoutListenerAddedFilter;
    private int mGlowPaddingLeft;
    private int mGlowPaddingRight;
    private boolean mIsChildViewEnabled;
    public final boolean[] mIsScrap;
    private int mLastAccessibilityScrollEventFromIndex;
    private int mLastAccessibilityScrollEventToIndex;
    private int mLastHandledItemCount;
    private int mLastPositionDistanceGuess;
    private int mLastScrollState;
    private int mLastTouchMode;
    public int mLastY;
    public int mLayoutMode;
    public Rect mListPadding;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    public int mMotionCorrection;
    public int mMotionPosition;
    public int mMotionViewNewTop;
    public int mMotionViewOriginalTop;
    public int mMotionX;
    public int mMotionY;
    public MultiChoiceModeWrapper mMultiChoiceModeCallback;
    private OnScrollListener mOnScrollListener;
    public int mOverflingDistance;
    public int mOverscrollDistance;
    public int mOverscrollMax;
    private final Thread mOwnerThread;
    private CheckForKeyLongPress mPendingCheckForKeyLongPress;
    private CheckForLongPress mPendingCheckForLongPress;
    private Runnable mPendingCheckForTap;
    private SavedState mPendingSync;
    private PerformClick mPerformClick;
    public PopupWindow mPopup;
    private boolean mPopupHidden;
    public Runnable mPositionScrollAfterLayout;
    public PositionScroller mPositionScroller;
    private InputConnectionWrapper mPublicInputConnection;
    public final RecycleBin mRecycler;
    private RemoteViewsAdapter mRemoteAdapter;
    public int mResurrectToPosition;
    public View mScrollDown;
    private boolean mScrollProfilingStarted;
    private StrictMode.Span mScrollStrictSpan;
    public View mScrollUp;
    public boolean mScrollingCacheEnabled;
    public int mSelectedTop;
    public int mSelectionBottomPadding;
    public int mSelectionLeftPadding;
    public int mSelectionRightPadding;
    public int mSelectionTopPadding;
    public Drawable mSelector;
    public int mSelectorPosition;
    public Rect mSelectorRect;
    private boolean mSmoothScrollbarEnabled;
    public boolean mStackFromBottom;
    public EditText mTextFilter;
    private boolean mTextFilterEnabled;
    private Rect mTouchFrame;
    public int mTouchMode;
    private Runnable mTouchModeReset;
    private int mTouchSlop;
    private int mTranscriptMode;
    private float mVelocityScale;
    private VelocityTracker mVelocityTracker;
    public int mWidthMeasureSpec;

    public class AdapterDataSetObserver extends AdapterView.AdapterDataSetObserver {
        public AdapterDataSetObserver() {
            super();
        }

        @Override // android.widget.AdapterView.AdapterDataSetObserver, android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            if (AbsListView.this.mFastScroller != null) {
                AbsListView.this.mFastScroller.onSectionsChanged();
            }
        }

        @Override // android.widget.AdapterView.AdapterDataSetObserver, android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            if (AbsListView.this.mFastScroller != null) {
                AbsListView.this.mFastScroller.onSectionsChanged();
            }
        }
    }

    public class CheckForKeyLongPress extends WindowRunnnable implements Runnable {
        private CheckForKeyLongPress() {
            super();
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsListView absListView;
            int i2;
            boolean zPerformLongPress;
            if (!AbsListView.this.isPressed() || (i2 = (absListView = AbsListView.this).mSelectedPosition) < 0) {
                return;
            }
            View childAt = absListView.getChildAt(i2 - absListView.mFirstPosition);
            AbsListView absListView2 = AbsListView.this;
            if (absListView2.mDataChanged) {
                absListView2.setPressed(false);
                if (childAt != null) {
                    childAt.setPressed(false);
                    return;
                }
                return;
            }
            if (sameWindow()) {
                AbsListView absListView3 = AbsListView.this;
                zPerformLongPress = absListView3.performLongPress(childAt, absListView3.mSelectedPosition, absListView3.mSelectedRowId);
            } else {
                zPerformLongPress = false;
            }
            if (zPerformLongPress) {
                AbsListView.this.setPressed(false);
                childAt.setPressed(false);
            }
        }
    }

    public class CheckForLongPress extends WindowRunnnable implements Runnable {
        private CheckForLongPress() {
            super();
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0029  */
        @Override // java.lang.Runnable
        public void run() {
            boolean zPerformLongPress;
            AbsListView absListView = AbsListView.this;
            View childAt = absListView.getChildAt(absListView.mMotionPosition - absListView.mFirstPosition);
            if (childAt != null) {
                AbsListView absListView2 = AbsListView.this;
                int i2 = absListView2.mMotionPosition;
                long itemId = absListView2.mAdapter.getItemId(i2);
                if (sameWindow()) {
                    AbsListView absListView3 = AbsListView.this;
                    if (absListView3.mDataChanged) {
                        zPerformLongPress = false;
                    } else {
                        zPerformLongPress = absListView3.performLongPress(childAt, i2, itemId);
                    }
                } else {
                    zPerformLongPress = false;
                }
                if (!zPerformLongPress) {
                    AbsListView.this.mTouchMode = 2;
                    return;
                }
                AbsListView absListView4 = AbsListView.this;
                absListView4.mTouchMode = -1;
                absListView4.setPressed(false);
                childAt.setPressed(false);
            }
        }
    }

    public final class CheckForTap implements Runnable {
        public CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Drawable current;
            AbsListView absListView = AbsListView.this;
            if (absListView.mTouchMode == 0) {
                absListView.mTouchMode = 1;
                View childAt = absListView.getChildAt(absListView.mMotionPosition - absListView.mFirstPosition);
                if (childAt == null || childAt.hasFocusable()) {
                    return;
                }
                AbsListView absListView2 = AbsListView.this;
                absListView2.mLayoutMode = 0;
                if (absListView2.mDataChanged) {
                    absListView2.mTouchMode = 2;
                    return;
                }
                childAt.setPressed(true);
                AbsListView.this.setPressed(true);
                AbsListView.this.layoutChildren();
                AbsListView absListView3 = AbsListView.this;
                absListView3.positionSelector(absListView3.mMotionPosition, childAt);
                AbsListView.this.refreshDrawableState();
                int longPressTimeout = ViewConfiguration.getLongPressTimeout();
                boolean zIsLongClickable = AbsListView.this.isLongClickable();
                Drawable drawable = AbsListView.this.mSelector;
                if (drawable != null && (current = drawable.getCurrent()) != null && (current instanceof TransitionDrawable)) {
                    if (zIsLongClickable) {
                        ((TransitionDrawable) current).startTransition(longPressTimeout);
                    } else {
                        ((TransitionDrawable) current).resetTransition();
                    }
                }
                if (!zIsLongClickable) {
                    AbsListView.this.mTouchMode = 2;
                    return;
                }
                if (AbsListView.this.mPendingCheckForLongPress == null) {
                    AbsListView absListView4 = AbsListView.this;
                    absListView4.mPendingCheckForLongPress = new CheckForLongPress();
                }
                AbsListView.this.mPendingCheckForLongPress.rememberWindowAttachCount();
                AbsListView absListView5 = AbsListView.this;
                absListView5.postDelayed(absListView5.mPendingCheckForLongPress, longPressTimeout);
            }
        }
    }

    public class FlingRunnable implements Runnable {
        private static final int FLYWHEEL_TIMEOUT = 40;
        private final Runnable mCheckFlywheel = new Runnable() { // from class: android.widget.AbsListView.FlingRunnable.1
            @Override // java.lang.Runnable
            public void run() {
                int i2 = AbsListView.this.mActivePointerId;
                VelocityTracker velocityTracker = AbsListView.this.mVelocityTracker;
                OverScroller overScroller = FlingRunnable.this.mScroller;
                if (velocityTracker == null || i2 == -1) {
                    return;
                }
                velocityTracker.computeCurrentVelocity(1000, AbsListView.this.mMaximumVelocity);
                float f2 = -velocityTracker.getYVelocity(i2);
                if (Math.abs(f2) >= AbsListView.this.mMinimumVelocity && overScroller.isScrollingInDirection(0.0f, f2)) {
                    AbsListView.this.postDelayed(this, 40L);
                    return;
                }
                FlingRunnable.this.endFling();
                AbsListView absListView = AbsListView.this;
                absListView.mTouchMode = 3;
                absListView.reportScrollStateChange(1);
            }
        };
        private int mLastFlingY;
        private final OverScroller mScroller;

        public FlingRunnable() {
            this.mScroller = new OverScroller(AbsListView.this.getContext());
        }

        public void edgeReached(int i2) {
            this.mScroller.notifyVerticalEdgeReached(AbsListView.this.mScrollY, 0, AbsListView.this.mOverflingDistance);
            int overScrollMode = AbsListView.this.getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && !AbsListView.this.contentFits())) {
                AbsListView.this.mTouchMode = 6;
                int currVelocity = (int) this.mScroller.getCurrVelocity();
                if (i2 > 0) {
                    AbsListView.this.mEdgeGlowTop.onAbsorb(currVelocity);
                } else {
                    AbsListView.this.mEdgeGlowBottom.onAbsorb(currVelocity);
                }
            } else {
                AbsListView absListView = AbsListView.this;
                absListView.mTouchMode = -1;
                PositionScroller positionScroller = absListView.mPositionScroller;
                if (positionScroller != null) {
                    positionScroller.stop();
                }
            }
            AbsListView.this.invalidate();
            AbsListView.this.postOnAnimation(this);
        }

        public void endFling() {
            AbsListView absListView = AbsListView.this;
            absListView.mTouchMode = -1;
            absListView.removeCallbacks(this);
            AbsListView.this.removeCallbacks(this.mCheckFlywheel);
            AbsListView.this.reportScrollStateChange(0);
            AbsListView.this.clearScrollingCache();
            this.mScroller.abortAnimation();
            if (AbsListView.this.mFlingStrictSpan != null) {
                AbsListView.this.mFlingStrictSpan.finish();
                AbsListView.this.mFlingStrictSpan = null;
            }
        }

        public void flywheelTouch() {
            AbsListView.this.postDelayed(this.mCheckFlywheel, 40L);
        }

        @Override // java.lang.Runnable
        public void run() {
            int iMax;
            int i2 = AbsListView.this.mTouchMode;
            boolean z2 = false;
            if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 6) {
                        endFling();
                        return;
                    }
                    OverScroller overScroller = this.mScroller;
                    if (!overScroller.computeScrollOffset()) {
                        endFling();
                        return;
                    }
                    int i3 = AbsListView.this.mScrollY;
                    int currY = overScroller.getCurrY();
                    AbsListView absListView = AbsListView.this;
                    if (!absListView.overScrollBy(0, currY - i3, 0, i3, 0, 0, 0, absListView.mOverflingDistance, false)) {
                        AbsListView.this.invalidate();
                        AbsListView.this.postOnAnimation(this);
                        return;
                    }
                    boolean z3 = i3 <= 0 && currY > 0;
                    if (i3 >= 0 && currY < 0) {
                        z2 = true;
                    }
                    if (!z3 && !z2) {
                        startSpringback();
                        return;
                    }
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (z2) {
                        currVelocity = -currVelocity;
                    }
                    overScroller.abortAnimation();
                    start(currVelocity);
                    return;
                }
            } else if (this.mScroller.isFinished()) {
                return;
            }
            AbsListView absListView2 = AbsListView.this;
            if (absListView2.mDataChanged) {
                absListView2.layoutChildren();
            }
            AbsListView absListView3 = AbsListView.this;
            if (absListView3.mItemCount == 0 || absListView3.getChildCount() == 0) {
                endFling();
                return;
            }
            OverScroller overScroller2 = this.mScroller;
            boolean zComputeScrollOffset = overScroller2.computeScrollOffset();
            int currY2 = overScroller2.getCurrY();
            int i4 = this.mLastFlingY - currY2;
            if (i4 > 0) {
                AbsListView absListView4 = AbsListView.this;
                absListView4.mMotionPosition = absListView4.mFirstPosition;
                AbsListView.this.mMotionViewOriginalTop = absListView4.getChildAt(0).getTop();
                iMax = Math.min(((AbsListView.this.getHeight() - AbsListView.this.mPaddingBottom) - AbsListView.this.mPaddingTop) - 1, i4);
            } else {
                int childCount = AbsListView.this.getChildCount() - 1;
                AbsListView absListView5 = AbsListView.this;
                absListView5.mMotionPosition = absListView5.mFirstPosition + childCount;
                AbsListView.this.mMotionViewOriginalTop = absListView5.getChildAt(childCount).getTop();
                iMax = Math.max(-(((AbsListView.this.getHeight() - AbsListView.this.mPaddingBottom) - AbsListView.this.mPaddingTop) - 1), i4);
            }
            AbsListView absListView6 = AbsListView.this;
            View childAt = absListView6.getChildAt(absListView6.mMotionPosition - absListView6.mFirstPosition);
            int top = childAt != null ? childAt.getTop() : 0;
            boolean zTrackMotionScroll = AbsListView.this.trackMotionScroll(iMax, iMax);
            if (zTrackMotionScroll && iMax != 0) {
                z2 = true;
            }
            if (z2) {
                if (childAt != null) {
                    int i5 = -(iMax - (childAt.getTop() - top));
                    AbsListView absListView7 = AbsListView.this;
                    absListView7.overScrollBy(0, i5, 0, absListView7.mScrollY, 0, 0, 0, AbsListView.this.mOverflingDistance, false);
                }
                if (zComputeScrollOffset) {
                    edgeReached(iMax);
                    return;
                }
                return;
            }
            if (!zComputeScrollOffset || z2) {
                endFling();
                return;
            }
            if (zTrackMotionScroll) {
                AbsListView.this.invalidate();
            }
            this.mLastFlingY = currY2;
            AbsListView.this.postOnAnimation(this);
        }

        public void start(int i2) {
            int i3 = i2 < 0 ? Integer.MAX_VALUE : 0;
            this.mLastFlingY = i3;
            this.mScroller.setInterpolator(null);
            this.mScroller.fling(0, i3, 0, i2, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            AbsListView absListView = AbsListView.this;
            absListView.mTouchMode = 4;
            absListView.postOnAnimation(this);
            if (AbsListView.this.mFlingStrictSpan == null) {
                AbsListView.this.mFlingStrictSpan = StrictMode.enterCriticalSpan("AbsListView-fling");
            }
        }

        public void startOverfling(int i2) {
            this.mScroller.setInterpolator(null);
            this.mScroller.fling(0, AbsListView.this.mScrollY, 0, i2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, AbsListView.this.getHeight());
            AbsListView absListView = AbsListView.this;
            absListView.mTouchMode = 6;
            absListView.invalidate();
            AbsListView.this.postOnAnimation(this);
        }

        public void startScroll(int i2, int i3, boolean z2) {
            int i4 = i2 < 0 ? Integer.MAX_VALUE : 0;
            this.mLastFlingY = i4;
            this.mScroller.setInterpolator(z2 ? AbsListView.sLinearInterpolator : null);
            this.mScroller.startScroll(0, i4, 0, i2, i3);
            AbsListView absListView = AbsListView.this;
            absListView.mTouchMode = 4;
            absListView.postOnAnimation(this);
        }

        public void startSpringback() {
            if (!this.mScroller.springBack(0, AbsListView.this.mScrollY, 0, 0, 0, 0)) {
                AbsListView absListView = AbsListView.this;
                absListView.mTouchMode = -1;
                absListView.reportScrollStateChange(0);
            } else {
                AbsListView absListView2 = AbsListView.this;
                absListView2.mTouchMode = 6;
                absListView2.invalidate();
                AbsListView.this.postOnAnimation(this);
            }
        }
    }

    public class InputConnectionWrapper implements InputConnection {
        private final EditorInfo mOutAttrs;
        private InputConnection mTarget;

        public InputConnectionWrapper(EditorInfo editorInfo) {
            this.mOutAttrs = editorInfo;
        }

        private InputConnection getTarget() {
            if (this.mTarget == null) {
                this.mTarget = AbsListView.this.getTextFilterInput().onCreateInputConnection(this.mOutAttrs);
            }
            return this.mTarget;
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean beginBatchEdit() {
            return getTarget().beginBatchEdit();
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean clearMetaKeyStates(int i2) {
            return getTarget().clearMetaKeyStates(i2);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean commitCompletion(CompletionInfo completionInfo) {
            return getTarget().commitCompletion(completionInfo);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean commitCorrection(CorrectionInfo correctionInfo) {
            return getTarget().commitCorrection(correctionInfo);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean commitText(CharSequence charSequence, int i2) {
            return getTarget().commitText(charSequence, i2);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean deleteSurroundingText(int i2, int i3) {
            return getTarget().deleteSurroundingText(i2, i3);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean endBatchEdit() {
            return getTarget().endBatchEdit();
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean finishComposingText() {
            InputConnection inputConnection = this.mTarget;
            return inputConnection == null || inputConnection.finishComposingText();
        }

        @Override // android.view.inputmethod.InputConnection
        public int getCursorCapsMode(int i2) {
            InputConnection inputConnection = this.mTarget;
            if (inputConnection == null) {
                return 16384;
            }
            return inputConnection.getCursorCapsMode(i2);
        }

        @Override // android.view.inputmethod.InputConnection
        public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2) {
            return getTarget().getExtractedText(extractedTextRequest, i2);
        }

        @Override // android.view.inputmethod.InputConnection
        public CharSequence getSelectedText(int i2) {
            InputConnection inputConnection = this.mTarget;
            return inputConnection == null ? ProxyProperties.LOCAL_EXCL_LIST : inputConnection.getSelectedText(i2);
        }

        @Override // android.view.inputmethod.InputConnection
        public CharSequence getTextAfterCursor(int i2, int i3) {
            InputConnection inputConnection = this.mTarget;
            return inputConnection == null ? ProxyProperties.LOCAL_EXCL_LIST : inputConnection.getTextAfterCursor(i2, i3);
        }

        @Override // android.view.inputmethod.InputConnection
        public CharSequence getTextBeforeCursor(int i2, int i3) {
            InputConnection inputConnection = this.mTarget;
            return inputConnection == null ? ProxyProperties.LOCAL_EXCL_LIST : inputConnection.getTextBeforeCursor(i2, i3);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean performContextMenuAction(int i2) {
            return getTarget().performContextMenuAction(i2);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean performEditorAction(int i2) {
            if (i2 != 6) {
                return false;
            }
            InputMethodManager inputMethodManager = (InputMethodManager) AbsListView.this.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
            if (inputMethodManager == null) {
                return true;
            }
            inputMethodManager.hideSoftInputFromWindow(AbsListView.this.getWindowToken(), 0);
            return true;
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean performPrivateCommand(String str, Bundle bundle) {
            return getTarget().performPrivateCommand(str, bundle);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean reportFullscreenMode(boolean z2) {
            return AbsListView.this.mDefInputConnection.reportFullscreenMode(z2);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean sendKeyEvent(KeyEvent keyEvent) {
            return AbsListView.this.mDefInputConnection.sendKeyEvent(keyEvent);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean setComposingRegion(int i2, int i3) {
            return getTarget().setComposingRegion(i2, i3);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean setComposingText(CharSequence charSequence, int i2) {
            return getTarget().setComposingText(charSequence, i2);
        }

        @Override // android.view.inputmethod.InputConnection
        public boolean setSelection(int i2, int i3) {
            return getTarget().setSelection(i2, i3);
        }
    }

    public class ListItemAccessibilityDelegate extends View.AccessibilityDelegate {
        public ListItemAccessibilityDelegate() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeInfo createAccessibilityNodeInfo(View view) {
            if (AbsListView.this.mDataChanged) {
                return null;
            }
            return super.createAccessibilityNodeInfo(view);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            AbsListView.this.onInitializeAccessibilityNodeInfoForItem(view, AbsListView.this.getPositionForView(view), accessibilityNodeInfo);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (super.performAccessibilityAction(view, i2, bundle)) {
                return true;
            }
            int positionForView = AbsListView.this.getPositionForView(view);
            ListAdapter adapter = AbsListView.this.getAdapter();
            if (positionForView != -1 && adapter != null && AbsListView.this.isEnabled() && adapter.isEnabled(positionForView)) {
                long itemIdAtPosition = AbsListView.this.getItemIdAtPosition(positionForView);
                if (i2 != 4) {
                    if (i2 == 8) {
                        if (AbsListView.this.getSelectedItemPosition() != positionForView) {
                            return false;
                        }
                        AbsListView.this.setSelection(-1);
                        return true;
                    }
                    if (i2 == 16) {
                        if (AbsListView.this.isClickable()) {
                            return AbsListView.this.performItemClick(view, positionForView, itemIdAtPosition);
                        }
                        return false;
                    }
                    if (i2 == 32 && AbsListView.this.isLongClickable()) {
                        return AbsListView.this.performLongPress(view, positionForView, itemIdAtPosition);
                    }
                    return false;
                }
                if (AbsListView.this.getSelectedItemPosition() != positionForView) {
                    AbsListView.this.setSelection(positionForView);
                    return true;
                }
            }
            return false;
        }
    }

    public interface MultiChoiceModeListener extends ActionMode.Callback {
        void onItemCheckedStateChanged(ActionMode actionMode, int i2, long j2, boolean z2);
    }

    public class MultiChoiceModeWrapper implements MultiChoiceModeListener {
        private MultiChoiceModeListener mWrapped;

        public MultiChoiceModeWrapper() {
        }

        public boolean hasWrappedCallback() {
            return this.mWrapped != null;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            if (!this.mWrapped.onCreateActionMode(actionMode, menu)) {
                return false;
            }
            AbsListView.this.setLongClickable(false);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.mWrapped.onDestroyActionMode(actionMode);
            AbsListView absListView = AbsListView.this;
            absListView.mChoiceActionMode = null;
            absListView.clearChoices();
            AbsListView absListView2 = AbsListView.this;
            absListView2.mDataChanged = true;
            absListView2.rememberSyncState();
            AbsListView.this.requestLayout();
            AbsListView.this.setLongClickable(true);
        }

        @Override // android.widget.AbsListView.MultiChoiceModeListener
        public void onItemCheckedStateChanged(ActionMode actionMode, int i2, long j2, boolean z2) {
            this.mWrapped.onItemCheckedStateChanged(actionMode, i2, j2, z2);
            if (AbsListView.this.getCheckedItemCount() == 0) {
                actionMode.finish();
            }
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onPrepareActionMode(actionMode, menu);
        }

        public void setWrapped(MultiChoiceModeListener multiChoiceModeListener) {
            this.mWrapped = multiChoiceModeListener;
        }
    }

    public interface OnScrollListener {
        public static final int SCROLL_STATE_FLING = 2;
        public static final int SCROLL_STATE_IDLE = 0;
        public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

        void onScroll(AbsListView absListView, int i2, int i3, int i4);

        void onScrollStateChanged(AbsListView absListView, int i2);
    }

    public class PerformClick extends WindowRunnnable implements Runnable {
        public int mClickMotionPosition;

        private PerformClick() {
            super();
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsListView absListView = AbsListView.this;
            if (absListView.mDataChanged) {
                return;
            }
            ListAdapter listAdapter = absListView.mAdapter;
            int i2 = this.mClickMotionPosition;
            if (listAdapter == null || absListView.mItemCount <= 0 || i2 == -1 || i2 >= listAdapter.getCount() || !sameWindow()) {
                return;
            }
            AbsListView absListView2 = AbsListView.this;
            View childAt = absListView2.getChildAt(i2 - absListView2.mFirstPosition);
            if (childAt != null) {
                AbsListView.this.performItemClick(childAt, i2, listAdapter.getItemId(i2));
            }
        }
    }

    public class PositionScroller implements Runnable {
        private static final int MOVE_DOWN_BOUND = 3;
        private static final int MOVE_DOWN_POS = 1;
        private static final int MOVE_OFFSET = 5;
        private static final int MOVE_UP_BOUND = 4;
        private static final int MOVE_UP_POS = 2;
        private static final int SCROLL_DURATION = 200;
        private int mBoundPos;
        private final int mExtraScroll;
        private int mLastSeenPos;
        private int mMode;
        private int mOffsetFromTop;
        private int mScrollDuration;
        private int mTargetPos;

        public PositionScroller() {
            this.mExtraScroll = ViewConfiguration.get(AbsListView.this.mContext).getScaledFadingEdgeLength();
        }

        @Override // java.lang.Runnable
        public void run() {
            int height = AbsListView.this.getHeight();
            AbsListView absListView = AbsListView.this;
            int i2 = absListView.mFirstPosition;
            int i3 = this.mMode;
            if (i3 == 1) {
                int childCount = absListView.getChildCount() - 1;
                int i4 = i2 + childCount;
                if (childCount < 0) {
                    return;
                }
                if (i4 == this.mLastSeenPos) {
                    AbsListView.this.postOnAnimation(this);
                    return;
                }
                View childAt = AbsListView.this.getChildAt(childCount);
                int height2 = childAt.getHeight();
                int top = height - childAt.getTop();
                AbsListView absListView2 = AbsListView.this;
                int i5 = absListView2.mItemCount - 1;
                int iMax = absListView2.mListPadding.bottom;
                if (i4 < i5) {
                    iMax = Math.max(iMax, this.mExtraScroll);
                }
                AbsListView.this.smoothScrollBy((height2 - top) + iMax, this.mScrollDuration, true);
                this.mLastSeenPos = i4;
                if (i4 < this.mTargetPos) {
                    AbsListView.this.postOnAnimation(this);
                    return;
                }
                return;
            }
            int i6 = 0;
            if (i3 == 2) {
                if (i2 == this.mLastSeenPos) {
                    absListView.postOnAnimation(this);
                    return;
                }
                View childAt2 = absListView.getChildAt(0);
                if (childAt2 == null) {
                    return;
                }
                AbsListView.this.smoothScrollBy(childAt2.getTop() - (i2 > 0 ? Math.max(this.mExtraScroll, AbsListView.this.mListPadding.top) : AbsListView.this.mListPadding.top), this.mScrollDuration, true);
                this.mLastSeenPos = i2;
                if (i2 > this.mTargetPos) {
                    AbsListView.this.postOnAnimation(this);
                    return;
                }
                return;
            }
            if (i3 == 3) {
                int childCount2 = absListView.getChildCount();
                if (i2 == this.mBoundPos || childCount2 <= 1) {
                    return;
                }
                int i7 = childCount2 + i2;
                AbsListView absListView3 = AbsListView.this;
                if (i7 >= absListView3.mItemCount) {
                    return;
                }
                int i8 = i2 + 1;
                if (i8 == this.mLastSeenPos) {
                    absListView3.postOnAnimation(this);
                    return;
                }
                View childAt3 = absListView3.getChildAt(1);
                int height3 = childAt3.getHeight();
                int top2 = childAt3.getTop();
                int iMax2 = Math.max(AbsListView.this.mListPadding.bottom, this.mExtraScroll);
                if (i8 < this.mBoundPos) {
                    AbsListView.this.smoothScrollBy(Math.max(0, (height3 + top2) - iMax2), this.mScrollDuration, true);
                    this.mLastSeenPos = i8;
                    AbsListView.this.postOnAnimation(this);
                    return;
                } else {
                    if (top2 > iMax2) {
                        AbsListView.this.smoothScrollBy(top2 - iMax2, this.mScrollDuration, true);
                        return;
                    }
                    return;
                }
            }
            if (i3 == 4) {
                int childCount3 = absListView.getChildCount() - 2;
                if (childCount3 < 0) {
                    return;
                }
                int i9 = i2 + childCount3;
                if (i9 == this.mLastSeenPos) {
                    AbsListView.this.postOnAnimation(this);
                    return;
                }
                View childAt4 = AbsListView.this.getChildAt(childCount3);
                int height4 = childAt4.getHeight();
                int top3 = childAt4.getTop();
                int i10 = height - top3;
                int iMax3 = Math.max(AbsListView.this.mListPadding.top, this.mExtraScroll);
                this.mLastSeenPos = i9;
                if (i9 > this.mBoundPos) {
                    AbsListView.this.smoothScrollBy(-(i10 - iMax3), this.mScrollDuration, true);
                    AbsListView.this.postOnAnimation(this);
                    return;
                }
                int i11 = height - iMax3;
                int i12 = top3 + height4;
                if (i11 > i12) {
                    AbsListView.this.smoothScrollBy(-(i11 - i12), this.mScrollDuration, true);
                    return;
                }
                return;
            }
            if (i3 != 5) {
                return;
            }
            if (this.mLastSeenPos == i2) {
                absListView.postOnAnimation(this);
                return;
            }
            this.mLastSeenPos = i2;
            int childCount4 = absListView.getChildCount();
            int i13 = this.mTargetPos;
            int i14 = (i2 + childCount4) - 1;
            if (i13 < i2) {
                i6 = (i2 - i13) + 1;
            } else if (i13 > i14) {
                i6 = i13 - i14;
            }
            float fMin = Math.min(Math.abs(i6 / childCount4), 1.0f);
            if (i13 < i2) {
                AbsListView.this.smoothScrollBy((int) ((-AbsListView.this.getHeight()) * fMin), (int) (this.mScrollDuration * fMin), true);
                AbsListView.this.postOnAnimation(this);
            } else if (i13 > i14) {
                AbsListView.this.smoothScrollBy((int) (AbsListView.this.getHeight() * fMin), (int) (this.mScrollDuration * fMin), true);
                AbsListView.this.postOnAnimation(this);
            } else {
                int top4 = AbsListView.this.getChildAt(i13 - i2).getTop() - this.mOffsetFromTop;
                AbsListView.this.smoothScrollBy(top4, (int) (this.mScrollDuration * (Math.abs(top4) / AbsListView.this.getHeight())), true);
            }
        }

        public void scrollToVisible(int i2, int i3, int i4) {
            AbsListView absListView = AbsListView.this;
            int i5 = absListView.mFirstPosition;
            int childCount = (absListView.getChildCount() + i5) - 1;
            AbsListView absListView2 = AbsListView.this;
            int i6 = absListView2.mListPadding.top;
            int height = absListView2.getHeight() - AbsListView.this.mListPadding.bottom;
            if (i2 < i5 || i2 > childCount) {
                Log.w(AbsListView.TAG, "scrollToVisible called with targetPos " + i2 + " not visible [" + i5 + ", " + childCount + "]");
            }
            if (i3 < i5 || i3 > childCount) {
                i3 = -1;
            }
            View childAt = AbsListView.this.getChildAt(i2 - i5);
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int iMin = bottom > height ? bottom - height : 0;
            if (top < i6) {
                iMin = top - i6;
            }
            if (iMin == 0) {
                return;
            }
            if (i3 >= 0) {
                View childAt2 = AbsListView.this.getChildAt(i3 - i5);
                int top2 = childAt2.getTop();
                int bottom2 = childAt2.getBottom();
                int iAbs = Math.abs(iMin);
                if (iMin < 0 && bottom2 + iAbs > height) {
                    iMin = Math.max(0, bottom2 - height);
                } else if (iMin > 0 && top2 - iAbs < i6) {
                    iMin = Math.min(0, top2 - i6);
                }
            }
            AbsListView.this.smoothScrollBy(iMin, i4);
        }

        public void start(final int i2) {
            int i3;
            stop();
            AbsListView absListView = AbsListView.this;
            if (absListView.mDataChanged) {
                absListView.mPositionScrollAfterLayout = new Runnable() { // from class: android.widget.AbsListView.PositionScroller.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PositionScroller.this.start(i2);
                    }
                };
                return;
            }
            int childCount = absListView.getChildCount();
            if (childCount == 0) {
                return;
            }
            AbsListView absListView2 = AbsListView.this;
            int i4 = absListView2.mFirstPosition;
            int i5 = (childCount + i4) - 1;
            int iMax = Math.max(0, Math.min(absListView2.getCount() - 1, i2));
            if (iMax < i4) {
                i3 = (i4 - iMax) + 1;
                this.mMode = 2;
            } else if (iMax <= i5) {
                scrollToVisible(iMax, -1, 200);
                return;
            } else {
                i3 = (iMax - i5) + 1;
                this.mMode = 1;
            }
            if (i3 > 0) {
                this.mScrollDuration = 200 / i3;
            } else {
                this.mScrollDuration = 200;
            }
            this.mTargetPos = iMax;
            this.mBoundPos = -1;
            this.mLastSeenPos = -1;
            AbsListView.this.postOnAnimation(this);
        }

        public void startWithOffset(int i2, int i3) {
            startWithOffset(i2, i3, 200);
        }

        public void stop() {
            AbsListView.this.removeCallbacks(this);
        }

        public void startWithOffset(final int i2, final int i3, final int i4) {
            int i5;
            stop();
            AbsListView absListView = AbsListView.this;
            if (absListView.mDataChanged) {
                absListView.mPositionScrollAfterLayout = new Runnable() { // from class: android.widget.AbsListView.PositionScroller.3
                    @Override // java.lang.Runnable
                    public void run() {
                        PositionScroller.this.startWithOffset(i2, i3, i4);
                    }
                };
                return;
            }
            int childCount = absListView.getChildCount();
            if (childCount == 0) {
                return;
            }
            int paddingTop = i3 + AbsListView.this.getPaddingTop();
            int iMax = Math.max(0, Math.min(AbsListView.this.getCount() - 1, i2));
            this.mTargetPos = iMax;
            this.mOffsetFromTop = paddingTop;
            this.mBoundPos = -1;
            this.mLastSeenPos = -1;
            this.mMode = 5;
            AbsListView absListView2 = AbsListView.this;
            int i6 = absListView2.mFirstPosition;
            int i7 = (i6 + childCount) - 1;
            if (iMax < i6) {
                i5 = i6 - iMax;
            } else {
                if (iMax <= i7) {
                    AbsListView.this.smoothScrollBy(absListView2.getChildAt(iMax - i6).getTop() - paddingTop, i4, true);
                    return;
                }
                i5 = iMax - i7;
            }
            float f2 = i5 / childCount;
            if (f2 >= 1.0f) {
                i4 = (int) (i4 / f2);
            }
            this.mScrollDuration = i4;
            this.mLastSeenPos = -1;
            absListView2.postOnAnimation(this);
        }

        public void start(final int i2, final int i3) {
            int i4;
            int i5;
            stop();
            if (i3 == -1) {
                start(i2);
                return;
            }
            AbsListView absListView = AbsListView.this;
            if (absListView.mDataChanged) {
                absListView.mPositionScrollAfterLayout = new Runnable() { // from class: android.widget.AbsListView.PositionScroller.2
                    @Override // java.lang.Runnable
                    public void run() {
                        PositionScroller.this.start(i2, i3);
                    }
                };
                return;
            }
            int childCount = absListView.getChildCount();
            if (childCount == 0) {
                return;
            }
            AbsListView absListView2 = AbsListView.this;
            int i6 = absListView2.mFirstPosition;
            int i7 = (childCount + i6) - 1;
            int iMax = Math.max(0, Math.min(absListView2.getCount() - 1, i2));
            if (iMax < i6) {
                int i8 = i7 - i3;
                if (i8 < 1) {
                    return;
                }
                i5 = (i6 - iMax) + 1;
                i4 = i8 - 1;
                if (i4 < i5) {
                    this.mMode = 4;
                    i5 = i4;
                } else {
                    this.mMode = 2;
                }
            } else {
                if (iMax <= i7) {
                    scrollToVisible(iMax, i3, 200);
                    return;
                }
                int i9 = i3 - i6;
                if (i9 < 1) {
                    return;
                }
                i4 = (iMax - i7) + 1;
                i5 = i9 - 1;
                if (i5 < i4) {
                    this.mMode = 3;
                } else {
                    this.mMode = 1;
                    i5 = i4;
                }
            }
            if (i5 > 0) {
                this.mScrollDuration = 200 / i5;
            } else {
                this.mScrollDuration = 200;
            }
            this.mTargetPos = iMax;
            this.mBoundPos = i3;
            this.mLastSeenPos = -1;
            AbsListView.this.postOnAnimation(this);
        }
    }

    public class RecycleBin {
        private View[] mActiveViews = new View[0];
        private ArrayList<View> mCurrentScrap;
        private int mFirstActivePosition;
        private RecyclerListener mRecyclerListener;
        private ArrayList<View>[] mScrapViews;
        private ArrayList<View> mSkippedScrap;
        private SparseArray<View> mTransientStateViews;
        private LongSparseArray<View> mTransientStateViewsById;
        private int mViewTypeCount;

        public RecycleBin() {
        }

        private void pruneScrapViews() {
            int length = this.mActiveViews.length;
            int i2 = this.mViewTypeCount;
            ArrayList<View>[] arrayListArr = this.mScrapViews;
            for (int i3 = 0; i3 < i2; i3++) {
                ArrayList<View> arrayList = arrayListArr[i3];
                int size = arrayList.size();
                int i4 = size - length;
                int i5 = size - 1;
                int i6 = 0;
                while (i6 < i4) {
                    AbsListView.this.removeDetachedView(arrayList.remove(i5), false);
                    i6++;
                    i5--;
                }
            }
            SparseArray<View> sparseArray = this.mTransientStateViews;
            if (sparseArray != null) {
                int i7 = 0;
                while (i7 < sparseArray.size()) {
                    View viewValueAt = sparseArray.valueAt(i7);
                    if (!viewValueAt.hasTransientState()) {
                        AbsListView.this.removeDetachedView(viewValueAt, false);
                        sparseArray.removeAt(i7);
                        i7--;
                    }
                    i7++;
                }
            }
            LongSparseArray<View> longSparseArray = this.mTransientStateViewsById;
            if (longSparseArray != null) {
                int i8 = 0;
                while (i8 < longSparseArray.size()) {
                    View viewValueAt2 = longSparseArray.valueAt(i8);
                    if (!viewValueAt2.hasTransientState()) {
                        AbsListView.this.removeDetachedView(viewValueAt2, false);
                        longSparseArray.removeAt(i8);
                        i8--;
                    }
                    i8++;
                }
            }
        }

        public void addScrapView(View view, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.scrappedFromPosition = i2;
            int i3 = layoutParams.viewType;
            if (shouldRecycleViewType(i3)) {
                view.dispatchStartTemporaryDetach();
                AbsListView.this.notifyViewAccessibilityStateChangedIfNeeded(1);
                if (!view.hasTransientState()) {
                    if (this.mViewTypeCount == 1) {
                        this.mCurrentScrap.add(view);
                    } else {
                        this.mScrapViews[i3].add(view);
                    }
                    if (view.isAccessibilityFocused()) {
                        view.clearAccessibilityFocus();
                    }
                    view.setAccessibilityDelegate(null);
                    RecyclerListener recyclerListener = this.mRecyclerListener;
                    if (recyclerListener != null) {
                        recyclerListener.onMovedToScrapHeap(view);
                        return;
                    }
                    return;
                }
                AbsListView absListView = AbsListView.this;
                if (absListView.mAdapter != null && absListView.mAdapterHasStableIds) {
                    if (this.mTransientStateViewsById == null) {
                        this.mTransientStateViewsById = new LongSparseArray<>();
                    }
                    this.mTransientStateViewsById.put(layoutParams.itemId, view);
                } else if (absListView.mDataChanged) {
                    if (this.mSkippedScrap == null) {
                        this.mSkippedScrap = new ArrayList<>();
                    }
                    this.mSkippedScrap.add(view);
                } else {
                    if (this.mTransientStateViews == null) {
                        this.mTransientStateViews = new SparseArray<>();
                    }
                    this.mTransientStateViews.put(i2, view);
                }
            }
        }

        public void clear() {
            int i2 = this.mViewTypeCount;
            if (i2 == 1) {
                ArrayList<View> arrayList = this.mCurrentScrap;
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    AbsListView.this.removeDetachedView(arrayList.remove((size - 1) - i3), false);
                }
            } else {
                for (int i4 = 0; i4 < i2; i4++) {
                    ArrayList<View> arrayList2 = this.mScrapViews[i4];
                    int size2 = arrayList2.size();
                    for (int i5 = 0; i5 < size2; i5++) {
                        AbsListView.this.removeDetachedView(arrayList2.remove((size2 - 1) - i5), false);
                    }
                }
            }
            clearTransientStateViews();
        }

        public void clearTransientStateViews() {
            SparseArray<View> sparseArray = this.mTransientStateViews;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i2 = 0; i2 < size; i2++) {
                    AbsListView.this.removeDetachedView(sparseArray.valueAt(i2), false);
                }
                sparseArray.clear();
            }
            LongSparseArray<View> longSparseArray = this.mTransientStateViewsById;
            if (longSparseArray != null) {
                int size2 = longSparseArray.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    AbsListView.this.removeDetachedView(longSparseArray.valueAt(i3), false);
                }
                longSparseArray.clear();
            }
        }

        public void fillActiveViews(int i2, int i3) {
            if (this.mActiveViews.length < i2) {
                this.mActiveViews = new View[i2];
            }
            this.mFirstActivePosition = i3;
            View[] viewArr = this.mActiveViews;
            for (int i4 = 0; i4 < i2; i4++) {
                View childAt = AbsListView.this.getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.viewType != -2) {
                    viewArr[i4] = childAt;
                }
            }
        }

        public View getActiveView(int i2) {
            int i3 = i2 - this.mFirstActivePosition;
            View[] viewArr = this.mActiveViews;
            if (i3 < 0 || i3 >= viewArr.length) {
                return null;
            }
            View view = viewArr[i3];
            viewArr[i3] = null;
            return view;
        }

        public View getScrapView(int i2) {
            if (this.mViewTypeCount == 1) {
                return AbsListView.retrieveFromScrap(this.mCurrentScrap, i2);
            }
            int itemViewType = AbsListView.this.mAdapter.getItemViewType(i2);
            if (itemViewType < 0) {
                return null;
            }
            ArrayList<View>[] arrayListArr = this.mScrapViews;
            if (itemViewType < arrayListArr.length) {
                return AbsListView.retrieveFromScrap(arrayListArr[itemViewType], i2);
            }
            return null;
        }

        public View getTransientStateView(int i2) {
            int iIndexOfKey;
            AbsListView absListView = AbsListView.this;
            ListAdapter listAdapter = absListView.mAdapter;
            if (listAdapter != null && absListView.mAdapterHasStableIds && this.mTransientStateViewsById != null) {
                long itemId = listAdapter.getItemId(i2);
                View view = this.mTransientStateViewsById.get(itemId);
                this.mTransientStateViewsById.remove(itemId);
                return view;
            }
            SparseArray<View> sparseArray = this.mTransientStateViews;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i2)) < 0) {
                return null;
            }
            View viewValueAt = this.mTransientStateViews.valueAt(iIndexOfKey);
            this.mTransientStateViews.removeAt(iIndexOfKey);
            return viewValueAt;
        }

        public void markChildrenDirty() {
            int i2 = this.mViewTypeCount;
            if (i2 == 1) {
                ArrayList<View> arrayList = this.mCurrentScrap;
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    arrayList.get(i3).forceLayout();
                }
            } else {
                for (int i4 = 0; i4 < i2; i4++) {
                    ArrayList<View> arrayList2 = this.mScrapViews[i4];
                    int size2 = arrayList2.size();
                    for (int i5 = 0; i5 < size2; i5++) {
                        arrayList2.get(i5).forceLayout();
                    }
                }
            }
            SparseArray<View> sparseArray = this.mTransientStateViews;
            if (sparseArray != null) {
                int size3 = sparseArray.size();
                for (int i6 = 0; i6 < size3; i6++) {
                    this.mTransientStateViews.valueAt(i6).forceLayout();
                }
            }
            LongSparseArray<View> longSparseArray = this.mTransientStateViewsById;
            if (longSparseArray != null) {
                int size4 = longSparseArray.size();
                for (int i7 = 0; i7 < size4; i7++) {
                    this.mTransientStateViewsById.valueAt(i7).forceLayout();
                }
            }
        }

        public void reclaimScrapViews(List<View> list) {
            int i2 = this.mViewTypeCount;
            if (i2 == 1) {
                list.addAll(this.mCurrentScrap);
                return;
            }
            ArrayList<View>[] arrayListArr = this.mScrapViews;
            for (int i3 = 0; i3 < i2; i3++) {
                list.addAll(arrayListArr[i3]);
            }
        }

        public void removeSkippedScrap() {
            ArrayList<View> arrayList = this.mSkippedScrap;
            if (arrayList == null) {
                return;
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbsListView.this.removeDetachedView(this.mSkippedScrap.get(i2), false);
            }
            this.mSkippedScrap.clear();
        }

        public void scrapActiveViews() {
            View[] viewArr = this.mActiveViews;
            boolean z2 = this.mRecyclerListener != null;
            boolean z3 = this.mViewTypeCount > 1;
            ArrayList<View> arrayList = this.mCurrentScrap;
            for (int length = viewArr.length - 1; length >= 0; length--) {
                View view = viewArr[length];
                if (view != null) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    int i2 = layoutParams.viewType;
                    viewArr[length] = null;
                    if (view.hasTransientState()) {
                        view.dispatchStartTemporaryDetach();
                        AbsListView absListView = AbsListView.this;
                        if (absListView.mAdapter != null && absListView.mAdapterHasStableIds) {
                            if (this.mTransientStateViewsById == null) {
                                this.mTransientStateViewsById = new LongSparseArray<>();
                            }
                            this.mTransientStateViewsById.put(AbsListView.this.mAdapter.getItemId(this.mFirstActivePosition + length), view);
                        } else if (!absListView.mDataChanged) {
                            if (this.mTransientStateViews == null) {
                                this.mTransientStateViews = new SparseArray<>();
                            }
                            this.mTransientStateViews.put(this.mFirstActivePosition + length, view);
                        } else if (i2 != -2) {
                            absListView.removeDetachedView(view, false);
                        }
                    } else if (shouldRecycleViewType(i2)) {
                        if (z3) {
                            arrayList = this.mScrapViews[i2];
                        }
                        view.dispatchStartTemporaryDetach();
                        layoutParams.scrappedFromPosition = this.mFirstActivePosition + length;
                        arrayList.add(view);
                        view.setAccessibilityDelegate(null);
                        if (z2) {
                            this.mRecyclerListener.onMovedToScrapHeap(view);
                        }
                    } else if (i2 != -2) {
                        AbsListView.this.removeDetachedView(view, false);
                    }
                }
            }
            pruneScrapViews();
        }

        public void setCacheColorHint(int i2) {
            int i3 = this.mViewTypeCount;
            if (i3 == 1) {
                ArrayList<View> arrayList = this.mCurrentScrap;
                int size = arrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    arrayList.get(i4).setDrawingCacheBackgroundColor(i2);
                }
            } else {
                for (int i5 = 0; i5 < i3; i5++) {
                    ArrayList<View> arrayList2 = this.mScrapViews[i5];
                    int size2 = arrayList2.size();
                    for (int i6 = 0; i6 < size2; i6++) {
                        arrayList2.get(i6).setDrawingCacheBackgroundColor(i2);
                    }
                }
            }
            for (View view : this.mActiveViews) {
                if (view != null) {
                    view.setDrawingCacheBackgroundColor(i2);
                }
            }
        }

        public void setViewTypeCount(int i2) {
            if (i2 < 1) {
                throw new IllegalArgumentException("Can't have a viewTypeCount < 1");
            }
            ArrayList<View>[] arrayListArr = new ArrayList[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                arrayListArr[i3] = new ArrayList<>();
            }
            this.mViewTypeCount = i2;
            this.mCurrentScrap = arrayListArr[0];
            this.mScrapViews = arrayListArr;
        }

        public boolean shouldRecycleViewType(int i2) {
            return i2 >= 0;
        }
    }

    public interface RecyclerListener {
        void onMovedToScrapHeap(View view);
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.AbsListView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public LongSparseArray<Integer> checkIdState;
        public SparseBooleanArray checkState;
        public int checkedItemCount;
        public String filter;
        public long firstId;
        public int height;
        public boolean inActionMode;
        public int position;
        public long selectedId;
        public int viewTop;

        public String toString() {
            return "AbsListView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.selectedId + " firstId=" + this.firstId + " viewTop=" + this.viewTop + " position=" + this.position + " height=" + this.height + " filter=" + this.filter + " checkState=" + this.checkState + "}";
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeLong(this.selectedId);
            parcel.writeLong(this.firstId);
            parcel.writeInt(this.viewTop);
            parcel.writeInt(this.position);
            parcel.writeInt(this.height);
            parcel.writeString(this.filter);
            parcel.writeByte(this.inActionMode ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.checkedItemCount);
            parcel.writeSparseBooleanArray(this.checkState);
            LongSparseArray<Integer> longSparseArray = this.checkIdState;
            int size = longSparseArray != null ? longSparseArray.size() : 0;
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                parcel.writeLong(this.checkIdState.keyAt(i3));
                parcel.writeInt(this.checkIdState.valueAt(i3).intValue());
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.selectedId = parcel.readLong();
            this.firstId = parcel.readLong();
            this.viewTop = parcel.readInt();
            this.position = parcel.readInt();
            this.height = parcel.readInt();
            this.filter = parcel.readString();
            this.inActionMode = parcel.readByte() != 0;
            this.checkedItemCount = parcel.readInt();
            this.checkState = parcel.readSparseBooleanArray();
            int i2 = parcel.readInt();
            if (i2 > 0) {
                this.checkIdState = new LongSparseArray<>();
                for (int i3 = 0; i3 < i2; i3++) {
                    this.checkIdState.put(parcel.readLong(), Integer.valueOf(parcel.readInt()));
                }
            }
        }
    }

    public interface SelectionBoundsAdjuster {
        void adjustListItemSelectionBounds(Rect rect);
    }

    public class WindowRunnnable {
        private int mOriginalAttachCount;

        private WindowRunnnable() {
        }

        public void rememberWindowAttachCount() {
            this.mOriginalAttachCount = AbsListView.this.getWindowAttachCount();
        }

        public boolean sameWindow() {
            return AbsListView.this.getWindowAttachCount() == this.mOriginalAttachCount;
        }
    }

    public AbsListView(Context context) {
        super(context);
        this.mChoiceMode = 0;
        this.mLayoutMode = 0;
        this.mDeferNotifyDataSetChanged = false;
        this.mDrawSelectorOnTop = false;
        this.mSelectorPosition = -1;
        this.mSelectorRect = new Rect();
        this.mRecycler = new RecycleBin();
        this.mSelectionLeftPadding = 0;
        this.mSelectionTopPadding = 0;
        this.mSelectionRightPadding = 0;
        this.mSelectionBottomPadding = 0;
        this.mListPadding = new Rect();
        this.mWidthMeasureSpec = 0;
        this.mTouchMode = -1;
        this.mSelectedTop = 0;
        this.mSmoothScrollbarEnabled = true;
        this.mResurrectToPosition = -1;
        this.mContextMenuInfo = null;
        this.mLastTouchMode = -1;
        this.mScrollProfilingStarted = false;
        this.mFlingProfilingStarted = false;
        this.mScrollStrictSpan = null;
        this.mFlingStrictSpan = null;
        this.mLastScrollState = 0;
        this.mVelocityScale = 1.0f;
        this.mIsScrap = new boolean[1];
        this.mActivePointerId = -1;
        this.mDirection = 0;
        initAbsListView();
        this.mOwnerThread = Thread.currentThread();
        setVerticalScrollBarEnabled(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(a.View);
        initializeScrollbars(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    private boolean acceptFilter() {
        return this.mTextFilterEnabled && (getAdapter() instanceof Filterable) && ((Filterable) getAdapter()).getFilter() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearScrollingCache() {
        if (isHardwareAccelerated()) {
            return;
        }
        if (this.mClearScrollingCache == null) {
            this.mClearScrollingCache = new Runnable() { // from class: android.widget.AbsListView.4
                @Override // java.lang.Runnable
                public void run() {
                    AbsListView absListView = AbsListView.this;
                    if (absListView.mCachingStarted) {
                        absListView.mCachingActive = false;
                        absListView.mCachingStarted = false;
                        absListView.setChildrenDrawnWithCacheEnabled(false);
                        if ((AbsListView.this.mPersistentDrawingCache & 2) == 0) {
                            AbsListView.this.setChildrenDrawingCacheEnabled(false);
                        }
                        if (AbsListView.this.isAlwaysDrawnWithCacheEnabled()) {
                            return;
                        }
                        AbsListView.this.invalidate();
                    }
                }
            };
        }
        post(this.mClearScrollingCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean contentFits() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return true;
        }
        if (childCount != this.mItemCount) {
            return false;
        }
        return getChildAt(0).getTop() >= this.mListPadding.top && getChildAt(childCount - 1).getBottom() <= getHeight() - this.mListPadding.bottom;
    }

    private void createScrollingCache() {
        if (!this.mScrollingCacheEnabled || this.mCachingStarted || isHardwareAccelerated()) {
            return;
        }
        setChildrenDrawnWithCacheEnabled(true);
        setChildrenDrawingCacheEnabled(true);
        this.mCachingActive = true;
        this.mCachingStarted = true;
    }

    private void createTextFilter(boolean z2) {
        if (this.mPopup == null) {
            PopupWindow popupWindow = new PopupWindow(getContext());
            popupWindow.setFocusable(false);
            popupWindow.setTouchable(false);
            popupWindow.setInputMethodMode(2);
            popupWindow.setContentView(getTextFilterInput());
            popupWindow.setWidth(-2);
            popupWindow.setHeight(-2);
            popupWindow.setBackgroundDrawable(null);
            this.mPopup = popupWindow;
            getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.mGlobalLayoutListenerAddedFilter = true;
        }
        if (z2) {
            this.mPopup.setAnimationStyle(16974319);
        } else {
            this.mPopup.setAnimationStyle(16974320);
        }
    }

    private void dismissPopup() {
        PopupWindow popupWindow = this.mPopup;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    private void drawSelector(Canvas canvas) {
        if (this.mSelectorRect.isEmpty()) {
            return;
        }
        Drawable drawable = this.mSelector;
        drawable.setBounds(this.mSelectorRect);
        drawable.draw(canvas);
    }

    private void finishGlows() {
        EdgeEffect edgeEffect = this.mEdgeGlowTop;
        if (edgeEffect != null) {
            edgeEffect.finish();
            this.mEdgeGlowBottom.finish();
        }
    }

    public static int getDistance(Rect rect, Rect rect2, int i2) {
        int iWidth;
        int iHeight;
        int iWidth2;
        int i3;
        int iHeight2;
        int i4;
        if (i2 == 1 || i2 == 2) {
            iWidth = rect.right + (rect.width() / 2);
            iHeight = (rect.height() / 2) + rect.top;
            iWidth2 = rect2.left + (rect2.width() / 2);
            i3 = rect2.top;
            iHeight2 = rect2.height() / 2;
        } else {
            if (i2 != 17) {
                if (i2 == 33) {
                    iWidth = rect.left + (rect.width() / 2);
                    iHeight = rect.top;
                    iWidth2 = rect2.left + (rect2.width() / 2);
                    i4 = rect2.bottom;
                } else if (i2 == 66) {
                    iWidth = rect.right;
                    iHeight = (rect.height() / 2) + rect.top;
                    iWidth2 = rect2.left;
                    i3 = rect2.top;
                    iHeight2 = rect2.height() / 2;
                } else {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}.");
                    }
                    iWidth = rect.left + (rect.width() / 2);
                    iHeight = rect.bottom;
                    iWidth2 = rect2.left + (rect2.width() / 2);
                    i4 = rect2.top;
                }
                int i5 = iWidth2 - iWidth;
                int i6 = i4 - iHeight;
                return (i6 * i6) + (i5 * i5);
            }
            iWidth = rect.left;
            iHeight = (rect.height() / 2) + rect.top;
            iWidth2 = rect2.right;
            i3 = rect2.top;
            iHeight2 = rect2.height() / 2;
        }
        i4 = iHeight2 + i3;
        int i7 = iWidth2 - iWidth;
        int i8 = i4 - iHeight;
        return (i8 * i8) + (i7 * i7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EditText getTextFilterInput() {
        if (this.mTextFilter == null) {
            EditText editText = (EditText) LayoutInflater.from(getContext()).inflate(17367223, (ViewGroup) null);
            this.mTextFilter = editText;
            editText.setRawInputType(177);
            this.mTextFilter.setImeOptions(268435456);
            this.mTextFilter.addTextChangedListener(this);
        }
        return this.mTextFilter;
    }

    private void initAbsListView() {
        setClickable(true);
        setFocusableInTouchMode(true);
        setWillNotDraw(false);
        setAlwaysDrawnWithCacheEnabled(false);
        setScrollingCacheEnabled(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(this.mContext);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mOverscrollDistance = viewConfiguration.getScaledOverscrollDistance();
        this.mOverflingDistance = viewConfiguration.getScaledOverflingDistance();
        this.mDensityScale = getContext().getResources().getDisplayMetrics().density;
    }

    private void initOrResetVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private boolean isOwnerThread() {
        return this.mOwnerThread == Thread.currentThread();
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.mActivePointerId) {
            int i2 = action == 0 ? 1 : 0;
            this.mMotionX = (int) motionEvent.getX(i2);
            this.mMotionY = (int) motionEvent.getY(i2);
            this.mMotionCorrection = 0;
            this.mActivePointerId = motionEvent.getPointerId(i2);
        }
    }

    private void onTouchCancel() {
        int i2 = this.mTouchMode;
        if (i2 == 5) {
            if (this.mFlingRunnable == null) {
                this.mFlingRunnable = new FlingRunnable();
            }
            this.mFlingRunnable.startSpringback();
        } else if (i2 != 6) {
            this.mTouchMode = -1;
            setPressed(false);
            View childAt = getChildAt(this.mMotionPosition - this.mFirstPosition);
            if (childAt != null) {
                childAt.setPressed(false);
            }
            clearScrollingCache();
            removeCallbacks(this.mPendingCheckForLongPress);
            recycleVelocityTracker();
        }
        EdgeEffect edgeEffect = this.mEdgeGlowTop;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.mEdgeGlowBottom.onRelease();
        }
        this.mActivePointerId = -1;
    }

    private void onTouchDown(MotionEvent motionEvent) {
        this.mActivePointerId = motionEvent.getPointerId(0);
        if (this.mTouchMode == 6) {
            this.mFlingRunnable.endFling();
            PositionScroller positionScroller = this.mPositionScroller;
            if (positionScroller != null) {
                positionScroller.stop();
            }
            this.mTouchMode = 5;
            this.mMotionX = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            this.mMotionY = y2;
            this.mLastY = y2;
            this.mMotionCorrection = 0;
            this.mDirection = 0;
        } else {
            int x2 = (int) motionEvent.getX();
            int y3 = (int) motionEvent.getY();
            int iPointToPosition = pointToPosition(x2, y3);
            if (!this.mDataChanged) {
                if (this.mTouchMode == 4) {
                    createScrollingCache();
                    this.mTouchMode = 3;
                    this.mMotionCorrection = 0;
                    iPointToPosition = findMotionRow(y3);
                    this.mFlingRunnable.flywheelTouch();
                } else if (iPointToPosition >= 0 && getAdapter().isEnabled(iPointToPosition)) {
                    this.mTouchMode = 0;
                    if (this.mPendingCheckForTap == null) {
                        this.mPendingCheckForTap = new CheckForTap();
                    }
                    postDelayed(this.mPendingCheckForTap, ViewConfiguration.getTapTimeout());
                }
            }
            if (iPointToPosition >= 0) {
                this.mMotionViewOriginalTop = getChildAt(iPointToPosition - this.mFirstPosition).getTop();
            }
            this.mMotionX = x2;
            this.mMotionY = y3;
            this.mMotionPosition = iPointToPosition;
            this.mLastY = Integer.MIN_VALUE;
        }
        if (this.mTouchMode == 0 && this.mMotionPosition != -1 && performButtonActionOnTouchDown(motionEvent)) {
            removeCallbacks(this.mPendingCheckForTap);
        }
    }

    private void onTouchMove(MotionEvent motionEvent) {
        int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
        if (iFindPointerIndex == -1) {
            this.mActivePointerId = motionEvent.getPointerId(0);
            iFindPointerIndex = 0;
        }
        if (this.mDataChanged) {
            layoutChildren();
        }
        int y2 = (int) motionEvent.getY(iFindPointerIndex);
        int i2 = this.mTouchMode;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            if (i2 == 3 || i2 == 5) {
                scrollIfNeeded(y2);
                return;
            }
            return;
        }
        if (startScrollIfNeeded(y2) || pointInView(motionEvent.getX(iFindPointerIndex), y2, this.mTouchSlop)) {
            return;
        }
        setPressed(false);
        View childAt = getChildAt(this.mMotionPosition - this.mFirstPosition);
        if (childAt != null) {
            childAt.setPressed(false);
        }
        removeCallbacks(this.mTouchMode == 0 ? this.mPendingCheckForTap : this.mPendingCheckForLongPress);
        this.mTouchMode = 2;
        updateSelectorState();
    }

    private void onTouchUp(MotionEvent motionEvent) {
        Drawable current;
        int i2;
        int i3 = this.mTouchMode;
        if (i3 == 0 || i3 == 1 || i3 == 2) {
            int i4 = this.mMotionPosition;
            final View childAt = getChildAt(i4 - this.mFirstPosition);
            if (childAt != null) {
                if (this.mTouchMode != 0) {
                    childAt.setPressed(false);
                }
                float x2 = motionEvent.getX();
                if ((x2 > ((float) this.mListPadding.left) && x2 < ((float) (getWidth() - this.mListPadding.right))) && !childAt.hasFocusable()) {
                    if (this.mPerformClick == null) {
                        this.mPerformClick = new PerformClick();
                    }
                    final PerformClick performClick = this.mPerformClick;
                    performClick.mClickMotionPosition = i4;
                    performClick.rememberWindowAttachCount();
                    this.mResurrectToPosition = i4;
                    int i5 = this.mTouchMode;
                    if (i5 == 0 || i5 == 1) {
                        removeCallbacks(i5 == 0 ? this.mPendingCheckForTap : this.mPendingCheckForLongPress);
                        this.mLayoutMode = 0;
                        if (this.mDataChanged || !this.mAdapter.isEnabled(i4)) {
                            this.mTouchMode = -1;
                            updateSelectorState();
                            return;
                        }
                        this.mTouchMode = 1;
                        setSelectedPositionInt(this.mMotionPosition);
                        layoutChildren();
                        childAt.setPressed(true);
                        positionSelector(this.mMotionPosition, childAt);
                        setPressed(true);
                        Drawable drawable = this.mSelector;
                        if (drawable != null && (current = drawable.getCurrent()) != null && (current instanceof TransitionDrawable)) {
                            ((TransitionDrawable) current).resetTransition();
                        }
                        Runnable runnable = this.mTouchModeReset;
                        if (runnable != null) {
                            removeCallbacks(runnable);
                        }
                        Runnable runnable2 = new Runnable() { // from class: android.widget.AbsListView.3
                            @Override // java.lang.Runnable
                            public void run() {
                                AbsListView.this.mTouchModeReset = null;
                                AbsListView.this.mTouchMode = -1;
                                childAt.setPressed(false);
                                AbsListView.this.setPressed(false);
                                AbsListView absListView = AbsListView.this;
                                if (absListView.mDataChanged || !absListView.isAttachedToWindow()) {
                                    return;
                                }
                                performClick.run();
                            }
                        };
                        this.mTouchModeReset = runnable2;
                        postDelayed(runnable2, ViewConfiguration.getPressedStateDuration());
                        return;
                    }
                    if (!this.mDataChanged && this.mAdapter.isEnabled(i4)) {
                        performClick.run();
                    }
                }
            }
            this.mTouchMode = -1;
            updateSelectorState();
        } else if (i3 == 3) {
            int childCount = getChildCount();
            if (childCount > 0) {
                int top = getChildAt(0).getTop();
                int bottom = getChildAt(childCount - 1).getBottom();
                int i6 = this.mListPadding.top;
                int height = getHeight() - this.mListPadding.bottom;
                int i7 = this.mFirstPosition;
                if (i7 != 0 || top < i6 || i7 + childCount >= this.mItemCount || bottom > getHeight() - height) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                    int yVelocity = (int) (velocityTracker.getYVelocity(this.mActivePointerId) * this.mVelocityScale);
                    if (Math.abs(yVelocity) <= this.mMinimumVelocity || (((i2 = this.mFirstPosition) == 0 && top == i6 - this.mOverscrollDistance) || (i2 + childCount == this.mItemCount && bottom == height + this.mOverscrollDistance))) {
                        this.mTouchMode = -1;
                        reportScrollStateChange(0);
                        FlingRunnable flingRunnable = this.mFlingRunnable;
                        if (flingRunnable != null) {
                            flingRunnable.endFling();
                        }
                        PositionScroller positionScroller = this.mPositionScroller;
                        if (positionScroller != null) {
                            positionScroller.stop();
                        }
                    } else {
                        if (this.mFlingRunnable == null) {
                            this.mFlingRunnable = new FlingRunnable();
                        }
                        reportScrollStateChange(2);
                        this.mFlingRunnable.start(-yVelocity);
                    }
                } else {
                    this.mTouchMode = -1;
                    reportScrollStateChange(0);
                }
            } else {
                this.mTouchMode = -1;
                reportScrollStateChange(0);
            }
        } else if (i3 == 5) {
            if (this.mFlingRunnable == null) {
                this.mFlingRunnable = new FlingRunnable();
            }
            VelocityTracker velocityTracker2 = this.mVelocityTracker;
            velocityTracker2.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int yVelocity2 = (int) velocityTracker2.getYVelocity(this.mActivePointerId);
            reportScrollStateChange(2);
            if (Math.abs(yVelocity2) > this.mMinimumVelocity) {
                this.mFlingRunnable.startOverfling(-yVelocity2);
            } else {
                this.mFlingRunnable.startSpringback();
            }
        }
        setPressed(false);
        EdgeEffect edgeEffect = this.mEdgeGlowTop;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.mEdgeGlowBottom.onRelease();
        }
        invalidate();
        removeCallbacks(this.mPendingCheckForLongPress);
        recycleVelocityTracker();
        this.mActivePointerId = -1;
        StrictMode.Span span = this.mScrollStrictSpan;
        if (span != null) {
            span.finish();
            this.mScrollStrictSpan = null;
        }
    }

    private void positionPopup() {
        int i2 = getResources().getDisplayMetrics().heightPixels;
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        int height = ((i2 - iArr[1]) - getHeight()) + ((int) (this.mDensityScale * 20.0f));
        if (this.mPopup.isShowing()) {
            this.mPopup.update(iArr[0], height, -1, -1);
        } else {
            this.mPopup.showAtLocation(this, 81, iArr[0], height);
        }
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public static View retrieveFromScrap(ArrayList<View> arrayList, int i2) {
        int size = arrayList.size();
        if (size <= 0) {
            return null;
        }
        for (int i3 = 0; i3 < size; i3++) {
            View view = arrayList.get(i3);
            if (((LayoutParams) view.getLayoutParams()).scrappedFromPosition == i2) {
                arrayList.remove(i3);
                return view;
            }
        }
        return arrayList.remove(size - 1);
    }

    private void scrollIfNeeded(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        VelocityTracker velocityTracker;
        ViewParent parent;
        int i8 = i2 - this.mMotionY;
        int i9 = i8 - this.mMotionCorrection;
        int i10 = this.mLastY;
        int i11 = i10 != Integer.MIN_VALUE ? i2 - i10 : i9;
        int i12 = this.mTouchMode;
        if (i12 == 3) {
            if (this.mScrollStrictSpan == null) {
                this.mScrollStrictSpan = StrictMode.enterCriticalSpan("AbsListView-scroll");
            }
            if (i2 != this.mLastY) {
                if ((this.mGroupFlags & 524288) == 0 && Math.abs(i8) > this.mTouchSlop && (parent = getParent()) != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                int i13 = this.mMotionPosition;
                int childCount = i13 >= 0 ? i13 - this.mFirstPosition : getChildCount() / 2;
                View childAt = getChildAt(childCount);
                int top = childAt != null ? childAt.getTop() : 0;
                boolean zTrackMotionScroll = i11 != 0 ? trackMotionScroll(i9, i11) : false;
                View childAt2 = getChildAt(childCount);
                if (childAt2 != null) {
                    int top2 = childAt2.getTop();
                    if (zTrackMotionScroll) {
                        int i14 = (-i11) - (top2 - top);
                        overScrollBy(0, i14, 0, this.mScrollY, 0, 0, 0, this.mOverscrollDistance, true);
                        if (Math.abs(this.mOverscrollDistance) == Math.abs(this.mScrollY) && (velocityTracker = this.mVelocityTracker) != null) {
                            velocityTracker.clear();
                        }
                        int overScrollMode = getOverScrollMode();
                        if (overScrollMode == 0 || (overScrollMode == 1 && !contentFits())) {
                            this.mDirection = 0;
                            this.mTouchMode = 5;
                            if (i8 > 0) {
                                this.mEdgeGlowTop.onPull(i14 / getHeight());
                                if (!this.mEdgeGlowBottom.isFinished()) {
                                    this.mEdgeGlowBottom.onRelease();
                                }
                                invalidate(this.mEdgeGlowTop.getBounds(false));
                            } else if (i8 < 0) {
                                this.mEdgeGlowBottom.onPull(i14 / getHeight());
                                if (!this.mEdgeGlowTop.isFinished()) {
                                    this.mEdgeGlowTop.onRelease();
                                }
                                invalidate(this.mEdgeGlowBottom.getBounds(true));
                            }
                        }
                    }
                    this.mMotionY = i2;
                }
                this.mLastY = i2;
                return;
            }
            return;
        }
        if (i12 != 5 || i2 == i10) {
            return;
        }
        int i15 = this.mScrollY;
        int i16 = i15 - i11;
        int i17 = i2 > i10 ? 1 : -1;
        if (this.mDirection == 0) {
            this.mDirection = i17;
        }
        int i18 = -i11;
        if ((i16 >= 0 || i15 < 0) && (i16 <= 0 || i15 > 0)) {
            i3 = i18;
            i4 = 0;
        } else {
            int i19 = -i15;
            i4 = i11 + i19;
            i3 = i19;
        }
        if (i3 != 0) {
            i5 = i4;
            int i20 = i3;
            i6 = i17;
            overScrollBy(0, i3, 0, i15, 0, 0, 0, this.mOverscrollDistance, true);
            int overScrollMode2 = getOverScrollMode();
            if (overScrollMode2 == 0 || (overScrollMode2 == 1 && !contentFits())) {
                if (i8 > 0) {
                    this.mEdgeGlowTop.onPull(i20 / getHeight());
                    if (!this.mEdgeGlowBottom.isFinished()) {
                        this.mEdgeGlowBottom.onRelease();
                    }
                    invalidate(this.mEdgeGlowTop.getBounds(false));
                } else if (i8 < 0) {
                    this.mEdgeGlowBottom.onPull(i20 / getHeight());
                    if (!this.mEdgeGlowTop.isFinished()) {
                        this.mEdgeGlowTop.onRelease();
                    }
                    invalidate(this.mEdgeGlowBottom.getBounds(true));
                }
            }
        } else {
            i5 = i4;
            i6 = i17;
        }
        if (i5 != 0) {
            if (this.mScrollY != 0) {
                i7 = 0;
                this.mScrollY = 0;
                invalidateParentIfNeeded();
            } else {
                i7 = 0;
            }
            trackMotionScroll(i5, i5);
            this.mTouchMode = 3;
            int iFindClosestMotionRow = findClosestMotionRow(i2);
            this.mMotionCorrection = i7;
            View childAt3 = getChildAt(iFindClosestMotionRow - this.mFirstPosition);
            this.mMotionViewOriginalTop = childAt3 != null ? childAt3.getTop() : i7;
            this.mMotionY = i2;
            this.mMotionPosition = iFindClosestMotionRow;
        }
        this.mLastY = i2;
        this.mDirection = i6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFastScrollerAlwaysVisibleUiThread(boolean z2) {
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller != null) {
            fastScroller.setAlwaysShow(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFastScrollerEnabledUiThread(boolean z2) {
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller != null) {
            fastScroller.setEnabled(z2);
        } else if (z2) {
            FastScroller fastScroller2 = new FastScroller(this);
            this.mFastScroller = fastScroller2;
            fastScroller2.setEnabled(true);
        }
        resolvePadding();
        FastScroller fastScroller3 = this.mFastScroller;
        if (fastScroller3 != null) {
            fastScroller3.updateLayout();
        }
    }

    private void showPopup() {
        if (getWindowVisibility() == 0) {
            createTextFilter(true);
            positionPopup();
            checkFocus();
        }
    }

    private boolean startScrollIfNeeded(int i2) {
        int i3 = i2 - this.mMotionY;
        int iAbs = Math.abs(i3);
        boolean z2 = this.mScrollY != 0;
        if (!z2 && iAbs <= this.mTouchSlop) {
            return false;
        }
        createScrollingCache();
        if (z2) {
            this.mTouchMode = 5;
            this.mMotionCorrection = 0;
        } else {
            this.mTouchMode = 3;
            this.mMotionCorrection = i3 > 0 ? this.mTouchSlop : -this.mTouchSlop;
        }
        removeCallbacks(this.mPendingCheckForLongPress);
        setPressed(false);
        View childAt = getChildAt(this.mMotionPosition - this.mFirstPosition);
        if (childAt != null) {
            childAt.setPressed(false);
        }
        reportScrollStateChange(1);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        scrollIfNeeded(i2);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateOnScreenCheckedViews() {
        int i2 = this.mFirstPosition;
        int childCount = getChildCount();
        boolean z2 = getContext().getApplicationInfo().targetSdkVersion >= 11;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            int i4 = i2 + i3;
            if (childAt instanceof Checkable) {
                ((Checkable) childAt).setChecked(this.mCheckStates.get(i4));
            } else if (z2) {
                childAt.setActivated(this.mCheckStates.get(i4));
            }
        }
    }

    private void useDefaultSelector() {
        setSelector(getResources().getDrawable(R.drawable.list_selector_background));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        int childCount = getChildCount();
        int i2 = this.mFirstPosition;
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter == null) {
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (listAdapter.isEnabled(i2 + i3)) {
                arrayList.add(childAt);
            }
            childAt.addTouchables(arrayList);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public boolean canScrollList(int i2) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        int i3 = this.mFirstPosition;
        Rect rect = this.mListPadding;
        if (i2 > 0) {
            return i3 + childCount < this.mItemCount || getChildAt(childCount + (-1)).getBottom() > getHeight() - rect.bottom;
        }
        return i3 > 0 || getChildAt(0).getTop() < rect.top;
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        return view == this.mTextFilter;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void clearChoices() {
        SparseBooleanArray sparseBooleanArray = this.mCheckStates;
        if (sparseBooleanArray != null) {
            sparseBooleanArray.clear();
        }
        LongSparseArray<Integer> longSparseArray = this.mCheckedIdStates;
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
        this.mCheckedItemCount = 0;
    }

    public void clearTextFilter() {
        if (this.mFiltered) {
            getTextFilterInput().setText(ProxyProperties.LOCAL_EXCL_LIST);
            this.mFiltered = false;
            PopupWindow popupWindow = this.mPopup;
            if (popupWindow == null || !popupWindow.isShowing()) {
                return;
            }
            dismissPopup();
        }
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return 0;
        }
        if (!this.mSmoothScrollbarEnabled) {
            return 1;
        }
        int i2 = childCount * 100;
        View childAt = getChildAt(0);
        int top = childAt.getTop();
        int height = childAt.getHeight();
        if (height > 0) {
            i2 += (top * 100) / height;
        }
        View childAt2 = getChildAt(childCount - 1);
        int bottom = childAt2.getBottom();
        int height2 = childAt2.getHeight();
        return height2 > 0 ? i2 - (((bottom - getHeight()) * 100) / height2) : i2;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        int i2 = this.mFirstPosition;
        int childCount = getChildCount();
        int i3 = 0;
        if (i2 >= 0 && childCount > 0) {
            if (!this.mSmoothScrollbarEnabled) {
                int i4 = this.mItemCount;
                if (i2 != 0) {
                    i3 = i2 + childCount == i4 ? i4 : (childCount / 2) + i2;
                }
                return (int) (i2 + (childCount * (i3 / i4)));
            }
            View childAt = getChildAt(0);
            int top = childAt.getTop();
            int height = childAt.getHeight();
            if (height > 0) {
                return Math.max(((i2 * 100) - ((top * 100) / height)) + ((int) ((this.mScrollY / getHeight()) * this.mItemCount * 100.0f)), 0);
            }
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        if (!this.mSmoothScrollbarEnabled) {
            return this.mItemCount;
        }
        int iMax = Math.max(this.mItemCount * 100, 0);
        int i2 = this.mScrollY;
        return i2 != 0 ? iMax + Math.abs((int) ((i2 / getHeight()) * this.mItemCount * 100.0f)) : iMax;
    }

    public void confirmCheckedPositionsById() {
        ActionMode actionMode;
        boolean z2;
        MultiChoiceModeWrapper multiChoiceModeWrapper;
        this.mCheckStates.clear();
        int i2 = 0;
        boolean z3 = false;
        while (i2 < this.mCheckedIdStates.size()) {
            long jKeyAt = this.mCheckedIdStates.keyAt(i2);
            int iIntValue = this.mCheckedIdStates.valueAt(i2).intValue();
            if (jKeyAt != this.mAdapter.getItemId(iIntValue)) {
                int iMax = Math.max(0, iIntValue - 20);
                int iMin = Math.min(iIntValue + 20, this.mItemCount);
                while (true) {
                    if (iMax >= iMin) {
                        z2 = false;
                        break;
                    } else {
                        if (jKeyAt == this.mAdapter.getItemId(iMax)) {
                            this.mCheckStates.put(iMax, true);
                            this.mCheckedIdStates.setValueAt(i2, Integer.valueOf(iMax));
                            z2 = true;
                            break;
                        }
                        iMax++;
                    }
                }
                if (!z2) {
                    this.mCheckedIdStates.delete(jKeyAt);
                    i2--;
                    this.mCheckedItemCount--;
                    ActionMode actionMode2 = this.mChoiceActionMode;
                    if (actionMode2 != null && (multiChoiceModeWrapper = this.mMultiChoiceModeCallback) != null) {
                        multiChoiceModeWrapper.onItemCheckedStateChanged(actionMode2, iIntValue, jKeyAt, false);
                    }
                    z3 = true;
                }
            } else {
                this.mCheckStates.put(iIntValue, true);
            }
            i2++;
        }
        if (!z3 || (actionMode = this.mChoiceActionMode) == null) {
            return;
        }
        actionMode.invalidate();
    }

    public ContextMenu.ContextMenuInfo createContextMenuInfo(View view, int i2, long j2) {
        return new AdapterView.AdapterContextMenuInfo(view, i2, j2);
    }

    @Override // android.widget.RemoteViewsAdapter.RemoteAdapterConnectionCallback
    public void deferNotifyDataSetChanged() {
        this.mDeferNotifyDataSetChanged = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int iSave = 0;
        boolean z2 = (this.mGroupFlags & 34) == 34;
        if (z2) {
            iSave = canvas.save();
            int i2 = this.mScrollX;
            int i3 = this.mScrollY;
            canvas.clipRect(this.mPaddingLeft + i2, this.mPaddingTop + i3, ((i2 + this.mRight) - this.mLeft) - this.mPaddingRight, ((i3 + this.mBottom) - this.mTop) - this.mPaddingBottom);
            this.mGroupFlags &= -35;
        }
        boolean z3 = this.mDrawSelectorOnTop;
        if (!z3) {
            drawSelector(canvas);
        }
        super.dispatchDraw(canvas);
        if (z3) {
            drawSelector(canvas);
        }
        if (z2) {
            canvas.restoreToCount(iSave);
            this.mGroupFlags |= 34;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSetPressed(boolean z2) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        EdgeEffect edgeEffect = this.mEdgeGlowTop;
        if (edgeEffect != null) {
            int i2 = this.mScrollY;
            if (!edgeEffect.isFinished()) {
                int iSave = canvas.save();
                Rect rect = this.mListPadding;
                int i3 = rect.left + this.mGlowPaddingLeft;
                int width = (getWidth() - i3) - (rect.right + this.mGlowPaddingRight);
                int iMin = Math.min(0, this.mFirstPositionDistanceGuess + i2);
                canvas.translate(i3, iMin);
                this.mEdgeGlowTop.setSize(width, getHeight());
                if (this.mEdgeGlowTop.draw(canvas)) {
                    this.mEdgeGlowTop.setPosition(i3, iMin);
                    invalidate(this.mEdgeGlowTop.getBounds(false));
                }
                canvas.restoreToCount(iSave);
            }
            if (this.mEdgeGlowBottom.isFinished()) {
                return;
            }
            int iSave2 = canvas.save();
            Rect rect2 = this.mListPadding;
            int i4 = rect2.left + this.mGlowPaddingLeft;
            int width2 = (getWidth() - i4) - (rect2.right + this.mGlowPaddingRight);
            int height = getHeight();
            int i5 = (-width2) + i4;
            int iMax = Math.max(height, i2 + this.mLastPositionDistanceGuess);
            canvas.translate(i5, iMax);
            canvas.rotate(180.0f, width2, 0.0f);
            this.mEdgeGlowBottom.setSize(width2, height);
            if (this.mEdgeGlowBottom.draw(canvas)) {
                this.mEdgeGlowBottom.setPosition(i5 + width2, iMax);
                invalidate(this.mEdgeGlowBottom.getBounds(true));
            }
            canvas.restoreToCount(iSave2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        updateSelectorState();
    }

    public abstract void fillGap(boolean z2);

    public int findClosestMotionRow(int i2) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return -1;
        }
        int iFindMotionRow = findMotionRow(i2);
        return iFindMotionRow != -1 ? iFindMotionRow : (this.mFirstPosition + childCount) - 1;
    }

    public abstract int findMotionRow(int i2);

    @Override // android.view.ViewGroup, android.view.View
    public View findViewByAccessibilityIdTraversal(int i2) {
        if (i2 == getAccessibilityViewId()) {
            return this;
        }
        if (this.mDataChanged) {
            return null;
        }
        return super.findViewByAccessibilityIdTraversal(i2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2, 0);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        int childCount = getChildCount();
        float bottomFadingEdgeStrength = super.getBottomFadingEdgeStrength();
        if (childCount == 0) {
            return bottomFadingEdgeStrength;
        }
        if ((this.mFirstPosition + childCount) - 1 < this.mItemCount - 1) {
            return 1.0f;
        }
        int bottom = getChildAt(childCount - 1).getBottom();
        int height = getHeight();
        float verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i2 = this.mPaddingBottom;
        return bottom > height - i2 ? ((bottom - height) + i2) / verticalFadingEdgeLength : bottomFadingEdgeStrength;
    }

    @Override // android.view.View
    public int getBottomPaddingOffset() {
        if ((this.mGroupFlags & 34) == 34) {
            return 0;
        }
        return this.mPaddingBottom;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public int getCacheColorHint() {
        return this.mCacheColorHint;
    }

    public int getCheckedItemCount() {
        return this.mCheckedItemCount;
    }

    public long[] getCheckedItemIds() {
        LongSparseArray<Integer> longSparseArray;
        if (this.mChoiceMode == 0 || (longSparseArray = this.mCheckedIdStates) == null || this.mAdapter == null) {
            return new long[0];
        }
        int size = longSparseArray.size();
        long[] jArr = new long[size];
        for (int i2 = 0; i2 < size; i2++) {
            jArr[i2] = longSparseArray.keyAt(i2);
        }
        return jArr;
    }

    public int getCheckedItemPosition() {
        SparseBooleanArray sparseBooleanArray;
        if (this.mChoiceMode == 1 && (sparseBooleanArray = this.mCheckStates) != null && sparseBooleanArray.size() == 1) {
            return this.mCheckStates.keyAt(0);
        }
        return -1;
    }

    public SparseBooleanArray getCheckedItemPositions() {
        if (this.mChoiceMode != 0) {
            return this.mCheckStates;
        }
        return null;
    }

    public int getChoiceMode() {
        return this.mChoiceMode;
    }

    @Override // android.view.View
    public ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.mContextMenuInfo;
    }

    @Override // android.view.View
    public void getFocusedRect(Rect rect) {
        View selectedView = getSelectedView();
        if (selectedView == null || selectedView.getParent() != this) {
            super.getFocusedRect(rect);
        } else {
            selectedView.getFocusedRect(rect);
            offsetDescendantRectToMyCoords(selectedView, rect);
        }
    }

    public int getFooterViewsCount() {
        return 0;
    }

    public int getHeaderViewsCount() {
        return 0;
    }

    @Override // android.view.View
    public int getLeftPaddingOffset() {
        if ((this.mGroupFlags & 34) == 34) {
            return 0;
        }
        return -this.mPaddingLeft;
    }

    public int getListPaddingBottom() {
        return this.mListPadding.bottom;
    }

    public int getListPaddingLeft() {
        return this.mListPadding.left;
    }

    public int getListPaddingRight() {
        return this.mListPadding.right;
    }

    public int getListPaddingTop() {
        return this.mListPadding.top;
    }

    @Override // android.view.View
    public int getRightPaddingOffset() {
        if ((this.mGroupFlags & 34) == 34) {
            return 0;
        }
        return this.mPaddingRight;
    }

    @Override // android.widget.AdapterView
    @ViewDebug.ExportedProperty
    public View getSelectedView() {
        int i2;
        if (this.mItemCount <= 0 || (i2 = this.mSelectedPosition) < 0) {
            return null;
        }
        return getChildAt(i2 - this.mFirstPosition);
    }

    public Drawable getSelector() {
        return this.mSelector;
    }

    @Override // android.view.View
    public int getSolidColor() {
        return this.mCacheColorHint;
    }

    public CharSequence getTextFilter() {
        EditText editText;
        if (!this.mTextFilterEnabled || (editText = this.mTextFilter) == null) {
            return null;
        }
        return editText.getText();
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        int childCount = getChildCount();
        float topFadingEdgeStrength = super.getTopFadingEdgeStrength();
        if (childCount == 0) {
            return topFadingEdgeStrength;
        }
        if (this.mFirstPosition > 0) {
            return 1.0f;
        }
        int top = getChildAt(0).getTop();
        float verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i2 = this.mPaddingTop;
        return top < i2 ? (-(top - i2)) / verticalFadingEdgeLength : topFadingEdgeStrength;
    }

    @Override // android.view.View
    public int getTopPaddingOffset() {
        if ((this.mGroupFlags & 34) == 34) {
            return 0;
        }
        return -this.mPaddingTop;
    }

    public int getTranscriptMode() {
        return this.mTranscriptMode;
    }

    @Override // android.view.View
    public int getVerticalScrollbarWidth() {
        FastScroller fastScroller = this.mFastScroller;
        return (fastScroller == null || !fastScroller.isEnabled()) ? super.getVerticalScrollbarWidth() : Math.max(super.getVerticalScrollbarWidth(), this.mFastScroller.getWidth());
    }

    @Override // android.widget.AdapterView
    public void handleDataChanged() {
        ListAdapter listAdapter;
        int i2 = this.mItemCount;
        int i3 = this.mLastHandledItemCount;
        this.mLastHandledItemCount = i2;
        if (this.mChoiceMode != 0 && (listAdapter = this.mAdapter) != null && listAdapter.hasStableIds()) {
            confirmCheckedPositionsById();
        }
        this.mRecycler.clearTransientStateViews();
        if (i2 > 0) {
            if (this.mNeedSync) {
                this.mNeedSync = false;
                this.mPendingSync = null;
                int i4 = this.mTranscriptMode;
                if (i4 == 2) {
                    this.mLayoutMode = 3;
                    return;
                }
                if (i4 == 1) {
                    if (this.mForceTranscriptScroll) {
                        this.mForceTranscriptScroll = false;
                        this.mLayoutMode = 3;
                        return;
                    }
                    int childCount = getChildCount();
                    int height = getHeight() - getPaddingBottom();
                    View childAt = getChildAt(childCount - 1);
                    int bottom = childAt != null ? childAt.getBottom() : height;
                    if (this.mFirstPosition + childCount >= i3 && bottom <= height) {
                        this.mLayoutMode = 3;
                        return;
                    }
                    awakenScrollBars();
                }
                int i5 = this.mSyncMode;
                if (i5 != 0) {
                    if (i5 == 1) {
                        this.mLayoutMode = 5;
                        this.mSyncPosition = Math.min(Math.max(0, this.mSyncPosition), i2 - 1);
                        return;
                    }
                } else {
                    if (isInTouchMode()) {
                        this.mLayoutMode = 5;
                        this.mSyncPosition = Math.min(Math.max(0, this.mSyncPosition), i2 - 1);
                        return;
                    }
                    int iFindSyncPosition = findSyncPosition();
                    if (iFindSyncPosition >= 0 && lookForSelectablePosition(iFindSyncPosition, true) == iFindSyncPosition) {
                        this.mSyncPosition = iFindSyncPosition;
                        if (this.mSyncHeight == getHeight()) {
                            this.mLayoutMode = 5;
                        } else {
                            this.mLayoutMode = 2;
                        }
                        setNextSelectedPositionInt(iFindSyncPosition);
                        return;
                    }
                }
            }
            if (!isInTouchMode()) {
                int selectedItemPosition = getSelectedItemPosition();
                if (selectedItemPosition >= i2) {
                    selectedItemPosition = i2 - 1;
                }
                if (selectedItemPosition < 0) {
                    selectedItemPosition = 0;
                }
                int iLookForSelectablePosition = lookForSelectablePosition(selectedItemPosition, true);
                if (iLookForSelectablePosition >= 0) {
                    setNextSelectedPositionInt(iLookForSelectablePosition);
                    return;
                }
                int iLookForSelectablePosition2 = lookForSelectablePosition(selectedItemPosition, false);
                if (iLookForSelectablePosition2 >= 0) {
                    setNextSelectedPositionInt(iLookForSelectablePosition2);
                    return;
                }
            } else if (this.mResurrectToPosition >= 0) {
                return;
            }
        }
        this.mLayoutMode = this.mStackFromBottom ? 3 : 1;
        this.mSelectedPosition = -1;
        this.mSelectedRowId = Long.MIN_VALUE;
        this.mNextSelectedPosition = -1;
        this.mNextSelectedRowId = Long.MIN_VALUE;
        this.mNeedSync = false;
        this.mPendingSync = null;
        this.mSelectorPosition = -1;
        checkSelectionChanged();
    }

    public boolean hasTextFilter() {
        return this.mFiltered;
    }

    public void hideSelector() {
        int i2 = this.mSelectedPosition;
        if (i2 != -1) {
            if (this.mLayoutMode != 4) {
                this.mResurrectToPosition = i2;
            }
            int i3 = this.mNextSelectedPosition;
            if (i3 >= 0 && i3 != i2) {
                this.mResurrectToPosition = i3;
            }
            setSelectedPositionInt(-1);
            setNextSelectedPositionInt(-1);
            this.mSelectedTop = 0;
        }
    }

    public void invalidateViews() {
        this.mDataChanged = true;
        rememberSyncState();
        requestLayout();
        invalidate();
    }

    public void invokeOnItemScrollListener() {
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller != null) {
            fastScroller.onScroll(this.mFirstPosition, getChildCount(), this.mItemCount);
        }
        OnScrollListener onScrollListener = this.mOnScrollListener;
        if (onScrollListener != null) {
            onScrollListener.onScroll(this, this.mFirstPosition, getChildCount(), this.mItemCount);
        }
        onScrollChanged(0, 0, 0, 0);
    }

    public boolean isFastScrollAlwaysVisible() {
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller == null) {
            return this.mFastScrollEnabled && this.mFastScrollAlwaysVisible;
        }
        return fastScroller.isEnabled() && this.mFastScroller.isAlwaysShowEnabled();
    }

    @ViewDebug.ExportedProperty
    public boolean isFastScrollEnabled() {
        FastScroller fastScroller = this.mFastScroller;
        return fastScroller == null ? this.mFastScrollEnabled : fastScroller.isEnabled();
    }

    @Override // android.widget.AdapterView
    public boolean isInFilterMode() {
        return this.mFiltered;
    }

    public boolean isItemChecked(int i2) {
        SparseBooleanArray sparseBooleanArray;
        if (this.mChoiceMode == 0 || (sparseBooleanArray = this.mCheckStates) == null) {
            return false;
        }
        return sparseBooleanArray.get(i2);
    }

    @Override // android.view.View
    public boolean isPaddingOffsetRequired() {
        return (this.mGroupFlags & 34) != 34;
    }

    @ViewDebug.ExportedProperty
    public boolean isScrollingCacheEnabled() {
        return this.mScrollingCacheEnabled;
    }

    @ViewDebug.ExportedProperty
    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    @ViewDebug.ExportedProperty
    public boolean isStackFromBottom() {
        return this.mStackFromBottom;
    }

    @ViewDebug.ExportedProperty
    public boolean isTextFilterEnabled() {
        return this.mTextFilterEnabled;
    }

    @Override // android.view.View
    public boolean isVerticalScrollBarHidden() {
        return isFastScrollEnabled();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mSelector;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public void keyPressed() {
        if (isEnabled() && isClickable()) {
            Drawable drawable = this.mSelector;
            Rect rect = this.mSelectorRect;
            if (drawable != null) {
                if ((isFocused() || touchModeDrawsInPressedState()) && !rect.isEmpty()) {
                    View childAt = getChildAt(this.mSelectedPosition - this.mFirstPosition);
                    if (childAt != null) {
                        if (childAt.hasFocusable()) {
                            return;
                        } else {
                            childAt.setPressed(true);
                        }
                    }
                    setPressed(true);
                    boolean zIsLongClickable = isLongClickable();
                    Drawable current = drawable.getCurrent();
                    if (current != null && (current instanceof TransitionDrawable)) {
                        if (zIsLongClickable) {
                            ((TransitionDrawable) current).startTransition(ViewConfiguration.getLongPressTimeout());
                        } else {
                            ((TransitionDrawable) current).resetTransition();
                        }
                    }
                    if (!zIsLongClickable || this.mDataChanged) {
                        return;
                    }
                    if (this.mPendingCheckForKeyLongPress == null) {
                        this.mPendingCheckForKeyLongPress = new CheckForKeyLongPress();
                    }
                    this.mPendingCheckForKeyLongPress.rememberWindowAttachCount();
                    postDelayed(this.mPendingCheckForKeyLongPress, ViewConfiguration.getLongPressTimeout());
                }
            }
        }
    }

    public void layoutChildren() {
    }

    public View obtainView(int i2, boolean[] zArr) {
        LayoutParams layoutParams;
        View view;
        Trace.traceBegin(8L, "obtainView");
        zArr[0] = false;
        View transientStateView = this.mRecycler.getTransientStateView(i2);
        if (transientStateView != null) {
            if (((LayoutParams) transientStateView.getLayoutParams()).viewType == this.mAdapter.getItemViewType(i2) && (view = this.mAdapter.getView(i2, transientStateView, this)) != transientStateView) {
                this.mRecycler.addScrapView(view, i2);
            }
            zArr[0] = true;
            return transientStateView;
        }
        View scrapView = this.mRecycler.getScrapView(i2);
        View view2 = this.mAdapter.getView(i2, scrapView, this);
        if (scrapView != null) {
            if (view2 != scrapView) {
                this.mRecycler.addScrapView(scrapView, i2);
            } else {
                zArr[0] = true;
                if (view2.isAccessibilityFocused()) {
                    view2.clearAccessibilityFocus();
                }
                view2.dispatchFinishTemporaryDetach();
            }
        }
        int i3 = this.mCacheColorHint;
        if (i3 != 0) {
            view2.setDrawingCacheBackgroundColor(i3);
        }
        if (view2.getImportantForAccessibility() == 0) {
            view2.setImportantForAccessibility(1);
        }
        if (this.mAdapterHasStableIds) {
            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams = (LayoutParams) generateDefaultLayoutParams();
            } else {
                layoutParams = !checkLayoutParams(layoutParams2) ? (LayoutParams) generateLayoutParams(layoutParams2) : (LayoutParams) layoutParams2;
            }
            layoutParams.itemId = this.mAdapter.getItemId(i2);
            view2.setLayoutParams(layoutParams);
        }
        if (AccessibilityManager.getInstance(this.mContext).isEnabled()) {
            if (this.mAccessibilityDelegate == null) {
                this.mAccessibilityDelegate = new ListItemAccessibilityDelegate();
            }
            if (view2.getAccessibilityDelegate() == null) {
                view2.setAccessibilityDelegate(this.mAccessibilityDelegate);
            }
        }
        Trace.traceEnd(8L);
        return view2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        viewTreeObserver.addOnTouchModeChangeListener(this);
        if (this.mTextFilterEnabled && this.mPopup != null && !this.mGlobalLayoutListenerAddedFilter) {
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.mAdapter == null || this.mDataSetObserver != null) {
            return;
        }
        AdapterDataSetObserver adapterDataSetObserver = new AdapterDataSetObserver();
        this.mDataSetObserver = adapterDataSetObserver;
        this.mAdapter.registerDataSetObserver(adapterDataSetObserver);
        this.mDataChanged = true;
        this.mOldItemCount = this.mItemCount;
        this.mItemCount = this.mAdapter.getCount();
    }

    @Override // android.view.View
    public void onCancelPendingInputEvents() {
        super.onCancelPendingInputEvents();
        PerformClick performClick = this.mPerformClick;
        if (performClick != null) {
            removeCallbacks(performClick);
        }
        Runnable runnable = this.mPendingCheckForTap;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        CheckForLongPress checkForLongPress = this.mPendingCheckForLongPress;
        if (checkForLongPress != null) {
            removeCallbacks(checkForLongPress);
        }
        CheckForKeyLongPress checkForKeyLongPress = this.mPendingCheckForKeyLongPress;
        if (checkForKeyLongPress != null) {
            removeCallbacks(checkForKeyLongPress);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i2) {
        if (this.mIsChildViewEnabled) {
            return super.onCreateDrawableState(i2);
        }
        int i3 = View.ENABLED_STATE_SET[0];
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        int length = iArrOnCreateDrawableState.length - 1;
        while (true) {
            if (length < 0) {
                length = -1;
                break;
            }
            if (iArrOnCreateDrawableState[length] == i3) {
                break;
            }
            length--;
        }
        if (length >= 0) {
            System.arraycopy(iArrOnCreateDrawableState, length + 1, iArrOnCreateDrawableState, length, (iArrOnCreateDrawableState.length - length) - 1);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        if (!isTextFilterEnabled()) {
            return null;
        }
        if (this.mPublicInputConnection == null) {
            this.mDefInputConnection = new BaseInputConnection((View) this, false);
            this.mPublicInputConnection = new InputConnectionWrapper(editorInfo);
        }
        editorInfo.inputType = 177;
        editorInfo.imeOptions = 6;
        return this.mPublicInputConnection;
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AdapterDataSetObserver adapterDataSetObserver;
        super.onDetachedFromWindow();
        dismissPopup();
        this.mRecycler.clear();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        viewTreeObserver.removeOnTouchModeChangeListener(this);
        if (this.mTextFilterEnabled && this.mPopup != null) {
            viewTreeObserver.removeOnGlobalLayoutListener(this);
            this.mGlobalLayoutListenerAddedFilter = false;
        }
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null && (adapterDataSetObserver = this.mDataSetObserver) != null) {
            listAdapter.unregisterDataSetObserver(adapterDataSetObserver);
            this.mDataSetObserver = null;
        }
        StrictMode.Span span = this.mScrollStrictSpan;
        if (span != null) {
            span.finish();
            this.mScrollStrictSpan = null;
        }
        StrictMode.Span span2 = this.mFlingStrictSpan;
        if (span2 != null) {
            span2.finish();
            this.mFlingStrictSpan = null;
        }
        FlingRunnable flingRunnable = this.mFlingRunnable;
        if (flingRunnable != null) {
            removeCallbacks(flingRunnable);
        }
        PositionScroller positionScroller = this.mPositionScroller;
        if (positionScroller != null) {
            positionScroller.stop();
        }
        Runnable runnable = this.mClearScrollingCache;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        PerformClick performClick = this.mPerformClick;
        if (performClick != null) {
            removeCallbacks(performClick);
        }
        Runnable runnable2 = this.mTouchModeReset;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
            this.mTouchModeReset.run();
        }
    }

    @Override // android.view.View
    public void onDisplayHint(int i2) {
        PopupWindow popupWindow;
        PopupWindow popupWindow2;
        super.onDisplayHint(i2);
        if (i2 != 0) {
            if (i2 == 4 && (popupWindow2 = this.mPopup) != null && popupWindow2.isShowing()) {
                dismissPopup();
            }
        } else if (this.mFiltered && (popupWindow = this.mPopup) != null && !popupWindow.isShowing()) {
            showPopup();
        }
        this.mPopupHidden = i2 == 4;
    }

    @Override // android.widget.Filter.FilterListener
    public void onFilterComplete(int i2) {
        if (this.mSelectedPosition >= 0 || i2 <= 0) {
            return;
        }
        this.mResurrectToPosition = -1;
        resurrectSelection();
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        ListAdapter listAdapter;
        super.onFocusChanged(z2, i2, rect);
        if (!z2 || this.mSelectedPosition >= 0 || isInTouchMode()) {
            return;
        }
        if (!isAttachedToWindow() && (listAdapter = this.mAdapter) != null) {
            this.mDataChanged = true;
            this.mOldItemCount = this.mItemCount;
            this.mItemCount = listAdapter.getCount();
        }
        resurrectSelection();
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && this.mTouchMode == -1) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                int verticalScrollFactor = (int) (axisValue * getVerticalScrollFactor());
                if (!trackMotionScroll(verticalScrollFactor, verticalScrollFactor)) {
                    return true;
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        PopupWindow popupWindow;
        if (!isShown()) {
            PopupWindow popupWindow2 = this.mPopup;
            if (popupWindow2 == null || !popupWindow2.isShowing()) {
                return;
            }
            dismissPopup();
            return;
        }
        if (!this.mFiltered || (popupWindow = this.mPopup) == null || popupWindow.isShowing() || this.mPopupHidden) {
            return;
        }
        showPopup();
    }

    @Override // android.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(AbsListView.class.getName());
    }

    @Override // android.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(AbsListView.class.getName());
        if (isEnabled()) {
            if (getFirstVisiblePosition() > 0) {
                accessibilityNodeInfo.addAction(8192);
                accessibilityNodeInfo.setScrollable(true);
            }
            if (getLastVisiblePosition() < getCount() - 1) {
                accessibilityNodeInfo.addAction(4096);
                accessibilityNodeInfo.setScrollable(true);
            }
        }
    }

    public void onInitializeAccessibilityNodeInfoForItem(View view, int i2, AccessibilityNodeInfo accessibilityNodeInfo) {
        ListAdapter adapter = getAdapter();
        if (i2 == -1 || adapter == null) {
            return;
        }
        if (!isEnabled() || !adapter.isEnabled(i2)) {
            accessibilityNodeInfo.setEnabled(false);
            return;
        }
        if (i2 == getSelectedItemPosition()) {
            accessibilityNodeInfo.setSelected(true);
            accessibilityNodeInfo.addAction(8);
        } else {
            accessibilityNodeInfo.addAction(4);
        }
        if (isClickable()) {
            accessibilityNodeInfo.addAction(16);
            accessibilityNodeInfo.setClickable(true);
        }
        if (isLongClickable()) {
            accessibilityNodeInfo.addAction(32);
            accessibilityNodeInfo.setLongClickable(true);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller == null || !fastScroller.onInterceptHoverEvent(motionEvent)) {
            return super.onInterceptHoverEvent(motionEvent);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x005f  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        PositionScroller positionScroller = this.mPositionScroller;
        if (positionScroller != null) {
            positionScroller.stop();
        }
        if (!isAttachedToWindow()) {
            return false;
        }
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller != null && fastScroller.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        int i2 = action & 255;
        if (i2 == 0) {
            int i3 = this.mTouchMode;
            if (i3 == 6 || i3 == 5) {
                this.mMotionCorrection = 0;
                return true;
            }
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            this.mActivePointerId = motionEvent.getPointerId(0);
            int iFindMotionRow = findMotionRow(y2);
            if (i3 != 4 && iFindMotionRow >= 0) {
                this.mMotionViewOriginalTop = getChildAt(iFindMotionRow - this.mFirstPosition).getTop();
                this.mMotionX = x2;
                this.mMotionY = y2;
                this.mMotionPosition = iFindMotionRow;
                this.mTouchMode = 0;
                clearScrollingCache();
            }
            this.mLastY = Integer.MIN_VALUE;
            initOrResetVelocityTracker();
            this.mVelocityTracker.addMovement(motionEvent);
            if (i3 == 4) {
                return true;
            }
        } else if (i2 == 1) {
            this.mTouchMode = -1;
            this.mActivePointerId = -1;
            recycleVelocityTracker();
            reportScrollStateChange(0);
        } else if (i2 != 2) {
            if (i2 == 3) {
                this.mTouchMode = -1;
                this.mActivePointerId = -1;
                recycleVelocityTracker();
                reportScrollStateChange(0);
            } else if (i2 == 6) {
                onSecondaryPointerUp(motionEvent);
            }
        } else if (this.mTouchMode == 0) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
            if (iFindPointerIndex == -1) {
                this.mActivePointerId = motionEvent.getPointerId(0);
                iFindPointerIndex = 0;
            }
            int y3 = (int) motionEvent.getY(iFindPointerIndex);
            initVelocityTrackerIfNotExists();
            this.mVelocityTracker.addMovement(motionEvent);
            if (startScrollIfNeeded(y3)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        int i3;
        ListAdapter listAdapter;
        if (KeyEvent.isConfirmKey(i2)) {
            if (!isEnabled()) {
                return true;
            }
            if (isClickable() && isPressed() && (i3 = this.mSelectedPosition) >= 0 && (listAdapter = this.mAdapter) != null && i3 < listAdapter.getCount()) {
                View childAt = getChildAt(this.mSelectedPosition - this.mFirstPosition);
                if (childAt != null) {
                    performItemClick(childAt, this.mSelectedPosition, this.mSelectedRowId);
                    childAt.setPressed(false);
                }
                setPressed(false);
                return true;
            }
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.mInLayout = true;
        int childCount = getChildCount();
        if (z2) {
            for (int i6 = 0; i6 < childCount; i6++) {
                getChildAt(i6).forceLayout();
            }
            this.mRecycler.markChildrenDirty();
        }
        layoutChildren();
        this.mInLayout = false;
        this.mOverscrollMax = (i5 - i3) / 3;
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller != null) {
            fastScroller.onItemCountChanged(getChildCount(), this.mItemCount);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.mSelector == null) {
            useDefaultSelector();
        }
        Rect rect = this.mListPadding;
        rect.left = this.mSelectionLeftPadding + this.mPaddingLeft;
        rect.top = this.mSelectionTopPadding + this.mPaddingTop;
        rect.right = this.mSelectionRightPadding + this.mPaddingRight;
        rect.bottom = this.mSelectionBottomPadding + this.mPaddingBottom;
        if (this.mTranscriptMode == 1) {
            int childCount = getChildCount();
            int height = getHeight() - getPaddingBottom();
            View childAt = getChildAt(childCount - 1);
            this.mForceTranscriptScroll = this.mFirstPosition + childCount >= this.mLastHandledItemCount && (childAt != null ? childAt.getBottom() : height) <= height;
        }
    }

    @Override // android.view.View
    public void onOverScrolled(int i2, int i3, boolean z2, boolean z3) {
        int i4 = this.mScrollY;
        if (i4 != i3) {
            int i5 = this.mScrollX;
            onScrollChanged(i5, i3, i5, i4);
            this.mScrollY = i3;
            invalidateParentIfNeeded();
            awakenScrollBars();
        }
    }

    @Override // android.widget.RemoteViewsAdapter.RemoteAdapterConnectionCallback
    public boolean onRemoteAdapterConnected() {
        RemoteViewsAdapter remoteViewsAdapter = this.mRemoteAdapter;
        if (remoteViewsAdapter == this.mAdapter) {
            if (remoteViewsAdapter == null) {
                return false;
            }
            remoteViewsAdapter.superNotifyDataSetChanged();
            return true;
        }
        setAdapter((ListAdapter) remoteViewsAdapter);
        if (this.mDeferNotifyDataSetChanged) {
            this.mRemoteAdapter.notifyDataSetChanged();
            this.mDeferNotifyDataSetChanged = false;
        }
        return false;
    }

    @Override // android.widget.RemoteViewsAdapter.RemoteAdapterConnectionCallback
    public void onRemoteAdapterDisconnected() {
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MultiChoiceModeWrapper multiChoiceModeWrapper;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mDataChanged = true;
        this.mSyncHeight = savedState.height;
        long j2 = savedState.selectedId;
        if (j2 >= 0) {
            this.mNeedSync = true;
            this.mPendingSync = savedState;
            this.mSyncRowId = j2;
            this.mSyncPosition = savedState.position;
            this.mSpecificTop = savedState.viewTop;
            this.mSyncMode = 0;
        } else if (savedState.firstId >= 0) {
            setSelectedPositionInt(-1);
            setNextSelectedPositionInt(-1);
            this.mSelectorPosition = -1;
            this.mNeedSync = true;
            this.mPendingSync = savedState;
            this.mSyncRowId = savedState.firstId;
            this.mSyncPosition = savedState.position;
            this.mSpecificTop = savedState.viewTop;
            this.mSyncMode = 1;
        }
        setFilterText(savedState.filter);
        SparseBooleanArray sparseBooleanArray = savedState.checkState;
        if (sparseBooleanArray != null) {
            this.mCheckStates = sparseBooleanArray;
        }
        LongSparseArray<Integer> longSparseArray = savedState.checkIdState;
        if (longSparseArray != null) {
            this.mCheckedIdStates = longSparseArray;
        }
        this.mCheckedItemCount = savedState.checkedItemCount;
        if (savedState.inActionMode && this.mChoiceMode == 3 && (multiChoiceModeWrapper = this.mMultiChoiceModeCallback) != null) {
            this.mChoiceActionMode = startActionMode(multiChoiceModeWrapper);
        }
        requestLayout();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller != null) {
            fastScroller.setScrollbarPosition(getVerticalScrollbarPosition());
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        EditText editText;
        Editable text;
        dismissPopup();
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSync;
        if (savedState2 != null) {
            savedState.selectedId = savedState2.selectedId;
            savedState.firstId = savedState2.firstId;
            savedState.viewTop = savedState2.viewTop;
            savedState.position = savedState2.position;
            savedState.height = savedState2.height;
            savedState.filter = savedState2.filter;
            savedState.inActionMode = savedState2.inActionMode;
            savedState.checkedItemCount = savedState2.checkedItemCount;
            savedState.checkState = savedState2.checkState;
            savedState.checkIdState = savedState2.checkIdState;
            return savedState;
        }
        boolean z2 = getChildCount() > 0 && this.mItemCount > 0;
        long selectedItemId = getSelectedItemId();
        savedState.selectedId = selectedItemId;
        savedState.height = getHeight();
        if (selectedItemId >= 0) {
            savedState.viewTop = this.mSelectedTop;
            savedState.position = getSelectedItemPosition();
            savedState.firstId = -1L;
        } else if (!z2 || this.mFirstPosition <= 0) {
            savedState.viewTop = 0;
            savedState.firstId = -1L;
            savedState.position = 0;
        } else {
            savedState.viewTop = getChildAt(0).getTop();
            int i2 = this.mFirstPosition;
            int i3 = this.mItemCount;
            if (i2 >= i3) {
                i2 = i3 - 1;
            }
            savedState.position = i2;
            savedState.firstId = this.mAdapter.getItemId(i2);
        }
        savedState.filter = null;
        if (this.mFiltered && (editText = this.mTextFilter) != null && (text = editText.getText()) != null) {
            savedState.filter = text.toString();
        }
        savedState.inActionMode = this.mChoiceMode == 3 && this.mChoiceActionMode != null;
        SparseBooleanArray sparseBooleanArray = this.mCheckStates;
        if (sparseBooleanArray != null) {
            savedState.checkState = sparseBooleanArray.m16clone();
        }
        if (this.mCheckedIdStates != null) {
            LongSparseArray<Integer> longSparseArray = new LongSparseArray<>();
            int size = this.mCheckedIdStates.size();
            for (int i4 = 0; i4 < size; i4++) {
                longSparseArray.put(this.mCheckedIdStates.keyAt(i4), this.mCheckedIdStates.valueAt(i4));
            }
            savedState.checkIdState = longSparseArray;
        }
        savedState.checkedItemCount = this.mCheckedItemCount;
        RemoteViewsAdapter remoteViewsAdapter = this.mRemoteAdapter;
        if (remoteViewsAdapter != null) {
            remoteViewsAdapter.saveRemoteViewsCache();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        if (getChildCount() > 0) {
            this.mDataChanged = true;
            rememberSyncState();
        }
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller != null) {
            fastScroller.onSizeChanged(i2, i3, i4, i5);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        if (isTextFilterEnabled()) {
            createTextFilter(true);
            int length = charSequence.length();
            boolean zIsShowing = this.mPopup.isShowing();
            if (!zIsShowing && length > 0) {
                showPopup();
                this.mFiltered = true;
            } else if (zIsShowing && length == 0) {
                dismissPopup();
                this.mFiltered = false;
            }
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter instanceof Filterable) {
                Filter filter = ((Filterable) listAdapter).getFilter();
                if (filter == null) {
                    throw new IllegalStateException("You cannot call onTextChanged with a non filterable adapter");
                }
                filter.filter(charSequence, this);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return isClickable() || isLongClickable();
        }
        PositionScroller positionScroller = this.mPositionScroller;
        if (positionScroller != null) {
            positionScroller.stop();
        }
        if (!isAttachedToWindow()) {
            return false;
        }
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller != null && fastScroller.onTouchEvent(motionEvent)) {
            return true;
        }
        initVelocityTrackerIfNotExists();
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            onTouchDown(motionEvent);
        } else if (actionMasked == 1) {
            onTouchUp(motionEvent);
        } else if (actionMasked == 2) {
            onTouchMove(motionEvent);
        } else if (actionMasked == 3) {
            onTouchCancel();
        } else if (actionMasked == 5) {
            int actionIndex = motionEvent.getActionIndex();
            int pointerId = motionEvent.getPointerId(actionIndex);
            int x2 = (int) motionEvent.getX(actionIndex);
            int y2 = (int) motionEvent.getY(actionIndex);
            this.mMotionCorrection = 0;
            this.mActivePointerId = pointerId;
            this.mMotionX = x2;
            this.mMotionY = y2;
            int iPointToPosition = pointToPosition(x2, y2);
            if (iPointToPosition >= 0) {
                this.mMotionViewOriginalTop = getChildAt(iPointToPosition - this.mFirstPosition).getTop();
                this.mMotionPosition = iPointToPosition;
            }
            this.mLastY = y2;
        } else if (actionMasked == 6) {
            onSecondaryPointerUp(motionEvent);
            int i2 = this.mMotionX;
            int i3 = this.mMotionY;
            int iPointToPosition2 = pointToPosition(i2, i3);
            if (iPointToPosition2 >= 0) {
                this.mMotionViewOriginalTop = getChildAt(iPointToPosition2 - this.mFirstPosition).getTop();
                this.mMotionPosition = iPointToPosition2;
            }
            this.mLastY = i3;
        }
        return true;
    }

    @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
    public void onTouchModeChanged(boolean z2) {
        if (z2) {
            hideSelector();
            if (getHeight() > 0 && getChildCount() > 0) {
                layoutChildren();
            }
            updateSelectorState();
            return;
        }
        int i2 = this.mTouchMode;
        if (i2 == 5 || i2 == 6) {
            FlingRunnable flingRunnable = this.mFlingRunnable;
            if (flingRunnable != null) {
                flingRunnable.endFling();
            }
            PositionScroller positionScroller = this.mPositionScroller;
            if (positionScroller != null) {
                positionScroller.stop();
            }
            if (this.mScrollY != 0) {
                this.mScrollY = 0;
                invalidateParentCaches();
                finishGlows();
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        int i2 = !isInTouchMode() ? 1 : 0;
        if (z2) {
            if (this.mFiltered && !this.mPopupHidden) {
                showPopup();
            }
            int i3 = this.mLastTouchMode;
            if (i2 != i3 && i3 != -1) {
                if (i2 == 1) {
                    resurrectSelection();
                } else {
                    hideSelector();
                    this.mLayoutMode = 0;
                    layoutChildren();
                }
            }
        } else {
            setChildrenDrawingCacheEnabled(false);
            FlingRunnable flingRunnable = this.mFlingRunnable;
            if (flingRunnable != null) {
                removeCallbacks(flingRunnable);
                this.mFlingRunnable.endFling();
                PositionScroller positionScroller = this.mPositionScroller;
                if (positionScroller != null) {
                    positionScroller.stop();
                }
                if (this.mScrollY != 0) {
                    this.mScrollY = 0;
                    invalidateParentCaches();
                    finishGlows();
                    invalidate();
                }
            }
            dismissPopup();
            if (i2 == 1) {
                this.mResurrectToPosition = this.mSelectedPosition;
            }
        }
        this.mLastTouchMode = i2;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        if (super.performAccessibilityAction(i2, bundle)) {
            return true;
        }
        if (i2 == 4096) {
            if (!isEnabled() || getLastVisiblePosition() >= getCount() - 1) {
                return false;
            }
            int height = getHeight();
            Rect rect = this.mListPadding;
            smoothScrollBy((height - rect.top) - rect.bottom, 200);
            return true;
        }
        if (i2 != 8192 || !isEnabled() || this.mFirstPosition <= 0) {
            return false;
        }
        int height2 = getHeight();
        Rect rect2 = this.mListPadding;
        smoothScrollBy(-((height2 - rect2.top) - rect2.bottom), 200);
        return true;
    }

    @Override // android.widget.AdapterView
    public boolean performItemClick(View view, int i2, long j2) {
        boolean z2;
        int i3 = this.mChoiceMode;
        boolean z3 = false;
        boolean z4 = true;
        if (i3 != 0) {
            if (i3 == 2 || (i3 == 3 && this.mChoiceActionMode != null)) {
                boolean z5 = !this.mCheckStates.get(i2, false);
                this.mCheckStates.put(i2, z5);
                if (this.mCheckedIdStates != null && this.mAdapter.hasStableIds()) {
                    if (z5) {
                        this.mCheckedIdStates.put(this.mAdapter.getItemId(i2), Integer.valueOf(i2));
                    } else {
                        this.mCheckedIdStates.delete(this.mAdapter.getItemId(i2));
                    }
                }
                if (z5) {
                    this.mCheckedItemCount++;
                } else {
                    this.mCheckedItemCount--;
                }
                ActionMode actionMode = this.mChoiceActionMode;
                if (actionMode != null) {
                    this.mMultiChoiceModeCallback.onItemCheckedStateChanged(actionMode, i2, j2, z5);
                } else {
                    z3 = true;
                }
                z2 = z3;
                z3 = true;
            } else if (i3 == 1) {
                if (!this.mCheckStates.get(i2, false)) {
                    this.mCheckStates.clear();
                    this.mCheckStates.put(i2, true);
                    if (this.mCheckedIdStates != null && this.mAdapter.hasStableIds()) {
                        this.mCheckedIdStates.clear();
                        this.mCheckedIdStates.put(this.mAdapter.getItemId(i2), Integer.valueOf(i2));
                    }
                    this.mCheckedItemCount = 1;
                } else if (this.mCheckStates.size() == 0 || !this.mCheckStates.valueAt(0)) {
                    this.mCheckedItemCount = 0;
                }
                z2 = true;
                z3 = true;
            } else {
                z2 = true;
            }
            if (z3) {
                updateOnScreenCheckedViews();
            }
            z3 = true;
            z4 = z2;
        }
        return z4 ? z3 | super.performItemClick(view, i2, j2) : z3;
    }

    public boolean performLongPress(View view, int i2, long j2) {
        if (this.mChoiceMode == 3) {
            if (this.mChoiceActionMode == null) {
                ActionMode actionModeStartActionMode = startActionMode(this.mMultiChoiceModeCallback);
                this.mChoiceActionMode = actionModeStartActionMode;
                if (actionModeStartActionMode != null) {
                    setItemChecked(i2, true);
                    performHapticFeedback(0);
                }
            }
            return true;
        }
        AdapterView.OnItemLongClickListener onItemLongClickListener = this.mOnItemLongClickListener;
        boolean zOnItemLongClick = onItemLongClickListener != null ? onItemLongClickListener.onItemLongClick(this, view, i2, j2) : false;
        if (!zOnItemLongClick) {
            this.mContextMenuInfo = createContextMenuInfo(view, i2, j2);
            zOnItemLongClick = super.showContextMenuForChild(this);
        }
        if (zOnItemLongClick) {
            performHapticFeedback(0);
        }
        return zOnItemLongClick;
    }

    public int pointToPosition(int i2, int i3) {
        Rect rect = this.mTouchFrame;
        if (rect == null) {
            rect = new Rect();
            this.mTouchFrame = rect;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(i2, i3)) {
                    return this.mFirstPosition + childCount;
                }
            }
        }
        return -1;
    }

    public long pointToRowId(int i2, int i3) {
        int iPointToPosition = pointToPosition(i2, i3);
        if (iPointToPosition >= 0) {
            return this.mAdapter.getItemId(iPointToPosition);
        }
        return Long.MIN_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void positionSelector(int i2, View view) {
        if (i2 != -1) {
            this.mSelectorPosition = i2;
        }
        Rect rect = this.mSelectorRect;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        if (view instanceof SelectionBoundsAdjuster) {
            ((SelectionBoundsAdjuster) view).adjustListItemSelectionBounds(rect);
        }
        positionSelector(rect.left, rect.top, rect.right, rect.bottom);
        boolean z2 = this.mIsChildViewEnabled;
        if (view.isEnabled() != z2) {
            this.mIsChildViewEnabled = !z2;
            if (getSelectedItemPosition() != -1) {
                refreshDrawableState();
            }
        }
    }

    public void reclaimViews(List<View> list) {
        int childCount = getChildCount();
        RecyclerListener recyclerListener = this.mRecycler.mRecyclerListener;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams != null && this.mRecycler.shouldRecycleViewType(layoutParams.viewType)) {
                list.add(childAt);
                childAt.setAccessibilityDelegate(null);
                if (recyclerListener != null) {
                    recyclerListener.onMovedToScrapHeap(childAt);
                }
            }
        }
        this.mRecycler.reclaimScrapViews(list);
        removeAllViewsInLayout();
    }

    public int reconcileSelectedPosition() {
        int i2 = this.mSelectedPosition;
        if (i2 < 0) {
            i2 = this.mResurrectToPosition;
        }
        return Math.min(Math.max(0, i2), this.mItemCount - 1);
    }

    public void reportScrollStateChange(int i2) {
        OnScrollListener onScrollListener;
        if (i2 == this.mLastScrollState || (onScrollListener = this.mOnScrollListener) == null) {
            return;
        }
        this.mLastScrollState = i2;
        onScrollListener.onScrollStateChanged(this, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
        if (z2) {
            recycleVelocityTracker();
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mBlockLayoutRequests || this.mInLayout) {
            return;
        }
        super.requestLayout();
    }

    public void requestLayoutIfNecessary() {
        if (getChildCount() > 0) {
            resetList();
            requestLayout();
            invalidate();
        }
    }

    public void resetList() {
        removeAllViewsInLayout();
        this.mFirstPosition = 0;
        this.mDataChanged = false;
        this.mPositionScrollAfterLayout = null;
        this.mNeedSync = false;
        this.mPendingSync = null;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        this.mSelectedTop = 0;
        this.mSelectorPosition = -1;
        this.mSelectorRect.setEmpty();
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:56:? A[RETURN, SYNTHETIC] */
    public boolean resurrectSelection() {
        boolean z2;
        int top;
        int i2;
        PositionScroller positionScroller;
        int iLookForSelectablePosition;
        int childCount = getChildCount();
        if (childCount <= 0) {
            return false;
        }
        Rect rect = this.mListPadding;
        int verticalFadingEdgeLength = rect.top;
        int verticalFadingEdgeLength2 = (this.mBottom - this.mTop) - rect.bottom;
        int i3 = this.mFirstPosition;
        int i4 = this.mResurrectToPosition;
        if (i4 < i3 || i4 >= i3 + childCount) {
            if (i4 >= i3) {
                int i5 = this.mItemCount;
                int i6 = i3 + childCount;
                int i7 = i6 - 1;
                int i8 = childCount - 1;
                int i9 = i8;
                int i10 = 0;
                while (true) {
                    if (i9 < 0) {
                        z2 = false;
                        i4 = i7;
                        top = i10;
                        break;
                    }
                    View childAt = getChildAt(i9);
                    int top2 = childAt.getTop();
                    int bottom = childAt.getBottom();
                    if (i9 == i8) {
                        if (i6 < i5 || bottom > verticalFadingEdgeLength2) {
                            verticalFadingEdgeLength2 -= getVerticalFadingEdgeLength();
                        }
                        i10 = top2;
                    }
                    if (bottom <= verticalFadingEdgeLength2) {
                        i4 = i3 + i9;
                        z2 = false;
                        top = top2;
                        break;
                    }
                    i9--;
                }
            } else {
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    if (i11 >= childCount) {
                        top = i12;
                        i4 = i3;
                        break;
                    }
                    top = getChildAt(i11).getTop();
                    if (i11 == 0) {
                        if (i3 > 0 || top < verticalFadingEdgeLength) {
                            verticalFadingEdgeLength += getVerticalFadingEdgeLength();
                        }
                        i12 = top;
                    }
                    if (top >= verticalFadingEdgeLength) {
                        i4 = i11 + i3;
                        break;
                    }
                    i11++;
                }
            }
            i2 = -1;
            this.mResurrectToPosition = -1;
            removeCallbacks(this.mFlingRunnable);
            positionScroller = this.mPositionScroller;
            if (positionScroller != null) {
                positionScroller.stop();
            }
            this.mTouchMode = -1;
            clearScrollingCache();
            this.mSpecificTop = top;
            iLookForSelectablePosition = lookForSelectablePosition(i4, z2);
            if (iLookForSelectablePosition >= i3 && iLookForSelectablePosition <= getLastVisiblePosition()) {
                this.mLayoutMode = 4;
                updateSelectorState();
                setSelectionInt(iLookForSelectablePosition);
                invokeOnItemScrollListener();
                i2 = iLookForSelectablePosition;
            }
            reportScrollStateChange(0);
            if (i2 >= 0) {
                return true;
            }
            return false;
        }
        View childAt2 = getChildAt(i4 - i3);
        top = childAt2.getTop();
        int bottom2 = childAt2.getBottom();
        if (top < verticalFadingEdgeLength) {
            top = verticalFadingEdgeLength + getVerticalFadingEdgeLength();
        } else if (bottom2 > verticalFadingEdgeLength2) {
            top = (verticalFadingEdgeLength2 - childAt2.getMeasuredHeight()) - getVerticalFadingEdgeLength();
        }
        z2 = true;
        i2 = -1;
        this.mResurrectToPosition = -1;
        removeCallbacks(this.mFlingRunnable);
        positionScroller = this.mPositionScroller;
        if (positionScroller != null) {
            positionScroller.stop();
        }
        this.mTouchMode = -1;
        clearScrollingCache();
        this.mSpecificTop = top;
        iLookForSelectablePosition = lookForSelectablePosition(i4, z2);
        if (iLookForSelectablePosition >= i3) {
            this.mLayoutMode = 4;
            updateSelectorState();
            setSelectionInt(iLookForSelectablePosition);
            invokeOnItemScrollListener();
            i2 = iLookForSelectablePosition;
        }
        reportScrollStateChange(0);
        if (i2 >= 0) {
            return true;
        }
        return false;
    }

    public boolean resurrectSelectionIfNeeded() {
        if (this.mSelectedPosition >= 0 || !resurrectSelection()) {
            return false;
        }
        updateSelectorState();
        return true;
    }

    public void scrollListBy(int i2) {
        int i3 = -i2;
        trackMotionScroll(i3, i3);
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i2) {
        if (i2 == 4096) {
            int firstVisiblePosition = getFirstVisiblePosition();
            int lastVisiblePosition = getLastVisiblePosition();
            if (this.mLastAccessibilityScrollEventFromIndex == firstVisiblePosition && this.mLastAccessibilityScrollEventToIndex == lastVisiblePosition) {
                return;
            }
            this.mLastAccessibilityScrollEventFromIndex = firstVisiblePosition;
            this.mLastAccessibilityScrollEventToIndex = lastVisiblePosition;
        }
        super.sendAccessibilityEvent(i2);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001a  */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    public boolean sendToTextFilter(int i2, int i3, KeyEvent keyEvent) {
        boolean z2;
        boolean z3;
        boolean z4;
        PopupWindow popupWindow;
        if (!acceptFilter()) {
            return false;
        }
        if (i2 == 4) {
            if (this.mFiltered && (popupWindow = this.mPopup) != null && popupWindow.isShowing()) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                } else if (keyEvent.getAction() == 1 && keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    this.mTextFilter.setText(ProxyProperties.LOCAL_EXCL_LIST);
                } else {
                    z2 = false;
                }
                z2 = true;
            } else {
                z2 = false;
            }
            z3 = z2;
            z4 = false;
        } else if (i2 == 62) {
            z4 = this.mFiltered;
            z3 = false;
        } else if (i2 != 66) {
            switch (i2) {
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    z4 = false;
                    z3 = false;
                    break;
                default:
                    z3 = false;
                    z4 = true;
                    break;
            }
        } else {
            z4 = false;
            z3 = false;
        }
        if (!z4) {
            return z3;
        }
        createTextFilter(true);
        KeyEvent keyEventChangeTimeRepeat = keyEvent.getRepeatCount() > 0 ? KeyEvent.changeTimeRepeat(keyEvent, keyEvent.getEventTime(), 0) : keyEvent;
        int action = keyEvent.getAction();
        if (action == 0) {
            return this.mTextFilter.onKeyDown(i2, keyEventChangeTimeRepeat);
        }
        if (action != 1) {
            return action != 2 ? z3 : this.mTextFilter.onKeyMultiple(i2, i3, keyEvent);
        }
        return this.mTextFilter.onKeyUp(i2, keyEventChangeTimeRepeat);
    }

    public void setCacheColorHint(int i2) {
        if (i2 != this.mCacheColorHint) {
            this.mCacheColorHint = i2;
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                getChildAt(i3).setDrawingCacheBackgroundColor(i2);
            }
            this.mRecycler.setCacheColorHint(i2);
        }
    }

    public void setChoiceMode(int i2) {
        ListAdapter listAdapter;
        this.mChoiceMode = i2;
        ActionMode actionMode = this.mChoiceActionMode;
        if (actionMode != null) {
            actionMode.finish();
            this.mChoiceActionMode = null;
        }
        if (this.mChoiceMode != 0) {
            if (this.mCheckStates == null) {
                this.mCheckStates = new SparseBooleanArray(0);
            }
            if (this.mCheckedIdStates == null && (listAdapter = this.mAdapter) != null && listAdapter.hasStableIds()) {
                this.mCheckedIdStates = new LongSparseArray<>(0);
            }
            if (this.mChoiceMode == 3) {
                clearChoices();
                setLongClickable(true);
            }
        }
    }

    public void setDrawSelectorOnTop(boolean z2) {
        this.mDrawSelectorOnTop = z2;
    }

    public void setFastScrollAlwaysVisible(final boolean z2) {
        if (this.mFastScrollAlwaysVisible != z2) {
            if (z2 && !this.mFastScrollEnabled) {
                setFastScrollEnabled(true);
            }
            this.mFastScrollAlwaysVisible = z2;
            if (isOwnerThread()) {
                setFastScrollerAlwaysVisibleUiThread(z2);
            } else {
                post(new Runnable() { // from class: android.widget.AbsListView.2
                    @Override // java.lang.Runnable
                    public void run() {
                        AbsListView.this.setFastScrollerAlwaysVisibleUiThread(z2);
                    }
                });
            }
        }
    }

    public void setFastScrollEnabled(final boolean z2) {
        if (this.mFastScrollEnabled != z2) {
            this.mFastScrollEnabled = z2;
            if (isOwnerThread()) {
                setFastScrollerEnabledUiThread(z2);
            } else {
                post(new Runnable() { // from class: android.widget.AbsListView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AbsListView.this.setFastScrollerEnabledUiThread(z2);
                    }
                });
            }
        }
    }

    public void setFilterText(String str) {
        if (!this.mTextFilterEnabled || TextUtils.isEmpty(str)) {
            return;
        }
        createTextFilter(false);
        this.mTextFilter.setText(str);
        this.mTextFilter.setSelection(str.length());
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter instanceof Filterable) {
            if (this.mPopup == null) {
                ((Filterable) listAdapter).getFilter().filter(str);
            }
            this.mFiltered = true;
            this.mDataSetObserver.clearSavedState();
        }
    }

    @Override // android.view.View
    public boolean setFrame(int i2, int i3, int i4, int i5) {
        PopupWindow popupWindow;
        boolean frame = super.setFrame(i2, i3, i4, i5);
        if (frame) {
            boolean z2 = getWindowVisibility() == 0;
            if (this.mFiltered && z2 && (popupWindow = this.mPopup) != null && popupWindow.isShowing()) {
                positionPopup();
            }
        }
        return frame;
    }

    public void setFriction(float f2) {
        if (this.mFlingRunnable == null) {
            this.mFlingRunnable = new FlingRunnable();
        }
        this.mFlingRunnable.mScroller.setFriction(f2);
    }

    public void setItemChecked(int i2, boolean z2) {
        int i3 = this.mChoiceMode;
        if (i3 == 0) {
            return;
        }
        if (z2 && i3 == 3 && this.mChoiceActionMode == null) {
            MultiChoiceModeWrapper multiChoiceModeWrapper = this.mMultiChoiceModeCallback;
            if (multiChoiceModeWrapper == null || !multiChoiceModeWrapper.hasWrappedCallback()) {
                throw new IllegalStateException("AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback.");
            }
            this.mChoiceActionMode = startActionMode(this.mMultiChoiceModeCallback);
        }
        int i4 = this.mChoiceMode;
        if (i4 == 2 || i4 == 3) {
            boolean z3 = this.mCheckStates.get(i2);
            this.mCheckStates.put(i2, z2);
            if (this.mCheckedIdStates != null && this.mAdapter.hasStableIds()) {
                if (z2) {
                    this.mCheckedIdStates.put(this.mAdapter.getItemId(i2), Integer.valueOf(i2));
                } else {
                    this.mCheckedIdStates.delete(this.mAdapter.getItemId(i2));
                }
            }
            if (z3 != z2) {
                if (z2) {
                    this.mCheckedItemCount++;
                } else {
                    this.mCheckedItemCount--;
                }
            }
            if (this.mChoiceActionMode != null) {
                this.mMultiChoiceModeCallback.onItemCheckedStateChanged(this.mChoiceActionMode, i2, this.mAdapter.getItemId(i2), z2);
            }
        } else {
            boolean z4 = this.mCheckedIdStates != null && this.mAdapter.hasStableIds();
            if (z2 || isItemChecked(i2)) {
                this.mCheckStates.clear();
                if (z4) {
                    this.mCheckedIdStates.clear();
                }
            }
            if (z2) {
                this.mCheckStates.put(i2, true);
                if (z4) {
                    this.mCheckedIdStates.put(this.mAdapter.getItemId(i2), Integer.valueOf(i2));
                }
                this.mCheckedItemCount = 1;
            } else if (this.mCheckStates.size() == 0 || !this.mCheckStates.valueAt(0)) {
                this.mCheckedItemCount = 0;
            }
        }
        if (this.mInLayout || this.mBlockLayoutRequests) {
            return;
        }
        this.mDataChanged = true;
        rememberSyncState();
        requestLayout();
    }

    public void setMultiChoiceModeListener(MultiChoiceModeListener multiChoiceModeListener) {
        if (this.mMultiChoiceModeCallback == null) {
            this.mMultiChoiceModeCallback = new MultiChoiceModeWrapper();
        }
        this.mMultiChoiceModeCallback.setWrapped(multiChoiceModeListener);
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.mOnScrollListener = onScrollListener;
        invokeOnItemScrollListener();
    }

    public void setOverScrollEffectPadding(int i2, int i3) {
        this.mGlowPaddingLeft = i2;
        this.mGlowPaddingRight = i3;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i2) {
        if (i2 == 2) {
            this.mEdgeGlowTop = null;
            this.mEdgeGlowBottom = null;
        } else if (this.mEdgeGlowTop == null) {
            Context context = getContext();
            this.mEdgeGlowTop = new EdgeEffect(context);
            this.mEdgeGlowBottom = new EdgeEffect(context);
        }
        super.setOverScrollMode(i2);
    }

    public void setRecyclerListener(RecyclerListener recyclerListener) {
        this.mRecycler.mRecyclerListener = recyclerListener;
    }

    public void setRemoteViewsAdapter(Intent intent) {
        if (this.mRemoteAdapter == null || !new Intent.FilterComparison(intent).equals(new Intent.FilterComparison(this.mRemoteAdapter.getRemoteViewsServiceIntent()))) {
            this.mDeferNotifyDataSetChanged = false;
            RemoteViewsAdapter remoteViewsAdapter = new RemoteViewsAdapter(getContext(), intent, this);
            this.mRemoteAdapter = remoteViewsAdapter;
            if (remoteViewsAdapter.isDataReady()) {
                setAdapter((ListAdapter) this.mRemoteAdapter);
            }
        }
    }

    public void setRemoteViewsOnClickHandler(RemoteViews.OnClickHandler onClickHandler) {
        RemoteViewsAdapter remoteViewsAdapter = this.mRemoteAdapter;
        if (remoteViewsAdapter != null) {
            remoteViewsAdapter.setRemoteViewsOnClickHandler(onClickHandler);
        }
    }

    @Override // android.view.View
    public void setScrollBarStyle(int i2) {
        super.setScrollBarStyle(i2);
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller != null) {
            fastScroller.setScrollBarStyle(i2);
        }
    }

    public void setScrollIndicators(View view, View view2) {
        this.mScrollUp = view;
        this.mScrollDown = view2;
    }

    public void setScrollingCacheEnabled(boolean z2) {
        if (this.mScrollingCacheEnabled && !z2) {
            clearScrollingCache();
        }
        this.mScrollingCacheEnabled = z2;
    }

    public abstract void setSelectionInt(int i2);

    public void setSelector(int i2) {
        setSelector(getResources().getDrawable(i2));
    }

    public void setSmoothScrollbarEnabled(boolean z2) {
        this.mSmoothScrollbarEnabled = z2;
    }

    public void setStackFromBottom(boolean z2) {
        if (this.mStackFromBottom != z2) {
            this.mStackFromBottom = z2;
            requestLayoutIfNecessary();
        }
    }

    public void setTextFilterEnabled(boolean z2) {
        this.mTextFilterEnabled = z2;
    }

    public void setTranscriptMode(int i2) {
        this.mTranscriptMode = i2;
    }

    public void setVelocityScale(float f2) {
        this.mVelocityScale = f2;
    }

    @Override // android.view.View
    public void setVerticalScrollbarPosition(int i2) {
        super.setVerticalScrollbarPosition(i2);
        FastScroller fastScroller = this.mFastScroller;
        if (fastScroller != null) {
            fastScroller.setScrollbarPosition(i2);
        }
    }

    public void setVisibleRangeHint(int i2, int i3) {
        RemoteViewsAdapter remoteViewsAdapter = this.mRemoteAdapter;
        if (remoteViewsAdapter != null) {
            remoteViewsAdapter.setVisibleRangeHint(i2, i3);
        }
    }

    public boolean shouldShowSelector() {
        return !isInTouchMode() || (touchModeDrawsInPressedState() && isPressed());
    }

    @Override // android.view.View
    public boolean showContextMenu(float f2, float f3, int i2) {
        int iPointToPosition = pointToPosition((int) f2, (int) f3);
        if (iPointToPosition != -1) {
            long itemId = this.mAdapter.getItemId(iPointToPosition);
            View childAt = getChildAt(iPointToPosition - this.mFirstPosition);
            if (childAt != null) {
                this.mContextMenuInfo = createContextMenuInfo(childAt, iPointToPosition, itemId);
                return super.showContextMenuForChild(this);
            }
        }
        return super.showContextMenu(f2, f3, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        int positionForView = getPositionForView(view);
        if (positionForView < 0) {
            return false;
        }
        long itemId = this.mAdapter.getItemId(positionForView);
        AdapterView.OnItemLongClickListener onItemLongClickListener = this.mOnItemLongClickListener;
        boolean zOnItemLongClick = onItemLongClickListener != null ? onItemLongClickListener.onItemLongClick(this, view, positionForView, itemId) : false;
        if (zOnItemLongClick) {
            return zOnItemLongClick;
        }
        this.mContextMenuInfo = createContextMenuInfo(getChildAt(positionForView - this.mFirstPosition), positionForView, itemId);
        return super.showContextMenuForChild(view);
    }

    public void smoothScrollBy(int i2, int i3) {
        smoothScrollBy(i2, i3, false);
    }

    public void smoothScrollByOffset(int i2) {
        int lastVisiblePosition;
        View childAt;
        if (i2 < 0) {
            lastVisiblePosition = getFirstVisiblePosition();
        } else {
            lastVisiblePosition = i2 > 0 ? getLastVisiblePosition() : -1;
        }
        if (lastVisiblePosition <= -1 || (childAt = getChildAt(lastVisiblePosition - getFirstVisiblePosition())) == null) {
            return;
        }
        Rect rect = new Rect();
        if (childAt.getGlobalVisibleRect(rect)) {
            float fWidth = (rect.width() * rect.height()) / (childAt.getWidth() * childAt.getHeight());
            if (i2 < 0 && fWidth < 0.75f) {
                lastVisiblePosition++;
            } else if (i2 > 0 && fWidth < 0.75f) {
                lastVisiblePosition--;
            }
        }
        smoothScrollToPosition(Math.max(0, Math.min(getCount(), lastVisiblePosition + i2)));
    }

    public void smoothScrollToPosition(int i2) {
        if (this.mPositionScroller == null) {
            this.mPositionScroller = new PositionScroller();
        }
        this.mPositionScroller.start(i2);
    }

    public void smoothScrollToPositionFromTop(int i2, int i3, int i4) {
        if (this.mPositionScroller == null) {
            this.mPositionScroller = new PositionScroller();
        }
        this.mPositionScroller.startWithOffset(i2, i3, i4);
    }

    public boolean touchModeDrawsInPressedState() {
        int i2 = this.mTouchMode;
        return i2 == 1 || i2 == 2;
    }

    public boolean trackMotionScroll(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int childCount = getChildCount();
        if (childCount == 0) {
            return true;
        }
        int top = getChildAt(0).getTop();
        int i9 = childCount - 1;
        int bottom = getChildAt(i9).getBottom();
        Rect rect = this.mListPadding;
        if ((this.mGroupFlags & 34) == 34) {
            i4 = rect.top;
            i5 = rect.bottom;
        } else {
            i4 = 0;
            i5 = 0;
        }
        int i10 = i4 - top;
        int height = bottom - (getHeight() - i5);
        int height2 = (getHeight() - this.mPaddingBottom) - this.mPaddingTop;
        int iMax = i2 < 0 ? Math.max(-(height2 - 1), i2) : Math.min(height2 - 1, i2);
        int iMax2 = i3 < 0 ? Math.max(-(height2 - 1), i3) : Math.min(height2 - 1, i3);
        int i11 = this.mFirstPosition;
        if (i11 == 0) {
            this.mFirstPositionDistanceGuess = top - rect.top;
        } else {
            this.mFirstPositionDistanceGuess += iMax2;
        }
        int i12 = i11 + childCount;
        int i13 = this.mItemCount;
        if (i12 == i13) {
            this.mLastPositionDistanceGuess = rect.bottom + bottom;
        } else {
            this.mLastPositionDistanceGuess += iMax2;
        }
        boolean z2 = i11 == 0 && top >= rect.top && iMax2 >= 0;
        boolean z3 = i12 == i13 && bottom <= getHeight() - rect.bottom && iMax2 <= 0;
        if (z2 || z3) {
            return iMax2 != 0;
        }
        boolean z4 = iMax2 < 0;
        boolean zIsInTouchMode = isInTouchMode();
        if (zIsInTouchMode) {
            hideSelector();
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = this.mItemCount - getFooterViewsCount();
        if (z4) {
            int i14 = -iMax2;
            if ((this.mGroupFlags & 34) == 34) {
                i14 += rect.top;
            }
            int i15 = 0;
            i7 = 0;
            while (i15 < childCount) {
                View childAt = getChildAt(i15);
                if (childAt.getBottom() >= i14) {
                    break;
                }
                i7++;
                int i16 = i11 + i15;
                if (i16 >= headerViewsCount && i16 < footerViewsCount) {
                    if (childAt.isAccessibilityFocused()) {
                        childAt.clearAccessibilityFocus();
                    }
                    this.mRecycler.addScrapView(childAt, i16);
                }
                i15++;
                childCount = childCount;
            }
            i6 = 0;
        } else {
            int height3 = getHeight() - iMax2;
            if ((this.mGroupFlags & 34) == 34) {
                height3 -= rect.bottom;
            }
            i6 = 0;
            i7 = 0;
            while (i9 >= 0) {
                View childAt2 = getChildAt(i9);
                if (childAt2.getTop() <= height3) {
                    break;
                }
                i7++;
                int i17 = i11 + i9;
                if (i17 >= headerViewsCount && i17 < footerViewsCount) {
                    if (childAt2.isAccessibilityFocused()) {
                        childAt2.clearAccessibilityFocus();
                    }
                    this.mRecycler.addScrapView(childAt2, i17);
                }
                int i18 = i9;
                i9--;
                i6 = i18;
            }
        }
        this.mMotionViewNewTop = this.mMotionViewOriginalTop + iMax;
        this.mBlockLayoutRequests = true;
        if (i7 > 0) {
            detachViewsFromParent(i6, i7);
            this.mRecycler.removeSkippedScrap();
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        offsetChildrenTopAndBottom(iMax2);
        if (z4) {
            this.mFirstPosition += i7;
        }
        int iAbs = Math.abs(iMax2);
        if (i10 < iAbs || height < iAbs) {
            fillGap(z4);
        }
        if (zIsInTouchMode || (i8 = this.mSelectedPosition) == -1) {
            int i19 = this.mSelectorPosition;
            if (i19 != -1) {
                int i20 = i19 - this.mFirstPosition;
                if (i20 >= 0 && i20 < getChildCount()) {
                    positionSelector(-1, getChildAt(i20));
                }
            } else {
                this.mSelectorRect.setEmpty();
            }
        } else {
            int i21 = i8 - this.mFirstPosition;
            if (i21 >= 0 && i21 < getChildCount()) {
                positionSelector(this.mSelectedPosition, getChildAt(i21));
            }
        }
        this.mBlockLayoutRequests = false;
        invokeOnItemScrollListener();
        return false;
    }

    public void updateScrollIndicators() {
        if (this.mScrollUp != null) {
            boolean z2 = this.mFirstPosition > 0;
            if (!z2 && getChildCount() > 0) {
                z2 = getChildAt(0).getTop() < this.mListPadding.top;
            }
            this.mScrollUp.setVisibility(z2 ? 0 : 4);
        }
        if (this.mScrollDown != null) {
            int childCount = getChildCount();
            boolean z3 = this.mFirstPosition + childCount < this.mItemCount;
            if (!z3 && childCount > 0) {
                z3 = getChildAt(childCount - 1).getBottom() > this.mBottom - this.mListPadding.bottom;
            }
            this.mScrollDown.setVisibility(z3 ? 0 : 4);
        }
    }

    public void updateSelectorState() {
        if (this.mSelector != null) {
            if (shouldShowSelector()) {
                this.mSelector.setState(getDrawableState());
            } else {
                this.mSelector.setState(StateSet.NOTHING);
            }
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return this.mSelector == drawable || super.verifyDrawable(drawable);
    }

    public static class LayoutParams extends ViewGroup.LayoutParams {

        @ViewDebug.ExportedProperty(category = "list")
        public boolean forceAdd;
        public long itemId;

        @ViewDebug.ExportedProperty(category = "list")
        public boolean recycledHeaderFooter;
        public int scrappedFromPosition;

        @ViewDebug.ExportedProperty(category = "list", mapping = {@ViewDebug.IntToString(from = -1, to = "ITEM_VIEW_TYPE_IGNORE"), @ViewDebug.IntToString(from = -2, to = "ITEM_VIEW_TYPE_HEADER_OR_FOOTER")})
        public int viewType;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.itemId = -1L;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.itemId = -1L;
        }

        public LayoutParams(int i2, int i3, int i4) {
            super(i2, i3);
            this.itemId = -1L;
            this.viewType = i4;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.itemId = -1L;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != null) {
            boolean zHasStableIds = this.mAdapter.hasStableIds();
            this.mAdapterHasStableIds = zHasStableIds;
            if (this.mChoiceMode != 0 && zHasStableIds && this.mCheckedIdStates == null) {
                this.mCheckedIdStates = new LongSparseArray<>();
            }
        }
        SparseBooleanArray sparseBooleanArray = this.mCheckStates;
        if (sparseBooleanArray != null) {
            sparseBooleanArray.clear();
        }
        LongSparseArray<Integer> longSparseArray = this.mCheckedIdStates;
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public void setSelector(Drawable drawable) {
        Drawable drawable2 = this.mSelector;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.mSelector);
        }
        this.mSelector = drawable;
        Rect rect = new Rect();
        drawable.getPadding(rect);
        this.mSelectionLeftPadding = rect.left;
        this.mSelectionTopPadding = rect.top;
        this.mSelectionRightPadding = rect.right;
        this.mSelectionBottomPadding = rect.bottom;
        drawable.setCallback(this);
        updateSelectorState();
    }

    public void smoothScrollBy(int i2, int i3, boolean z2) {
        if (this.mFlingRunnable == null) {
            this.mFlingRunnable = new FlingRunnable();
        }
        int i4 = this.mFirstPosition;
        int childCount = getChildCount();
        int i5 = i4 + childCount;
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (i2 != 0 && this.mItemCount != 0 && childCount != 0 && ((i4 != 0 || getChildAt(0).getTop() != paddingTop || i2 >= 0) && (i5 != this.mItemCount || getChildAt(childCount - 1).getBottom() != height || i2 <= 0))) {
            reportScrollStateChange(2);
            this.mFlingRunnable.startScroll(i2, i3, z2);
            return;
        }
        this.mFlingRunnable.endFling();
        PositionScroller positionScroller = this.mPositionScroller;
        if (positionScroller != null) {
            positionScroller.stop();
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void smoothScrollToPosition(int i2, int i3) {
        if (this.mPositionScroller == null) {
            this.mPositionScroller = new PositionScroller();
        }
        this.mPositionScroller.start(i2, i3);
    }

    public void smoothScrollToPositionFromTop(int i2, int i3) {
        if (this.mPositionScroller == null) {
            this.mPositionScroller = new PositionScroller();
        }
        this.mPositionScroller.startWithOffset(i2, i3);
    }

    private void positionSelector(int i2, int i3, int i4, int i5) {
        this.mSelectorRect.set(i2 - this.mSelectionLeftPadding, i3 - this.mSelectionTopPadding, i4 + this.mSelectionRightPadding, i5 + this.mSelectionBottomPadding);
    }

    public AbsListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.absListViewStyle);
    }

    public AbsListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mChoiceMode = 0;
        this.mLayoutMode = 0;
        this.mDeferNotifyDataSetChanged = false;
        this.mDrawSelectorOnTop = false;
        this.mSelectorPosition = -1;
        this.mSelectorRect = new Rect();
        this.mRecycler = new RecycleBin();
        this.mSelectionLeftPadding = 0;
        this.mSelectionTopPadding = 0;
        this.mSelectionRightPadding = 0;
        this.mSelectionBottomPadding = 0;
        this.mListPadding = new Rect();
        this.mWidthMeasureSpec = 0;
        this.mTouchMode = -1;
        this.mSelectedTop = 0;
        this.mSmoothScrollbarEnabled = true;
        this.mResurrectToPosition = -1;
        this.mContextMenuInfo = null;
        this.mLastTouchMode = -1;
        this.mScrollProfilingStarted = false;
        this.mFlingProfilingStarted = false;
        this.mScrollStrictSpan = null;
        this.mFlingStrictSpan = null;
        this.mLastScrollState = 0;
        this.mVelocityScale = 1.0f;
        this.mIsScrap = new boolean[1];
        this.mActivePointerId = -1;
        this.mDirection = 0;
        initAbsListView();
        this.mOwnerThread = Thread.currentThread();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AbsListView, i2, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setSelector(drawable);
        }
        this.mDrawSelectorOnTop = typedArrayObtainStyledAttributes.getBoolean(1, false);
        setStackFromBottom(typedArrayObtainStyledAttributes.getBoolean(2, false));
        setScrollingCacheEnabled(typedArrayObtainStyledAttributes.getBoolean(3, true));
        setTextFilterEnabled(typedArrayObtainStyledAttributes.getBoolean(4, false));
        setTranscriptMode(typedArrayObtainStyledAttributes.getInt(5, 0));
        setCacheColorHint(typedArrayObtainStyledAttributes.getColor(6, 0));
        setFastScrollEnabled(typedArrayObtainStyledAttributes.getBoolean(8, false));
        setSmoothScrollbarEnabled(typedArrayObtainStyledAttributes.getBoolean(9, true));
        setChoiceMode(typedArrayObtainStyledAttributes.getInt(7, 0));
        setFastScrollAlwaysVisible(typedArrayObtainStyledAttributes.getBoolean(10, false));
        typedArrayObtainStyledAttributes.recycle();
    }
}
