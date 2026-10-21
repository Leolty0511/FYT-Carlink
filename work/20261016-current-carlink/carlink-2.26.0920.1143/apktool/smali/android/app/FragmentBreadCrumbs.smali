.class public Landroid/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_GRAVITY:I = 0x800013


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContainer:Landroid/widget/LinearLayout;

.field private mGravity:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResId:I

.field mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field mParentEntry:Landroid/app/BackStackRecord;

.field private mTextColor:I

.field mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x111003b

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 6
    new-instance v0, Landroid/app/FragmentBreadCrumbs$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentBreadCrumbs$1;-><init>(Landroid/app/FragmentBreadCrumbs;)V

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 7
    sget-object v0, Lcom/android/internal/R$styleable;->FragmentBreadCrumbs:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, 0x800013

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    const/4 p2, 0x2

    const p4, 0x1090064

    .line 9
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .locals 0

    iget-object p0, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object p0
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Landroid/app/BackStackRecord;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 9
    .line 10
    :goto_0
    return-object v0

    .line 11
    :cond_1
    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 12
    .line 13
    return-object p1
.end method

.method private getPreEntryCount()I
    .locals 4

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    add-int/2addr p3, p2

    .line 20
    iget p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 21
    .line 22
    sub-int/2addr p3, p4

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    iget p5, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    .line 28
    .line 29
    const v0, 0x800007

    .line 30
    .line 31
    .line 32
    and-int/2addr p5, v0

    .line 33
    invoke-static {p5, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    const/4 p5, 0x1

    .line 38
    if-eq p4, p5, :cond_2

    .line 39
    .line 40
    const/4 p5, 0x5

    .line 41
    if-eq p4, p5, :cond_1

    .line 42
    .line 43
    iget p4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 46
    .line 47
    .line 48
    move-result p5

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget p4, p0, Landroid/view/View;->mRight:I

    .line 51
    .line 52
    iget p5, p0, Landroid/view/View;->mLeft:I

    .line 53
    .line 54
    sub-int/2addr p4, p5

    .line 55
    iget p5, p0, Landroid/view/View;->mPaddingRight:I

    .line 56
    .line 57
    sub-int p5, p4, p5

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    sub-int p4, p5, p4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget p4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 67
    .line 68
    iget p5, p0, Landroid/view/View;->mRight:I

    .line 69
    .line 70
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 71
    .line 72
    sub-int/2addr p5, v0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    sub-int/2addr p5, v0

    .line 78
    div-int/lit8 p5, p5, 0x2

    .line 79
    .line 80
    add-int/2addr p4, p5

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result p5

    .line 85
    :goto_0
    add-int/2addr p5, p4

    .line 86
    :goto_1
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 87
    .line 88
    if-ge p4, v0, :cond_3

    .line 89
    .line 90
    move p4, v0

    .line 91
    :cond_3
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 92
    .line 93
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 94
    .line 95
    sub-int v2, v0, v1

    .line 96
    .line 97
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    .line 98
    .line 99
    sub-int/2addr v2, v3

    .line 100
    if-le p5, v2, :cond_4

    .line 101
    .line 102
    sub-int/2addr v0, v1

    .line 103
    sub-int p5, v0, v3

    .line 104
    .line 105
    :cond_4
    invoke-virtual {p1, p4, p2, p5, p3}, Landroid/view/View;->layout(IIII)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    const/16 v7, 0x8

    .line 20
    .line 21
    if-eq v6, v7, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v5, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-static {v4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 54
    .line 55
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 56
    .line 57
    add-int/2addr v0, v1

    .line 58
    add-int/2addr v0, v2

    .line 59
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 60
    .line 61
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 62
    .line 63
    add-int/2addr v1, v2

    .line 64
    add-int/2addr v1, v3

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static {v0, p1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    shl-int/lit8 v0, v4, 0x10

    .line 86
    .line 87
    invoke-static {v1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    const-string/jumbo v0, "layout_inflater"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/LayoutInflater;

    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    const v1, 0x1090066

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 37
    .line 38
    .line 39
    new-instance p1, Landroid/animation/LayoutTransition;

    .line 40
    .line 41
    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public setMaxVisible(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string/jumbo v0, "visibleCrumbs must be greater than zero"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public setOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 6
    .line 7
    iput-object p3, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public updateCrumbs()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {p0}, Landroid/app/FragmentBreadCrumbs;->getPreEntryCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    add-int v6, v1, v2

    .line 24
    .line 25
    const v7, 0x10202d4

    .line 26
    .line 27
    .line 28
    const v8, 0x1020016

    .line 29
    .line 30
    .line 31
    const/16 v9, 0x8

    .line 32
    .line 33
    if-ge v5, v6, :cond_5

    .line 34
    .line 35
    if-ge v5, v2, :cond_0

    .line 36
    .line 37
    invoke-direct {p0, v5}, Landroid/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    sub-int v6, v5, v2

    .line 43
    .line 44
    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    :goto_1
    if-ge v5, v3, :cond_2

    .line 49
    .line 50
    iget-object v10, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    if-eq v10, v6, :cond_2

    .line 61
    .line 62
    move v10, v5

    .line 63
    :goto_2
    if-ge v10, v3, :cond_1

    .line 64
    .line 65
    iget-object v11, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v10, v10, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    move v3, v5

    .line 74
    :cond_2
    if-lt v5, v3, :cond_4

    .line 75
    .line 76
    iget-object v10, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    .line 78
    iget v11, p0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    .line 79
    .line 80
    invoke-virtual {v10, v11, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-interface {v6}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    .line 101
    .line 102
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    if-nez v5, :cond_3

    .line 106
    .line 107
    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-object v6, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    iget-object v6, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 120
    .line 121
    invoke-virtual {v8, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    :goto_3
    if-le v0, v6, :cond_6

    .line 134
    .line 135
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 136
    .line 137
    add-int/lit8 v2, v0, -0x1

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v0, v0, -0x1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_6
    move v1, v4

    .line 146
    :goto_4
    if-ge v1, v0, :cond_b

    .line 147
    .line 148
    iget-object v2, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 149
    .line 150
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    add-int/lit8 v5, v0, -0x1

    .line 159
    .line 160
    if-ge v1, v5, :cond_7

    .line 161
    .line 162
    const/4 v5, 0x1

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    move v5, v4

    .line 165
    :goto_5
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    .line 167
    .line 168
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 169
    .line 170
    if-lez v3, :cond_a

    .line 171
    .line 172
    sub-int v3, v0, v3

    .line 173
    .line 174
    if-ge v1, v3, :cond_8

    .line 175
    .line 176
    move v3, v9

    .line 177
    goto :goto_6

    .line 178
    :cond_8
    move v3, v4

    .line 179
    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 187
    .line 188
    sub-int v3, v0, v3

    .line 189
    .line 190
    if-le v1, v3, :cond_9

    .line 191
    .line 192
    if-eqz v1, :cond_9

    .line 193
    .line 194
    move v3, v4

    .line 195
    goto :goto_7

    .line 196
    :cond_9
    move v3, v9

    .line 197
    :goto_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_b
    return-void
.end method
