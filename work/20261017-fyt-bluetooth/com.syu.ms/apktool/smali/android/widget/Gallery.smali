.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$FlingRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z = false


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010070

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/widget/Gallery;->mSpacing:I

    const/16 v1, 0x190

    .line 5
    iput v1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 6
    new-instance v1, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 7
    new-instance v1, Landroid/widget/Gallery$1;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 9
    iput-boolean v1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 10
    iput-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 11
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 13
    sget-object v2, Li/a;->Gallery:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 14
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 15
    invoke-virtual {p0, p3}, Landroid/widget/Gallery;->setGravity(I)V

    .line 16
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-lez p2, :cond_1

    .line 17
    invoke-virtual {p0, p2}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    :cond_1
    const/4 p2, 0x2

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 19
    invoke-virtual {p0, p2}, Landroid/widget/Gallery;->setSpacing(I)V

    const/4 p2, 0x3

    const/high16 p3, 0x3f000000    # 0.5f

    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 21
    invoke-virtual {p0, p2}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 p1, p1, 0x800

    .line 24
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-void
.end method

.method public static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method public static synthetic access$1000(Landroid/widget/Gallery;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mPaddingRight:I

    return p0
.end method

.method public static synthetic access$1100(Landroid/widget/Gallery;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mPaddingRight:I

    return p0
.end method

.method public static synthetic access$1200(Landroid/widget/Gallery;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mPaddingLeft:I

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/Gallery;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method public static synthetic access$400(Landroid/widget/Gallery;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return p0
.end method

.method public static synthetic access$500(Landroid/widget/Gallery;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method public static synthetic access$600(Landroid/widget/Gallery;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p0
.end method

.method public static synthetic access$602(Landroid/widget/Gallery;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method public static synthetic access$702(Landroid/widget/Gallery;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method public static synthetic access$800(Landroid/widget/Gallery;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return p0
.end method

.method public static synthetic access$900(Landroid/widget/Gallery;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mPaddingLeft:I

    return p0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_1
    const/4 p2, 0x0

    .line 3
    iget v1, p0, Landroid/widget/Gallery;->mGravity:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget-object p2, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    sub-int p2, v0, p1

    goto :goto_2

    .line 5
    :cond_3
    iget-object p1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 6
    :cond_4
    iget-object p2, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    .line 7
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :goto_2
    return p2
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 3
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v0, :cond_2

    .line 4
    iget-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v7, :cond_0

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v4

    goto :goto_1

    :cond_0
    move v7, v4

    .line 5
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 7
    iget-object v6, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v1, v7

    invoke-virtual {v6, v9, v8}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_0

    .line 8
    :cond_2
    :goto_2
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v0, :cond_7

    goto :goto_6

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v5, v2

    move v6, v5

    :goto_3
    if-ltz v4, :cond_6

    .line 10
    iget-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v7, :cond_4

    sub-int v7, v0, v4

    goto :goto_4

    :cond_4
    move v7, v4

    .line 11
    :goto_4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v3, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 13
    iget-object v6, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v1, v7

    invoke-virtual {v6, v9, v8}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v4, v4, -0x1

    move v6, v7

    goto :goto_3

    .line 14
    :cond_6
    :goto_5
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v2, v6

    .line 15
    :goto_6
    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 16
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v0, :cond_8

    .line 17
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v5

    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    :cond_8
    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 4
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    return v0
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    :goto_0
    return-void
.end method

.method private fillToGalleryLeftLtr()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 2
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 4
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v4

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_0

    .line 6
    :cond_0
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v3, v5

    .line 7
    iput-boolean v4, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    move v5, v2

    :goto_0
    if-le v3, v1, :cond_1

    if-ltz v5, :cond_1

    .line 8
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v4, v5, v4

    invoke-direct {p0, v5, v4, v3, v2}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 9
    iput v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 2
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v2

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_0

    .line 7
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v3, 0x1

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 8
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v5

    .line 9
    iput-boolean v3, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    :goto_0
    if-le v2, v1, :cond_1

    .line 10
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v3, :cond_1

    .line 11
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v3, v4, v3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v2, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    :goto_0
    return-void
.end method

.method private fillToGalleryRightLtr()V
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 2
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 4
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v2, -0x1

    .line 5
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 6
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v2

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    .line 8
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v2, -0x1

    iput v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 9
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 10
    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    :goto_0
    if-ge v2, v1, :cond_1

    if-ge v6, v3, :cond_1

    .line 11
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v4, v6, v4

    invoke-direct {p0, v6, v4, v2, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 2
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 4
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v4

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_0

    .line 6
    :cond_0
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 7
    iput-boolean v4, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    :goto_0
    if-ge v3, v1, :cond_1

    if-ltz v2, :cond_1

    .line 8
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v2, v5

    invoke-direct {p0, v2, v5, v3, v4}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 9
    iput v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 4
    iget v1, p0, Landroid/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 5
    iget v1, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 6
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    return-object p1
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 3
    invoke-super {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 4
    :cond_0
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private scrollIntoSlots()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 3
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v1

    sub-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    :cond_2
    :goto_0
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v0

    invoke-static {p1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    .line 3
    iget-object p1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {p1, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setSelectionToCenterChild()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    const v0, 0x7fffffff

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_4

    .line 5
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-gt v5, v1, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    if-lt v5, v1, :cond_2

    move v2, v3

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v4, v0, :cond_3

    move v2, v3

    move v0, v4

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 8
    :cond_4
    :goto_1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v0, v2

    .line 9
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_5

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    :cond_5
    return-void
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery$LayoutParams;

    .line 3
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    const/4 v2, 0x0

    if-eq p4, v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    if-nez p2, :cond_2

    move v2, v3

    .line 4
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iget p2, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 6
    iget v1, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-direct {p0, p1, v3}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result p2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz p4, :cond_3

    add-int/2addr v1, p3

    goto :goto_1

    :cond_3
    sub-int p4, p3, v1

    move v1, p3

    move p3, p4

    .line 11
    :goto_1
    invoke-virtual {p1, p3, p2, v1, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private updateSelectedItemMetadata()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/widget/Gallery$LayoutParams;

    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dispatchSetPressed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public getChildHeight(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 2
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method public getLimitedMotionScrollAmount(ZI)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return p2

    .line 3
    :cond_1
    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 4
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    if-eqz p1, :cond_2

    if-gt v0, v2, :cond_3

    return v1

    :cond_2
    if-lt v0, v2, :cond_3

    return v1

    :cond_3
    sub-int/2addr v2, v0

    if-eqz p1, :cond_4

    .line 5
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    return p1
.end method

.method public layout(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 2
    iget-object p1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 3
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    .line 4
    iget-boolean p1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->handleDataChanged()V

    .line 6
    :cond_0
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    return-void

    .line 8
    :cond_1
    iget p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz p1, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->recycleAllViews()V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 13
    iput p1, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 14
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    const/4 v2, 0x1

    .line 15
    invoke-direct {p0, v1, p1, p1, v2}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v1

    .line 16
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    add-int/2addr p2, v0

    .line 17
    invoke-virtual {v1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 18
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 19
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 20
    iget-object p2, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 23
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 24
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 25
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 26
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method public moveNext()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public movePrevious()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsSpinner;->pointToPosition(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 3
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5
    :cond_0
    iput-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_0

    iput-boolean p2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float p3, p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    return p2
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 4
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_1

    const/16 v0, 0x1000

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_2

    const/16 v0, 0x2000

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x42

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->moveNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    return v1

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->movePrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    return v1

    .line 5
    :cond_0
    :pswitch_2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 5
    new-instance p1, Landroid/widget/Gallery$2;

    invoke-direct {p1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, p2

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Landroid/widget/Gallery;->layout(IZ)V

    .line 4
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 p4, 0x0

    if-nez p1, :cond_1

    .line 3
    iget-boolean p1, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz p1, :cond_2

    .line 4
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_0

    iput-boolean p2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz p1, :cond_2

    iput-boolean p4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_2
    :goto_0
    float-to-int p1, p3

    mul-int/lit8 p1, p1, -0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 8
    iput-boolean p4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz p1, :cond_2

    .line 2
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 3
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez p1, :cond_0

    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    :cond_1
    :goto_0
    return v0
.end method

.method public onUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    const/4 v1, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez p1, :cond_2

    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez p1, :cond_2

    .line 3
    iget p2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result p1

    return p1

    :cond_2
    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez p1, :cond_4

    iget p2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int/2addr p1, v0

    if-ge p2, p1, :cond_4

    .line 6
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p2, p1

    add-int/2addr p2, v0

    .line 7
    invoke-direct {p0, p2}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public selectionChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSelectedPositionInt(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    return-void
.end method

.method public showContextMenu()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method public trackMotionScroll(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2
    :goto_0
    invoke-virtual {p0, v1, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 3
    iget-object p1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {p1, v0}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 4
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 5
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 6
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    if-eqz v1, :cond_3

    .line 7
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 9
    :goto_1
    iget-object p1, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p1}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 10
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 11
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, p1

    sub-int/2addr v1, v2

    .line 15
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 16
    :cond_4
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
