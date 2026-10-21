.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field public static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field public static final LAYOUT_FORCE_TOP:I = 0x1

.field public static final LAYOUT_MOVE_SELECTION:I = 0x6

.field public static final LAYOUT_NORMAL:I = 0x0

.field public static final LAYOUT_SET_SELECTION:I = 0x2

.field public static final LAYOUT_SPECIFIC:I = 0x4

.field public static final LAYOUT_SYNC:I = 0x5

.field public static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field public static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field public static final TOUCH_MODE_DOWN:I = 0x0

.field public static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field public static final TOUCH_MODE_OVERFLING:I = 0x6

.field public static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field public static final TOUCH_MODE_REST:I = -0x1

.field public static final TOUCH_MODE_SCROLL:I = 0x3

.field public static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field public static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAdapterHasStableIds:Z

.field private mCacheColorHint:I

.field public mCachingActive:Z

.field public mCachingStarted:Z

.field public mCheckStates:Landroid/util/SparseBooleanArray;

.field public mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckedItemCount:I

.field public mChoiceActionMode:Landroid/view/ActionMode;

.field public mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field public mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field public mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field public mFastScrollAlwaysVisible:Z

.field public mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mIsChildViewEnabled:Z

.field public final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field public mLastY:I

.field public mLayoutMode:I

.field public mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field public mMotionCorrection:I

.field public mMotionPosition:I

.field public mMotionViewNewTop:I

.field public mMotionViewOriginalTop:I

.field public mMotionX:I

.field public mMotionY:I

.field public mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field public mOverflingDistance:I

.field public mOverscrollDistance:I

.field public mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field public mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field public mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field public mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field public final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field public mResurrectToPosition:I

.field public mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field public mScrollUp:Landroid/view/View;

.field public mScrollingCacheEnabled:Z

.field public mSelectedTop:I

.field public mSelectionBottomPadding:I

.field public mSelectionLeftPadding:I

.field public mSelectionRightPadding:I

.field public mSelectionTopPadding:I

.field public mSelector:Landroid/graphics/drawable/Drawable;

.field public mSelectorPosition:I

.field public mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field public mStackFromBottom:Z

