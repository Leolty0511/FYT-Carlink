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
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/widget/Gallery;->mSpacing:I

    const/16 v1, 0x190

    .line 6
    iput v1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 7
    new-instance v1, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 8
    new-instance v1, Landroid/widget/Gallery$1;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 10
    iput-boolean v1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 11
    iput-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 12
    sget-object v2, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 14
    invoke-virtual {p0, p3}, Landroid/widget/Gallery;->setGravity(I)V

    .line 15
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-lez p2, :cond_1

    .line 16
    invoke-virtual {p0, p2}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    :cond_1
    const/4 p2, 0x2

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 18
    invoke-virtual {p0, p2}, Landroid/widget/Gallery;->setSpacing(I)V

    const/4 p2, 0x3

    const/high16 p3, 0x3f000000    # 0.5f

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 20
    invoke-virtual {p0, p2}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 p1, p1, 0x400

    or-int/lit16 p1, p1, 0x800

    .line 23
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-void
.end method

.method public static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method public static synthetic access$1000(Landroid/widget/Gallery;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mPaddingRight:I

    return p0
.end method

.method public static synthetic access$1100(Landroid/widget/Gallery;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mPaddingRight:I

    return p0
.end method

.method public static synthetic access$1200(Landroid/widget/Gallery;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mPaddingLeft:I

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/Gallery;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method public static synthetic access$400(Landroid/widget/Gallery;)I
    .locals 0

    iget p0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return p0
.end method

.method public static synthetic access$500(Landroid/widget/Gallery;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method public static synthetic access$600(Landroid/widget/Gallery;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p0
.end method

.method public static synthetic access$602(Landroid/widget/Gallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method public static synthetic access$702(Landroid/widget/Gallery;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method public static synthetic access$800(Landroid/widget/Gallery;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return p0
.end method

.method public static synthetic access$900(Landroid/widget/Gallery;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mPaddingLeft:I

    return p0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    :goto_1
    iget p2, p0, Landroid/widget/Gallery;->mGravity:I

    .line 24
    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    if-eq p2, v1, :cond_4

    .line 28
    .line 29
    const/16 v1, 0x30

    .line 30
    .line 31
    if-eq p2, v1, :cond_3

    .line 32
    .line 33
    const/16 v1, 0x50

    .line 34
    .line 35
    if-eq p2, v1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iget-object p2, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    sub-int/2addr v0, p2

    .line 44
    sub-int p1, v0, p1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    iget-object p1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    iget-object p2, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 55
    .line 56
    sub-int/2addr v0, v1

    .line 57
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    sub-int/2addr v0, p2

    .line 60
    sub-int/2addr v0, p1

    .line 61
    div-int/lit8 v0, v0, 0x2

    .line 62
    .line 63
    add-int p1, v0, p2

    .line 64
    .line 65
    :goto_2
    return p1
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

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
    const/4 v2, 0x0

    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 11
    .line 12
    move v4, v2

    .line 13
    move v5, v4

    .line 14
    move v6, v5

    .line 15
    :goto_0
    if-ge v4, v0, :cond_2

    .line 16
    .line 17
    iget-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 18
    .line 19
    if-eqz v7, :cond_0

    .line 20
    .line 21
    add-int/lit8 v7, v0, -0x1

    .line 22
    .line 23
    sub-int/2addr v7, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move v7, v4

    .line 26
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    if-lt v9, v3, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    iget-object v6, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 40
    .line 41
    add-int v9, v1, v7

    .line 42
    .line 43
    invoke-virtual {v6, v9, v8}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    move v6, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_2
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 51
    .line 52
    if-nez v0, :cond_7

    .line 53
    .line 54
    goto :goto_6

    .line 55
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    .line 60
    .line 61
    sub-int/2addr v3, v4

    .line 62
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    move v4, v0

    .line 65
    move v5, v2

    .line 66
    move v6, v5

    .line 67
    :goto_3
    if-ltz v4, :cond_6

    .line 68
    .line 69
    iget-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 70
    .line 71
    if-eqz v7, :cond_4

    .line 72
    .line 73
    sub-int v7, v0, v4

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    move v7, v4

    .line 77
    :goto_4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-gt v9, v3, :cond_5

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    iget-object v6, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 91
    .line 92
    add-int v9, v1, v7

    .line 93
    .line 94
    invoke-virtual {v6, v9, v8}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v4, v4, -0x1

    .line 98
    .line 99
    move v6, v7

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    :goto_5
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 102
    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_7
    move v2, v6

    .line 107
    :goto_6
    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 108
    .line 109
    .line 110
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 111
    .line 112
    if-eq p1, v0, :cond_8

    .line 113
    .line 114
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 115
    .line 116
    add-int/2addr p1, v5

    .line 117
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 118
    .line 119
    :cond_8
    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;IJFFZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 7
    .line 8
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    move-wide v4, p3

    .line 12
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v6

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 26
    .line 27
    if-eqz p7, :cond_1

    .line 28
    .line 29
    invoke-super {p0, p1, p5, p6}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;FF)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 41
    .line 42
    .line 43
    :cond_3
    return v0
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    const/4 v1, 0x0

    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private fillToGalleryLeftLtr()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 2
    .line 3
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 14
    .line 15
    sub-int/2addr v5, v4

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sub-int/2addr v3, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v3, p0, Landroid/view/View;->mRight:I

    .line 23
    .line 24
    iget v5, p0, Landroid/view/View;->mLeft:I

    .line 25
    .line 26
    sub-int/2addr v3, v5

    .line 27
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    .line 28
    .line 29
    sub-int/2addr v3, v5

    .line 30
    iput-boolean v4, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    .line 31
    .line 32
    move v5, v2

    .line 33
    :goto_0
    if-le v3, v1, :cond_1

    .line 34
    .line 35
    if-ltz v5, :cond_1

    .line 36
    .line 37
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 38
    .line 39
    sub-int v4, v5, v4

    .line 40
    .line 41
    invoke-direct {p0, v5, v4, v3, v2}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iput v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-int/2addr v3, v0

    .line 52
    add-int/lit8 v5, v5, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 2
    .line 3
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    add-int/lit8 v3, v2, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 18
    .line 19
    add-int/2addr v4, v2

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-int/2addr v2, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    add-int/lit8 v4, v2, -0x1

    .line 30
    .line 31
    iput v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 32
    .line 33
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 34
    .line 35
    iget v5, p0, Landroid/view/View;->mLeft:I

    .line 36
    .line 37
    sub-int/2addr v2, v5

    .line 38
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    .line 39
    .line 40
    sub-int/2addr v2, v5

    .line 41
    iput-boolean v3, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    .line 42
    .line 43
    :goto_0
    if-le v2, v1, :cond_1

    .line 44
    .line 45
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 46
    .line 47
    if-ge v4, v3, :cond_1

    .line 48
    .line 49
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 50
    .line 51
    sub-int v3, v4, v3

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-direct {p0, v4, v3, v2, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sub-int/2addr v2, v0

    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private fillToGalleryRightLtr()V
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 2
    .line 3
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 4
    .line 5
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 16
    .line 17
    add-int/lit8 v4, v2, -0x1

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x1

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 27
    .line 28
    add-int/2addr v6, v2

    .line 29
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v2, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 36
    .line 37
    add-int/lit8 v6, v2, -0x1

    .line 38
    .line 39
    iput v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 40
    .line 41
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 42
    .line 43
    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    .line 44
    .line 45
    :goto_0
    if-ge v2, v1, :cond_1

    .line 46
    .line 47
    if-ge v6, v3, :cond_1

    .line 48
    .line 49
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 50
    .line 51
    sub-int v4, v6, v4

    .line 52
    .line 53
    invoke-direct {p0, v6, v4, v2, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/2addr v2, v0

    .line 62
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 2
    .line 3
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 4
    .line 5
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 20
    .line 21
    sub-int/2addr v2, v4

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    add-int/2addr v3, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 29
    .line 30
    iput-boolean v4, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    .line 31
    .line 32
    :goto_0
    if-ge v3, v1, :cond_1

    .line 33
    .line 34
    if-ltz v2, :cond_1

    .line 35
    .line 36
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 37
    .line 38
    sub-int v5, v2, v5

    .line 39
    .line 40
    invoke-direct {p0, v2, v5, v3, v4}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iput v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/2addr v3, v0

    .line 51
    add-int/lit8 v2, v2, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-static {v0, v2, v3, v1}, Landroid/app/m;->b(IIII)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget v1, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/2addr v2, p1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 29
    .line 30
    iget v1, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 31
    .line 32
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 37
    .line 38
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 50
    .line 51
    .line 52
    return-object p1
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 7
    .line 8
    invoke-super {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v1, v0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr v0, p1

    .line 16
    iget-object p1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method private setSelectionToCenterChild()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-gt v2, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    const v2, 0x7fffffff

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    if-ltz v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-gt v5, v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-lt v5, v1, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    sub-int/2addr v5, v1

    .line 57
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    sub-int/2addr v4, v1

    .line 66
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-ge v4, v2, :cond_3

    .line 75
    .line 76
    move v3, v0

    .line 77
    move v2, v4

    .line 78
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    move v0, v3

    .line 82
    :goto_1
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 83
    .line 84
    add-int/2addr v1, v0

    .line 85
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 86
    .line 87
    if-eq v1, v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 96
    .line 97
    .line 98
    :cond_5
    return-void
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/Gallery$LayoutParams;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/Gallery$LayoutParams;

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eq p4, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v1, v2

    .line 23
    :goto_0
    const/4 v3, 0x1

    .line 24
    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 25
    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    move v2, v3

    .line 30
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 31
    .line 32
    .line 33
    iget p2, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 34
    .line 35
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    add-int/2addr v2, v1

    .line 42
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    invoke-static {p2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iget v1, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 49
    .line 50
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 55
    .line 56
    add-int/2addr v4, v2

    .line 57
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    .line 59
    invoke-static {v1, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1, v3}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    add-int/2addr v0, p2

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz p4, :cond_3

    .line 80
    .line 81
    add-int/2addr v1, p3

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    sub-int p4, p3, v1

    .line 84
    .line 85
    move v1, p3

    .line 86
    move p3, p4

    .line 87
    :goto_1
    invoke-virtual {p1, p3, p2, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 10
    .line 11
    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v5, p2

    .line 18
    move v6, p3

    .line 19
    move v7, p4

    .line 20
    invoke-direct/range {v0 .. v7}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method private showContextMenuInternal(FFZ)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 19
    .line 20
    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 21
    .line 22
    move-object v1, p0

    .line 23
    move v6, p1

    .line 24
    move v7, p2

    .line 25
    move v8, p3

    .line 26
    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method private updateSelectedItemMetadata()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4
    .line 5
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 31
    .line 32
    .line 33
    :cond_1
    if-eqz v0, :cond_2

    .line 34
    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

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

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dispatchSetPressed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

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

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 2

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

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method public getLimitedMotionScrollAmount(ZI)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 13
    .line 14
    sub-int/2addr v0, v2

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return p2

    .line 22
    :cond_1
    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    if-gt v0, v2, :cond_3

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    if-lt v0, v2, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    sub-int/2addr v2, v0

    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    :goto_1
    return p1
.end method

.method public layout(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 12
    .line 13
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    sub-int/2addr v0, p2

    .line 17
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    sub-int/2addr v0, p1

    .line 20
    iget-boolean p1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/AdapterView;->handleDataChanged()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 36
    .line 37
    if-ltz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->recycleAllViews()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput p1, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 50
    .line 51
    iput p1, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 52
    .line 53
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 54
    .line 55
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-direct {p0, v1, p1, p1, v2}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    div-int/lit8 v0, v0, 0x2

    .line 63
    .line 64
    add-int/2addr v0, p2

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    div-int/lit8 p2, p2, 0x2

    .line 70
    .line 71
    sub-int/2addr v0, p2

    .line 72
    iget p2, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 73
    .line 74
    add-int/2addr v0, p2

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 93
    .line 94
    .line 95
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 96
    .line 97
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 98
    .line 99
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public moveDirection(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    neg-int p1, p1

    .line 8
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 9
    .line 10
    add-int/2addr v0, p1

    .line 11
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 12
    .line 13
    if-lez p1, :cond_1

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    if-ge v0, p1, :cond_1

    .line 18
    .line 19
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 20
    .line 21
    sub-int/2addr v0, p1

    .line 22
    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/view/GestureDetector;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    float-to-int p1, p1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsSpinner;->pointToPosition(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 27
    .line 28
    sub-int/2addr p1, v1

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iput-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 39
    .line 40
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iput-boolean p2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 18
    .line 19
    neg-float p3, p3

    .line 20
    float-to-int p3, p3

    .line 21
    invoke-virtual {p1, p3}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 22
    .line 23
    .line 24
    return p2
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 26
    .line 27
    sub-int/2addr v0, v1

    .line 28
    if-ge v2, v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x1000

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 42
    .line 43
    if-lez v0, :cond_2

    .line 44
    .line 45
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 46
    .line 47
    if-lez v0, :cond_2

    .line 48
    .line 49
    const/16 v0, 0x2000

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x42

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->moveDirection(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :pswitch_1
    const/4 v0, -0x1

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->moveDirection(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    :pswitch_2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/widget/Gallery$2;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-long v0, p2

    .line 30
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 34
    .line 35
    iget p2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 36
    .line 37
    sub-int/2addr p1, p2

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget p2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 43
    .line 44
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 45
    .line 46
    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Landroid/widget/Gallery;->layout(IZ)V

    .line 9
    .line 10
    .line 11
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 12
    .line 13
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 17
    .line 18
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    const/4 v8, 0x1

    .line 29
    move-object v1, p0

    .line 30
    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5
    .line 6
    .line 7
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 8
    .line 9
    const/4 p4, 0x0

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-boolean p1, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iput-boolean p2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 23
    .line 24
    const-wide/16 v0, 0xfa

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iput-boolean p4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 35
    .line 36
    :cond_2
    :goto_0
    float-to-int p1, p3

    .line 37
    mul-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 40
    .line 41
    .line 42
    iput-boolean p4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 43
    .line 44
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

    .line 2
    .line 3
    if-ltz p1, :cond_2

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6
    .line 7
    sub-int/2addr p1, v0

    .line 8
    invoke-direct {p0, p1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 16
    .line 17
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 22
    .line 23
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 24
    .line 25
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x3

    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return v0
.end method

.method public onUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2

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
    const/4 v1, 0x0

    .line 12
    if-eq p1, p2, :cond_3

    .line 13
    .line 14
    const/16 p2, 0x2000

    .line 15
    .line 16
    if-eq p1, p2, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 26
    .line 27
    if-lez p1, :cond_2

    .line 28
    .line 29
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 30
    .line 31
    if-lez p1, :cond_2

    .line 32
    .line 33
    iget p2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 34
    .line 35
    sub-int/2addr p1, p2

    .line 36
    sub-int/2addr p1, v0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_2
    return v1

    .line 43
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 50
    .line 51
    if-lez p1, :cond_4

    .line 52
    .line 53
    iget p2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 54
    .line 55
    sub-int/2addr p1, v0

    .line 56
    if-ge p2, p1, :cond_4

    .line 57
    .line 58
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 59
    .line 60
    sub-int/2addr p2, p1

    .line 61
    add-int/2addr p2, v0

    .line 62
    invoke-direct {p0, p2}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    return p1

    .line 67
    :cond_4
    return v1
.end method

.method public selectionChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setSelectedPositionInt(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    return-void
.end method

.method public showContextMenu()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v1}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

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
    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public trackMotionScroll(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-gez p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move v1, v0

    .line 14
    :goto_0
    invoke-virtual {p0, v1, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eq v2, p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 21
    .line 22
    invoke-static {p1, v0}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 32
    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-object p1, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    div-int/lit8 p1, p1, 0x2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    div-int/lit8 v2, v2, 0x2

    .line 70
    .line 71
    add-int/2addr v1, p1

    .line 72
    sub-int/2addr v1, v2

    .line 73
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 74
    .line 75
    :cond_4
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
