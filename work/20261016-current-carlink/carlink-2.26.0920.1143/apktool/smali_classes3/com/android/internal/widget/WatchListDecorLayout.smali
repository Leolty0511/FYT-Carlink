.class public Lcom/android/internal/widget/WatchListDecorLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private mBottomPanel:Landroid/view/View;

.field private mForegroundPaddingBottom:I

.field private mForegroundPaddingLeft:I

.field private mForegroundPaddingRight:I

.field private mForegroundPaddingTop:I

.field private mListView:Landroid/widget/ListView;

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/view/ViewTreeObserver;

.field private mPendingScroll:I

.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 3
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 4
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 5
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 9
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 10
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 11
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 15
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 16
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 17
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method private applyMeasureToChild(Landroid/view/View;II)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, -0x1

    .line 13
    if-ne v1, v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int/2addr p2, v1

    .line 24
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr p2, v1

    .line 29
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 30
    .line 31
    sub-int/2addr p2, v1

    .line 32
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 33
    .line 34
    sub-int/2addr p2, v1

    .line 35
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    add-int/2addr v1, v5

    .line 53
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 54
    .line 55
    add-int/2addr v1, v5

    .line 56
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 57
    .line 58
    add-int/2addr v1, v5

    .line 59
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    .line 61
    invoke-static {p2, v1, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    .line 67
    if-ne v1, v4, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sub-int/2addr p3, v1

    .line 78
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    sub-int/2addr p3, v1

    .line 83
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 84
    .line 85
    sub-int/2addr p3, v1

    .line 86
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 87
    .line 88
    sub-int/2addr p3, v0

    .line 89
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    add-int/2addr v1, v2

    .line 107
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 108
    .line 109
    add-int/2addr v1, v2

    .line 110
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 111
    .line 112
    add-int/2addr v1, v2

    .line 113
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    .line 115
    invoke-static {p3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private getPaddingLeftWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private getPaddingRightWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private measureAndGetHeight(Landroid/view/View;II)I
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 12
    .line 13
    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 28
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method private setScrolling(Landroid/view/View;F)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    cmpl-float v0, v0, p2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    instance-of v2, v1, Landroid/widget/ListView;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    check-cast v1, Landroid/widget/ListView;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string v1, "only one ListView child allowed"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    .line 59
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    .line 61
    and-int/lit8 v2, v2, 0x70

    .line 62
    .line 63
    const/16 v3, 0x30

    .line 64
    .line 65
    if-ne v2, v3, :cond_2

    .line 66
    .line 67
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 68
    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/16 v3, 0x50

    .line 75
    .line 76
    if-ne v2, v3, :cond_3

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 79
    .line 80
    if-nez v2, :cond_3

    .line 81
    .line 82
    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 83
    .line 84
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v9

    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v11, 0x0

    .line 16
    const/high16 v1, 0x40000000    # 2.0f

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v12, v11

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v12, 0x1

    .line 30
    :goto_1
    iget-object v0, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    move v5, v11

    .line 36
    move v13, v5

    .line 37
    move v14, v13

    .line 38
    move v15, v14

    .line 39
    :goto_2
    if-ge v13, v9, :cond_5

    .line 40
    .line 41
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    if-eq v0, v1, :cond_4

    .line 58
    .line 59
    :cond_2
    const/4 v3, 0x0

    .line 60
    const/16 v16, 0x0

    .line 61
    .line 62
    move-object/from16 v0, p0

    .line 63
    .line 64
    move-object v1, v4

    .line 65
    move/from16 v2, p1

    .line 66
    .line 67
    move-object/from16 v17, v4

    .line 68
    .line 69
    move/from16 v4, p2

    .line 70
    .line 71
    move v10, v5

    .line 72
    move/from16 v5, v16

    .line 73
    .line 74
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    .line 83
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 88
    .line 89
    add-int/2addr v1, v2

    .line 90
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 91
    .line 92
    add-int/2addr v1, v2

    .line 93
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 102
    .line 103
    add-int/2addr v1, v2

    .line 104
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 105
    .line 106
    add-int/2addr v1, v2

    .line 107
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredState()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-static {v10, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v12, :cond_4

    .line 120
    .line 121
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    .line 123
    const/4 v2, -0x1

    .line 124
    if-eq v1, v2, :cond_3

    .line 125
    .line 126
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    .line 128
    if-ne v0, v2, :cond_4

    .line 129
    .line 130
    :cond_3
    iget-object v0, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 131
    .line 132
    move-object/from16 v1, v17

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    move v10, v5

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    add-int/2addr v0, v1

    .line 150
    add-int/2addr v0, v14

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    add-int/2addr v1, v2

    .line 160
    add-int/2addr v1, v15

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v2, :cond_6

    .line 182
    .line 183
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    :cond_6
    invoke-static {v0, v7, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    shl-int/lit8 v2, v10, 0x10

    .line 204
    .line 205
    invoke-static {v1, v8, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 210
    .line 211
    .line 212
    iget-object v0, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 213
    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    iget v1, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 217
    .line 218
    if-eqz v1, :cond_7

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 221
    .line 222
    .line 223
    iput v11, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 224
    .line 225
    :cond_7
    iget-object v0, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    iget-object v1, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 232
    .line 233
    invoke-direct {v6, v1, v7, v8}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    iget-object v1, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    iget-object v2, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 248
    .line 249
    invoke-direct {v6, v2, v7, v8}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    iget-object v2, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 258
    .line 259
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-ne v0, v2, :cond_8

    .line 264
    .line 265
    iget-object v2, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 266
    .line 267
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eq v1, v2, :cond_9

    .line 272
    .line 273
    :cond_8
    iget v2, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 274
    .line 275
    iget-object v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 276
    .line 277
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    sub-int/2addr v3, v0

    .line 282
    add-int/2addr v3, v2

    .line 283
    iput v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    .line 284
    .line 285
    iget-object v2, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 286
    .line 287
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    iget-object v4, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 292
    .line 293
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 298
    .line 299
    .line 300
    :cond_9
    iget-object v0, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    const/4 v1, 0x1

    .line 307
    if-le v0, v1, :cond_c

    .line 308
    .line 309
    :goto_3
    if-ge v11, v0, :cond_c

    .line 310
    .line 311
    iget-object v1, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Landroid/view/View;

    .line 318
    .line 319
    iget-object v2, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 320
    .line 321
    if-eqz v2, :cond_a

    .line 322
    .line 323
    iget-object v2, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 324
    .line 325
    if-eq v1, v2, :cond_b

    .line 326
    .line 327
    iget-object v2, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 328
    .line 329
    if-eq v1, v2, :cond_b

    .line 330
    .line 331
    :cond_a
    invoke-direct {v6, v1, v7, v8}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    .line 332
    .line 333
    .line 334
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_c
    return-void
.end method

.method public onScrollChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    int-to-float v3, v3

    .line 45
    sub-float/2addr v0, v3

    .line 46
    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    int-to-float v3, v3

    .line 53
    sub-float/2addr v0, v3

    .line 54
    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    neg-int v1, v1

    .line 65
    int-to-float v1, v1

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    .line 71
    .line 72
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-lez v0, :cond_5

    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    add-int/lit8 v1, v1, -0x1

    .line 100
    .line 101
    if-lt v0, v1, :cond_4

    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    add-int/lit8 v1, v1, -0x1

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    int-to-float v0, v0

    .line 126
    add-float/2addr v3, v0

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    int-to-float v0, v0

    .line 134
    sub-float/2addr v3, v0

    .line 135
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    int-to-float v1, v1

    .line 150
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    .line 155
    .line 156
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_1
    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getForegroundGravity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getForegroundGravity()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x77

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 38
    .line 39
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 42
    .line 43
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 46
    .line 47
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 48
    .line 49
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    .line 54
    .line 55
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    .line 56
    .line 57
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    .line 58
    .line 59
    iput p1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method
