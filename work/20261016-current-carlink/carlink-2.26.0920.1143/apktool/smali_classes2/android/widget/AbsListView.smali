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
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
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

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mHasPerformedLongPress:Z

.field private mIsChildViewEnabled:Z

.field private mIsDetaching:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mNestedYOffset:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F

.field mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

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

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 28
    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    new-array v4, v3, [I

    .line 29
    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    new-array v3, v3, [F

    .line 30
    iput-object v3, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 31
    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 32
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 33
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 34
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 36
    invoke-virtual {p0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 37
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    .line 40
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 44
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 46
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    const/4 v1, -0x1

    .line 47
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 48
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 49
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 50
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 51
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 52
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 53
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 54
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 55
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 56
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 57
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    const/4 v2, 0x1

    .line 58
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 59
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    const/4 v3, 0x0

    .line 60
    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 61
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 62
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 63
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 64
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 65
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 66
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 67
    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    new-array v3, v2, [Z

    .line 68
    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 69
    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    new-array v4, v3, [I

    .line 70
    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    new-array v4, v3, [F

    .line 71
    iput-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 72
    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 73
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 74
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 75
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 77
    sget-object v1, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 78
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 79
    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_0
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 81
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    const/4 p3, 0x3

    .line 82
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    const/4 p3, 0x4

    .line 83
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    const/4 p3, 0x5

    .line 84
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    const/4 p3, 0x6

    .line 85
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    const/16 p4, 0x9

    .line 86
    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    const/4 p4, 0x7

    .line 87
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    const/16 p4, 0x8

    .line 88
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    const/16 p4, 0xb

    .line 89
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    const/16 p4, 0xa

    .line 90
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 91
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-ne p1, p3, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->setRevealOnFocusHint(Z)V

    :cond_1
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/widget/Filterable;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/Filterable;

    .line 18
    .line 19
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public static synthetic access$000(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/widget/AbsListView;)[F
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object p0
.end method

.method public static synthetic access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p0
.end method

.method public static synthetic access$1102(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method public static synthetic access$1602(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic access$1700(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return p0
.end method

.method public static synthetic access$1800(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return p0
.end method

.method public static synthetic access$1900(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method public static synthetic access$2100(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return p0
.end method

.method public static synthetic access$2200(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return p0
.end method

.method public static synthetic access$2300(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p0
.end method

.method public static synthetic access$2302(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method public static synthetic access$2400(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$2500(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$2600(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$2700(Landroid/widget/AbsListView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static synthetic access$2900(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3000(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method public static synthetic access$3100(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mPaddingBottom:I

    return p0
.end method

.method public static synthetic access$3200(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mPaddingTop:I

    return p0
.end method

.method public static synthetic access$3300(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mPaddingBottom:I

    return p0
.end method

.method public static synthetic access$3400(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mPaddingTop:I

    return p0
.end method

.method public static synthetic access$3500(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$3600(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 0

    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3700(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$3800(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 0

    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3900(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public static synthetic access$4000(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return p0
.end method

.method public static synthetic access$4100(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public static synthetic access$4200(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4300(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method public static synthetic access$4500(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object p0
.end method

.method public static synthetic access$4600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$4700(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/widget/AbsListView;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Landroid/widget/AbsListView;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$902(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    return p1
.end method

.method private canScrollDown()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    move v1, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v3

    .line 17
    :goto_0
    if-nez v1, :cond_2

    .line 18
    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    sub-int/2addr v0, v4

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 31
    .line 32
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 33
    .line 34
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    sub-int/2addr v1, v2

    .line 37
    if-le v0, v1, :cond_1

    .line 38
    .line 39
    move v3, v4

    .line 40
    :cond_1
    move v1, v3

    .line 41
    :cond_2
    return v1
.end method

.method private canScrollUp()Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    if-nez v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-lez v3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 27
    .line 28
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    if-ge v0, v3, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v2

    .line 34
    :goto_1
    move v0, v1

    .line 35
    :cond_2
    return v0
.end method

.method private clearScrollingCache()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/widget/AbsListView$4;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    return v3

    .line 15
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    if-lt v2, v4, :cond_2

    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    sub-int/2addr v2, v4

    .line 47
    if-gt v0, v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v1, v3

    .line 51
    :goto_0
    return v1
.end method

.method private createScrollingCache()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 20
    .line 21
    .line 22
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/PopupWindow;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, -0x2

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 54
    .line 55
    :cond_0
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 58
    .line 59
    const v0, 0x1030301

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 67
    .line 68
    const v0, 0x1030302

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method private dismissPopup()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p2, v0, :cond_4

    .line 4
    .line 5
    if-eq p2, v1, :cond_4

    .line 6
    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    if-eq p2, v0, :cond_3

    .line 10
    .line 11
    const/16 v0, 0x21

    .line 12
    .line 13
    if-eq p2, v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x42

    .line 16
    .line 17
    if-eq p2, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x82

    .line 20
    .line 21
    if-ne p2, v0, :cond_0

    .line 22
    .line 23
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    div-int/2addr v0, v1

    .line 30
    add-int/2addr v0, p2

    .line 31
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    div-int/2addr v2, v1

    .line 40
    add-int/2addr v2, p2

    .line 41
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    iget p2, p0, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    div-int/2addr p0, v1

    .line 61
    add-int/2addr p0, p2

    .line 62
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    div-int/2addr p1, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    div-int/2addr v0, v1

    .line 79
    add-int/2addr v0, p2

    .line 80
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 81
    .line 82
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    div-int/2addr v2, v1

    .line 89
    add-int/2addr v2, p2

    .line 90
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    iget p2, p0, Landroid/graphics/Rect;->top:I

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    div-int/2addr p0, v1

    .line 102
    add-int/2addr p0, p2

    .line 103
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 104
    .line 105
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    div-int/2addr p1, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    div-int/2addr v0, v1

    .line 120
    add-int/2addr v0, p2

    .line 121
    iget p2, p0, Landroid/graphics/Rect;->top:I

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    div-int/2addr p0, v1

    .line 128
    add-int/2addr p0, p2

    .line 129
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    div-int/2addr v2, v1

    .line 136
    add-int/2addr v2, p2

    .line 137
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    div-int/2addr p1, v1

    .line 144
    :goto_0
    add-int/2addr p1, p2

    .line 145
    :goto_1
    sub-int/2addr v2, v0

    .line 146
    sub-int/2addr p1, p0

    .line 147
    mul-int/2addr p1, p1

    .line 148
    mul-int/2addr v2, v2

    .line 149
    add-int/2addr v2, p1

    .line 150
    return v2
.end method

.method private getDrawableStateForSelector()[I
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->getDrawableState()[I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget v0, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    array-length v3, v2

    .line 21
    sub-int/2addr v3, v1

    .line 22
    :goto_0
    if-ltz v3, :cond_2

    .line 23
    .line 24
    aget v4, v2, v3

    .line 25
    .line 26
    if-ne v4, v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v3, -0x1

    .line 33
    :goto_1
    if-ltz v3, :cond_3

    .line 34
    .line 35
    add-int/lit8 v0, v3, 0x1

    .line 36
    .line 37
    array-length v4, v2

    .line 38
    sub-int/2addr v4, v3

    .line 39
    sub-int/2addr v4, v1

    .line 40
    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 41
    .line 42
    .line 43
    :cond_3
    return-object v2
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x1090109

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/EditText;

    .line 22
    .line 23
    iput-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 24
    .line 25
    const/16 v1, 0xb1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 31
    .line 32
    const/high16 v1, 0x10000000

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 43
    .line 44
    return-object v0
.end method

.method private initAbsListView()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 73
    .line 74
    iput v0, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 75
    .line 76
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private invalidateBottomGlow()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 17
    .line 18
    sub-int/2addr v1, v2

    .line 19
    :cond_1
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    .line 32
    .line 33
    sub-int/2addr v0, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :goto_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sub-int v3, v1, v3

    .line 46
    .line 47
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private invalidateTopGlow()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v2, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 20
    .line 21
    :cond_2
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    .line 28
    .line 29
    sub-int/2addr v0, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    add-int/2addr v3, v2

    .line 42
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private isItemClickable(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isOwnerThread()Z
    .locals 2

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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xff00

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    shr-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    float-to-int v2, v2

    .line 37
    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 38
    .line 39
    iput v1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method private onTouchCancel()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 17
    .line 18
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 19
    .line 20
    sub-int/2addr v1, v3

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 68
    .line 69
    .line 70
    :cond_4
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 71
    .line 72
    return-void
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 9
    .line 10
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v1, 0x5

    .line 28
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    float-to-int v1, v1

    .line 35
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    float-to-int v1, v1

    .line 42
    iput v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 43
    .line 44
    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 45
    .line 46
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 47
    .line 48
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    float-to-int v1, v1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    float-to-int v2, v2

    .line 62
    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 67
    .line 68
    if-nez v4, :cond_4

    .line 69
    .line 70
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 71
    .line 72
    const/4 v5, 0x4

    .line 73
    if-ne v4, v5, :cond_2

    .line 74
    .line 75
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 76
    .line 77
    .line 78
    const/4 v3, 0x3

    .line 79
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 80
    .line 81
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->findMotionRow(I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    if-ltz v3, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Landroid/widget/ListAdapter;

    .line 100
    .line 101
    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 108
    .line 109
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 110
    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    new-instance v0, Landroid/widget/AbsListView$CheckForTap;

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    invoke-direct {v0, p0, v4}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 120
    .line 121
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 128
    .line 129
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 136
    .line 137
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 138
    .line 139
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    int-to-long v4, v4

    .line 144
    invoke-virtual {p0, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_0
    if-ltz v3, :cond_5

    .line 148
    .line 149
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 150
    .line 151
    sub-int v0, v3, v0

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    iput v0, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 162
    .line 163
    :cond_5
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 164
    .line 165
    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 166
    .line 167
    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 168
    .line 169
    const/high16 v0, -0x80000000

    .line 170
    .line 171
    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 172
    .line 173
    :goto_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 174
    .line 175
    if-nez v0, :cond_6

    .line 176
    .line 177
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 178
    .line 179
    const/4 v1, -0x1

    .line 180
    if-eq v0, v1, :cond_6

    .line 181
    .line 182
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_6

    .line 187
    .line 188
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 189
    .line 190
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 191
    .line 192
    .line 193
    :cond_6
    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 21
    .line 22
    move v0, v2

    .line 23
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    float-to-int v1, v1

    .line 35
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    if-eq v3, v5, :cond_4

    .line 42
    .line 43
    if-eq v3, v4, :cond_4

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    if-eq v3, v2, :cond_3

    .line 47
    .line 48
    const/4 v2, 0x5

    .line 49
    if-eq v3, v2, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    float-to-int p1, p1

    .line 57
    invoke-direct {p0, p1, v1, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    float-to-int v3, v3

    .line 66
    invoke-direct {p0, v3, v1, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    iget p2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 74
    .line 75
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 76
    .line 77
    sub-int/2addr p2, v3

    .line 78
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    int-to-float v0, v1

    .line 87
    iget v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 88
    .line 89
    int-to-float v1, v1

    .line 90
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->pointInView(FFF)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_8

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 97
    .line 98
    .line 99
    if-eqz p2, :cond_6

    .line 100
    .line 101
    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    .line 102
    .line 103
    .line 104
    :cond_6
    iget p1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 105
    .line 106
    if-nez p1, :cond_7

    .line 107
    .line 108
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 112
    .line 113
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_8
    if-eqz p2, :cond_9

    .line 123
    .line 124
    iget-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 125
    .line 126
    aput p1, v1, v2

    .line 127
    .line 128
    aput v0, v1, v5

    .line 129
    .line 130
    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 131
    .line 132
    .line 133
    aget p1, v1, v2

    .line 134
    .line 135
    aget v0, v1, v5

    .line 136
    .line 137
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 138
    .line 139
    .line 140
    :cond_9
    :goto_1
    return-void
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 14

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-eqz v0, :cond_e

    .line 8
    .line 9
    if-eq v0, v3, :cond_e

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    if-eq v0, v5, :cond_e

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    const/16 v6, 0x3e8

    .line 16
    .line 17
    if-eq v0, p1, :cond_3

    .line 18
    .line 19
    const/4 p1, 0x5

    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Landroid/widget/AbsListView$FlingRunnable;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 36
    .line 37
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 38
    .line 39
    int-to-float v0, v0

    .line 40
    invoke-virtual {p1, v6, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 41
    .line 42
    .line 43
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    float-to-int p1, p1

    .line 50
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget v3, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 58
    .line 59
    if-le v0, v3, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 62
    .line 63
    neg-int p1, p1

    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_6

    .line 75
    .line 76
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-lez p1, :cond_d

    .line 81
    .line 82
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    add-int/lit8 v7, p1, -0x1

    .line 91
    .line 92
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 101
    .line 102
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 109
    .line 110
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 111
    .line 112
    sub-int/2addr v9, v10

    .line 113
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 114
    .line 115
    if-nez v10, :cond_4

    .line 116
    .line 117
    if-lt v0, v8, :cond_4

    .line 118
    .line 119
    add-int/2addr v10, p1

    .line 120
    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 121
    .line 122
    if-ge v10, v11, :cond_4

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    sub-int/2addr v10, v9

    .line 129
    if-gt v7, v10, :cond_4

    .line 130
    .line 131
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 132
    .line 133
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_6

    .line 137
    .line 138
    :cond_4
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 139
    .line 140
    iget v11, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 141
    .line 142
    int-to-float v11, v11

    .line 143
    invoke-virtual {v10, v6, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 144
    .line 145
    .line 146
    iget v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 147
    .line 148
    invoke-virtual {v10, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    iget v10, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 153
    .line 154
    mul-float/2addr v6, v10

    .line 155
    float-to-int v6, v6

    .line 156
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    iget v11, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 161
    .line 162
    if-le v10, v11, :cond_5

    .line 163
    .line 164
    move v10, v3

    .line 165
    goto :goto_0

    .line 166
    :cond_5
    move v10, v4

    .line 167
    :goto_0
    const/4 v11, 0x0

    .line 168
    if-eqz v10, :cond_a

    .line 169
    .line 170
    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 171
    .line 172
    if-nez v12, :cond_6

    .line 173
    .line 174
    iget v13, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 175
    .line 176
    sub-int/2addr v8, v13

    .line 177
    if-eq v0, v8, :cond_a

    .line 178
    .line 179
    :cond_6
    add-int/2addr v12, p1

    .line 180
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 181
    .line 182
    if-ne v12, p1, :cond_7

    .line 183
    .line 184
    iget p1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 185
    .line 186
    add-int/2addr v9, p1

    .line 187
    if-eq v7, v9, :cond_a

    .line 188
    .line 189
    :cond_7
    neg-int p1, v6

    .line 190
    int-to-float v0, p1

    .line 191
    invoke-virtual {p0, v11, v0}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-nez v6, :cond_9

    .line 196
    .line 197
    iget-object v6, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 198
    .line 199
    if-nez v6, :cond_8

    .line 200
    .line 201
    new-instance v6, Landroid/widget/AbsListView$FlingRunnable;

    .line 202
    .line 203
    invoke-direct {v6, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    .line 204
    .line 205
    .line 206
    iput-object v6, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 207
    .line 208
    :cond_8
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 209
    .line 210
    .line 211
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 212
    .line 213
    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v11, v0, v3}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    .line 217
    .line 218
    .line 219
    goto/16 :goto_6

    .line 220
    .line 221
    :cond_9
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 222
    .line 223
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_6

    .line 227
    .line 228
    :cond_a
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 229
    .line 230
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 234
    .line 235
    if-eqz p1, :cond_b

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 238
    .line 239
    .line 240
    :cond_b
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 241
    .line 242
    if-eqz p1, :cond_c

    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 245
    .line 246
    .line 247
    :cond_c
    if-eqz v10, :cond_1a

    .line 248
    .line 249
    neg-int p1, v6

    .line 250
    int-to-float p1, p1

    .line 251
    invoke-virtual {p0, v11, p1}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_1a

    .line 256
    .line 257
    invoke-virtual {p0, v11, p1, v4}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    .line 258
    .line 259
    .line 260
    goto/16 :goto_6

    .line 261
    .line 262
    :cond_d
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 263
    .line 264
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_6

    .line 268
    .line 269
    :cond_e
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 270
    .line 271
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 272
    .line 273
    sub-int v5, v0, v5

    .line 274
    .line 275
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    if-eqz v5, :cond_19

    .line 280
    .line 281
    iget v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 282
    .line 283
    if-eqz v6, :cond_f

    .line 284
    .line 285
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 286
    .line 287
    .line 288
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 293
    .line 294
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 295
    .line 296
    int-to-float v7, v7

    .line 297
    cmpl-float v7, v6, v7

    .line 298
    .line 299
    if-lez v7, :cond_10

    .line 300
    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 306
    .line 307
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 308
    .line 309
    sub-int/2addr v7, v8

    .line 310
    int-to-float v7, v7

    .line 311
    cmpg-float v7, v6, v7

    .line 312
    .line 313
    if-gez v7, :cond_10

    .line 314
    .line 315
    move v7, v3

    .line 316
    goto :goto_1

    .line 317
    :cond_10
    move v7, v4

    .line 318
    :goto_1
    if-eqz v7, :cond_19

    .line 319
    .line 320
    invoke-virtual {v5}, Landroid/view/View;->hasExplicitFocusable()Z

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    if-nez v7, :cond_19

    .line 325
    .line 326
    iget-object v7, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 327
    .line 328
    if-nez v7, :cond_11

    .line 329
    .line 330
    new-instance v7, Landroid/widget/AbsListView$PerformClick;

    .line 331
    .line 332
    invoke-direct {v7, p0, v1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    .line 333
    .line 334
    .line 335
    iput-object v7, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 336
    .line 337
    :cond_11
    iget-object v7, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 338
    .line 339
    iput v0, v7, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 340
    .line 341
    invoke-virtual {v7}, Landroid/widget/AbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 342
    .line 343
    .line 344
    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 345
    .line 346
    iget v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 347
    .line 348
    if-eqz v8, :cond_13

    .line 349
    .line 350
    if-ne v8, v3, :cond_12

    .line 351
    .line 352
    goto :goto_2

    .line 353
    :cond_12
    iget-boolean p1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 354
    .line 355
    if-nez p1, :cond_19

    .line 356
    .line 357
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 358
    .line 359
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-eqz p1, :cond_19

    .line 364
    .line 365
    invoke-virtual {v7}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 366
    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_13
    :goto_2
    if-nez v8, :cond_14

    .line 370
    .line 371
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 372
    .line 373
    goto :goto_3

    .line 374
    :cond_14
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 375
    .line 376
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 377
    .line 378
    .line 379
    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 380
    .line 381
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 382
    .line 383
    if-nez v1, :cond_18

    .line 384
    .line 385
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 386
    .line 387
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_18

    .line 392
    .line 393
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 394
    .line 395
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 396
    .line 397
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    .line 404
    .line 405
    .line 406
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 407
    .line 408
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 415
    .line 416
    if-eqz v0, :cond_16

    .line 417
    .line 418
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    if-eqz v0, :cond_15

    .line 423
    .line 424
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 425
    .line 426
    if-eqz v1, :cond_15

    .line 427
    .line 428
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 429
    .line 430
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 431
    .line 432
    .line 433
    :cond_15
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 434
    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    invoke-virtual {v0, v6, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 440
    .line 441
    .line 442
    :cond_16
    iget-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 443
    .line 444
    if-eqz p1, :cond_17

    .line 445
    .line 446
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 447
    .line 448
    .line 449
    :cond_17
    new-instance p1, Landroid/widget/AbsListView$3;

    .line 450
    .line 451
    invoke-direct {p1, p0, v5, v7}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    .line 452
    .line 453
    .line 454
    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 455
    .line 456
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    int-to-long v0, v0

    .line 461
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    .line 463
    .line 464
    goto :goto_4

    .line 465
    :cond_18
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 466
    .line 467
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 468
    .line 469
    .line 470
    :goto_4
    return-void

    .line 471
    :cond_19
    :goto_5
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 472
    .line 473
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 474
    .line 475
    .line 476
    :cond_1a
    :goto_6
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 477
    .line 478
    .line 479
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 480
    .line 481
    if-eqz p1, :cond_1b

    .line 482
    .line 483
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 484
    .line 485
    .line 486
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 487
    .line 488
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 489
    .line 490
    .line 491
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 492
    .line 493
    .line 494
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 495
    .line 496
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 497
    .line 498
    .line 499
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 500
    .line 501
    .line 502
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 503
    .line 504
    iget-object p1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 505
    .line 506
    if-eqz p1, :cond_1c

    .line 507
    .line 508
    invoke-virtual {p1}, Landroid/os/StrictMode$Span;->finish()V

    .line 509
    .line 510
    .line 511
    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 512
    .line 513
    :cond_1c
    return-void
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 12
    .line 13
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 14
    .line 15
    sub-int/2addr p1, v0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 23
    .line 24
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 25
    .line 26
    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_0
    return v1
.end method

.method private positionPopup()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [I

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aget v2, v1, v2

    .line 19
    .line 20
    sub-int/2addr v0, v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int/2addr v0, v2

    .line 26
    iget v2, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 27
    .line 28
    const/high16 v3, 0x41a00000    # 20.0f

    .line 29
    .line 30
    mul-float/2addr v2, v3

    .line 31
    float-to-int v2, v2

    .line 32
    add-int/2addr v0, v2

    .line 33
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 43
    .line 44
    const/16 v4, 0x51

    .line 45
    .line 46
    aget v1, v1, v3

    .line 47
    .line 48
    invoke-virtual {v2, p0, v4, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 53
    .line 54
    aget v1, v1, v3

    .line 55
    .line 56
    const/4 v3, -0x1

    .line 57
    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 7

    .line 2
    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 3
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 4
    :cond_1
    iget-object p1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    instance-of v3, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v3, :cond_2

    .line 7
    move-object v3, p2

    check-cast v3, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v3, p1}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 8
    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 9
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 10
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 11
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    .line 13
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v3, p2, :cond_3

    .line 14
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 15
    :cond_3
    iget-object p2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_7

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p2, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 17
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 18
    :cond_4
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 20
    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 21
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :cond_6
    if-eqz p3, :cond_7

    .line 22
    invoke-virtual {p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_7
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 24

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    move/from16 v12, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    iget v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    .line 10
    .line 11
    sub-int v0, v12, v0

    .line 12
    .line 13
    iget v1, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 14
    .line 15
    const/high16 v2, -0x80000000

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    iget v3, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 20
    .line 21
    sub-int/2addr v0, v3

    .line 22
    :cond_0
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    sub-int/2addr v1, v12

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    neg-int v1, v0

    .line 27
    :goto_0
    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 28
    .line 29
    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 30
    .line 31
    const/4 v13, 0x0

    .line 32
    invoke-virtual {v10, v13, v1, v3, v4}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v14, 0x1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v1, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 41
    .line 42
    aget v1, v1, v14

    .line 43
    .line 44
    add-int/2addr v0, v1

    .line 45
    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 46
    .line 47
    aget v3, v3, v14

    .line 48
    .line 49
    neg-int v4, v3

    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    int-to-float v3, v3

    .line 53
    invoke-virtual {v6, v7, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 54
    .line 55
    .line 56
    iget v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 57
    .line 58
    iget-object v5, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 59
    .line 60
    aget v5, v5, v14

    .line 61
    .line 62
    add-int/2addr v3, v5

    .line 63
    iput v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 64
    .line 65
    :cond_2
    move v15, v0

    .line 66
    move/from16 v16, v4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v15, v0

    .line 70
    move v1, v13

    .line 71
    move/from16 v16, v1

    .line 72
    .line 73
    :goto_1
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 74
    .line 75
    if-eq v0, v2, :cond_4

    .line 76
    .line 77
    sub-int v2, v12, v0

    .line 78
    .line 79
    add-int/2addr v2, v1

    .line 80
    move v9, v2

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move v9, v15

    .line 83
    :goto_2
    iget v1, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 84
    .line 85
    const/high16 v17, 0x3f800000    # 1.0f

    .line 86
    .line 87
    const/4 v8, 0x5

    .line 88
    const/4 v5, 0x3

    .line 89
    if-ne v1, v5, :cond_14

    .line 90
    .line 91
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 92
    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    const-string v0, "AbsListView-scroll"

    .line 96
    .line 97
    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 102
    .line 103
    :cond_5
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 104
    .line 105
    if-eq v12, v0, :cond_23

    .line 106
    .line 107
    iget v0, v10, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 108
    .line 109
    const/high16 v1, 0x80000

    .line 110
    .line 111
    and-int/2addr v0, v1

    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iget v1, v10, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 119
    .line 120
    if-le v0, v1, :cond_6

    .line 121
    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 129
    .line 130
    .line 131
    :cond_6
    iget v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 132
    .line 133
    if-ltz v0, :cond_7

    .line 134
    .line 135
    iget v1, v10, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 136
    .line 137
    sub-int/2addr v0, v1

    .line 138
    goto :goto_3

    .line 139
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    div-int/lit8 v0, v0, 0x2

    .line 144
    .line 145
    :goto_3
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_8

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    goto :goto_4

    .line 156
    :cond_8
    move v1, v13

    .line 157
    :goto_4
    if-eqz v9, :cond_9

    .line 158
    .line 159
    invoke-virtual {v10, v15, v9}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    goto :goto_5

    .line 164
    :cond_9
    move v2, v13

    .line 165
    :goto_5
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_13

    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v2, :cond_12

    .line 176
    .line 177
    neg-int v2, v9

    .line 178
    sub-int/2addr v0, v1

    .line 179
    sub-int v15, v2, v0

    .line 180
    .line 181
    const/4 v1, 0x0

    .line 182
    sub-int v2, v15, v9

    .line 183
    .line 184
    const/4 v3, 0x0

    .line 185
    iget-object v5, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 186
    .line 187
    move-object/from16 v0, p0

    .line 188
    .line 189
    move v4, v15

    .line 190
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_b

    .line 195
    .line 196
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 197
    .line 198
    aget v0, v0, v14

    .line 199
    .line 200
    rsub-int/lit8 v1, v0, 0x0

    .line 201
    .line 202
    if-eqz v6, :cond_a

    .line 203
    .line 204
    int-to-float v0, v0

    .line 205
    invoke-virtual {v6, v7, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 206
    .line 207
    .line 208
    iget v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 209
    .line 210
    iget-object v2, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 211
    .line 212
    aget v2, v2, v14

    .line 213
    .line 214
    add-int/2addr v0, v2

    .line 215
    iput v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 216
    .line 217
    :cond_a
    move v13, v1

    .line 218
    goto/16 :goto_6

    .line 219
    .line 220
    :cond_b
    const/4 v1, 0x0

    .line 221
    const/4 v3, 0x0

    .line 222
    iget v4, v10, Landroid/view/View;->mScrollY:I

    .line 223
    .line 224
    const/4 v5, 0x0

    .line 225
    const/4 v6, 0x0

    .line 226
    const/4 v7, 0x0

    .line 227
    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 228
    .line 229
    const/16 v18, 0x1

    .line 230
    .line 231
    move-object/from16 v0, p0

    .line 232
    .line 233
    move/from16 v19, v2

    .line 234
    .line 235
    move v2, v15

    .line 236
    move/from16 v8, v19

    .line 237
    .line 238
    move/from16 v21, v9

    .line 239
    .line 240
    move/from16 v9, v18

    .line 241
    .line 242
    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_c

    .line 247
    .line 248
    iget-object v1, v10, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 249
    .line 250
    if-eqz v1, :cond_c

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 253
    .line 254
    .line 255
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_d

    .line 260
    .line 261
    if-ne v1, v14, :cond_12

    .line 262
    .line 263
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_12

    .line 268
    .line 269
    :cond_d
    if-nez v0, :cond_e

    .line 270
    .line 271
    iput v13, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 272
    .line 273
    const/4 v2, 0x5

    .line 274
    iput v2, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 275
    .line 276
    :cond_e
    move/from16 v3, v21

    .line 277
    .line 278
    if-lez v3, :cond_10

    .line 279
    .line 280
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 281
    .line 282
    neg-int v1, v15

    .line 283
    int-to-float v1, v1

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    int-to-float v2, v2

    .line 289
    div-float/2addr v1, v2

    .line 290
    int-to-float v2, v11

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    int-to-float v3, v3

    .line 296
    div-float/2addr v2, v3

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 298
    .line 299
    .line 300
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_f

    .line 307
    .line 308
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 309
    .line 310
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 311
    .line 312
    .line 313
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 314
    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_10
    if-gez v3, :cond_12

    .line 318
    .line 319
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 320
    .line 321
    int-to-float v1, v15

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    int-to-float v2, v2

    .line 327
    div-float/2addr v1, v2

    .line 328
    int-to-float v2, v11

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    int-to-float v3, v3

    .line 334
    div-float/2addr v2, v3

    .line 335
    sub-float v2, v17, v2

    .line 336
    .line 337
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 338
    .line 339
    .line 340
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-nez v0, :cond_11

    .line 347
    .line 348
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 349
    .line 350
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 351
    .line 352
    .line 353
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .line 354
    .line 355
    .line 356
    :cond_12
    :goto_6
    add-int v0, v12, v13

    .line 357
    .line 358
    add-int v0, v0, v16

    .line 359
    .line 360
    iput v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    .line 361
    .line 362
    :cond_13
    add-int v0, v12, v13

    .line 363
    .line 364
    add-int v0, v0, v16

    .line 365
    .line 366
    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 367
    .line 368
    goto/16 :goto_c

    .line 369
    .line 370
    :cond_14
    move v2, v8

    .line 371
    move v3, v9

    .line 372
    if-ne v1, v2, :cond_23

    .line 373
    .line 374
    if-eq v12, v0, :cond_23

    .line 375
    .line 376
    iget v4, v10, Landroid/view/View;->mScrollY:I

    .line 377
    .line 378
    sub-int v1, v4, v3

    .line 379
    .line 380
    if-le v12, v0, :cond_15

    .line 381
    .line 382
    move v9, v14

    .line 383
    goto :goto_7

    .line 384
    :cond_15
    const/4 v0, -0x1

    .line 385
    move v9, v0

    .line 386
    :goto_7
    iget v0, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 387
    .line 388
    if-nez v0, :cond_16

    .line 389
    .line 390
    iput v9, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 391
    .line 392
    :cond_16
    neg-int v0, v3

    .line 393
    if-gez v1, :cond_17

    .line 394
    .line 395
    if-gez v4, :cond_18

    .line 396
    .line 397
    :cond_17
    if-lez v1, :cond_19

    .line 398
    .line 399
    if-gtz v4, :cond_19

    .line 400
    .line 401
    :cond_18
    neg-int v0, v4

    .line 402
    add-int v1, v3, v0

    .line 403
    .line 404
    move v8, v0

    .line 405
    move v7, v1

    .line 406
    goto :goto_8

    .line 407
    :cond_19
    move v8, v0

    .line 408
    move v7, v13

    .line 409
    :goto_8
    if-eqz v8, :cond_1e

    .line 410
    .line 411
    const/4 v1, 0x0

    .line 412
    const/4 v3, 0x0

    .line 413
    const/4 v6, 0x0

    .line 414
    const/16 v18, 0x0

    .line 415
    .line 416
    const/16 v19, 0x0

    .line 417
    .line 418
    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 419
    .line 420
    const/16 v20, 0x1

    .line 421
    .line 422
    move-object/from16 v0, p0

    .line 423
    .line 424
    move/from16 v21, v2

    .line 425
    .line 426
    move v2, v8

    .line 427
    move v5, v6

    .line 428
    move/from16 v6, v18

    .line 429
    .line 430
    move v13, v7

    .line 431
    move/from16 v7, v19

    .line 432
    .line 433
    move/from16 v22, v8

    .line 434
    .line 435
    move/from16 v8, v21

    .line 436
    .line 437
    move/from16 v23, v9

    .line 438
    .line 439
    move/from16 v9, v20

    .line 440
    .line 441
    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 442
    .line 443
    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-eqz v0, :cond_1a

    .line 449
    .line 450
    if-ne v0, v14, :cond_1f

    .line 451
    .line 452
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-nez v0, :cond_1f

    .line 457
    .line 458
    :cond_1a
    if-lez v15, :cond_1c

    .line 459
    .line 460
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 461
    .line 462
    move/from16 v1, v22

    .line 463
    .line 464
    int-to-float v1, v1

    .line 465
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    int-to-float v2, v2

    .line 470
    div-float/2addr v1, v2

    .line 471
    int-to-float v2, v11

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    int-to-float v3, v3

    .line 477
    div-float/2addr v2, v3

    .line 478
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 479
    .line 480
    .line 481
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 482
    .line 483
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-nez v0, :cond_1b

    .line 488
    .line 489
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 490
    .line 491
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 492
    .line 493
    .line 494
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 495
    .line 496
    .line 497
    goto :goto_9

    .line 498
    :cond_1c
    move/from16 v1, v22

    .line 499
    .line 500
    if-gez v15, :cond_1f

    .line 501
    .line 502
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 503
    .line 504
    int-to-float v1, v1

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    int-to-float v2, v2

    .line 510
    div-float/2addr v1, v2

    .line 511
    int-to-float v2, v11

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    int-to-float v3, v3

    .line 517
    div-float/2addr v2, v3

    .line 518
    sub-float v2, v17, v2

    .line 519
    .line 520
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 521
    .line 522
    .line 523
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 524
    .line 525
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-nez v0, :cond_1d

    .line 530
    .line 531
    iget-object v0, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 532
    .line 533
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 534
    .line 535
    .line 536
    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .line 537
    .line 538
    .line 539
    goto :goto_9

    .line 540
    :cond_1e
    move v13, v7

    .line 541
    move/from16 v23, v9

    .line 542
    .line 543
    :cond_1f
    :goto_9
    if-eqz v13, :cond_22

    .line 544
    .line 545
    iget v0, v10, Landroid/view/View;->mScrollY:I

    .line 546
    .line 547
    if-eqz v0, :cond_20

    .line 548
    .line 549
    const/4 v0, 0x0

    .line 550
    iput v0, v10, Landroid/view/View;->mScrollY:I

    .line 551
    .line 552
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 553
    .line 554
    .line 555
    goto :goto_a

    .line 556
    :cond_20
    const/4 v0, 0x0

    .line 557
    :goto_a
    invoke-virtual {v10, v13, v13}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 558
    .line 559
    .line 560
    const/4 v1, 0x3

    .line 561
    iput v1, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 562
    .line 563
    invoke-virtual {v10, v12}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    iput v0, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 568
    .line 569
    iget v0, v10, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 570
    .line 571
    sub-int v0, v1, v0

    .line 572
    .line 573
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    if-eqz v0, :cond_21

    .line 578
    .line 579
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    goto :goto_b

    .line 584
    :cond_21
    const/4 v0, 0x0

    .line 585
    :goto_b
    iput v0, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 586
    .line 587
    add-int v0, v12, v16

    .line 588
    .line 589
    iput v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    .line 590
    .line 591
    iput v1, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 592
    .line 593
    :cond_22
    const/4 v0, 0x0

    .line 594
    add-int/2addr v0, v12

    .line 595
    add-int v0, v0, v16

    .line 596
    .line 597
    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 598
    .line 599
    move/from16 v14, v23

    .line 600
    .line 601
    iput v14, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 602
    .line 603
    :cond_23
    :goto_c
    return-void
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    new-instance p1, Landroid/widget/FastScroller;

    .line 12
    .line 13
    iget v0, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 14
    .line 15
    invoke-direct {p1, p0, v0}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/FastScroller;->updateLayout()V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v1, v0

    .line 28
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 29
    .line 30
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 35
    .line 36
    invoke-interface {v2, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iput-wide v2, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 41
    .line 42
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 43
    .line 44
    invoke-interface {v2, p2}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 49
    .line 50
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 51
    .line 52
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iput-boolean p2, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 57
    .line 58
    if-eq v1, v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    const/4 v0, 0x0

    .line 6
    if-gez v6, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 10
    .line 11
    invoke-interface {v1, v6}, Landroid/widget/Adapter;->getItemId(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v7

    .line 15
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    move-object v0, v1

    .line 20
    move-object v1, p0

    .line 21
    move-object v2, p1

    .line 22
    move v3, v6

    .line 23
    move-wide v4, v7

    .line 24
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :cond_1
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 31
    .line 32
    sub-int v0, v6, v0

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 43
    .line 44
    if-eqz p4, :cond_2

    .line 45
    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;FF)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :cond_3
    :goto_0
    return v0
.end method

.method private showContextMenuInternal(FFZ)Z
    .locals 4

    .line 1
    float-to-int v0, p1

    .line 2
    float-to-int v1, p2

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 17
    .line 18
    sub-int v3, v0, v3

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    invoke-super {p0, p0, p1, p2}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;FF)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_0
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_1
    if-eqz p3, :cond_2

    .line 45
    .line 46
    invoke-super {p0, p1, p2}, Landroid/view/View;->showContextMenu(FF)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_2
    invoke-super {p0}, Landroid/view/View;->showContextMenu()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method private showPopup()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 2
    .line 3
    sub-int v0, p2, v0

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v4

    .line 18
    :goto_0
    if-nez v2, :cond_1

    .line 19
    .line 20
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 21
    .line 22
    if-le v1, v5, :cond_6

    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    and-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    if-nez v1, :cond_6

    .line 31
    .line 32
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x5

    .line 38
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 39
    .line 40
    iput v4, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/4 v1, 0x3

    .line 44
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 45
    .line 46
    if-lez v0, :cond_3

    .line 47
    .line 48
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 52
    .line 53
    neg-int v0, v0

    .line 54
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 55
    .line 56
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 65
    .line 66
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 67
    .line 68
    sub-int/2addr v0, v1

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 88
    .line 89
    .line 90
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 91
    .line 92
    .line 93
    return v3

    .line 94
    :cond_6
    return v4
.end method

.method private updateOnScreenCheckedViews()V
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 16
    .line 17
    const/16 v3, 0xb

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-lt v2, v3, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v4

    .line 25
    :goto_0
    if-ge v4, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    add-int v5, v0, v4

    .line 32
    .line 33
    instance-of v6, v3, Landroid/widget/Checkable;

    .line 34
    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    check-cast v3, Landroid/widget/Checkable;

    .line 38
    .line 39
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-interface {v3, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 52
    .line 53
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6
    .line 7
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    add-int v5, v1, v3

    .line 20
    .line 21
    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10
    .line 11
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-lez p1, :cond_3

    .line 15
    .line 16
    add-int/lit8 p1, v0, -0x1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr v2, v0

    .line 27
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 28
    .line 29
    if-lt v2, v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    sub-int/2addr v0, v2

    .line 38
    if-le p1, v0, :cond_2

    .line 39
    .line 40
    :cond_1
    move v1, v4

    .line 41
    :cond_2
    return v1

    .line 42
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-gtz v2, :cond_4

    .line 51
    .line 52
    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    if-ge p1, v0, :cond_5

    .line 55
    .line 56
    :cond_4
    move v1, v4

    .line 57
    :cond_5
    return v1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

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

    instance-of p1, p1, Landroid/widget/AbsListView$LayoutParams;

    return p1
.end method

.method public clearChoices()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 17
    .line 18
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_3

    .line 7
    .line 8
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    mul-int/lit8 v2, v0, 0x64

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_0

    .line 28
    .line 29
    const/16 v5, 0x64

    .line 30
    .line 31
    invoke-static {v4, v5, v1, v2}, Landroid/app/m;->z(IIII)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :cond_0
    sub-int/2addr v0, v3

    .line 36
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-lez v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    sub-int/2addr v1, v3

    .line 55
    mul-int/lit8 v1, v1, 0x64

    .line 56
    .line 57
    div-int/2addr v1, v0

    .line 58
    sub-int/2addr v2, v1

    .line 59
    :cond_1
    return v2

    .line 60
    :cond_2
    return v3

    .line 61
    :cond_3
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ltz v0, :cond_3

    .line 9
    .line 10
    if-lez v1, :cond_3

    .line 11
    .line 12
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lez v1, :cond_3

    .line 29
    .line 30
    mul-int/lit8 v0, v0, 0x64

    .line 31
    .line 32
    mul-int/lit8 v3, v3, 0x64

    .line 33
    .line 34
    div-int/2addr v3, v1

    .line 35
    sub-int/2addr v0, v3

    .line 36
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 37
    .line 38
    int-to-float v1, v1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    int-to-float v3, v3

    .line 44
    div-float/2addr v1, v3

    .line 45
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 46
    .line 47
    int-to-float v3, v3

    .line 48
    mul-float/2addr v1, v3

    .line 49
    const/high16 v3, 0x42c80000    # 100.0f

    .line 50
    .line 51
    mul-float/2addr v1, v3

    .line 52
    float-to-int v1, v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0

    .line 59
    :cond_0
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    add-int v2, v0, v1

    .line 65
    .line 66
    if-ne v2, v3, :cond_2

    .line 67
    .line 68
    move v2, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    div-int/lit8 v2, v1, 0x2

    .line 71
    .line 72
    add-int/2addr v2, v0

    .line 73
    :goto_0
    int-to-float v0, v0

    .line 74
    int-to-float v1, v1

    .line 75
    int-to-float v2, v2

    .line 76
    int-to-float v3, v3

    .line 77
    div-float/2addr v2, v3

    .line 78
    mul-float/2addr v2, v1

    .line 79
    add-float/2addr v2, v0

    .line 80
    float-to-int v0, v2

    .line 81
    return v0

    .line 82
    :cond_3
    return v2
.end method

.method public computeVerticalScrollRange()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x64

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    div-float/2addr v1, v2

    .line 25
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    mul-float/2addr v1, v2

    .line 29
    const/high16 v2, 0x42c80000    # 100.0f

    .line 30
    .line 31
    mul-float/2addr v1, v2

    .line 32
    float-to-int v1, v1

    .line 33
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 40
    .line 41
    :cond_1
    :goto_0
    return v0
.end method

.method public confirmCheckedPositionsById()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_5

    .line 16
    .line 17
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 36
    .line 37
    invoke-interface {v3, v6}, Landroid/widget/Adapter;->getItemId(I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    cmp-long v3, v7, v3

    .line 42
    .line 43
    const/4 v10, 0x1

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    add-int/lit8 v3, v6, -0x14

    .line 47
    .line 48
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/lit8 v4, v6, 0x14

    .line 53
    .line 54
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 55
    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    :goto_1
    if-ge v3, v4, :cond_1

    .line 61
    .line 62
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 63
    .line 64
    invoke-interface {v5, v3}, Landroid/widget/Adapter;->getItemId(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v11

    .line 68
    cmp-long v5, v7, v11

    .line 69
    .line 70
    if-nez v5, :cond_0

    .line 71
    .line 72
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 73
    .line 74
    invoke-virtual {v4, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 75
    .line 76
    .line 77
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v4, v1, v3}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    move v3, v10

    .line 87
    goto :goto_2

    .line 88
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move v3, v0

    .line 92
    :goto_2
    if-nez v3, :cond_4

    .line 93
    .line 94
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 95
    .line 96
    invoke-virtual {v2, v7, v8}, Landroid/util/LongSparseArray;->delete(J)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v1, v1, -0x1

    .line 100
    .line 101
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 102
    .line 103
    sub-int/2addr v2, v10

    .line 104
    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 105
    .line 106
    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 107
    .line 108
    if-eqz v5, :cond_2

    .line 109
    .line 110
    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 111
    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    const/4 v9, 0x0

    .line 115
    invoke-virtual/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 116
    .line 117
    .line 118
    :cond_2
    move v2, v10

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 121
    .line 122
    invoke-virtual {v3, v6, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_3
    add-int/2addr v1, v10

    .line 126
    goto :goto_0

    .line 127
    :cond_5
    if-eqz v2, :cond_6

    .line 128
    .line 129
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 134
    .line 135
    .line 136
    :cond_6
    return-void
.end method

.method public createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 19
    .line 20
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 21
    .line 22
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    .line 23
    .line 24
    add-int/2addr v5, v3

    .line 25
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    .line 26
    .line 27
    add-int/2addr v6, v4

    .line 28
    iget v7, p0, Landroid/view/View;->mRight:I

    .line 29
    .line 30
    add-int/2addr v3, v7

    .line 31
    iget v7, p0, Landroid/view/View;->mLeft:I

    .line 32
    .line 33
    sub-int/2addr v3, v7

    .line 34
    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    .line 35
    .line 36
    sub-int/2addr v3, v7

    .line 37
    iget v7, p0, Landroid/view/View;->mBottom:I

    .line 38
    .line 39
    add-int/2addr v4, v7

    .line 40
    iget v7, p0, Landroid/view/View;->mTop:I

    .line 41
    .line 42
    sub-int/2addr v4, v7

    .line 43
    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    .line 44
    .line 45
    sub-int/2addr v4, v7

    .line 46
    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 47
    .line 48
    .line 49
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 50
    .line 51
    and-int/lit8 v3, v3, -0x23

    .line 52
    .line 53
    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 54
    .line 55
    :cond_1
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 63
    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 73
    .line 74
    .line 75
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 76
    .line 77
    or-int/2addr p1, v1

    .line 78
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 79
    .line 80
    :cond_4
    return-void
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0

    return-void
.end method

.method public dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 22
    .line 23
    sub-int/2addr v3, v4

    .line 24
    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    .line 25
    .line 26
    sub-int/2addr v3, v4

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    .line 32
    .line 33
    sub-int/2addr v4, v5

    .line 34
    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    .line 35
    .line 36
    sub-int/2addr v4, v6

    .line 37
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    move v5, v2

    .line 49
    move v6, v5

    .line 50
    :goto_0
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 51
    .line 52
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    add-int v8, v6, v3

    .line 63
    .line 64
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 65
    .line 66
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    add-int/2addr v9, v5

    .line 71
    invoke-virtual {p1, v6, v5, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 72
    .line 73
    .line 74
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 75
    .line 76
    add-int/2addr v8, v0

    .line 77
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    add-int/2addr v8, v5

    .line 82
    int-to-float v9, v6

    .line 83
    int-to-float v8, v8

    .line 84
    invoke-virtual {p1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    .line 86
    .line 87
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 88
    .line 89
    invoke-virtual {v8, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 90
    .line 91
    .line 92
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 93
    .line 94
    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_1

    .line 99
    .line 100
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 104
    .line 105
    .line 106
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 107
    .line 108
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_5

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    add-int/2addr v5, v4

    .line 119
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 120
    .line 121
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    sub-int v8, v5, v8

    .line 126
    .line 127
    add-int v9, v6, v3

    .line 128
    .line 129
    invoke-virtual {p1, v6, v8, v9, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 130
    .line 131
    .line 132
    neg-int v5, v3

    .line 133
    add-int/2addr v5, v6

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    iget v8, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 139
    .line 140
    add-int/2addr v0, v8

    .line 141
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v1, :cond_3

    .line 146
    .line 147
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 148
    .line 149
    :cond_3
    sub-int/2addr v0, v2

    .line 150
    int-to-float v1, v5

    .line 151
    int-to-float v0, v0

    .line 152
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    .line 154
    .line 155
    int-to-float v0, v3

    .line 156
    const/4 v1, 0x0

    .line 157
    const/high16 v2, 0x43340000    # 180.0f

    .line 158
    .line 159
    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 163
    .line 164
    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_4

    .line 174
    .line 175
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .line 176
    .line 177
    .line 178
    :cond_4
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 179
    .line 180
    .line 181
    :cond_5
    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "drawing:cacheColorHint"

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "list:fastScrollEnabled"

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "list:scrollingCacheEnabled"

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string v0, "list:smoothScrollbarEnabled"

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "list:stackFromBottom"

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "list:textFilterEnabled"

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    const-string v1, "selectedView"

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method public abstract fillGap(Z)V
.end method

.method public findClosestMotionRow(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 17
    .line 18
    add-int/2addr p1, v0

    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    :goto_0
    return p1
.end method

.method public abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public fling(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

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

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-eq v0, p0, :cond_0

    .line 10
    .line 11
    move-object p1, v0

    .line 12
    check-cast p1, Landroid/view/View;

    .line 13
    .line 14
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :cond_1
    return-object p1
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 13
    .line 14
    add-int/2addr v2, v0

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 18
    .line 19
    add-int/lit8 v3, v3, -0x1

    .line 20
    .line 21
    if-ge v2, v3, :cond_1

    .line 22
    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    int-to-float v3, v3

    .line 45
    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 46
    .line 47
    sub-int v5, v2, v4

    .line 48
    .line 49
    if-le v0, v5, :cond_2

    .line 50
    .line 51
    sub-int/2addr v0, v2

    .line 52
    add-int/2addr v0, v4

    .line 53
    int-to-float v0, v0

    .line 54
    div-float v1, v0, v3

    .line 55
    .line 56
    :cond_2
    return v1
.end method

.method public getBottomPaddingOffset()I
    .locals 2

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

    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    new-array v3, v2, [J

    .line 20
    .line 21
    :goto_0
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    aput-wide v4, v3, v1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v3

    .line 33
    :cond_2
    :goto_1
    new-array v0, v1, [J

    .line 34
    .line 35
    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, -0x1

    .line 25
    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v1, p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeightForPosition(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 41
    .line 42
    invoke-virtual {v2, v0, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public getLeftPaddingOffset()I
    .locals 2

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

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getRightPaddingOffset()I
    .locals 2

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

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public getSelectionModeForAccessibility()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getTopFadingEdgeStrength()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 13
    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    .line 34
    .line 35
    if-ge v0, v3, :cond_2

    .line 36
    .line 37
    sub-int/2addr v0, v3

    .line 38
    neg-int v0, v0

    .line 39
    int-to-float v0, v0

    .line 40
    div-float v1, v0, v2

    .line 41
    .line 42
    :cond_2
    return v1
.end method

.method public getTopPaddingOffset()I
    .locals 2

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

    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_0
    invoke-super {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public handleBoundsChange()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    .line 33
    if-lt v5, v1, :cond_1

    .line 34
    .line 35
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    .line 37
    if-ge v4, v1, :cond_2

    .line 38
    .line 39
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 40
    .line 41
    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    return-void
.end method

.method public handleDataChanged()V
    .locals 11

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 4
    .line 5
    iput v0, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 6
    .line 7
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v2}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x3

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-lez v0, :cond_f

    .line 34
    .line 35
    iget-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 36
    .line 37
    if-eqz v6, :cond_a

    .line 38
    .line 39
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 40
    .line 41
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 42
    .line 43
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 44
    .line 45
    const/4 v7, 0x2

    .line 46
    if-ne v6, v7, :cond_1

    .line 47
    .line 48
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    if-ne v6, v5, :cond_5

    .line 52
    .line 53
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 58
    .line 59
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    sub-int/2addr v8, v9

    .line 75
    add-int/lit8 v9, v6, -0x1

    .line 76
    .line 77
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    if-eqz v9, :cond_3

    .line 82
    .line 83
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move v9, v8

    .line 89
    :goto_0
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 90
    .line 91
    add-int/2addr v10, v6

    .line 92
    if-lt v10, v1, :cond_4

    .line 93
    .line 94
    if-gt v9, v8, :cond_4

    .line 95
    .line 96
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 100
    .line 101
    .line 102
    :cond_5
    iget v1, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 103
    .line 104
    const/4 v6, 0x5

    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    if-eq v1, v5, :cond_6

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 111
    .line 112
    iget v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 113
    .line 114
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    sub-int/2addr v0, v5

    .line 119
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 124
    .line 125
    return-void

    .line 126
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 133
    .line 134
    iget v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 135
    .line 136
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    sub-int/2addr v0, v5

    .line 141
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput v0, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 146
    .line 147
    return-void

    .line 148
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-ltz v1, :cond_a

    .line 153
    .line 154
    invoke-virtual {p0, v1, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-ne v8, v1, :cond_a

    .line 159
    .line 160
    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 161
    .line 162
    iget-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    int-to-long v4, v0

    .line 169
    cmp-long v0, v2, v4

    .line 170
    .line 171
    if-nez v0, :cond_9

    .line 172
    .line 173
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 177
    .line 178
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_e

    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-lt v1, v0, :cond_b

    .line 193
    .line 194
    add-int/lit8 v1, v0, -0x1

    .line 195
    .line 196
    :cond_b
    if-gez v1, :cond_c

    .line 197
    .line 198
    move v1, v4

    .line 199
    :cond_c
    invoke-virtual {p0, v1, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-ltz v0, :cond_d

    .line 204
    .line 205
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_d
    invoke-virtual {p0, v1, v4}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-ltz v0, :cond_f

    .line 214
    .line 215
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_e
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 220
    .line 221
    if-ltz v0, :cond_f

    .line 222
    .line 223
    return-void

    .line 224
    :cond_f
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 225
    .line 226
    if-eqz v0, :cond_10

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_10
    move v3, v5

    .line 230
    :goto_3
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 231
    .line 232
    const/4 v0, -0x1

    .line 233
    iput v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 234
    .line 235
    const-wide/high16 v5, -0x8000000000000000L

    .line 236
    .line 237
    iput-wide v5, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 238
    .line 239
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 240
    .line 241
    iput-wide v5, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 242
    .line 243
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 244
    .line 245
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 246
    .line 247
    iput v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 248
    .line 249
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasTextFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public hideSelector()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    iget v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7
    .line 8
    const/4 v3, 0x4

    .line 9
    if-eq v2, v3, :cond_0

    .line 10
    .line 11
    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 12
    .line 13
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 14
    .line 15
    if-ltz v2, :cond_1

    .line 16
    .line 17
    if-eq v2, v0, :cond_1

    .line 18
    .line 19
    iput v2, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public internalSetPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->internalSetPadding(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public invokeOnItemScrollListener()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 27
    .line 28
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    :goto_0
    return v1

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move v1, v2

    .line 34
    :goto_1
    return v1
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public isInFilterMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public isPaddingOffsetRequired()Z
    .locals 2

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

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method public isVerticalScrollBarHidden()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public keyPressed()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_7

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_7

    .line 38
    .line 39
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 40
    .line 41
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 42
    .line 43
    sub-int/2addr v1, v2

    .line 44
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->hasExplicitFocusable()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 81
    .line 82
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    .line 96
    .line 97
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 98
    .line 99
    if-nez v0, :cond_7

    .line 100
    .line 101
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 102
    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    new-instance v0, Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-direct {v0, p0, v1}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 112
    .line 113
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/widget/AbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 119
    .line 120
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    int-to-long v1, v1

    .line 125
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    .line 127
    .line 128
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

    .line 1
    const-string v0, "obtainView"

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    aput-boolean v0, p2, v0

    .line 10
    .line 11
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 25
    .line 26
    iget v1, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 27
    .line 28
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 29
    .line 30
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ne v1, v2, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 37
    .line 38
    invoke-interface {v1, p1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eq v1, v3, :cond_0

    .line 43
    .line 44
    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 48
    .line 49
    invoke-virtual {v2, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    aput-boolean v4, p2, v0

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 55
    .line 56
    .line 57
    return-object v3

    .line 58
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 65
    .line 66
    invoke-interface {v5, p1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    if-eq v5, v3, :cond_2

    .line 73
    .line 74
    iget-object p2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 75
    .line 76
    invoke-virtual {p2, v3, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->isTemporarilyDetached()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    aput-boolean v4, p2, v0

    .line 87
    .line 88
    invoke-virtual {v5}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    iget p2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 92
    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    invoke-virtual {v5, p2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-nez p2, :cond_5

    .line 103
    .line 104
    invoke-virtual {v5, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-direct {p0, v5, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    iget-object p1, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 123
    .line 124
    if-nez p1, :cond_6

    .line 125
    .line 126
    new-instance p1, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 127
    .line 128
    invoke-direct {p1, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 132
    .line 133
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-nez p1, :cond_7

    .line 138
    .line 139
    iget-object p1, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 140
    .line 141
    invoke-virtual {v5, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 142
    .line 143
    .line 144
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 145
    .line 146
    .line 147
    return-object v5
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 40
    .line 41
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 42
    .line 43
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 48
    .line 49
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 50
    .line 51
    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 52
    .line 53
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 54
    .line 55
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_3
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 18
    .line 19
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 25
    .line 26
    :cond_0
    const/16 v0, 0xb1

    .line 27
    .line 28
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 29
    .line 30
    const/4 v0, 0x6

    .line 31
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 32
    .line 33
    iget-object p1, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    .line 33
    .line 34
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v0, v3}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 67
    .line 68
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 80
    .line 81
    .line 82
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 106
    .line 107
    .line 108
    :cond_8
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 109
    .line 110
    return-void
.end method

.method public onDisplayHint(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    if-ne p1, v0, :cond_3

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/4 p1, 0x0

    .line 46
    :goto_1
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 47
    .line 48
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 7
    .line 8
    if-gez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 28
    .line 29
    iget p2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 30
    .line 31
    iput p2, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 32
    .line 33
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/16 v1, 0xb

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, 0x20

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    if-ne v0, v3, :cond_6

    .line 31
    .line 32
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    if-ne v0, v2, :cond_6

    .line 37
    .line 38
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    const/16 v0, 0x9

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/high16 v0, 0x400000

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    const/16 v0, 0x1a

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    const/4 v0, 0x0

    .line 84
    :goto_0
    iget v1, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    .line 85
    .line 86
    mul-float/2addr v0, v1

    .line 87
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    return v2

    .line 100
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    return p1
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x7

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    float-to-int v0, v0

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    float-to-int p1, p1

    .line 41
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eq p1, v3, :cond_3

    .line 46
    .line 47
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 48
    .line 49
    if-eq p1, v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sub-int v0, p1, v0

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    return v1
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/widget/AbsListView$LayoutParams;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 15
    .line 16
    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_6

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne p2, v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 37
    .line 38
    .line 39
    sget-object p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 40
    .line 41
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    sget-object p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 46
    .line 47
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 57
    .line 58
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 71
    .line 72
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 76
    .line 77
    .line 78
    :cond_5
    return-void

    .line 79
    :cond_6
    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_d

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    return v3

    .line 37
    :cond_2
    const/4 v1, 0x6

    .line 38
    const/4 v4, 0x2

    .line 39
    if-eqz v0, :cond_8

    .line 40
    .line 41
    const/4 v5, -0x1

    .line 42
    if-eq v0, v3, :cond_7

    .line 43
    .line 44
    if-eq v0, v4, :cond_4

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    if-eq v0, v3, :cond_7

    .line 48
    .line 49
    if-eq v0, v1, :cond_3

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_4
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ne v0, v5, :cond_6

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 77
    .line 78
    move v0, v2

    .line 79
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    float-to-int v1, v1

    .line 84
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 88
    .line 89
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    float-to-int p1, p1

    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_b

    .line 103
    .line 104
    return v3

    .line 105
    :cond_7
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 106
    .line 107
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 108
    .line 109
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 120
    .line 121
    if-eq v0, v1, :cond_c

    .line 122
    .line 123
    const/4 v1, 0x5

    .line 124
    if-ne v0, v1, :cond_9

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    float-to-int v1, v1

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    float-to-int v5, v5

    .line 137
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 142
    .line 143
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->findMotionRow(I)I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    const/4 v7, 0x4

    .line 148
    if-eq v0, v7, :cond_a

    .line 149
    .line 150
    if-ltz v6, :cond_a

    .line 151
    .line 152
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 153
    .line 154
    sub-int v8, v6, v8

    .line 155
    .line 156
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 165
    .line 166
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 167
    .line 168
    iput v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 169
    .line 170
    iput v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 171
    .line 172
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 173
    .line 174
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 175
    .line 176
    .line 177
    :cond_a
    const/high16 v1, -0x80000000

    .line 178
    .line 179
    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 180
    .line 181
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 182
    .line 183
    .line 184
    iget-object v1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 185
    .line 186
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 187
    .line 188
    .line 189
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 190
    .line 191
    invoke-virtual {p0, v4}, Landroid/view/View;->startNestedScroll(I)Z

    .line 192
    .line 193
    .line 194
    if-ne v0, v7, :cond_b

    .line 195
    .line 196
    return v3

    .line 197
    :cond_b
    :goto_0
    return v2

    .line 198
    :cond_c
    :goto_1
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 199
    .line 200
    return v3

    .line 201
    :cond_d
    :goto_2
    return v2
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 28
    .line 29
    if-ltz v0, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ge v0, v2, :cond_2

    .line 40
    .line 41
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 42
    .line 43
    iget p2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 44
    .line 45
    sub-int/2addr p1, p2

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 p2, 0x0

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 54
    .line 55
    iget-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 56
    .line 57
    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setPressed(Z)V

    .line 64
    .line 65
    .line 66
    return v1

    .line 67
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 p4, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    move p1, p4

    .line 15
    :goto_0
    if-ge p1, p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 33
    .line 34
    .line 35
    sub-int/2addr p5, p3

    .line 36
    div-int/lit8 p5, p5, 0x3

    .line 37
    .line 38
    iput p5, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 39
    .line 40
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iget p3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 49
    .line 50
    invoke-virtual {p1, p2, p3}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iput-boolean p4, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 54
    .line 55
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 11
    .line 12
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 13
    .line 14
    add-int/2addr p2, v0

    .line 15
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 18
    .line 19
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 20
    .line 21
    add-int/2addr p2, v0

    .line 22
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 25
    .line 26
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 27
    .line 28
    add-int/2addr p2, v0

    .line 29
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 32
    .line 33
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 34
    .line 35
    add-int/2addr p2, v0

    .line 36
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    iget p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    if-ne p1, p2, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int/2addr v0, v1

    .line 56
    add-int/lit8 v1, p1, -0x1

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v1, v0

    .line 70
    :goto_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 71
    .line 72
    add-int/2addr v2, p1

    .line 73
    iget p1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 74
    .line 75
    if-lt v2, p1, :cond_2

    .line 76
    .line 77
    if-gt v1, v0, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 p2, 0x0

    .line 81
    :goto_1
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p4, :cond_2

    .line 6
    .line 7
    if-lez p1, :cond_2

    .line 8
    .line 9
    float-to-int p1, p3

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 21
    .line 22
    int-to-float v1, v1

    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    const/4 p2, 0x2

    .line 28
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 32
    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    new-instance p2, Landroid/widget/AbsListView$FlingRunnable;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 41
    .line 42
    :cond_0
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    iget-object p2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    div-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p3, p2

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    neg-int p4, p5

    .line 23
    invoke-virtual {p0, p4, p4}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    if-eqz p4, :cond_3

    .line 28
    .line 29
    :cond_1
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sub-int p2, p1, p3

    .line 36
    .line 37
    sub-int/2addr p5, p2

    .line 38
    :cond_2
    move v2, p2

    .line 39
    move v4, p5

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    move-object v0, p0

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->startNestedScroll(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    iget p1, p0, Landroid/view/View;->mScrollY:I

    .line 2
    .line 3
    if-eq p1, p2, :cond_0

    .line 4
    .line 5
    iget p3, p0, Landroid/view/View;->mScrollX:I

    .line 6
    .line 7
    invoke-virtual {p0, p3, p2, p3, p1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 8
    .line 9
    .line 10
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 18
    .line 19
    .line 20
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 21
    .line 22
    :cond_0
    return v2

    .line 23
    :cond_1
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/widget/FastScroller;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 1
    check-cast p1, Landroid/widget/AbsListView$SavedState;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 12
    .line 13
    iget v1, p1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 14
    .line 15
    int-to-long v1, v1

    .line 16
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 17
    .line 18
    iget-wide v1, p1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    cmp-long v5, v1, v3

    .line 23
    .line 24
    if-ltz v5, :cond_0

    .line 25
    .line 26
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 27
    .line 28
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 29
    .line 30
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 31
    .line 32
    iget v0, p1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 33
    .line 34
    iput v0, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 35
    .line 36
    iget v0, p1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 37
    .line 38
    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-wide v1, p1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 45
    .line 46
    cmp-long v1, v1, v3

    .line 47
    .line 48
    if-ltz v1, :cond_1

    .line 49
    .line 50
    const/4 v1, -0x1

    .line 51
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 55
    .line 56
    .line 57
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 58
    .line 59
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 60
    .line 61
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 62
    .line 63
    iget-wide v1, p1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 64
    .line 65
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 66
    .line 67
    iget v1, p1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 68
    .line 69
    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 70
    .line 71
    iget v1, p1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 72
    .line 73
    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 74
    .line 75
    iput v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 76
    .line 77
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 87
    .line 88
    :cond_2
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 93
    .line 94
    :cond_3
    iget v0, p1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 95
    .line 96
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 97
    .line 98
    iget-boolean p1, p1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 103
    .line 104
    const/4 v0, 0x3

    .line 105
    if-ne p1, v0, :cond_4

    .line 106
    .line 107
    iget-object p1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 116
    .line 117
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarPosition()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Landroid/widget/AbsListView$SavedState;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 18
    .line 19
    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 20
    .line 21
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 22
    .line 23
    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 24
    .line 25
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 26
    .line 27
    iput v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 28
    .line 29
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->position:I

    .line 30
    .line 31
    iput v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 32
    .line 33
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->height:I

    .line 34
    .line 35
    iput v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 36
    .line 37
    iget-object v2, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 40
    .line 41
    iget-boolean v2, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 42
    .line 43
    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 44
    .line 45
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 46
    .line 47
    iput v2, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 48
    .line 49
    iget-object v2, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 50
    .line 51
    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 52
    .line 53
    iget-object v0, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 54
    .line 55
    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v2, 0x1

    .line 63
    const/4 v3, 0x0

    .line 64
    if-lez v0, :cond_1

    .line 65
    .line 66
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 67
    .line 68
    if-lez v0, :cond_1

    .line 69
    .line 70
    move v0, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move v0, v3

    .line 73
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    iput-wide v4, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    iput v6, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 84
    .line 85
    const-wide/16 v6, 0x0

    .line 86
    .line 87
    cmp-long v4, v4, v6

    .line 88
    .line 89
    const-wide/16 v5, -0x1

    .line 90
    .line 91
    if-ltz v4, :cond_2

    .line 92
    .line 93
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 94
    .line 95
    iput v0, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 102
    .line 103
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 109
    .line 110
    if-lez v0, :cond_4

    .line 111
    .line 112
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput v0, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 121
    .line 122
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 123
    .line 124
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 125
    .line 126
    if-lt v0, v4, :cond_3

    .line 127
    .line 128
    add-int/lit8 v0, v4, -0x1

    .line 129
    .line 130
    :cond_3
    iput v0, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 131
    .line 132
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 133
    .line 134
    invoke-interface {v4, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    iput-wide v4, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    iput v3, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 142
    .line 143
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 144
    .line 145
    iput v3, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 146
    .line 147
    :goto_1
    const/4 v0, 0x0

    .line 148
    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 149
    .line 150
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 151
    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 155
    .line 156
    if-eqz v0, :cond_5

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_5

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 169
    .line 170
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 171
    .line 172
    const/4 v4, 0x3

    .line 173
    if-ne v0, v4, :cond_6

    .line 174
    .line 175
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 176
    .line 177
    if-eqz v0, :cond_6

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    move v2, v3

    .line 181
    :goto_2
    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 182
    .line 183
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 184
    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 192
    .line 193
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 194
    .line 195
    if-eqz v0, :cond_9

    .line 196
    .line 197
    new-instance v0, Landroid/util/LongSparseArray;

    .line 198
    .line 199
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 203
    .line 204
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    :goto_3
    if-ge v3, v2, :cond_8

    .line 209
    .line 210
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 211
    .line 212
    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 213
    .line 214
    .line 215
    move-result-wide v4

    .line 216
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 217
    .line 218
    invoke-virtual {v6, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    add-int/lit8 v3, v3, 0x1

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_8
    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 229
    .line 230
    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 231
    .line 232
    iput v0, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 233
    .line 234
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 235
    .line 236
    if-eqz v0, :cond_a

    .line 237
    .line 238
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 239
    .line 240
    .line 241
    :cond_a
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-direct {p0, p2}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    iget-object p4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 16
    .line 17
    invoke-virtual {p4}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    if-nez p4, :cond_0

    .line 22
    .line 23
    if-lez p3, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 26
    .line 27
    .line 28
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-eqz p4, :cond_1

    .line 32
    .line 33
    if-nez p3, :cond_1

    .line 34
    .line 35
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 36
    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 42
    .line 43
    instance-of p3, p2, Landroid/widget/Filterable;

    .line 44
    .line 45
    if-eqz p3, :cond_3

    .line 46
    .line 47
    check-cast p2, Landroid/widget/Filterable;

    .line 48
    .line 49
    invoke-interface {p2}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p2, "You cannot call onTextChanged with a non filterable adapter"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :cond_0
    move v1, v2

    .line 22
    :cond_1
    return v1

    .line 23
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 28
    .line 29
    .line 30
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 31
    .line 32
    if-nez v0, :cond_10

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_4
    const/4 v0, 0x2

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->startNestedScroll(I)Z

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 47
    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    invoke-virtual {v3, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_6

    .line 69
    .line 70
    iput v1, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 71
    .line 72
    :cond_6
    iget v5, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 73
    .line 74
    int-to-float v5, v5

    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-virtual {v3, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 77
    .line 78
    .line 79
    if-eqz v4, :cond_e

    .line 80
    .line 81
    if-eq v4, v2, :cond_d

    .line 82
    .line 83
    if-eq v4, v0, :cond_c

    .line 84
    .line 85
    const/4 v0, 0x3

    .line 86
    if-eq v4, v0, :cond_b

    .line 87
    .line 88
    const/4 v0, 0x5

    .line 89
    if-eq v4, v0, :cond_9

    .line 90
    .line 91
    const/4 v0, 0x6

    .line 92
    if-eq v4, v0, :cond_7

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 96
    .line 97
    .line 98
    iget p1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 99
    .line 100
    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 101
    .line 102
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-ltz p1, :cond_8

    .line 107
    .line 108
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 109
    .line 110
    sub-int v1, p1, v1

    .line 111
    .line 112
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iput v1, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 121
    .line 122
    iput p1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 123
    .line 124
    :cond_8
    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    float-to-int v5, v5

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    float-to-int p1, p1

    .line 145
    iput v1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 146
    .line 147
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 148
    .line 149
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 150
    .line 151
    iput p1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 152
    .line 153
    invoke-virtual {p0, v5, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-ltz v0, :cond_a

    .line 158
    .line 159
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 160
    .line 161
    sub-int v1, v0, v1

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    iput v1, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 172
    .line 173
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 174
    .line 175
    :cond_a
    iput p1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_b
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_c
    invoke-direct {p0, p1, v3}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_e
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 191
    .line 192
    .line 193
    :goto_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 194
    .line 195
    if-eqz p1, :cond_f

    .line 196
    .line 197
    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 198
    .line 199
    .line 200
    :cond_f
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 201
    .line 202
    .line 203
    return v2

    .line 204
    :cond_10
    :goto_1
    return v1
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget p1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x6

    .line 31
    if-ne p1, v0, :cond_5

    .line 32
    .line 33
    :cond_2
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 45
    .line 46
    .line 47
    :cond_4
    iget p1, p0, Landroid/view/View;->mScrollY:I

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput p1, p0, Landroid/view/View;->mScrollY:I

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    xor-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 24
    .line 25
    invoke-static {p1, v2}, Landroid/widget/AbsListView$FlingRunnable;->access$502(Landroid/widget/AbsListView$FlingRunnable;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget p1, p0, Landroid/view/View;->mScrollY:I

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 56
    .line 57
    .line 58
    if-ne v0, v1, :cond_5

    .line 59
    .line 60
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 61
    .line 62
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget p1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 77
    .line 78
    if-eq v0, p1, :cond_5

    .line 79
    .line 80
    const/4 v3, -0x1

    .line 81
    if-eq p1, v3, :cond_5

    .line 82
    .line 83
    if-ne v0, v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 90
    .line 91
    .line 92
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 98
    .line 99
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/16 p2, 0x1000

    .line 10
    .line 11
    const/16 v1, 0xc8

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq p1, p2, :cond_3

    .line 15
    .line 16
    const/16 p2, 0x2000

    .line 17
    .line 18
    if-eq p1, p2, :cond_1

    .line 19
    .line 20
    const p2, 0x1020038

    .line 21
    .line 22
    .line 23
    if-eq p1, p2, :cond_1

    .line 24
    .line 25
    const p2, 0x102003a

    .line 26
    .line 27
    .line 28
    if-eq p1, p2, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    sub-int/2addr p1, v2

    .line 52
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 53
    .line 54
    sub-int/2addr p1, p2

    .line 55
    neg-int p1, p1

    .line 56
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 57
    .line 58
    .line 59
    return v0

    .line 60
    :cond_2
    return v2

    .line 61
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 78
    .line 79
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 80
    .line 81
    sub-int/2addr p1, v2

    .line 82
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 83
    .line 84
    sub-int/2addr p1, p2

    .line 85
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 86
    .line 87
    .line 88
    return v0

    .line 89
    :cond_4
    return v2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_6

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    if-ne v0, v3, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-ne v0, v2, :cond_5

    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    xor-int/2addr v0, v2

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 35
    .line 36
    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 44
    .line 45
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 57
    .line 58
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 59
    .line 60
    invoke-interface {v1, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    :cond_3
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 91
    .line 92
    :cond_4
    :goto_0
    move v0, v2

    .line 93
    move v1, v0

    .line 94
    goto :goto_5

    .line 95
    :cond_5
    move v0, v2

    .line 96
    goto :goto_5

    .line 97
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 98
    .line 99
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    xor-int/lit8 v8, v0, 0x1

    .line 104
    .line 105
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 106
    .line 107
    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 115
    .line 116
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    if-eqz v8, :cond_7

    .line 123
    .line 124
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 125
    .line 126
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 127
    .line 128
    invoke-interface {v3, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 141
    .line 142
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 143
    .line 144
    invoke-interface {v3, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_2
    if-eqz v8, :cond_9

    .line 152
    .line 153
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 154
    .line 155
    add-int/2addr v0, v2

    .line 156
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 160
    .line 161
    sub-int/2addr v0, v2

    .line 162
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 163
    .line 164
    :goto_3
    iget-object v4, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 165
    .line 166
    if-eqz v4, :cond_a

    .line 167
    .line 168
    iget-object v3, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 169
    .line 170
    move v5, p2

    .line 171
    move-wide v6, p3

    .line 172
    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_a
    move v1, v2

    .line 177
    :goto_4
    move v0, v1

    .line 178
    move v1, v2

    .line 179
    :goto_5
    if-eqz v1, :cond_b

    .line 180
    .line 181
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 182
    .line 183
    .line 184
    :cond_b
    move v1, v2

    .line 185
    move v2, v0

    .line 186
    :cond_c
    if-eqz v2, :cond_d

    .line 187
    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    or-int/2addr v1, p1

    .line 193
    :cond_d
    return v1
.end method

.method public performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result p1

    return p1
.end method

.method public performLongPress(Landroid/view/View;IJFF)Z
    .locals 9

    .line 2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 p3, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p2, p3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return p3

    .line 7
    :cond_1
    iget-object v3, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v3, :cond_2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .line 8
    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p2, p5, p1

    if-eqz p2, :cond_3

    cmpl-float p1, p6, p1

    if-eqz p1, :cond_3

    .line 10
    invoke-super {p0, p0, p5, p6}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_1

    .line 11
    :cond_3
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_5
    return v0
.end method

.method public pointToPosition(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 40
    .line 41
    add-int/2addr p1, v1

    .line 42
    return p1

    .line 43
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 p1, -0x1

    .line 47
    return p1
.end method

.method public pointToRowId(II)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 8
    .line 9
    invoke-interface {p2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1

    .line 14
    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    .line 15
    .line 16
    return-wide p1
.end method

.method public positionSelector(ILandroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void
.end method

.method public positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    const/4 v4, 0x1

    .line 23
    move-object v1, p0

    .line 24
    move v2, p1

    .line 25
    move-object v3, p2

    .line 26
    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/widget/AbsListView$RecycleBin;->access$4400(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 27
    .line 28
    iget v4, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 41
    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {v1, v3}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public reconcileSelectedPosition()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6
    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public reportScrollStateChange(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public requestLayoutIfNecessary()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public resetList()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 11
    .line 12
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 13
    .line 14
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 18
    .line 19
    const-wide/high16 v2, -0x8000000000000000L

    .line 20
    .line 21
    iput-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 27
    .line 28
    .line 29
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 30
    .line 31
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 32
    .line 33
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public resurrectSelection()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    iget v4, p0, Landroid/view/View;->mBottom:I

    .line 14
    .line 15
    iget v5, p0, Landroid/view/View;->mTop:I

    .line 16
    .line 17
    sub-int/2addr v4, v5

    .line 18
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    sub-int/2addr v4, v2

    .line 21
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 22
    .line 23
    iget v5, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    if-lt v5, v2, :cond_2

    .line 27
    .line 28
    add-int v7, v2, v0

    .line 29
    .line 30
    if-ge v5, v7, :cond_2

    .line 31
    .line 32
    sub-int v0, v5, v2

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-ge v7, v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    add-int v7, v0, v3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    if-le v8, v4, :cond_8

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    sub-int/2addr v4, v0

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sub-int v7, v4, v0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    if-ge v5, v2, :cond_9

    .line 70
    .line 71
    move v4, v1

    .line 72
    move v5, v4

    .line 73
    :goto_0
    if-ge v4, v0, :cond_7

    .line 74
    .line 75
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-nez v4, :cond_5

    .line 84
    .line 85
    if-gtz v2, :cond_3

    .line 86
    .line 87
    if-ge v7, v3, :cond_4

    .line 88
    .line 89
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    add-int/2addr v5, v3

    .line 94
    move v3, v5

    .line 95
    :cond_4
    move v5, v7

    .line 96
    :cond_5
    if-lt v7, v3, :cond_6

    .line 97
    .line 98
    add-int/2addr v4, v2

    .line 99
    move v5, v4

    .line 100
    goto :goto_1

    .line 101
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    move v7, v5

    .line 105
    move v5, v2

    .line 106
    :cond_8
    :goto_1
    move v0, v6

    .line 107
    goto :goto_3

    .line 108
    :cond_9
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 109
    .line 110
    add-int v5, v2, v0

    .line 111
    .line 112
    add-int/lit8 v7, v5, -0x1

    .line 113
    .line 114
    sub-int/2addr v0, v6

    .line 115
    move v9, v0

    .line 116
    move v8, v1

    .line 117
    :goto_2
    if-ltz v9, :cond_e

    .line 118
    .line 119
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-ne v9, v0, :cond_c

    .line 132
    .line 133
    if-lt v5, v3, :cond_a

    .line 134
    .line 135
    if-le v10, v4, :cond_b

    .line 136
    .line 137
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    sub-int/2addr v4, v8

    .line 142
    :cond_b
    move v8, v11

    .line 143
    :cond_c
    if-gt v10, v4, :cond_d

    .line 144
    .line 145
    add-int v5, v2, v9

    .line 146
    .line 147
    move v0, v1

    .line 148
    move v7, v11

    .line 149
    goto :goto_3

    .line 150
    :cond_d
    add-int/lit8 v9, v9, -0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_e
    move v0, v1

    .line 154
    move v5, v7

    .line 155
    move v7, v8

    .line 156
    :goto_3
    const/4 v3, -0x1

    .line 157
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 158
    .line 159
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 160
    .line 161
    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 162
    .line 163
    .line 164
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 165
    .line 166
    if-eqz v4, :cond_f

    .line 167
    .line 168
    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 169
    .line 170
    .line 171
    :cond_f
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 172
    .line 173
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 174
    .line 175
    .line 176
    iput v7, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 177
    .line 178
    invoke-virtual {p0, v5, v0}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-lt v0, v2, :cond_10

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-gt v0, v2, :cond_10

    .line 189
    .line 190
    const/4 v2, 0x4

    .line 191
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 200
    .line 201
    .line 202
    move v3, v0

    .line 203
    :cond_10
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 204
    .line 205
    .line 206
    if-ltz v3, :cond_11

    .line 207
    .line 208
    move v1, v6

    .line 209
    :cond_11
    return v1
.end method

.method public resurrectSelectionIfNeeded()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public scrollListBy(I)V
    .locals 0

    neg-int p1, p1

    invoke-virtual {p0, p1, p1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 3

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 14
    .line 15
    if-ne v2, v0, :cond_0

    .line 16
    .line 17
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 23
    .line 24
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 25
    .line 26
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0x3e

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0x42

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move v3, v1

    .line 25
    move v0, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :pswitch_0
    move v0, v1

    .line 28
    move v3, v0

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 31
    .line 32
    move v3, v1

    .line 33
    goto :goto_2

    .line 34
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 35
    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_6

    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_0
    move v0, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v2, :cond_6

    .line 76
    .line 77
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 90
    .line 91
    const-string v3, ""

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    move v0, v1

    .line 98
    :goto_1
    move v3, v0

    .line 99
    move v0, v1

    .line 100
    :goto_2
    if-eqz v0, :cond_b

    .line 101
    .line 102
    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-lez v0, :cond_7

    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    invoke-static {p3, v4, v5, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    goto :goto_3

    .line 120
    :cond_7
    move-object v0, p3

    .line 121
    :goto_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_a

    .line 126
    .line 127
    if-eq v1, v2, :cond_9

    .line 128
    .line 129
    const/4 v0, 0x2

    .line 130
    if-eq v1, v0, :cond_8

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 134
    .line 135
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    goto :goto_4

    .line 140
    :cond_9
    iget-object p2, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 141
    .line 142
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    goto :goto_4

    .line 147
    :cond_a
    iget-object p2, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 148
    .line 149
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    :cond_b
    :goto_4
    return v3

    .line 154
    nop

    .line 155
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
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 2
    .line 3
    iget-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 12
    .line 13
    :cond_0
    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 23
    .line 24
    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-interface {p1}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    new-instance p1, Landroid/util/LongSparseArray;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 49
    .line 50
    :cond_2
    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 51
    .line 52
    const/4 v0, 0x3

    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$2;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Landroid/widget/AbsListView$1;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public setFastScrollStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 30
    .line 31
    instance-of v1, v0, Landroid/widget/Filterable;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    check-cast v0, Landroid/widget/Filterable;

    .line 40
    .line 41
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 50
    .line 51
    iget-object p1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    iget-boolean p3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 17
    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iget-object p2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return p1
.end method

.method public setFriction(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$2000(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 11

    .line 1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x3

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_2
    :goto_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eq v0, v2, :cond_b

    .line 48
    .line 49
    if-ne v0, v1, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 57
    .line 58
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    move v0, v4

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    move v0, v3

    .line 67
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eq v1, p2, :cond_5

    .line 72
    .line 73
    move v1, v4

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    move v1, v3

    .line 76
    :goto_2
    if-nez p2, :cond_6

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_7

    .line 83
    .line 84
    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 87
    .line 88
    .line 89
    if-eqz v0, :cond_7

    .line 90
    .line 91
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 94
    .line 95
    .line 96
    :cond_7
    if-eqz p2, :cond_9

    .line 97
    .line 98
    iget-object p2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 99
    .line 100
    invoke-virtual {p2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 101
    .line 102
    .line 103
    if-eqz v0, :cond_8

    .line 104
    .line 105
    iget-object p2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 106
    .line 107
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 108
    .line 109
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 121
    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_9
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_a

    .line 131
    .line 132
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 133
    .line 134
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_12

    .line 139
    .line 140
    :cond_a
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_b
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 150
    .line 151
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 155
    .line 156
    if-eqz v1, :cond_d

    .line 157
    .line 158
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 159
    .line 160
    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    if-eqz p2, :cond_c

    .line 167
    .line 168
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 169
    .line 170
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 171
    .line 172
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 173
    .line 174
    .line 175
    move-result-wide v5

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 185
    .line 186
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 187
    .line 188
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v5

    .line 192
    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->delete(J)V

    .line 193
    .line 194
    .line 195
    :cond_d
    :goto_4
    if-eq v0, p2, :cond_e

    .line 196
    .line 197
    move v3, v4

    .line 198
    :cond_e
    if-eqz v3, :cond_10

    .line 199
    .line 200
    if-eqz p2, :cond_f

    .line 201
    .line 202
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 203
    .line 204
    add-int/2addr v0, v4

    .line 205
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_f
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 209
    .line 210
    sub-int/2addr v0, v4

    .line 211
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 212
    .line 213
    :cond_10
    :goto_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 214
    .line 215
    if-eqz v0, :cond_11

    .line 216
    .line 217
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 218
    .line 219
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 220
    .line 221
    .line 222
    move-result-wide v8

    .line 223
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 224
    .line 225
    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 226
    .line 227
    move v7, p1

    .line 228
    move v10, p2

    .line 229
    invoke-virtual/range {v5 .. v10}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 230
    .line 231
    .line 232
    :cond_11
    move v1, v3

    .line 233
    :cond_12
    :goto_6
    iget-boolean p1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 234
    .line 235
    if-nez p1, :cond_13

    .line 236
    .line 237
    iget-boolean p1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 238
    .line 239
    if-nez p1, :cond_13

    .line 240
    .line 241
    if-eqz v1, :cond_13

    .line 242
    .line 243
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 249
    .line 250
    .line 251
    :cond_13
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 18
    .line 19
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 29
    .line 30
    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$4402(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 4
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 5
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 9
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method public setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 4
    .line 5
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 11
    .line 12
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ltz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 24
    .line 25
    :cond_2
    :goto_0
    if-ltz p1, :cond_5

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 29
    .line 30
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 31
    .line 32
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 33
    .line 34
    add-int/2addr v0, p2

    .line 35
    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 36
    .line 37
    iget-boolean p2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 42
    .line 43
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 44
    .line 45
    invoke-interface {p2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    iput-wide p1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 50
    .line 51
    :cond_3
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 59
    .line 60
    .line 61
    :cond_5
    return-void
.end method

.method public abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

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

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setVisibleRangeHint(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showContextMenu()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void
.end method

.method public smoothScrollBy(IIZZ)V
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

    .line 9
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

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ne v0, v4, :cond_2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 12
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZZ)V

    goto :goto_1

    .line 13
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 14
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_4
    :goto_1
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-lez p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v1, v0

    .line 17
    :goto_0
    if-le v1, v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int v0, v1, v0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    new-instance v2, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    mul-int/2addr v0, v3

    .line 51
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    mul-int/2addr v2, v3

    .line 60
    int-to-float v2, v2

    .line 61
    int-to-float v0, v0

    .line 62
    div-float/2addr v2, v0

    .line 63
    const/high16 v0, 0x3f400000    # 0.75f

    .line 64
    .line 65
    if-gez p1, :cond_2

    .line 66
    .line 67
    cmpg-float v3, v2, v0

    .line 68
    .line 69
    if-gez v3, :cond_2

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    if-lez p1, :cond_3

    .line 75
    .line 76
    cmpg-float v0, v2, v0

    .line 77
    .line 78
    if-gez v0, :cond_3

    .line 79
    .line 80
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    add-int/2addr v1, p1

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public touchModeDrawsInPressedState()Z
    .locals 3

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

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return v4

    .line 15
    :cond_0
    const/4 v5, 0x0

    .line 16
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    add-int/lit8 v7, v3, -0x1

    .line 25
    .line 26
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    iget-object v9, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 37
    .line 38
    const/16 v11, 0x22

    .line 39
    .line 40
    and-int/2addr v10, v11

    .line 41
    if-ne v10, v11, :cond_1

    .line 42
    .line 43
    iget v10, v9, Landroid/graphics/Rect;->top:I

    .line 44
    .line 45
    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v10, v5

    .line 49
    move v12, v10

    .line 50
    :goto_0
    sub-int/2addr v10, v6

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    sub-int/2addr v13, v12

    .line 56
    sub-int v12, v8, v13

    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    iget v14, v0, Landroid/view/View;->mPaddingBottom:I

    .line 63
    .line 64
    sub-int/2addr v13, v14

    .line 65
    iget v14, v0, Landroid/view/View;->mPaddingTop:I

    .line 66
    .line 67
    sub-int/2addr v13, v14

    .line 68
    if-gez v1, :cond_2

    .line 69
    .line 70
    add-int/lit8 v14, v13, -0x1

    .line 71
    .line 72
    neg-int v14, v14

    .line 73
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    add-int/lit8 v14, v13, -0x1

    .line 79
    .line 80
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    :goto_1
    if-gez v2, :cond_3

    .line 85
    .line 86
    sub-int/2addr v13, v4

    .line 87
    neg-int v13, v13

    .line 88
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    sub-int/2addr v13, v4

    .line 94
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    :goto_2
    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 99
    .line 100
    if-nez v13, :cond_4

    .line 101
    .line 102
    iget v14, v9, Landroid/graphics/Rect;->top:I

    .line 103
    .line 104
    sub-int v14, v6, v14

    .line 105
    .line 106
    iput v14, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    iget v14, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 110
    .line 111
    add-int/2addr v14, v2

    .line 112
    iput v14, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 113
    .line 114
    :goto_3
    add-int v14, v13, v3

    .line 115
    .line 116
    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 117
    .line 118
    if-ne v14, v15, :cond_5

    .line 119
    .line 120
    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 121
    .line 122
    add-int/2addr v5, v8

    .line 123
    iput v5, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    iget v5, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 127
    .line 128
    add-int/2addr v5, v2

    .line 129
    iput v5, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 130
    .line 131
    :goto_4
    if-nez v13, :cond_6

    .line 132
    .line 133
    iget v5, v9, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    if-lt v6, v5, :cond_6

    .line 136
    .line 137
    if-ltz v2, :cond_6

    .line 138
    .line 139
    move v5, v4

    .line 140
    goto :goto_5

    .line 141
    :cond_6
    const/4 v5, 0x0

    .line 142
    :goto_5
    if-ne v14, v15, :cond_7

    .line 143
    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    .line 149
    .line 150
    sub-int/2addr v6, v14

    .line 151
    if-gt v8, v6, :cond_7

    .line 152
    .line 153
    if-gtz v2, :cond_7

    .line 154
    .line 155
    move v6, v4

    .line 156
    goto :goto_6

    .line 157
    :cond_7
    const/4 v6, 0x0

    .line 158
    :goto_6
    if-nez v5, :cond_1c

    .line 159
    .line 160
    if-eqz v6, :cond_8

    .line 161
    .line 162
    goto/16 :goto_e

    .line 163
    .line 164
    :cond_8
    if-gez v2, :cond_9

    .line 165
    .line 166
    move v5, v4

    .line 167
    goto :goto_7

    .line 168
    :cond_9
    const/4 v5, 0x0

    .line 169
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_a

    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 176
    .line 177
    .line 178
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    iget v14, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    sub-int/2addr v14, v15

    .line 189
    if-eqz v5, :cond_f

    .line 190
    .line 191
    neg-int v7, v2

    .line 192
    iget v15, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 193
    .line 194
    and-int/2addr v15, v11

    .line 195
    if-ne v15, v11, :cond_b

    .line 196
    .line 197
    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 198
    .line 199
    add-int/2addr v7, v9

    .line 200
    :cond_b
    const/4 v9, 0x0

    .line 201
    const/4 v11, 0x0

    .line 202
    :goto_8
    if-ge v9, v3, :cond_e

    .line 203
    .line 204
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-lt v4, v7, :cond_c

    .line 213
    .line 214
    goto :goto_a

    .line 215
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 216
    .line 217
    add-int v4, v13, v9

    .line 218
    .line 219
    if-lt v4, v8, :cond_d

    .line 220
    .line 221
    if-ge v4, v14, :cond_d

    .line 222
    .line 223
    invoke-virtual {v15}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 224
    .line 225
    .line 226
    move/from16 v16, v3

    .line 227
    .line 228
    iget-object v3, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 229
    .line 230
    invoke-virtual {v3, v15, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 231
    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_d
    move/from16 v16, v3

    .line 235
    .line 236
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 237
    .line 238
    move/from16 v3, v16

    .line 239
    .line 240
    const/4 v4, 0x1

    .line 241
    goto :goto_8

    .line 242
    :cond_e
    :goto_a
    const/4 v4, 0x0

    .line 243
    goto :goto_c

    .line 244
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    sub-int/2addr v3, v2

    .line 249
    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 250
    .line 251
    and-int/2addr v4, v11

    .line 252
    if-ne v4, v11, :cond_10

    .line 253
    .line 254
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 255
    .line 256
    sub-int/2addr v3, v4

    .line 257
    :cond_10
    const/4 v4, 0x0

    .line 258
    const/4 v11, 0x0

    .line 259
    :goto_b
    if-ltz v7, :cond_13

    .line 260
    .line 261
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 266
    .line 267
    .line 268
    move-result v15

    .line 269
    if-gt v15, v3, :cond_11

    .line 270
    .line 271
    goto :goto_c

    .line 272
    :cond_11
    add-int/lit8 v11, v11, 0x1

    .line 273
    .line 274
    add-int v4, v13, v7

    .line 275
    .line 276
    if-lt v4, v8, :cond_12

    .line 277
    .line 278
    if-ge v4, v14, :cond_12

    .line 279
    .line 280
    invoke-virtual {v9}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 281
    .line 282
    .line 283
    iget-object v15, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 284
    .line 285
    invoke-virtual {v15, v9, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 286
    .line 287
    .line 288
    :cond_12
    add-int/lit8 v4, v7, -0x1

    .line 289
    .line 290
    move/from16 v17, v7

    .line 291
    .line 292
    move v7, v4

    .line 293
    move/from16 v4, v17

    .line 294
    .line 295
    goto :goto_b

    .line 296
    :cond_13
    :goto_c
    iget v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 297
    .line 298
    add-int/2addr v3, v1

    .line 299
    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 300
    .line 301
    const/4 v1, 0x1

    .line 302
    iput-boolean v1, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 303
    .line 304
    if-lez v11, :cond_14

    .line 305
    .line 306
    invoke-virtual {v0, v4, v11}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 307
    .line 308
    .line 309
    iget-object v1, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 310
    .line 311
    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 312
    .line 313
    .line 314
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_15

    .line 319
    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 321
    .line 322
    .line 323
    :cond_15
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 324
    .line 325
    .line 326
    if-eqz v5, :cond_16

    .line 327
    .line 328
    iget v1, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 329
    .line 330
    add-int/2addr v1, v11

    .line 331
    iput v1, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 332
    .line 333
    :cond_16
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-lt v10, v1, :cond_17

    .line 338
    .line 339
    if-ge v12, v1, :cond_18

    .line 340
    .line 341
    :cond_17
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 342
    .line 343
    .line 344
    :cond_18
    iget-object v1, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 345
    .line 346
    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 347
    .line 348
    .line 349
    const/4 v1, -0x1

    .line 350
    if-nez v6, :cond_19

    .line 351
    .line 352
    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 353
    .line 354
    if-eq v2, v1, :cond_19

    .line 355
    .line 356
    iget v1, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 357
    .line 358
    sub-int/2addr v2, v1

    .line 359
    if-ltz v2, :cond_1b

    .line 360
    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-ge v2, v1, :cond_1b

    .line 366
    .line 367
    iget v1, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 368
    .line 369
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 374
    .line 375
    .line 376
    goto :goto_d

    .line 377
    :cond_19
    iget v2, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 378
    .line 379
    if-eq v2, v1, :cond_1a

    .line 380
    .line 381
    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 382
    .line 383
    sub-int/2addr v2, v3

    .line 384
    if-ltz v2, :cond_1b

    .line 385
    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-ge v2, v3, :cond_1b

    .line 391
    .line 392
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 397
    .line 398
    .line 399
    goto :goto_d

    .line 400
    :cond_1a
    iget-object v1, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 403
    .line 404
    .line 405
    :cond_1b
    :goto_d
    const/4 v3, 0x0

    .line 406
    iput-boolean v3, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 407
    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 409
    .line 410
    .line 411
    return v3

    .line 412
    :cond_1c
    :goto_e
    move v1, v4

    .line 413
    const/4 v3, 0x0

    .line 414
    if-eqz v2, :cond_1d

    .line 415
    .line 416
    move v4, v1

    .line 417
    goto :goto_f

    .line 418
    :cond_1d
    move v4, v3

    .line 419
    :goto_f
    return v4
.end method

.method public updateScrollIndicators()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move v3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v2

    .line 16
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v1, v2

    .line 31
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method public updateSelectorState()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

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
