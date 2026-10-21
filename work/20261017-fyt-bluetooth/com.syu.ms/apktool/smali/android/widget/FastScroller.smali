.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATTRS:[I

.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static TOP:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHasPendingDrag:Z

.field private final mHasTrackImage:Z

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private final mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/FastScroller;->ATTRS:[I

    .line 2
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    .line 3
    new-instance v0, Landroid/widget/FastScroller$4;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 4
    new-instance v0, Landroid/widget/FastScroller$5;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 5
    new-instance v0, Landroid/widget/FastScroller$6;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 6
    new-instance v0, Landroid/widget/FastScroller$7;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    return-void

    :array_0
    .array-data 4
        0x1010359
        0x1010336
        0x1010339
        0x1010337
        0x1010338
        0x101033a
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 7
    iput v2, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 8
    new-instance v2, Landroid/widget/FastScroller$1;

    invoke-direct {v2, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    .line 9
    new-instance v2, Landroid/widget/FastScroller$2;

    invoke-direct {v2, p0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 10
    new-instance v2, Landroid/widget/FastScroller$3;

    invoke-direct {v2, p0}, Landroid/widget/FastScroller$3;-><init>(Landroid/widget/FastScroller;)V

    iput-object v2, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 11
    iput-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 13
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 16
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Landroid/widget/FastScroller;->ATTRS:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 19
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v6, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 21
    iget v7, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    iget v8, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    invoke-direct {p0, v7, v8}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 22
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 23
    iput-boolean v7, p0, Landroid/widget/FastScroller;->mHasTrackImage:Z

    .line 24
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    invoke-virtual {v2, v6}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 27
    :cond_0
    iput-boolean v8, p0, Landroid/widget/FastScroller;->mHasTrackImage:Z

    move v0, v8

    .line 28
    :goto_0
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 31
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {v2, v6}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 33
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 34
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    if-gtz v9, :cond_3

    :cond_2
    const v9, 0x1050018

    .line 35
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 36
    invoke-virtual {v6, v9}, Landroid/view/View;->setMinimumWidth(I)V

    const v10, 0x1050019

    .line 37
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setMinimumHeight(I)V

    .line 38
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 39
    :cond_3
    iput v0, p0, Landroid/widget/FastScroller;->mWidth:I

    const v0, 0x1050015

    .line 40
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 41
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {v6, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 43
    invoke-virtual {v6, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 v9, 0x0

    .line 44
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 45
    invoke-virtual {v2, v6}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const v6, 0x1050017

    .line 46
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    sub-int/2addr v0, v4

    .line 47
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 48
    invoke-direct {p0, v3, v5}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v4, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 50
    invoke-virtual {v4, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 51
    invoke-virtual {v2, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 52
    invoke-direct {p0, v3, v5}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 53
    invoke-virtual {v4, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 54
    invoke-virtual {v4, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 55
    invoke-virtual {v2, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const/4 v0, 0x3

    .line 56
    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, v1, v8

    const/4 v0, 0x4

    .line 57
    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, v1, v7

    const/4 v0, 0x5

    .line 58
    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 59
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 61
    iput-boolean v7, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 62
    iput v7, p0, Landroid/widget/FastScroller;->mState:I

    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    :goto_1
    iput-boolean v7, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 64
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 65
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 68
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/FastScroller;)Landroid/widget/AbsListView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/widget/FastScroller;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    return-void
.end method

.method public static synthetic access$200(Landroid/widget/FastScroller;)F
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/FastScroller;F)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Landroid/widget/FastScroller;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->scrollTo(F)V

    return-void
.end method

.method public static synthetic access$502(Landroid/widget/FastScroller;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    return p1
.end method

.method public static synthetic access$600(Landroid/widget/FastScroller;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method public static synthetic access$700(Landroid/widget/FastScroller;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p0
.end method

.method public static synthetic access$702(Landroid/widget/FastScroller;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 7

    .line 1
    sget-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2
    sget-object v2, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    new-array v3, v1, [I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 3
    sget-object v3, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v1, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 4
    sget-object v5, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    new-array v6, v1, [I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v4

    aput-object v2, v5, v1

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object p1, v5, v0

    .line 5
    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 2
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private beginDrag()V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 2
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    return-void
.end method

.method private cancelFling()V
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050015

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const v3, 0x1050016

    .line 5
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 6
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 11
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p1, 0x11

    .line 12
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 14
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-object v3
.end method

.method private getPosFromItemCount(III)F
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_b

    .line 4
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v0, :cond_3

    goto/16 :goto_6

    .line 5
    :cond_3
    iget v0, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr p1, v0

    const/4 v3, 0x0

    if-gez p1, :cond_4

    return v3

    :cond_4
    sub-int/2addr p3, v0

    .line 6
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v3

    .line 9
    :goto_2
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 10
    iget-object v4, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v4, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v4

    .line 11
    iget-object v5, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v5, v5

    add-int/lit8 v6, v5, -0x1

    if-ge v0, v6, :cond_8

    add-int/lit8 v6, v0, 0x1

    if-ge v6, v5, :cond_7

    .line 12
    iget-object v7, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    goto :goto_3

    :cond_7
    add-int/lit8 v6, p3, -0x1

    :goto_3
    sub-int/2addr v6, v4

    goto :goto_4

    :cond_8
    sub-int v6, p3, v4

    :goto_4
    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    int-to-float v3, p1

    add-float/2addr v3, v1

    int-to-float v1, v4

    sub-float/2addr v3, v1

    int-to-float v1, v6

    div-float/2addr v3, v1

    :goto_5
    int-to-float v0, v0

    add-float/2addr v0, v3

    int-to-float v1, v5

    div-float/2addr v0, v1

    if-lez p1, :cond_a

    add-int/2addr p1, p2

    if-ne p1, p3, :cond_a

    .line 13
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 14
    iget-object p2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    :cond_a
    return v0

    :cond_b
    :goto_6
    int-to-float p1, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    return p1
.end method

.method private getPosFromMotionEvent(F)F
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 3
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    return v2

    :cond_0
    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-static {p1, v2, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    return p1
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 2
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 3
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 5
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 6
    :cond_0
    instance-of v2, v1, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_1

    .line 7
    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 8
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    .line 9
    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 10
    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 11
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_2

    .line 13
    move-object v0, v1

    check-cast v0, Landroid/widget/BaseAdapter;

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 14
    check-cast v1, Landroid/widget/SectionIndexer;

    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 15
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_2
    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 17
    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    aget-object v4, p2, v1

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isPointInside(FF)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->isPointInsideX(F)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroid/widget/FastScroller;->mHasTrackImage:Z

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->isPointInsideY(F)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPointInsideX(F)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private isPointInsideY(F)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 3
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layoutThumb()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutTrack()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 2
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 3
    iget-object v2, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/high16 v4, -0x80000000

    .line 5
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    .line 6
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 7
    invoke-virtual {v0, v3, v5}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 10
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 11
    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    .line 12
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    .line 13
    invoke-virtual {v0, v5, v1, v3, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, v0

    move v1, p2

    move v2, v1

    goto :goto_0

    .line 1
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 2
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 3
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 4
    :goto_0
    iget-object v3, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v1, v4, v1

    sub-int/2addr v1, p2

    const/high16 p2, -0x80000000

    .line 6
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 7
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 9
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 11
    div-int/lit8 p2, p2, 0xa

    add-int/2addr p2, v2

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p2

    sub-int/2addr v4, v0

    .line 13
    div-int/lit8 v4, v4, 0x2

    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    add-int/2addr v0, v4

    .line 14
    invoke-virtual {p3, v4, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move p3, v0

    move v1, p3

    move v2, v1

    goto :goto_0

    .line 1
    :cond_0
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 2
    iget v2, p3, Landroid/graphics/Rect;->top:I

    .line 3
    iget p3, p3, Landroid/graphics/Rect;->right:I

    .line 4
    :goto_0
    iget-object v3, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-nez p2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-boolean v5, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    :goto_1
    sub-int/2addr v4, v1

    sub-int/2addr v4, p3

    const/high16 v5, -0x80000000

    .line 9
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 10
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 11
    invoke-virtual {p1, v4, v0}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 13
    iget-boolean v4, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_4

    if-nez p2, :cond_3

    .line 14
    iget p2, v3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_2
    sub-int/2addr p2, p3

    sub-int p3, p2, v0

    goto :goto_4

    :cond_4
    if-nez p2, :cond_5

    .line 15
    iget p2, v3, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    :goto_3
    add-int p3, p2, v1

    add-int p2, p3, v0

    .line 16
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v2

    .line 17
    invoke-virtual {p4, p3, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private onStateDependencyChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->resolvePadding()V

    return-void
.end method

.method private postAutoHide()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private scrollTo(F)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 2
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 3
    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-nez v2, :cond_0

    move v3, v0

    goto :goto_0

    .line 4
    :cond_0
    array-length v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_b

    if-le v3, v4, :cond_b

    int-to-float v2, v3

    mul-float v5, p1, v2

    float-to-int v5, v5

    add-int/lit8 v6, v3, -0x1

    .line 5
    invoke-static {v5, v0, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 6
    iget-object v7, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    add-int/lit8 v8, v5, 0x1

    if-ge v5, v6, :cond_1

    .line 7
    iget-object v6, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    move v9, v5

    if-ne v6, v7, :cond_5

    move v10, v7

    :cond_2
    if-lez v9, :cond_4

    add-int/lit8 v9, v9, -0x1

    .line 8
    iget-object v10, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v10, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    if-eq v10, v7, :cond_3

    goto :goto_2

    :cond_3
    if-nez v9, :cond_2

    move v9, v5

    move v7, v10

    move v10, v0

    goto :goto_3

    :cond_4
    move v9, v5

    :goto_2
    move v7, v10

    :cond_5
    move v10, v9

    :goto_3
    add-int/lit8 v11, v8, 0x1

    :goto_4
    if-ge v11, v3, :cond_6

    .line 9
    iget-object v12, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v12, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    if-ne v12, v6, :cond_6

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    int-to-float v3, v9

    div-float/2addr v3, v2

    int-to-float v8, v8

    div-float/2addr v8, v2

    if-nez v1, :cond_7

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_5

    :cond_7
    const/high16 v2, 0x3e000000    # 0.125f

    int-to-float v11, v1

    div-float/2addr v2, v11

    :goto_5
    if-ne v9, v5, :cond_8

    sub-float v5, p1, v3

    cmpg-float v2, v5, v2

    if-gez v2, :cond_8

    goto :goto_6

    :cond_8
    sub-int/2addr v6, v7

    int-to-float v2, v6

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    sub-float/2addr v8, v3

    div-float/2addr v2, v8

    float-to-int p1, v2

    add-int/2addr v7, p1

    :goto_6
    sub-int/2addr v1, v4

    .line 10
    invoke-static {v7, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 11
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v2, v1, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_9

    .line 12
    check-cast v1, Landroid/widget/ExpandableListView;

    .line 13
    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v2

    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_8

    .line 14
    :cond_9
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_a

    .line 15
    check-cast v1, Landroid/widget/ListView;

    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_8

    .line 16
    :cond_a
    iget v0, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_8

    :cond_b
    int-to-float v2, v1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    sub-int/2addr v1, v4

    .line 17
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 18
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v2, v1, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_c

    .line 19
    check-cast v1, Landroid/widget/ExpandableListView;

    .line 20
    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v2

    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 21
    :cond_c
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_d

    .line 22
    check-cast v1, Landroid/widget/ListView;

    iget v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 23
    :cond_d
    iget v0, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    :goto_7
    const/4 v10, -0x1

    .line 24
    :goto_8
    iget p1, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    if-eq p1, v10, :cond_f

    .line 25
    iput v10, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 26
    invoke-direct {p0, v10}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result p1

    .line 27
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 28
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_9

    :cond_e
    if-eqz v0, :cond_f

    if-nez p1, :cond_f

    .line 29
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    :cond_f
    :goto_9
    return-void
.end method

.method private setState(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    move p1, v1

    .line 3
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_0

    .line 7
    :cond_4
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_0

    .line 8
    :cond_5
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    .line 9
    :goto_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 10
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    return-void
.end method

.method private setThumbPos(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 2
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 4
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 5
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    mul-float/2addr p1, v2

    add-float/2addr p1, v4

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 9
    iget v2, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v1, v1

    add-float/2addr v1, v3

    int-to-float v0, v0

    sub-float/2addr v0, v3

    .line 12
    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    sub-float/2addr p1, v3

    .line 13
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 14
    iget-object v0, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 15
    iget-object v0, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    .line 2
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    sget-wide v2, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 6
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 7
    iget-boolean v2, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 9
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    goto :goto_1

    .line 10
    :cond_1
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 11
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 12
    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-direct {p0, v3, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 14
    invoke-direct {p0, v3, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 15
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 17
    invoke-static {v3, v4}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v5

    const/4 v8, 0x0

    .line 18
    invoke-static {v2, v8}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 19
    iget-object v7, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 21
    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 22
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 23
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 24
    invoke-static {v1, v0}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v7, 0x64

    .line 25
    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 26
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 27
    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 28
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_3

    int-to-float v0, v0

    int-to-float v6, v1

    div-float/2addr v0, v6

    .line 31
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 32
    invoke-static {v3, v4}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 33
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 35
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    if-le v0, v1, :cond_4

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 36
    invoke-static {v2, v1}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 37
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 38
    :cond_4
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private transitionToDragging()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 4
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    new-array v8, v6, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v5

    invoke-static {v3, v7, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    .line 6
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 8
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    return-void
.end method

.method private transitionToHidden()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v7, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v2, v3

    const/4 v3, 0x4

    iget-object v7, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 4
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    :goto_0
    int-to-float v3, v3

    .line 5
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v6, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v5

    invoke-static {v7, v3, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 6
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    .line 7
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 8
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 9
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    return-void
.end method

.method private transitionToVisible()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/view/View;

    .line 4
    iget-object v9, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v6

    iget-object v9, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v2

    const/4 v9, 0x0

    invoke-static {v0, v9, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 5
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [Landroid/view/View;

    iget-object v11, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v11, v10, v5

    iget-object v11, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v11, v10, v6

    invoke-static {v8, v9, v10}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    aput-object v3, v7, v2

    .line 7
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 8
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 9
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    return-void
.end method

.method private updateContainerRect()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 3
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 5
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 8
    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    .line 9
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 10
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 11
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 12
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    move-result v0

    .line 14
    iget v2, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 15
    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 16
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLongList(II)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    div-int/2addr p2, p1

    const/4 p1, 0x4

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-boolean p2, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-eq p2, p1, :cond_1

    .line 3
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 4
    invoke-direct {p0}, Landroid/widget/FastScroller;->onStateDependencyChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 3
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    .line 5
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    :cond_2
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result p1

    if-nez p1, :cond_5

    .line 4
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    return v2

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 10
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    :cond_5
    :goto_0
    return v1
.end method

.method public onItemCountChanged(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_3

    .line 2
    :cond_0
    iput p2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 3
    iput p1, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    sub-int v0, p2, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 6
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScroller;->updateLongList(II)V

    :cond_3
    return-void
.end method

.method public onScroll(III)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    return-void

    :cond_0
    sub-int v0, p3, p2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    const/4 v0, 0x2

    if-eqz v1, :cond_2

    .line 3
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v1, v0, :cond_2

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 5
    :cond_2
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 6
    iget p2, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    if-eq p2, p1, :cond_3

    .line 7
    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    .line 8
    iget p1, p0, Landroid/widget/FastScroller;->mState:I

    if-eq p1, v0, :cond_3

    .line 9
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 10
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    :cond_3
    return-void
.end method

.method public onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 5
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 6
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_3

    .line 7
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 8
    :cond_3
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 11
    :cond_4
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 12
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 13
    :cond_5
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_a

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result p1

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 16
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v0, :cond_6

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->scrollTo(F)V

    :cond_6
    return v3

    .line 18
    :cond_7
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    if-eqz v0, :cond_8

    .line 19
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result p1

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 23
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 24
    :cond_8
    iget p1, p0, Landroid/widget/FastScroller;->mState:I

    if-ne p1, v2, :cond_a

    .line 25
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz p1, :cond_9

    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 27
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 28
    :cond_9
    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->setState(I)V

    .line 29
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    return v3

    :cond_a
    :goto_0
    return v1
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 3
    invoke-direct {p0}, Landroid/widget/FastScroller;->onStateDependencyChanged()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    .line 3
    invoke-direct {p0}, Landroid/widget/FastScroller;->onStateDependencyChanged()V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2
    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_4

    .line 3
    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_1
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 5
    iget-object p1, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    aget p1, p1, v0

    .line 6
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 10
    iget p1, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 11
    iget-object p1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    :cond_4
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 3
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    .line 4
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    .line 5
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    .line 6
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 7
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 12
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 14
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 15
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 16
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    return-void
.end method
