.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field public mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field public mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 5
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 8
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 9
    new-instance v2, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v2, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 10
    sget-object v2, Li/a;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 12
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p1, v3, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x5

    .line 15
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 p1, 0x6

    .line 17
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 p1, 0x2

    .line 19
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_4
    const/4 p1, 0x3

    .line 21
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    const/4 p1, 0x4

    .line 22
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 23
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    add-int/lit8 v2, p2, -0x1

    .line 1
    iget-object p2, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, p2}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, p1, v0

    .line 3
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v0, 0x0

    aget-boolean v7, p1, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object p2
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    add-int/lit8 v2, p2, 0x1

    .line 1
    iget-object p2, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, p2}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, p1, v0

    .line 3
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v0, 0x0

    aget-boolean v7, p1, v0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object p2
.end method

.method private adjustViewsUpOrDown()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 5
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v1, :cond_0

    .line 6
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v0, v1

    :cond_0
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 9
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v0, :cond_3

    .line 10
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    :cond_3
    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    neg-int v0, v2

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    :cond_5
    return-void
.end method

.method private amountToScroll(II)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 2
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_6

    add-int/lit8 p1, v2, -0x1

    if-eq p2, v3, :cond_0

    .line 4
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int p1, p2, p1

    :cond_0
    :goto_0
    if-gt v2, p1, :cond_1

    add-int/lit8 v1, v2, -0x1

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v1, v5}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 8
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_2

    .line 9
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 10
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v5, v1, :cond_3

    return v4

    :cond_3
    if-eq p2, v3, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int p2, v1, p2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v3

    if-lt p2, v3, :cond_4

    return v4

    .line 12
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, v1

    .line 13
    iget p2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p2, v2

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne p2, v1, :cond_5

    add-int/lit8 v2, v2, -0x1

    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v0

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 16
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_6
    if-eq p2, v3, :cond_7

    .line 17
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    :goto_2
    sub-int p1, p2, p1

    goto :goto_3

    :cond_7
    move p1, v4

    :goto_3
    if-gez p1, :cond_8

    .line 18
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 19
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_2

    .line 20
    :cond_8
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v0, p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-lez v0, :cond_9

    .line 22
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_4

    :cond_9
    move v0, v1

    .line 23
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v2, v0, :cond_a

    return v4

    :cond_a
    if-eq p2, v3, :cond_b

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v2

    if-lt p2, v2, :cond_b

    return v4

    .line 25
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    .line 26
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez p1, :cond_c

    .line 27
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 29
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 p2, 0x21

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-ge p1, p2, :cond_1

    sub-int/2addr p2, p1

    if-lez p3, :cond_2

    .line 4
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    .line 6
    iget-object p2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le p2, p1, :cond_1

    sub-int/2addr p2, p1

    .line 7
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ge p3, p1, :cond_2

    .line 8
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result p1

    :goto_0
    add-int/2addr p2, p1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_1
    return p2
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x82

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    .line 5
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 6
    :goto_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    add-int/2addr v4, v2

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 8
    :cond_3
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 9
    :cond_4
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v5, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    .line 10
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    sub-int/2addr v4, v2

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v2, v4, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 12
    :cond_7
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_5
    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 14
    invoke-direct {p0, v0}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v3

    .line 15
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    if-eq v3, v4, :cond_a

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    if-eq v4, v5, :cond_a

    if-ne p1, v1, :cond_8

    if-lt v4, v3, :cond_9

    :cond_8
    const/16 v1, 0x21

    if-ne p1, v1, :cond_a

    if-le v4, v3, :cond_a

    :cond_9
    return-object v2

    .line 17
    :cond_a
    invoke-direct {p0, p1, v0, v3}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 20
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {p1, v3, v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 21
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object p1

    .line 22
    :cond_b
    invoke-direct {p0, v0}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_c

    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 24
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {p1, v3, v4}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 25
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object p1

    :cond_c
    return-object v2
.end method

.method private arrowScrollImpl(I)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    .line 5
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v4

    .line 6
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 8
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    :cond_2
    const/4 v7, 0x1

    if-eqz v5, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    const/4 v9, -0x1

    if-eq v3, v9, :cond_6

    if-eqz v5, :cond_4

    move v2, v7

    goto :goto_2

    :cond_4
    move v2, v1

    .line 9
    :goto_2
    invoke-direct {p0, v0, p1, v3, v2}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 10
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 11
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 13
    iget-boolean v2, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 16
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    move v2, v3

    move v8, v7

    :cond_6
    if-lez v4, :cond_8

    const/16 v8, 0x21

    if-ne p1, v8, :cond_7

    goto :goto_3

    :cond_7
    neg-int v4, v4

    .line 17
    :goto_3
    invoke-direct {p0, v4}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    move v8, v7

    .line 18
    :cond_8
    iget-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz p1, :cond_a

    if-nez v5, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, p1}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_a

    .line 21
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_a
    if-ne v3, v9, :cond_b

    if-eqz v0, :cond_b

    .line 22
    invoke-direct {p0, v0, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 23
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 24
    iput v9, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_4

    :cond_b
    move-object v6, v0

    :goto_4
    if-eqz v8, :cond_e

    if-eqz v6, :cond_c

    .line 25
    invoke-virtual {p0, v2, v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 26
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 27
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_d

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    return v7

    :cond_e
    return v1
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v3, :cond_0

    .line 4
    iput-boolean v1, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 4
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_11

    const/16 v4, 0x3e

    const/16 v5, 0x82

    const/16 v6, 0x21

    if-eq p1, v4, :cond_d

    const/16 v4, 0x42

    if-eq p1, v4, :cond_c

    const/16 v7, 0x5c

    if-eq p1, v7, :cond_a

    const/16 v7, 0x5d

    if-eq p1, v7, :cond_8

    const/16 v7, 0x7a

    if-eq p1, v7, :cond_7

    const/16 v7, 0x7b

    if-eq p1, v7, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 5
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 6
    invoke-direct {p0, v4}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v4

    goto/16 :goto_4

    .line 7
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v4, 0x11

    .line 8
    invoke-direct {p0, v4}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v4

    goto/16 :goto_4

    .line 9
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    :goto_0
    add-int/lit8 v6, p2, -0x1

    if-lez p2, :cond_2

    .line 11
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_2

    move v4, v3

    move p2, v6

    goto :goto_0

    :cond_2
    move p2, v6

    goto/16 :goto_4

    .line 12
    :cond_3
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 13
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_2

    .line 14
    :pswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    :goto_1
    add-int/lit8 v5, p2, -0x1

    if-lez p2, :cond_4

    .line 16
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_4

    move v4, v3

    move p2, v5

    goto :goto_1

    :cond_4
    move p2, v5

    goto/16 :goto_4

    .line 17
    :cond_5
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 18
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_2

    .line 19
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 20
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_2

    .line 21
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 22
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_2

    .line 23
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 24
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_2

    .line 25
    :cond_9
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 26
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_2

    .line 27
    :cond_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 28
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_2

    .line 29
    :cond_b
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 30
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_2

    .line 31
    :cond_c
    :pswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 32
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    .line 33
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_12

    .line 34
    invoke-virtual {p0}, Landroid/widget/AbsListView;->keyPressed()V

    goto :goto_2

    .line 35
    :cond_d
    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_11

    .line 36
    :cond_e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 37
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v4

    goto :goto_2

    .line 38
    :cond_f
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 39
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v4

    :cond_10
    :goto_2
    move v4, v3

    goto :goto_4

    :cond_11
    :goto_3
    move v4, v1

    :cond_12
    :goto_4
    if-eqz v4, :cond_13

    return v3

    .line 40
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_14

    return v3

    :cond_14
    if-eqz v0, :cond_17

    if-eq v0, v3, :cond_16

    if-eq v0, v2, :cond_15

    return v1

    .line 41
    :cond_15
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 42
    :cond_16
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 43
    :cond_17
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_18
    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 5
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v0, :cond_2

    .line 8
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_2

    :cond_0
    if-nez v2, :cond_1

    .line 9
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 11
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 13
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 4
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 5
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    sub-int/2addr v0, v2

    add-int/lit8 v1, p1, -0x1

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 8
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    if-lez v0, :cond_3

    .line 9
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, p1, -0x1

    if-lt v4, v5, :cond_1

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne v4, p1, :cond_3

    .line 10
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ne v4, p1, :cond_2

    sub-int/2addr v2, v3

    .line 11
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    neg-int p1, v0

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 13
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ge v4, p1, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr p1, v0

    invoke-direct {p0, v4, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 15
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    :cond_3
    :goto_1
    return-void
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3
    iget p1, p0, Landroid/view/View;->mBottom:I

    iget v0, p0, Landroid/view/View;->mTop:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    .line 4
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v0, :cond_0

    sub-int/2addr v0, v2

    goto :goto_0

    .line 5
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->top:I

    if-le v0, p1, :cond_1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 2
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 4
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    add-int/lit8 p2, p2, 0x1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {p0, p2, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 7
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    add-int/lit8 p2, p2, -0x1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-direct {p0, p2, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    :goto_0
    return-void
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 10

    .line 1
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    .line 2
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    :cond_0
    move v6, p2

    :goto_0
    const/4 p2, 0x1

    if-ge v6, v0, :cond_3

    .line 4
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v1, :cond_3

    .line 5
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const/4 v7, 0x1

    .line 6
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    move-object v4, p0

    move v5, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v6, v2, v4

    if-eqz p2, :cond_2

    move-object v3, v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    return-object v3
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 7

    sub-int/2addr p2, p1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    move-result v6

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 3
    iput v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gt v0, p2, :cond_0

    sub-int/2addr p2, v0

    .line 5
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 6
    :cond_0
    invoke-direct {p0, p1, v6}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 7
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooLow(I)V

    :goto_0
    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 2
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 3
    invoke-direct {p0, p2, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result p2

    .line 4
    invoke-direct {p0, p3, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result p3

    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, p3

    .line 9
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    neg-int p2, p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p3, v0

    .line 14
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 16
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 17
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez p2, :cond_2

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooLow(I)V

    :goto_1
    return-object p1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 9

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x1

    .line 2
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p2

    .line 3
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4
    iget v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 5
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, -0x1

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 7
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    add-int/2addr p1, v1

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 10
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, p1, 0x1

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v3

    .line 12
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    sub-int/2addr p1, v1

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 15
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    :cond_2
    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    return-object p2

    :cond_4
    if-eqz v3, :cond_5

    return-object v3

    :cond_5
    return-object p1
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 10

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, p2

    goto :goto_0

    :cond_0
    move v6, p2

    move v0, v2

    :goto_0
    const/4 p2, 0x1

    if-le v6, v0, :cond_3

    if-ltz p1, :cond_3

    .line 3
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    const/4 v7, 0x0

    .line 4
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    move-object v4, p0

    move v5, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v6, v4, v5

    if-eqz p2, :cond_2

    move-object v3, v1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    add-int/2addr p1, p2

    .line 6
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    return-object v3
.end method

.method private getAccessibilityFocusedChild()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 4
    :goto_0
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    if-eq v2, p0, :cond_2

    .line 5
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    .line 6
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_0

    sub-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private getTopSelectionPixel(III)I
    .locals 0

    if-lez p3, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3
    iget-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 9
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    invoke-direct {p0, p1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 8

    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    sub-int/2addr p3, v1

    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    move v1, v2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    move v7, v0

    move v0, p3

    move p3, v7

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    move v1, v3

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-eqz p1, :cond_2

    if-nez p4, :cond_1

    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    .line 5
    :goto_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 6
    invoke-direct {p0, p1, v0, v4}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_2
    if-eqz p2, :cond_4

    if-nez p4, :cond_3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 7
    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    .line 8
    invoke-direct {p0, p2, p3, v4}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_4
    return-void

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newSelectedPosition needs to be valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_4

    .line 2
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    return v1

    :cond_1
    if-ge p1, v0, :cond_2

    move p1, v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    :goto_1
    if-gt p1, v2, :cond_9

    .line 6
    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    sub-int v4, p1, v0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 8
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v2, v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v2, v0

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_9

    .line 9
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_6

    goto :goto_5

    :cond_6
    if-le v2, p1, :cond_7

    goto :goto_3

    :cond_7
    move p1, v2

    .line 10
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    :goto_4
    if-lt p1, v0, :cond_9

    .line 11
    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_8

    sub-int v3, p1, v0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    return p1

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_9
    :goto_5
    return v1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 3
    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v3, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 5
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p2

    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 6
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p2

    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v1, p2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 7
    iget p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p3, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    .line 8
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 9
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 10
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 2
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 3
    invoke-direct {p0, p4, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v8

    .line 4
    invoke-direct {p0, p4, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v0

    if-lez p3, :cond_2

    add-int/lit8 v2, v7, -0x1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v4, 0x1

    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 6
    iget p2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p3

    add-int v3, p3, p2

    iget-object p3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move v2, v7

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p3

    .line 8
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 9
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v8

    .line 10
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr p5, p4

    .line 11
    div-int/lit8 p5, p5, 0x2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 13
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    neg-int p4, p4

    .line 14
    invoke-virtual {p1, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 15
    invoke-virtual {p3, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 16
    :cond_0
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez p1, :cond_1

    .line 17
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 18
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 19
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p4

    add-int/2addr p4, p2

    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto/16 :goto_1

    .line 20
    :cond_1
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p4

    add-int/2addr p4, p2

    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 21
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 22
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_1

    :cond_2
    if-gez p3, :cond_5

    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v4, 0x1

    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v4, 0x0

    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    :goto_0
    move-object p3, p1

    .line 25
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    if-ge p1, v8, :cond_4

    .line 26
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v8, p1

    .line 27
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr p5, p4

    .line 28
    div-int/lit8 p5, p5, 0x2

    .line 29
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 30
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 31
    invoke-virtual {p3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 32
    :cond_4
    invoke-direct {p0, p3, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_1

    .line 33
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const/4 v4, 0x1

    .line 34
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p3

    if-ge p1, p4, :cond_6

    .line 35
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/lit8 p2, p4, 0x14

    if-ge p1, p2, :cond_6

    .line 36
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p3, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 37
    :cond_6
    invoke-direct {p0, p3, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    :goto_1
    return-object p3
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 5

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p3, v0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-gt p1, v3, :cond_1

    if-eq p2, v2, :cond_0

    .line 3
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt p2, p1, :cond_0

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    iget p2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_0

    :cond_1
    return v2

    .line 4
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-lt p1, v3, :cond_6

    .line 6
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    if-eq p2, v2, :cond_3

    if-gt p2, p1, :cond_3

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_3
    move p2, p1

    :goto_0
    if-ltz p2, :cond_6

    .line 7
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    if-lt p2, p1, :cond_4

    goto :goto_2

    :cond_4
    if-ne p3, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 8
    :goto_1
    invoke-virtual {p0, p2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    return p1

    :cond_6
    :goto_2
    return v2
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newFocus is not a child of any of the children of the list!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    .line 5
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 3
    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private scrollListItemsBy(I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 3
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 4
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v3, 0x0

    if-gez p1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 v4, p1, -0x1

    .line 6
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v0, :cond_0

    .line 8
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    .line 9
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 10
    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 13
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 14
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge v0, v1, :cond_7

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 16
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v2, p1, v0}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 19
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 20
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 22
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v3, v1, :cond_4

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v3, :cond_4

    .line 23
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 24
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v3, v1, :cond_5

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 27
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 29
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v3, v0, :cond_7

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 31
    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 32
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 33
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const-wide/16 v4, 0x8

    const-string/jumbo v6, "setupListItem"

    .line 1
    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v7

    .line 4
    :goto_1
    iget v10, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-lez v10, :cond_2

    const/4 v11, 0x3

    if-ge v10, v11, :cond_2

    .line 5
    iget v10, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ne v10, v2, :cond_2

    move v10, v6

    goto :goto_2

    :cond_2
    move v10, v7

    .line 6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v11

    if-eq v10, v11, :cond_3

    move v11, v6

    goto :goto_3

    :cond_3
    move v11, v7

    :goto_3
    if-eqz p7, :cond_5

    if-nez v9, :cond_5

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_4

    :cond_4
    move v12, v7

    goto :goto_5

    :cond_5
    :goto_4
    move v12, v6

    .line 8
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/AbsListView$LayoutParams;

    if-nez v13, :cond_6

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/AbsListView$LayoutParams;

    .line 10
    :cond_6
    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v14

    iput v14, v13, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_7

    .line 11
    iget-boolean v15, v13, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-eqz v15, :cond_8

    :cond_7
    iget-boolean v15, v13, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v4, -0x2

    if-eqz v15, :cond_a

    if-ne v14, v4, :cond_a

    :cond_8
    if-eqz p4, :cond_9

    const/4 v15, -0x1

    goto :goto_6

    :cond_9
    move v15, v7

    .line 12
    :goto_6
    invoke-virtual {v0, v1, v15, v13}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 13
    :cond_a
    iput-boolean v7, v13, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-ne v14, v4, :cond_b

    .line 14
    iput-boolean v6, v13, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_b
    if-eqz p4, :cond_c

    const/4 v15, -0x1

    goto :goto_7

    :cond_c
    move v15, v7

    .line 15
    :goto_7
    invoke-virtual {v0, v1, v15, v13, v6}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :goto_8
    if-eqz v9, :cond_d

    .line 16
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    :cond_d
    if-eqz v11, :cond_e

    .line 17
    invoke-virtual {v1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 18
    :cond_e
    iget v4, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_10

    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_10

    .line 19
    instance-of v5, v1, Landroid/widget/Checkable;

    if-eqz v5, :cond_f

    .line 20
    move-object v5, v1

    check-cast v5, Landroid/widget/Checkable;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-interface {v5, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_9

    .line 21
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_10

    .line 22
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    :cond_10
    :goto_9
    if-eqz v12, :cond_12

    .line 23
    iget v4, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    iget-object v5, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v5

    iget v5, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v8, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 24
    iget v5, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_11

    const/high16 v7, 0x40000000    # 2.0f

    .line 25
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_a

    .line 26
    :cond_11
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 27
    :goto_a
    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_b

    .line 28
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    .line 29
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eqz p4, :cond_13

    move/from16 v7, p3

    goto :goto_c

    :cond_13
    sub-int v7, p3, v5

    :goto_c
    if-eqz v12, :cond_14

    add-int/2addr v4, v3

    add-int/2addr v5, v7

    .line 31
    invoke-virtual {v1, v3, v7, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_d

    .line 32
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v7, v3

    invoke-virtual {v1, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 34
    :goto_d
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-eqz v3, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_15

    .line 35
    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_15
    if-eqz p7, :cond_16

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v3, v2, :cond_16

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_16
    const-wide/16 v1, 0x8

    .line 38
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private showingBottomFadingEdge()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 3
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    .line 4
    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 5
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v4, v0

    if-lt v2, v4, :cond_1

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private showingTopFadingEdge()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 2
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 4
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 5
    iget-object p1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    .line 7
    instance-of p1, p1, Landroid/widget/HeaderViewListAdapter;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Landroid/widget/HeaderViewListAdapter;

    iget-object p2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object p3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 9
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 2
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 4
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 5
    iget-object p1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    .line 7
    instance-of p1, p1, Landroid/widget/HeaderViewListAdapter;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Landroid/widget/HeaderViewListAdapter;

    iget-object p2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object p3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 9
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method public arrowScroll(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    return v0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    throw p1
.end method

.method public canAnimate()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/AdapterView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 3
    :cond_0
    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 4
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object v5, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v5, :cond_2

    move v8, v3

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-lez v2, :cond_3

    .line 6
    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_4

    if-nez v7, :cond_4

    if-eqz v8, :cond_2d

    .line 7
    :cond_4
    iget-object v10, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 8
    iget v11, v0, Landroid/view/View;->mPaddingLeft:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 9
    iget v11, v0, Landroid/view/View;->mRight:I

    iget v12, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 11
    iget-object v12, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 12
    iget v13, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 13
    iget-object v14, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int v14, v13, v14

    .line 14
    iget-boolean v15, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 15
    iget-boolean v3, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 16
    iget v6, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v17, v5

    .line 17
    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    move/from16 v18, v13

    .line 18
    iget-object v13, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-super/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v19

    if-nez v19, :cond_5

    const/16 v19, 0x1

    goto :goto_3

    :cond_5
    const/16 v19, 0x0

    :goto_3
    if-eqz v19, :cond_7

    move-object/from16 v20, v13

    .line 20
    iget-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v13, :cond_6

    iget-boolean v13, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v13, :cond_6

    .line 21
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    iput-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move/from16 v21, v5

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_6
    move/from16 v21, v5

    goto :goto_4

    :cond_7
    move/from16 v21, v5

    move-object/from16 v20, v13

    .line 23
    :goto_4
    iget-object v5, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 24
    iget v13, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move-object/from16 v22, v5

    const/16 v5, 0x22

    and-int/2addr v13, v5

    if-ne v13, v5, :cond_8

    .line 25
    iget-object v5, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v5, Landroid/graphics/Rect;->top:I

    .line 26
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v13

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    const/16 v23, 0x0

    .line 27
    :goto_5
    iget v13, v0, Landroid/view/View;->mBottom:I

    move/from16 v24, v8

    iget v8, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v13, v8

    sub-int/2addr v13, v5

    iget v5, v0, Landroid/view/View;->mScrollY:I

    add-int/2addr v13, v5

    .line 28
    iget-boolean v8, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v25, v13

    const/4 v13, -0x1

    if-nez v8, :cond_1b

    if-lez v11, :cond_a

    if-gez v5, :cond_a

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    .line 29
    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 30
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 31
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    if-eqz v9, :cond_a

    .line 32
    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    neg-int v4, v2

    .line 33
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 34
    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_a
    :goto_6
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v11, :cond_1a

    add-int v5, v6, v7

    if-ge v5, v12, :cond_b

    const/4 v8, 0x1

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    if-lt v5, v14, :cond_c

    const/4 v13, 0x1

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    :goto_9
    if-nez v15, :cond_d

    if-nez v8, :cond_e

    :cond_d
    if-nez v3, :cond_11

    if-nez v13, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v26, v6

    move/from16 v27, v9

    :cond_f
    :goto_a
    move/from16 v28, v11

    move-object/from16 v11, v20

    :cond_10
    move-object/from16 v6, v22

    goto/16 :goto_e

    .line 35
    :cond_11
    :goto_b
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    move/from16 v26, v6

    add-int/lit8 v6, v11, -0x1

    if-ne v7, v6, :cond_12

    const/4 v6, 0x1

    goto :goto_c

    :cond_12
    const/4 v6, 0x0

    :goto_c
    move/from16 v27, v9

    if-eqz v9, :cond_f

    move/from16 v9, v25

    if-ge v4, v9, :cond_19

    if-eqz v24, :cond_13

    if-nez v6, :cond_19

    :cond_13
    move/from16 v25, v9

    add-int/lit8 v9, v5, 0x1

    move/from16 v28, v11

    move-object/from16 v11, v20

    if-nez v21, :cond_18

    .line 37
    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_15

    if-eqz v15, :cond_14

    if-nez v8, :cond_15

    :cond_14
    if-eqz v3, :cond_17

    if-eqz v13, :cond_17

    :cond_15
    if-nez v6, :cond_18

    invoke-interface {v11, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_18

    if-eqz v15, :cond_16

    if-lt v9, v12, :cond_18

    :cond_16
    if-eqz v3, :cond_17

    if-lt v9, v14, :cond_17

    goto :goto_d

    :cond_17
    if-eqz v19, :cond_10

    .line 38
    iput v4, v10, Landroid/graphics/Rect;->top:I

    add-int v5, v4, v2

    .line 39
    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v6, v22

    .line 40
    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_e

    :cond_18
    :goto_d
    move-object/from16 v6, v22

    .line 41
    iput v4, v10, Landroid/graphics/Rect;->top:I

    add-int v5, v4, v2

    .line 42
    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 43
    invoke-virtual {v0, v1, v10, v7}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_e

    :cond_19
    move/from16 v25, v9

    goto :goto_a

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v22, v6

    move-object/from16 v20, v11

    move/from16 v6, v26

    move/from16 v9, v27

    move/from16 v11, v28

    goto/16 :goto_7

    :cond_1a
    move/from16 v26, v6

    move/from16 v28, v11

    .line 44
    iget v2, v0, Landroid/view/View;->mBottom:I

    iget v3, v0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, v3

    if-eqz v24, :cond_2d

    add-int v6, v26, v28

    move/from16 v3, v18

    if-ne v6, v3, :cond_2d

    if-le v2, v4, :cond_2d

    .line 45
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 46
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v8, v17

    .line 47
    invoke-virtual {v0, v1, v8, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_16

    :cond_1b
    move/from16 v26, v6

    move/from16 v27, v9

    move/from16 v28, v11

    move-object/from16 v8, v17

    move-object/from16 v11, v20

    move-object/from16 v6, v22

    if-lez v28, :cond_1c

    if-eqz v7, :cond_1c

    .line 48
    iput v5, v10, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    .line 49
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 50
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_1c
    move v4, v7

    move/from16 v9, v28

    :goto_f
    if-ge v4, v9, :cond_2b

    add-int v13, v26, v4

    if-ge v13, v12, :cond_1d

    const/16 v18, 0x1

    goto :goto_10

    :cond_1d
    const/16 v18, 0x0

    :goto_10
    if-lt v13, v14, :cond_1e

    const/16 v20, 0x1

    goto :goto_11

    :cond_1e
    const/16 v20, 0x0

    :goto_11
    if-nez v15, :cond_21

    if-nez v18, :cond_1f

    goto :goto_12

    :cond_1f
    move/from16 v22, v5

    move-object/from16 v28, v8

    :cond_20
    move/from16 v29, v23

    goto :goto_15

    :cond_21
    :goto_12
    if-nez v3, :cond_22

    if-nez v20, :cond_1f

    .line 51
    :cond_22
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v28, v8

    .line 52
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v8

    move/from16 v22, v5

    if-eqz v27, :cond_20

    move/from16 v5, v23

    if-le v8, v5, :cond_29

    if-ne v4, v7, :cond_23

    const/16 v23, 0x1

    goto :goto_13

    :cond_23
    const/16 v23, 0x0

    :goto_13
    move/from16 v29, v5

    add-int/lit8 v5, v13, -0x1

    if-nez v21, :cond_28

    .line 53
    invoke-interface {v11, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v13

    if-nez v13, :cond_25

    if-eqz v15, :cond_24

    if-nez v18, :cond_25

    :cond_24
    if-eqz v3, :cond_27

    if-eqz v20, :cond_27

    :cond_25
    if-nez v23, :cond_28

    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v13

    if-nez v13, :cond_28

    if-eqz v15, :cond_26

    if-lt v5, v12, :cond_28

    :cond_26
    if-eqz v3, :cond_27

    if-lt v5, v14, :cond_27

    goto :goto_14

    :cond_27
    if-eqz v19, :cond_2a

    sub-int v5, v8, v2

    .line 54
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 55
    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 56
    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_15

    :cond_28
    :goto_14
    sub-int v5, v8, v2

    .line 57
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 58
    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v4, -0x1

    .line 59
    invoke-virtual {v0, v1, v10, v5}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_15

    :cond_29
    move/from16 v29, v5

    :cond_2a
    :goto_15
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v22

    move-object/from16 v8, v28

    move/from16 v23, v29

    const/4 v13, -0x1

    goto/16 :goto_f

    :cond_2b
    move/from16 v22, v5

    move-object/from16 v28, v8

    if-lez v9, :cond_2d

    if-lez v22, :cond_2d

    if-eqz v24, :cond_2c

    .line 60
    iget v2, v0, Landroid/view/View;->mBottom:I

    .line 61
    iput v2, v10, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v22

    .line 62
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v2, v28

    .line 63
    invoke-virtual {v0, v1, v2, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_16

    :cond_2c
    if-eqz v27, :cond_2d

    move/from16 v13, v25

    .line 64
    iput v13, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v2

    .line 65
    iput v13, v10, Landroid/graphics/Rect;->bottom:I

    const/4 v2, -0x1

    .line 66
    invoke-virtual {v0, v1, v10, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 67
    :cond_2d
    :goto_16
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 2
    iget-boolean p3, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    if-eqz p3, :cond_0

    iget-boolean p2, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    :cond_0
    return p1
.end method

.method public drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 0

    .line 1
    iget-object p3, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    add-int/2addr v2, v0

    .line 5
    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 6
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int v2, v1, v2

    if-ge v2, v0, :cond_0

    sub-int/2addr v1, v0

    .line 5
    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 6
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public fillGap(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v1

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 p1, v0, -0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, p1

    .line 5
    :cond_1
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_2

    .line 7
    :cond_2
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int p1, v0, p1

    .line 10
    :goto_1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooLow(I)V

    :goto_2
    return-void
.end method

.method public findMotionRow(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 2
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 5
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 8
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v0

    return p1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lu/k;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lu/k<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-eq v2, p3, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lu/k;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewByPredicateTraversal(Lu/k;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/k<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->findViewByPredicateTraversal(Lu/k;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lu/k;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lu/k;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_1
    return-object v0
.end method

.method public findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewTraversal(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_1
    return-object v0
.end method

.method public findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_1
    return-object v0
.end method

.method public fullScroll(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 1
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    :cond_0
    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v2, 0x82

    if-ne p1, v2, :cond_2

    .line 6
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr p1, v1

    .line 7
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ge v2, p1, :cond_2

    .line 8
    invoke-virtual {p0, v2, p1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    .line 9
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 5
    new-array v3, v2, [J

    .line 6
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_2

    .line 7
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 8
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v3, v6

    move v6, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-ne v6, v2, :cond_3

    return-object v3

    .line 9
    :cond_3
    new-array v0, v6, [J

    .line 10
    invoke-static {v3, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_4
    new-array v0, v1, [J

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_7

    .line 2
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_3
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    .line 3
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-le v4, v3, :cond_4

    goto :goto_3

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v4, :cond_5

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_5
    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    :goto_2
    sub-int/2addr v3, v4

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge v1, v3, :cond_7

    :cond_6
    :goto_3
    return v2

    :cond_7
    return v0
.end method

.method public layoutChildren()V
    .locals 20

    move-object/from16 v7, p0

    .line 1
    iget-boolean v8, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v8, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    const/4 v9, 0x0

    .line 3
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5
    iget-object v1, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_1

    .line 8
    iput-boolean v9, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_1
    return-void

    .line 9
    :cond_2
    :try_start_1
    iget-object v1, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 10
    iget v2, v7, Landroid/view/View;->mBottom:I

    iget v3, v7, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v2, v1

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 12
    iget v2, v7, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v10, 0x2

    if-eq v2, v0, :cond_6

    if-eq v2, v10, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    .line 13
    iget v2, v7, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_3

    if-ge v2, v1, :cond_3

    .line 14
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 15
    :goto_0
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 16
    iget v12, v7, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v12, :cond_4

    .line 17
    iget v13, v7, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int/2addr v12, v13

    goto :goto_1

    :cond_4
    move v12, v9

    :goto_1
    add-int/2addr v2, v12

    .line 18
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    move/from16 v19, v12

    move-object v12, v4

    move/from16 v4, v19

    goto :goto_3

    .line 19
    :cond_5
    iget v2, v7, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v3, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_6

    if-ge v2, v1, :cond_6

    .line 20
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    move v4, v9

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    move v4, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    const/4 v12, 0x0

    .line 21
    :goto_3
    iget-boolean v13, v7, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v13, :cond_7

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->handleDataChanged()V

    .line 23
    :cond_7
    iget v14, v7, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v14, :cond_9

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v8, :cond_8

    .line 26
    iput-boolean v9, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_8
    return-void

    .line 27
    :cond_9
    :try_start_2
    iget-object v15, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15}, Landroid/widget/Adapter;->getCount()I

    move-result v15

    if-ne v14, v15, :cond_23

    .line 28
    iget v14, v7, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {v7, v14}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 29
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getAccessibilityFocusedChild()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 30
    invoke-virtual {v7, v14}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v16

    .line 31
    invoke-virtual {v14, v0}, Landroid/view/View;->setHasTransientState(Z)V

    move/from16 v11, v16

    goto :goto_4

    :cond_a
    const/4 v11, -0x1

    .line 32
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 33
    invoke-virtual {v10, v0}, Landroid/view/View;->setHasTransientState(Z)V

    .line 34
    :cond_b
    iget v15, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 35
    iget-object v9, v7, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v1, :cond_c

    .line 36
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v17, v8

    add-int v8, v15, v13

    :try_start_3
    invoke-virtual {v9, v0, v8}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v17

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    move/from16 v17, v8

    goto :goto_6

    :cond_d
    move/from16 v17, v8

    .line 37
    invoke-virtual {v9, v1, v15}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 38
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 39
    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 40
    iget v0, v7, Landroid/widget/AbsListView;->mLayoutMode:I

    packed-switch v0, :pswitch_data_0

    if-nez v1, :cond_10

    .line 41
    iget-boolean v0, v7, Landroid/widget/AbsListView;->mStackFromBottom:Z

    goto :goto_7

    :pswitch_0
    move-object/from16 v1, p0

    .line 42
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_a

    .line 43
    :pswitch_1
    iget v0, v7, Landroid/widget/AdapterView;->mSyncPosition:I

    iget v1, v7, Landroid/widget/AdapterView;->mSpecificTop:I

    invoke-direct {v7, v0, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_a

    .line 44
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    move-result v0

    iget v1, v7, Landroid/widget/AdapterView;->mSpecificTop:I

    invoke-direct {v7, v0, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_a

    .line 45
    :pswitch_3
    iget v0, v7, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v6}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 46
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_a

    :pswitch_4
    if-eqz v3, :cond_e

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {v7, v0, v5, v6}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    .line 48
    :cond_e
    invoke-direct {v7, v5, v6}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :pswitch_5
    const/4 v1, 0x0

    .line 49
    iput v1, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 50
    invoke-direct {v7, v5}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v0

    .line 51
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_a

    :goto_7
    if-nez v0, :cond_f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v7, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 53
    invoke-virtual {v7, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 54
    invoke-direct {v7, v5}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    .line 55
    :cond_f
    iget v0, v7, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 56
    invoke-virtual {v7, v0}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 57
    iget v0, v7, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v6}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    .line 58
    :cond_10
    iget v0, v7, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    iget v1, v7, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v0, v1, :cond_12

    if-nez v2, :cond_11

    goto :goto_8

    .line 59
    :cond_11
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    :goto_8
    invoke-direct {v7, v0, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    .line 60
    :cond_12
    iget v0, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, v7, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v0, v1, :cond_14

    if-nez v12, :cond_13

    goto :goto_9

    .line 61
    :cond_13
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v5

    :goto_9
    invoke-direct {v7, v0, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_14
    const/4 v1, 0x0

    .line 62
    invoke-direct {v7, v1, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    .line 63
    :goto_a
    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v0, :cond_1a

    .line 64
    iget-boolean v1, v7, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_b

    :cond_15
    const/4 v1, 0x0

    :goto_b
    if-eqz v10, :cond_16

    .line 65
    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    :goto_c
    if-eqz v1, :cond_19

    if-nez v2, :cond_19

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_19

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 69
    iget-object v1, v7, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_d

    .line 70
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_18
    const/4 v1, -0x1

    .line 72
    invoke-virtual {v7, v1, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_d

    :cond_19
    const/4 v1, -0x1

    .line 73
    invoke-virtual {v7, v1, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 74
    :goto_d
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v7, Landroid/widget/AbsListView;->mSelectedTop:I

    goto :goto_f

    .line 75
    :cond_1a
    iget v0, v7, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v1, 0x0

    .line 76
    iput v1, v7, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 77
    iget-object v0, v7, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_f

    .line 78
    :cond_1c
    :goto_e
    iget v0, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v1, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 79
    iget v1, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v7, v1, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    :cond_1d
    :goto_f
    if-eqz v14, :cond_1e

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v14, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 81
    invoke-virtual {v14}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, -0x1

    if-eq v11, v0, :cond_1e

    .line 82
    iget v0, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v11, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v11, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 83
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_1e
    if-eqz v10, :cond_1f

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v10, v1}, Landroid/view/View;->setHasTransientState(Z)V

    goto :goto_10

    :cond_1f
    const/4 v1, 0x0

    .line 86
    :goto_10
    iput v1, v7, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 87
    iput-boolean v1, v7, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 88
    iget-object v0, v7, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    .line 89
    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 90
    iput-object v0, v7, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_20
    const/4 v1, 0x0

    .line 91
    iput-boolean v1, v7, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 92
    iget v0, v7, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {v7, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateScrollIndicators()V

    .line 94
    iget v0, v7, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_21

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 96
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v17, :cond_22

    const/4 v1, 0x0

    .line 97
    iput-boolean v1, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_22
    return-void

    :cond_23
    move/from16 v17, v8

    .line 98
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") with Adapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_11

    :catchall_1
    move-exception v0

    move/from16 v17, v8

    :goto_11
    if-nez v17, :cond_24

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_24
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    .line 4
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 5
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ge p1, v2, :cond_2

    .line 6
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, -0x1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_2

    .line 8
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public lookForSelectablePositionAfter(IIZ)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-eq v2, v1, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5
    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    if-eqz p3, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 6
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-le p2, p1, :cond_2

    .line 7
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p3

    if-nez p3, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-gt p2, p1, :cond_5

    return v1

    :cond_3
    const/4 p3, 0x0

    add-int/lit8 p2, p2, 0x1

    .line 8
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_1
    if-ge p2, p1, :cond_4

    .line 9
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p3

    if-nez p3, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    if-lt p2, p1, :cond_5

    return v1

    :cond_5
    return p2

    :cond_6
    :goto_2
    return v1
.end method

.method public final measureHeightOfChildren(IIIII)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p1

    return p2

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    .line 4
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v4, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/4 v4, -0x1

    if-ne p3, v4, :cond_2

    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    .line 6
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v5

    .line 8
    iget-object v6, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    :goto_1
    if-gt p2, p3, :cond_8

    .line 9
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v7

    .line 10
    invoke-direct {p0, v7, p2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    if-lez p2, :cond_3

    add-int/2addr v2, v1

    :cond_3
    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    iget v8, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 12
    invoke-virtual {v0, v7, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 13
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    if-lt v2, p4, :cond_6

    if-ltz p5, :cond_5

    if-le p2, p5, :cond_5

    if-lez v3, :cond_5

    if-eq v2, p4, :cond_5

    move p4, v3

    :cond_5
    return p4

    :cond_6
    if-ltz p5, :cond_7

    if-lt p2, p5, :cond_7

    move v3, v2

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    return v2
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViews()V

    :cond_1
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 3
    iget p1, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p3, p1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_0

    .line 5
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const v3, 0x7fffffff

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 9
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v6, v3

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v4, :cond_3

    add-int v7, v5, v1

    .line 10
    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 12
    invoke-virtual {v7, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {p0, v7, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 14
    invoke-static {p3, p1, p2}, Landroid/widget/AbsListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v8

    if-ge v8, v6, :cond_2

    .line 15
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    move v3, v1

    move v6, v8

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    move v2, v3

    :cond_4
    if-ltz v2, :cond_5

    .line 16
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3
    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-eq p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 4
    :goto_0
    invoke-static {v0, v1, p2, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p1

    .line 5
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 6
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    :goto_0
    iput v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v3, :cond_2

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 7
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v4, v3}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 8
    invoke-direct {p0, v3, v4, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v4, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    .line 12
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    iget v8, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v8, -0x1

    invoke-virtual {v7, v3, v8}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    move v5, v4

    move v6, v5

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    add-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    :cond_4
    const/high16 v0, -0x1000000

    and-int/2addr v0, v4

    or-int/2addr v2, v0

    :goto_2
    if-nez v1, :cond_5

    .line 15
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    add-int/2addr v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    :cond_5
    move v7, p2

    const/high16 p2, -0x80000000

    if-ne v1, p2, :cond_6

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, -0x1

    move-object v3, p0

    move v4, p1

    .line 16
    invoke-virtual/range {v3 .. v8}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v7

    .line 17
    :cond_6
    invoke-virtual {p0, v2, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 18
    iput p1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    .line 5
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v4, p2, v4

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    .line 7
    iget-object v2, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v2, :cond_0

    .line 8
    new-instance v2, Landroid/widget/ListView$FocusSelector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v2, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 9
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    return-void
.end method

.method public pageScroll(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    .line 1
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_4

    .line 2
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr p1, v1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v2, v1

    :goto_0
    if-ltz p1, :cond_4

    .line 3
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, p1, v2}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result p1

    if-ltz p1, :cond_4

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    if-eqz v2, :cond_1

    .line 6
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    :cond_1
    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 9
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v1, 0x1

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_2
    return v1
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v1, 0x1

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_2
    return v1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 7

    .line 1
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int v2, v1, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v3

    .line 7
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gtz v4, :cond_0

    if-le p3, v3, :cond_1

    :cond_0
    add-int/2addr v1, v3

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v4, 0x1

    sub-int/2addr p3, v4

    .line 10
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 11
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v4

    if-lt v5, v6, :cond_2

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p3, v3

    if-ge v5, v6, :cond_3

    :cond_2
    sub-int/2addr v2, v3

    .line 13
    :cond_3
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    if-le v3, v2, :cond_5

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-le v6, v1, :cond_5

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 15
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    goto :goto_0

    .line 16
    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v2

    :goto_0
    add-int/2addr p2, v5

    sub-int/2addr p3, v2

    .line 17
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 18
    :cond_5
    iget p3, p2, Landroid/graphics/Rect;->top:I

    if-ge p3, v1, :cond_7

    if-ge v3, v2, :cond_7

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-le p3, v0, :cond_6

    .line 20
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p2

    rsub-int/lit8 p2, v2, 0x0

    goto :goto_1

    .line 21
    :cond_6
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int p2, v1, p2

    rsub-int/lit8 p2, p2, 0x0

    .line 22
    :goto_1
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v1

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_2

    :cond_7
    move p2, v5

    :goto_2
    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :goto_3
    if-eqz v4, :cond_9

    neg-int p2, p2

    .line 24
    invoke-direct {p0, p2}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    const/4 p2, -0x1

    .line 25
    invoke-virtual {p0, p2, p1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return v4
.end method

.method public resetList()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 2
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 3
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 6
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/HeaderViewListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    :goto_1
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 11
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 14
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput p1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 15
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 16
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 17
    new-instance p1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 18
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 19
    iget-object p1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 20
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 21
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 23
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 25
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez p1, :cond_5

    .line 26
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_3

    .line 27
    :cond_4
    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 28
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 29
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 30
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0

    .line 2
    :cond_0
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x60000

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 2
    iget p1, p0, Landroid/view/View;->mScrollY:I

    if-gez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 5
    :cond_1
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    :goto_0
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 5
    :cond_1
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_2
    :goto_0
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 8
    iget-boolean p2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz p2, :cond_3

    .line 9
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 10
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 11
    :cond_3
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    :cond_5
    return-void
.end method

.method public setSelectionInt(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_3
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