.field public mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field public mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field public mWidthMeasureSpec:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 3
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 5
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 8
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 9
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 10
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 11
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 12
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 13
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 14
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 15
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 16
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 18
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    const/4 v3, 0x0

    .line 19
    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 20
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 21
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 22
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 23
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 24
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 25
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    new-array v3, v2, [Z

    .line 27
    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 28
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 29
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 30
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 32
    invoke-virtual {p0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 33
    sget-object v0, Li/a;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    .line 36
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 39
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 40
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 41
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 43
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 44
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 45
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 46
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 47
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 48
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 49
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 50
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 51
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 52
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    const/4 v2, 0x1

    .line 53
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 54
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    const/4 v3, 0x0

    .line 55
    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 56
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 57
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 58
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 59
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 60
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 61
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 62
    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    new-array v3, v2, [Z

    .line 63
    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 64
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 65
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 66
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 68
    sget-object v1, Li/a;->AbsListView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_0
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    const/4 p2, 0x2

    .line 72
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 73
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    const/4 p2, 0x3

    .line 74
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 75
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    const/4 p2, 0x4

    .line 76
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 77
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    const/4 p2, 0x5

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 79
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    const/4 p2, 0x6

    .line 80
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 81
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    const/16 p2, 0x8

    .line 82
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 83
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    const/16 p2, 0x9

    .line 84
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 85
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    const/4 p2, 0x7

    .line 86
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    const/16 p2, 0xa

    .line 87
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic access$000(Landroid/widget/AbsListView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/AbsListView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method public static synthetic access$1002(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic access$1100(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return p0
.end method

.method public static synthetic access$1200(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method public static synthetic access$1400(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return p0
.end method

.method public static synthetic access$1500(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return p0
.end method

.method public static synthetic access$1600(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p0
.end method

.method public static synthetic access$1602(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method public static synthetic access$1700(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$1800(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$1900(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$2000(Landroid/widget/AbsListView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static synthetic access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static synthetic access$2300(Landroid/widget/AbsListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method public static synthetic access$2400(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mPaddingBottom:I

    return p0
.end method

.method public static synthetic access$2500(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mPaddingTop:I

    return p0
.end method

.method public static synthetic access$2600(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mPaddingBottom:I

    return p0
.end method

.method public static synthetic access$2700(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mPaddingTop:I

    return p0
.end method

.method public static synthetic access$2800(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$2900(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3000(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$3100(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3200(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$3300(Landroid/widget/AbsListView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public static synthetic access$3400(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return p0
.end method

.method public static synthetic access$3500(Landroid/widget/AbsListView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public static synthetic access$3600(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3700(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method public static synthetic access$3900(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$4000(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$4100(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$4200(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$4300(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$4400(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$4500(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$4600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$4700(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$4800(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$4900(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$500(Landroid/widget/AbsListView;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p0
.end method

.method public static synthetic access$702(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method private clearScrollingCache()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    if-gt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method private createScrollingCache()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 4
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x2

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v0, 0x10301ef

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v0, 0x10301f0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void
.end method

.method private dismissPopup()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    return-void
.end method

.method public static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_4

    const/16 v0, 0x11

    if-eq p2, v0, :cond_3

    const/16 v0, 0x21

    if-eq p2, v0, :cond_2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-ne p2, v0, :cond_0

    .line 1
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 2
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 4
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 7
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    .line 8
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 9
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_0

    .line 10
    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 11
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 12
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 13
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 14
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 15
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    .line 16
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 17
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_0

    .line 18
    :cond_4
    iget p2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 19
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    .line 20
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 21
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    :goto_0
    add-int/2addr p1, v2

    :goto_1
    sub-int/2addr v0, p2

    sub-int/2addr p1, p0

    mul-int/2addr p1, p1

    mul-int/2addr v0, v0

    add-int/2addr p1, v0

    return p1
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900b7

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v1, 0xb1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 6
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method private initAbsListView()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 6
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/widget/AbsListView;->mDensityScale:F

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isOwnerThread()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3
    iget v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 6
    iput v1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method private onTouchCancel()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 2
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 7
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 11
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 14
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 15
    :cond_4
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return-void
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 2
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    :cond_0
    const/4 v1, 0x5

    .line 6
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 9
    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 10
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 11
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 14
    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 15
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_4

    .line 16
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 17
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    const/4 v3, 0x3

    .line 18
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 19
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 20
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v3

    .line 21
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    goto :goto_0

    :cond_2
    if-ltz v3, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 23
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 24
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 25
    new-instance v0, Landroid/widget/AbsListView$CheckForTap;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 26
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    if-ltz v3, :cond_5

    .line 27
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 29
    :cond_5
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 30
    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 31
    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/high16 v0, -0x80000000

    .line 32
    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 33
    :goto_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v0, v1

    .line 3
    :cond_0
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 5
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 6
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_3

    const/4 p1, 0x3

    if-eq v3, p1, :cond_2

    const/4 p1, 0x5

    if-eq v3, p1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->scrollIfNeeded(I)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    int-to-float v0, v2

    .line 10
    iget v2, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v2, v2

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/View;->pointInView(FFF)Z

    move-result p1

    if-nez p1, :cond_7

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 12
    iget p1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 14
    :cond_5
    iget p1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez p1, :cond_6

    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :cond_7
    :goto_1
    return-void
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v3, :cond_b

    const/4 v5, 0x2

    if-eq v0, v5, :cond_b

    const/4 p1, 0x3

    const/16 v3, 0x3e8

    if-eq v0, p1, :cond_3

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {p1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4
    :cond_1
    iget-object p1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    float-to-int p1, p1

    .line 7
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v0, v3, :cond_2

    .line 9
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_5

    .line 10
    :cond_2
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_5

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_a

    .line 12
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v6, p1, -0x1

    .line 13
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 14
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .line 16
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v9, :cond_4

    if-lt v0, v7, :cond_4

    add-int/2addr v9, p1

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v9, v10, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v9, v8

    if-gt v6, v9, :cond_4

    .line 17
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 18
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_5

    .line 19
    :cond_4
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    iget v10, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v9, v3, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 21
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {v9, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    iget v9, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    .line 22
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v9, v10, :cond_8

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v9, :cond_5

    iget v10, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    sub-int/2addr v7, v10

    if-eq v0, v7, :cond_8

    :cond_5
    add-int/2addr v9, p1

    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v9, p1, :cond_6

    iget p1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    add-int/2addr v8, p1

    if-eq v6, v8, :cond_8

    .line 23
    :cond_6
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez p1, :cond_7

    .line 24
    new-instance p1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {p1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 25
    :cond_7
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 26
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_5

    .line 27
    :cond_8
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 28
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 29
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz p1, :cond_9

    .line 30
    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 31
    :cond_9
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz p1, :cond_16

    .line 32
    invoke-virtual {p1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto/16 :goto_5

    .line 33
    :cond_a
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 34
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_5

    .line 35
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 36
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v5, v0, v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 37
    iget v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v6, :cond_c

    .line 38
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 39
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 40
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v6, p1, v6

    if-lez v6, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float p1, p1, v6

    if-gez p1, :cond_d

    move p1, v3

    goto :goto_0

    :cond_d
    move p1, v4

    :goto_0
    if-eqz p1, :cond_15

    .line 41
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-nez p1, :cond_15

    .line 42
    iget-object p1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-nez p1, :cond_e

    .line 43
    new-instance p1, Landroid/widget/AbsListView$PerformClick;

    invoke-direct {p1, p0, v1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 44
    :cond_e
    iget-object p1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 45
    iput v0, p1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 46
    invoke-virtual {p1}, Landroid/widget/AbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 47
    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 48
    iget v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v6, :cond_10

    if-ne v6, v3, :cond_f

    goto :goto_1

    .line 49
    :cond_f
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_15

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 50
    invoke-virtual {p1}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_4

    :cond_10
    :goto_1
    if-nez v6, :cond_11

    .line 51
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    goto :goto_2

    :cond_11
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 52
    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 53
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 55
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 57
    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    .line 58
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 59
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 60
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 62
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_12

    .line 63
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 64
    :cond_12
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 66
    :cond_13
    new-instance v0, Landroid/widget/AbsListView$3;

    invoke-direct {v0, p0, v5, p1}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 67
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 68
    :cond_14
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 69
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :goto_3
    return-void

    .line 70
    :cond_15
    :goto_4
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 71
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 72
    :cond_16
    :goto_5
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 73
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_17

    .line 74
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 75
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 76
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 77
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 78
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 79
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 80
    iget-object p1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz p1, :cond_18

    .line 81
    invoke-virtual {p1}, Landroid/os/StrictMode$Span;->finish()V

    .line 82
    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_18
    return-void
.end method

.method private positionPopup()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 3
    aget v2, v1, v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 4
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v1, v1, v3

    invoke-virtual {v2, p0, v4, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v1, v1, v3

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void
.end method

.method private positionSelector(IIII)V
    .locals 2

    .line 12
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr p2, v1

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr p3, v1

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr p4, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private scrollIfNeeded(I)V
    .locals 20

    move-object/from16 v10, p0

    move/from16 v11, p1

    .line 1
    iget v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v12, v11, v0

    .line 2
    iget v0, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v0, v12, v0

    .line 3
    iget v1, v10, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    sub-int v2, v11, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 4
    :goto_0
    iget v3, v10, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/4 v9, 0x0

    if-ne v3, v14, :cond_d

    .line 5
    iget-object v1, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_1

    const-string v1, "AbsListView-scroll"

    .line 6
    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 7
    :cond_1
    iget v1, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v11, v1, :cond_1c

    .line 8
    iget v1, v10, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-nez v1, :cond_2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v3, :cond_2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v1, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 11
    :cond_2
    iget v1, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v1, :cond_3

    .line 12
    iget v3, v10, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 14
    :goto_1
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_2

    :cond_4
    move v3, v9

    :goto_2
    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {v10, v0, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v9

    .line 17
    :goto_3
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz v0, :cond_b

    neg-int v0, v2

    sub-int/2addr v1, v3

    sub-int v14, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 19
    iget v4, v10, Landroid/view/View;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v2, v14

    move v13, v9

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 20
    iget v0, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Landroid/view/View;->mScrollY:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 21
    iget-object v0, v10, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 23
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v15, :cond_b

    .line 24
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    if-nez v0, :cond_b

    .line 25
    :cond_7
    iput v13, v10, Landroid/widget/AbsListView;->mDirection:I

    const/4 v0, 0x5

    .line 26
    iput v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    if-lez v12, :cond_9

    .line 27
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 28
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_8

    .line 29
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 30
    :cond_8
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v13}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_9
    if-gez v12, :cond_b

    .line 31
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 32
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a

    .line 33
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 34
    :cond_a
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v15}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 35
    :cond_b
    :goto_4
    iput v11, v10, Landroid/widget/AbsListView;->mMotionY:I

    .line 36
    :cond_c
    iput v11, v10, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_a

    :cond_d
    move v13, v9

    const/4 v0, 0x5

    if-ne v3, v0, :cond_1c

    if-eq v11, v1, :cond_1c

    .line 37
    iget v4, v10, Landroid/view/View;->mScrollY:I

    sub-int v0, v4, v2

    if-le v11, v1, :cond_e

    move v9, v15

    goto :goto_5

    :cond_e
    const/4 v1, -0x1

    move v9, v1

    .line 38
    :goto_5
    iget v1, v10, Landroid/widget/AbsListView;->mDirection:I

    if-nez v1, :cond_f

    .line 39
    iput v9, v10, Landroid/widget/AbsListView;->mDirection:I

    :cond_f
    neg-int v1, v2

    if-gez v0, :cond_10

    if-gez v4, :cond_11

    :cond_10
    if-lez v0, :cond_12

    if-gtz v4, :cond_12

    :cond_11
    neg-int v1, v4

    add-int v0, v2, v1

    move v7, v0

    move v8, v1

    goto :goto_6

    :cond_12
    move v8, v1

    move v7, v13

    :goto_6
    if-eqz v8, :cond_17

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    .line 40
    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v18, v2

    move v2, v8

    move v14, v7

    move/from16 v7, v16

    move v13, v8

    move/from16 v8, v18

    move/from16 v19, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_13

    if-ne v0, v15, :cond_18

    .line 42
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_13
    if-lez v12, :cond_15

    .line 43
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 44
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    .line 45
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 46
    :cond_14
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_15
    if-gez v12, :cond_18

    .line 47
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 48
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_16

    .line 49
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 50
    :cond_16
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v15}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_17
    move v14, v7

    move/from16 v19, v9

    :cond_18
    :goto_7
    if-eqz v14, :cond_1b

    .line 51
    iget v0, v10, Landroid/view/View;->mScrollY:I

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 52
    iput v0, v10, Landroid/view/View;->mScrollY:I

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_8

    :cond_19
    const/4 v0, 0x0

    .line 54
    :goto_8
    invoke-virtual {v10, v14, v14}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    const/4 v1, 0x3

    .line 55
    iput v1, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 56
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v1

    .line 57
    iput v0, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 58
    iget v2, v10, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v2, v1, v2

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    goto :goto_9

    :cond_1a
    move v9, v0

    :goto_9
    iput v9, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 60
    iput v11, v10, Landroid/widget/AbsListView;->mMotionY:I

    .line 61
    iput v1, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 62
    :cond_1b
    iput v11, v10, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v15, v19

    .line 63
    iput v15, v10, Landroid/widget/AbsListView;->mDirection:I

    :cond_1c
    :goto_a
    return-void
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Landroid/widget/FastScroller;

    invoke-direct {p1, p0}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 6
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/widget/FastScroller;->updateLayout()V

    :cond_2
    return-void
.end method

.method private showPopup()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 3
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p1, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3
    iget v2, p0, Landroid/view/View;->mScrollY:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_2

    .line 4
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_1

    goto :goto_1

    :cond_1
    return v4

    .line 5
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    if-eqz v2, :cond_3

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7
    iput v4, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_3

    :cond_3
    const/4 v1, 0x3

    .line 8
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-lez v0, :cond_4

    .line 9
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    goto :goto_2

    :cond_4
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 10
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 12
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 14
    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 17
    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->scrollIfNeeded(I)V

    return v3
.end method

.method private updateOnScreenCheckedViews()V
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v0, v3

    .line 5
    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_1

    .line 6
    check-cast v4, Landroid/widget/Checkable;

    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setActivated(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v1, v3

    .line 5
    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public canScrollList(I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v4, 0x1

    if-lez p1, :cond_3

    add-int/lit8 p1, v0, -0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr v2, v0

    .line 5
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_2

    :cond_1
    move v1, v4

    :cond_2
    return v1

    .line 6
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gtz v2, :cond_4

    .line 7
    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    return v1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/widget/AbsListView$LayoutParams;

    return p1
.end method

.method public clearChoices()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 2
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    mul-int/lit8 v2, v0, 0x64

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    mul-int/lit8 v4, v4, 0x64

    .line 6
    div-int/2addr v4, v1

    add-int/2addr v2, v4

    :cond_0
    sub-int/2addr v0, v3

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v2, v1

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    if-lez v1, :cond_3

    .line 3
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v3, v3, 0x64

    .line 7
    div-int/2addr v3, v1

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 8
    :cond_0
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int v2, v0, v1

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_0

    .line 9
    :cond_2
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_3
    return v2
.end method

.method public computeVerticalScrollRange()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_1

    int-to-float v1, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    :cond_1
    :goto_0
    return v0
.end method

.method public confirmCheckedPositionsById()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 3
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 4
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 5
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v6}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    cmp-long v3, v7, v3

    const/4 v10, 0x1

    if-eqz v3, :cond_3

    add-int/lit8 v3, v6, -0x14

    .line 6
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v6, 0x14

    .line 7
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    .line 8
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v11

    cmp-long v5, v7, v11

    if-nez v5, :cond_0

    .line 9
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 10
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    move v3, v10

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_2
    if-nez v3, :cond_4

    .line 11
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v7, v8}, Landroid/util/LongSparseArray;->delete(J)V

    add-int/lit8 v1, v1, -0x1

    .line 12
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v2, v10

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 13
    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_2

    const/4 v9, 0x0

    .line 14
    invoke-virtual/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_2
    move v2, v10

    goto :goto_3

    .line 15
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v6, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_4
    :goto_3
    add-int/2addr v1, v10

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 16
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_6
    return-void
.end method

.method public createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 4
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 5
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v3, v7

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v7

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v3, v7

    iget v7, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v4, v7

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v7

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v4, v7

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v3, v3, -0x23

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7
    :cond_1
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    if-nez v3, :cond_2

    .line 8
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 9
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_3

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 12
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_4
    return-void
.end method

.method public dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    .line 3
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 4
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 6
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    add-int/2addr v3, v4

    .line 7
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    add-int/2addr v2, v4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    .line 9
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v2, v1

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v6, v3

    int-to-float v7, v2

    .line 10
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 12
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setPosition(II)V

    .line 14
    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v5}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 15
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 16
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 18
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    add-int/2addr v3, v4

    .line 19
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    add-int/2addr v2, v4

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v5, v4

    add-int/2addr v5, v3

    .line 22
    iget v3, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v3, v5

    int-to-float v6, v1

    .line 23
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43340000    # 180.0f

    int-to-float v6, v4

    const/4 v7, 0x0

    .line 24
    invoke-virtual {p1, v3, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 25
    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 26
    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    add-int/2addr v5, v4

    invoke-virtual {v2, v5, v1}, Landroid/widget/EdgeEffect;->setPosition(II)V

    .line 28
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 29
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    return-void
.end method

.method public abstract fillGap(Z)V
.end method

.method public findClosestMotionRow(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method public abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    invoke-super {p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 7
    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v2, v4

    if-le v0, v5, :cond_2

    sub-int/2addr v0, v2

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-float v1, v0, v3

    :cond_2
    return v1
.end method

.method public getBottomPaddingOffset()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    :goto_0
    return v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 3
    new-array v3, v2, [J

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    new-array v0, v1, [J

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLeftPaddingOffset()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getRightPaddingOffset()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_0
    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopFadingEdgeStrength()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    invoke-super {p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 6
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v0, v3, :cond_2

    sub-int/2addr v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    div-float v1, v0, v2

    :cond_2
    return v1
.end method

.method public getTopPaddingOffset()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method public handleDataChanged()V
    .locals 11

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2
    iget v1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 3
    iput v0, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 4
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 6
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_f

    .line 7
    iget-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v6, :cond_a

    .line 8
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 9
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 10
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 11
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    :cond_1
    if-ne v6, v5, :cond_5

    .line 12
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_2

    .line 13
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 14
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v9, v6, -0x1

    .line 17
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 18
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_0

    :cond_3
    move v9, v8

    .line 19
    :goto_0
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v6

    if-lt v10, v1, :cond_4

    if-gt v9, v8, :cond_4

    .line 20
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    .line 21
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 22
    :cond_5
    iget v1, p0, Landroid/widget/AdapterView;->mSyncMode:I

    const/4 v6, 0x5

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 24
    iget v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    return-void

    .line 25
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 27
    iget v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    return-void

    .line 28
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v1

    if-ltz v1, :cond_a

    .line 29
    invoke-virtual {p0, v1, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v8

    if-ne v8, v1, :cond_a

    .line 30
    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 31
    iget-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_9

    .line 32
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_1

    .line 33
    :cond_9
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 34
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    return-void

    .line 35
    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_e

    .line 36
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-lt v1, v0, :cond_b

    add-int/lit8 v1, v0, -0x1

    :cond_b
    if-gez v1, :cond_c

    move v1, v4

    .line 37
    :cond_c
    invoke-virtual {p0, v1, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-ltz v0, :cond_d

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    return-void

    .line 39
    :cond_d
    invoke-virtual {p0, v1, v4}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-ltz v0, :cond_f

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    return-void

    .line 41
    :cond_e
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v0, :cond_f

    return-void

    .line 42
    :cond_f
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_10
    move v3, v5

    :goto_3
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const-wide/high16 v5, -0x8000000000000000L

    .line 44
    iput-wide v5, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 45
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 46
    iput-wide v5, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 47
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 48
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 49
    iput v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 50
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    return-void
.end method

.method public hasTextFilter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public hideSelector()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2
    iget v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 3
    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_1

    if-eq v2, v0, :cond_1

    .line 5
    iput v2, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invokeOnItemScrollListener()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInFilterMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPaddingOffsetRequired()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method public isVerticalScrollBarHidden()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public keyPressed()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 5
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 8
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 12
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 13
    :cond_4
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    .line 14
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_7

    .line 15
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v0, :cond_6

    .line 16
    new-instance v0, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 17
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v0}, Landroid/widget/AbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 18
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public layoutChildren()V
    .locals 0

    return-void
.end method

.method public obtainView(I[Z)Landroid/view/View;
    .locals 6

    const-wide/16 v0, 0x8

    const-string v2, "obtainView"

    .line 1
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x0

    .line 2
    aput-boolean v2, p2, v2

    .line 3
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 5
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eq v0, v3, :cond_0

    .line 7
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, v0, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 8
    :cond_0
    aput-boolean v4, p2, v2

    return-object v3

    .line 9
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    .line 10
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-eqz v3, :cond_4

    if-eq v5, v3, :cond_2

    .line 11
    iget-object p2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {p2, v3, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_0

    .line 12
    :cond_2
    aput-boolean v4, p2, v2

    .line 13
    invoke-virtual {v5}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {v5}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 15
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 16
    :cond_4
    :goto_0
    iget p2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz p2, :cond_5

    .line 17
    invoke-virtual {v5, p2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 18
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_6

    .line 19
    invoke-virtual {v5, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 20
    :cond_6
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz p2, :cond_9

    .line 21
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_7

    .line 22
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/AbsListView$LayoutParams;

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 24
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/AbsListView$LayoutParams;

    goto :goto_1

    .line 25
    :cond_8
    check-cast p2, Landroid/widget/AbsListView$LayoutParams;

    .line 26
    :goto_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p2, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 27
    invoke-virtual {v5, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    :cond_9
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 29
    iget-object p1, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez p1, :cond_a

    .line 30
    new-instance p1, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {p1, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 31
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    if-nez p1, :cond_b

    .line 32
    iget-object p1, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v5, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 33
    :cond_b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v5
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 8
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 10
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 11
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    :cond_1
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 5
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 6
    aget v2, p1, v1

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 7
    array-length v2, p1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 4
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    :cond_0
    const/16 v0, 0xb1

    .line 5
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v0, 0x6

    .line 6
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7
    iget-object p1, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 6
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v2, :cond_1

    .line 10
    invoke-interface {v0, v2}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11
    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 12
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 14
    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 15
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 17
    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 18
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 22
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 26
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 28
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_8
    return-void
.end method

.method public onDisplayHint(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    :cond_2
    :goto_0
    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 6
    :goto_1
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 5
    iget p2, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput p2, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 6
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x9

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/16 v0, 0x2000

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1000

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_2

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 6
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    .line 8
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x20

    .line 11
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 12
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-eqz v0, :cond_8

    const/4 v4, -0x1

    if-eq v0, v3, :cond_7

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 6
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 7
    :cond_4
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v0, v2

    .line 10
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 11
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 12
    iget-object v1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 13
    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result p1

    if-eqz p1, :cond_b

    return v3

    .line 14
    :cond_7
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 15
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 16
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 17
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 18
    :cond_8
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v0, v1, :cond_c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    goto :goto_1

    .line 19
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 22
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v5

    const/4 v6, 0x4

    if-eq v0, v6, :cond_a

    if-ltz v5, :cond_a

    .line 23
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 24
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 25
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 26
    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 27
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 28
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 29
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    :cond_a
    const/high16 v1, -0x80000000

    .line 30
    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 31
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 32
    iget-object v1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-ne v0, v6, :cond_b

    return v3

    :cond_b
    :goto_0
    return v2

    .line 33
    :cond_c
    :goto_1
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 5
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setPressed(Z)V

    return v1

    .line 8
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    move p1, p4

    :goto_0
    if-ge p1, p2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {p1}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 7
    iput-boolean p4, p0, Landroid/widget/AdapterView;->mInLayout:Z

    sub-int/2addr p5, p3

    .line 8
    div-int/lit8 p5, p5, 0x3

    iput p5, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 9
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    iget p3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 4
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 5
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 6
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 7
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 8
    iget p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 13
    :goto_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, p1

    iget p1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v2, p1, :cond_2

    if-gt v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    :cond_3
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    iget p1, p0, Landroid/view/View;->mScrollY:I

    if-eq p1, p2, :cond_0

    .line 2
    iget p3, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, p3, p2, p3, p1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 3
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 5
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    :cond_0
    return v2

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 1
    check-cast p1, Landroid/widget/AbsListView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 4
    iget v1, p1, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 5
    iget-wide v1, p1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 6
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 7
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 8
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 9
    iget v0, p1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v0, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 10
    iget v0, p1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 12
    :cond_0
    iget-wide v1, p1, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v1, -0x1

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 15
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 16
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 17
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 18
    iget-wide v1, p1, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 19
    iget v1, p1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 20
    iget v1, p1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 21
    iput v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 23
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    .line 24
    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 25
    :cond_2
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_3

    .line 26
    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 27
    :cond_3
    iget v0, p1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 28
    iget-boolean p1, p1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz p1, :cond_4

    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz p1, :cond_4

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 30
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v0, :cond_0

    .line 5
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 6
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 7
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 8
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 9
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->height:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 10
    iget-object v2, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 11
    iget-boolean v2, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 12
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 13
    iget-object v2, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 14
    iget-object v0, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    return-object v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v4

    .line 17
    iput-wide v4, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v1, Landroid/widget/AbsListView$SavedState;->height:I

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v5, -0x1

    if-ltz v4, :cond_2

    .line 19
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 21
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    .line 22
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v0, :cond_4

    .line 23
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 25
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 26
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v0, v4, :cond_3

    add-int/lit8 v0, v4, -0x1

    .line 27
    :cond_3
    iput v0, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 28
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 29
    :cond_4
    iput v3, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 30
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 31
    iput v3, v1, Landroid/widget/AbsListView$SavedState;->position:I

    :goto_1
    const/4 v0, 0x0

    .line 32
    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 33
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_5

    .line 34
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 35
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 37
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 38
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 40
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    .line 41
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 42
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    :goto_3
    if-ge v3, v2, :cond_8

    .line 43
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 44
    :cond_8
    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 45
    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 46
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_a

    .line 47
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    :cond_a
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 4
    iget-object p4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p4

    if-nez p4, :cond_0

    if-lez p3, :cond_0

    .line 5
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    if-nez p3, :cond_1

    .line 7
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 9
    :cond_1
    :goto_0
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of p3, p2, Landroid/widget/Filterable;

    if-eqz p3, :cond_3

    .line 10
    check-cast p2, Landroid/widget/Filterable;

    invoke-interface {p2}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 3
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 8
    :cond_5
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 9
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 11
    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 12
    iget p1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 13
    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result p1

    if-ltz p1, :cond_7

    .line 15
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 17
    iput p1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 18
    :cond_7
    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 19
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 23
    iput v1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 24
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 25
    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 26
    iput p1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 27
    invoke-virtual {p0, v4, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_9

    .line 28
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 30
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 31
    :cond_9
    iput p1, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 32
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    goto :goto_0

    .line 33
    :cond_b
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 34
    :cond_c
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 35
    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    :goto_0
    return v2
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 6
    :cond_2
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 8
    :cond_3
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 10
    :cond_4
    iget p1, p0, Landroid/view/View;->mScrollY:I

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Landroid/view/View;->mScrollY:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 13
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 4
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 7
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 9
    :cond_0
    iget p1, p0, Landroid/view/View;->mScrollY:I

    if-eqz p1, :cond_1

    .line 10
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    if-ne v0, v1, :cond_5

    .line 15
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0

    .line 16
    :cond_2
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez p1, :cond_3

    .line 17
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 18
    :cond_3
    iget p1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, p1, :cond_5

    const/4 v3, -0x1

    if-eq p1, v3, :cond_5

    if-ne v0, v1, :cond_4

    .line 19
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 21
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 22
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 23
    :cond_5
    :goto_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    neg-int p1, p1

    .line 4
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return v0

    :cond_2
    return v2

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return v0

    :cond_4
    return v2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v3, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_5

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 8
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9
    :cond_1
    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    :cond_3
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    :cond_4
    :goto_0
    move v0, v2

    move v1, v0

    goto :goto_5

    :cond_5
    move v0, v2

    goto :goto_5

    .line 12
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    .line 13
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 14
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v8, :cond_7

    .line 15
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 16
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_8
    :goto_2
    if-eqz v8, :cond_9

    .line 17
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .line 18
    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 19
    :goto_3
    iget-object v4, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_a

    .line 20
    iget-object v3, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_4

    :cond_a
    move v1, v2

    :goto_4
    move v0, v1

    move v1, v2

    :goto_5
    if-eqz v1, :cond_b

    .line 21
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    :cond_b
    move v1, v2

    move v2, v0

    :cond_c
    if-eqz v2, :cond_d

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_d
    return v1
.end method

.method public performLongPress(Landroid/view/View;IJ)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2
    iget-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 p3, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p2, p3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return p3

    .line 5
    :cond_1
    iget-object v2, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v2, :cond_2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 6
    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 8
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_4
    return v0
.end method

.method public pointToPosition(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public pointToRowId(II)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
.end method

.method public positionSelector(ILandroid/view/View;)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    instance-of v1, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, p2

    check-cast v1, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v1, p1}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 6
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, p1}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 7
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, p1, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 10
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_2
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/AbsListView$RecycleBin;->access$3800(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v4, :cond_0

    .line 5
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v4, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1, v3}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public reconcileSelectedPosition()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    .line 2
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public reportScrollStateChange(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4
    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestLayoutIfNecessary()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public resetList()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 5
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 6
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    .line 8
    iput-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 11
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 12
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 13
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public resurrectSelection()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 3
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    .line 4
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5
    iget v5, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    const/4 v6, 0x1

    if-lt v5, v2, :cond_2

    add-int v7, v2, v0

    if-ge v5, v7, :cond_2

    sub-int v0, v5, v2

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v3, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    add-int v7, v3, v0

    goto :goto_1

    :cond_1
    if-le v8, v4, :cond_8

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    sub-int v7, v4, v0

    goto :goto_1

    :cond_2
    if-ge v5, v2, :cond_9

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_7

    .line 11
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 12
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-nez v4, :cond_5

    if-gtz v2, :cond_3

    if-ge v7, v3, :cond_4

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    :cond_4
    move v5, v7

    :cond_5
    if-lt v7, v3, :cond_6

    add-int/2addr v4, v2

    move v5, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    move v7, v5

    move v5, v2

    :cond_8
    :goto_1
    move v0, v6

    goto :goto_3

    .line 14
    :cond_9
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int v5, v2, v0

    add-int/lit8 v7, v5, -0x1

    sub-int/2addr v0, v6

    move v9, v0

    move v8, v1

    :goto_2
    if-ltz v9, :cond_e

    .line 15
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 16
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 17
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    if-ne v9, v0, :cond_c

    if-lt v5, v3, :cond_a

    if-le v10, v4, :cond_b

    .line 18
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v8

    sub-int/2addr v4, v8

    :cond_b
    move v8, v11

    :cond_c
    if-gt v10, v4, :cond_d

    add-int v5, v2, v9

    move v0, v1

    move v7, v11

    goto :goto_3

    :cond_d
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_e
    move v0, v1

    move v5, v7

    move v7, v8

    :goto_3
    const/4 v3, -0x1

    .line 19
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 20
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v4, :cond_f

    .line 22
    invoke-virtual {v4}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 23
    :cond_f
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 24
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 25
    iput v7, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 26
    invoke-virtual {p0, v5, v0}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-lt v0, v2, :cond_10

    .line 27
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v2, :cond_10

    const/4 v2, 0x4

    .line 28
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 29
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    move v3, v0

    .line 32
    :cond_10
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    if-ltz v3, :cond_11

    move v1, v6

    :cond_11
    return v1
.end method

.method public resurrectSelectionIfNeeded()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scrollListBy(I)V
    .locals 0

    neg-int p1, p1

    .line 1
    invoke-virtual {p0, p1, p1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    .line 3
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 5
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    move v3, v1

    move v0, v2

    goto :goto_2

    :cond_1
    :pswitch_0
    move v0, v1

    move v3, v0

    goto :goto_2

    .line 2
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    move v3, v1

    goto :goto_2

    .line 3
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    move v0, v2

    goto :goto_1

    .line 7
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 8
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_1
    move v3, v0

    move v0, v1

    :goto_2
    if-eqz v0, :cond_b

    .line 9
    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 10
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, p3

    .line 12
    :goto_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_a

    if-eq v1, v2, :cond_9

    const/4 v0, 0x2

    if-eq v1, v0, :cond_8

    goto :goto_4

    .line 13
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_4

    .line 14
    :cond_9
    iget-object p2, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_4

    .line 15
    :cond_a
    iget-object p2, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :cond_b
    :goto_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 3
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7
    :cond_1
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v0, :cond_1

    .line 2
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 2
    iget-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 5
    :cond_0
    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 10
    :cond_2
    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 4
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 5
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 3
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 7
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 10
    iget-object p1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    :cond_1
    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-boolean p3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    :cond_1
    return p1
.end method

.method public setFriction(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$1300(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    if-eqz p2, :cond_2

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-nez p2, :cond_5

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    :cond_5
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v0, :cond_6

    .line 10
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    :cond_6
    if-eqz p2, :cond_8

    .line 11
    iget-object p2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v0, :cond_7

    .line 12
    iget-object p2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 13
    :cond_7
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5

    .line 14
    :cond_8
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    if-nez p1, :cond_f

    .line 15
    :cond_9
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5

    .line 16
    :cond_a
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 17
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 18
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_b

    .line 19
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 20
    :cond_b
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_c
    :goto_3
    if-eq v0, p2, :cond_e

    if-eqz p2, :cond_d

    .line 21
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_4

    .line 22
    :cond_d
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 23
    :cond_e
    :goto_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_f

    .line 24
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v7

    .line 25
    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v6, p1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 26
    :cond_f
    :goto_5
    iget-boolean p1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez p1, :cond_10

    .line 27
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 28
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 29
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    :cond_10
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    .line 2
    iput p2, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 4
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 6
    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$3802(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 3
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method public abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 8
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 10
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 11
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    :cond_0
    return-void
.end method

.method public setVisibleRangeHint(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    :cond_0
    return-void
.end method

.method public shouldShowSelector()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public showContextMenu(FFI)Z
    .locals 4

    float-to-int v0, p1

    float-to-int v1, p2

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    .line 3
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 5
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    const/4 v0, 0x0

    if-ltz v6, :cond_1

    .line 2
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v6}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v7

    .line 3
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_0

    move-object v0, v1

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    .line 4
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method public smoothScrollBy(IIZ)V
    .locals 6

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int v2, v0, v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz p1, :cond_3

    .line 8
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ne v0, v3, :cond_1

    if-ltz p1, :cond_3

    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v2, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ne v0, v4, :cond_2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 10
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 12
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    :cond_4
    :goto_1
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-le v1, v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v3, v0

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v2, v3

    div-float/2addr v0, v2

    const/high16 v2, 0x3f400000    # 0.75f

    if-gez p1, :cond_2

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    add-int/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public touchModeDrawsInPressedState()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public trackMotionScroll(II)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x0

    .line 2
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/lit8 v7, v3, -0x1

    .line 3
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 4
    iget-object v9, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5
    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v11, 0x22

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_1

    .line 6
    iget v10, v9, Landroid/graphics/Rect;->top:I

    .line 7
    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    move v10, v5

    move v12, v10

    :goto_0
    sub-int/2addr v10, v6

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int/2addr v13, v12

    sub-int v12, v8, v13

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    iget v14, v0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v13, v14

    iget v14, v0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v13, v14

    if-gez v1, :cond_2

    add-int/lit8 v14, v13, -0x1

    neg-int v14, v14

    .line 10
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_2
    add-int/lit8 v14, v13, -0x1

    .line 11
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    if-gez v2, :cond_3

    sub-int/2addr v13, v4

    neg-int v13, v13

    .line 12
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_3
    sub-int/2addr v13, v4

    .line 13
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 14
    :goto_2
    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v13, :cond_4

    .line 15
    iget v14, v9, Landroid/graphics/Rect;->top:I

    sub-int v14, v6, v14

    iput v14, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 16
    :cond_4
    iget v14, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v14, v2

    iput v14, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    :goto_3
    add-int v14, v13, v3

    .line 17
    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v14, v15, :cond_5

    .line 18
    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v8

    iput v5, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 19
    :cond_5
    iget v5, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v5, v2

    iput v5, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    :goto_4
    if-nez v13, :cond_6

    .line 20
    iget v5, v9, Landroid/graphics/Rect;->top:I

    if-lt v6, v5, :cond_6

    if-ltz v2, :cond_6

    move v5, v4

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    if-ne v14, v15, :cond_7

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v14

    if-gt v8, v6, :cond_7

    if-gtz v2, :cond_7

    move v6, v4

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    if-nez v5, :cond_1e

    if-eqz v6, :cond_8

    goto/16 :goto_e

    :cond_8
    if-gez v2, :cond_9

    move v5, v4

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    .line 22
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 24
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v8

    .line 25
    iget v14, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v15

    sub-int/2addr v14, v15

    if-eqz v5, :cond_10

    neg-int v7, v2

    .line 26
    iget v15, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v15, v11

    if-ne v15, v11, :cond_b

    .line 27
    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    :cond_b
    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_8
    if-ge v9, v3, :cond_f

    .line 28
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 29
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v4

    if-lt v4, v7, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v11, v11, 0x1

    add-int v4, v13, v9

    if-lt v4, v8, :cond_e

    if-ge v4, v14, :cond_e

    .line 30
    invoke-virtual {v15}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 31
    invoke-virtual {v15}, Landroid/view/View;->clearAccessibilityFocus()V

    :cond_d
    move/from16 v16, v3

    .line 32
    iget-object v3, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, v15, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_9

    :cond_e
    move/from16 v16, v3

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    :goto_a
    const/4 v4, 0x0

    goto :goto_c

    .line 33
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    .line 34
    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v4, v11

    if-ne v4, v11, :cond_11

    .line 35
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    :cond_11
    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_b
    if-ltz v7, :cond_15

    .line 36
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 37
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v15

    if-gt v15, v3, :cond_12

    goto :goto_c

    :cond_12
    add-int/lit8 v11, v11, 0x1

    add-int v4, v13, v7

    if-lt v4, v8, :cond_14

    if-ge v4, v14, :cond_14

    .line 38
    invoke-virtual {v9}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 39
    invoke-virtual {v9}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 40
    :cond_13
    iget-object v15, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v15, v9, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_14
    add-int/lit8 v4, v7, -0x1

    move/from16 v17, v7

    move v7, v4

    move/from16 v4, v17

    goto :goto_b

    .line 41
    :cond_15
    :goto_c
    iget v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    const/4 v1, 0x1

    .line 42
    iput-boolean v1, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-lez v11, :cond_16

    .line 43
    invoke-virtual {v0, v4, v11}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 44
    iget-object v1, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 45
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_17

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 47
    :cond_17
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    if-eqz v5, :cond_18

    .line 48
    iget v1, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, v11

    iput v1, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 49
    :cond_18
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v10, v1, :cond_19

    if-ge v12, v1, :cond_1a

    .line 50
    :cond_19
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->fillGap(Z)V

    :cond_1a
    const/4 v1, -0x1

    if-nez v6, :cond_1b

    .line 51
    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v2, v1, :cond_1b

    .line 52
    iget v1, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v1

    if-ltz v2, :cond_1d

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_1d

    .line 54
    iget v1, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_d

    .line 55
    :cond_1b
    iget v2, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v2, v1, :cond_1c

    .line 56
    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_1d

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 58
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_d

    .line 59
    :cond_1c
    iget-object v1, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1d
    :goto_d
    const/4 v3, 0x0

    .line 60
    iput-boolean v3, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    return v3

    :cond_1e
    :goto_e
    move v1, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    move v4, v1

    goto :goto_f

    :cond_1f
    move v4, v3

    :goto_f
    return v4
.end method

.method public updateScrollIndicators()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 6
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v5, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    if-nez v4, :cond_7

    if-lez v0, :cond_7

    sub-int/2addr v0, v2

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    move v4, v2

    .line 12
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_8

    move v1, v3

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public updateSelectorState()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
