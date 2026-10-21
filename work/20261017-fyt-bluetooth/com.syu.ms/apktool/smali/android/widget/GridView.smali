.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 6
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v2, 0x2

    .line 7
    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 9
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const v3, 0x800003

    .line 10
    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    .line 11
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 12
    sget-object v3, Li/a;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 14
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 15
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 16
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 p3, 0x3

    .line 17
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 18
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setStretchMode(I)V

    :cond_0
    const/4 p3, 0x4

    .line 19
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-lez p3, :cond_1

    .line 20
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_1
    const/4 p3, 0x5

    .line 21
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 22
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2

    .line 24
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setGravity(I)V

    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, p3

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p3, p1

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
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
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

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
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

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

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 4
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_f

    const/16 v4, 0x3e

    const/16 v5, 0x82

    const/16 v6, 0x21

    if-eq p1, v4, :cond_c

    const/16 v4, 0x42

    if-eq p1, v4, :cond_a

    const/16 v7, 0x5c

    if-eq p1, v7, :cond_8

    const/16 v7, 0x5d

    if-eq p1, v7, :cond_6

    const/16 v7, 0x7a

    if-eq p1, v7, :cond_5

    const/16 v7, 0x7b

    if-eq p1, v7, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto/16 :goto_0

    .line 7
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto/16 :goto_0

    .line 9
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 12
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto/16 :goto_0

    .line 13
    :pswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto/16 :goto_0

    .line 15
    :cond_3
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto/16 :goto_0

    .line 17
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 18
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto/16 :goto_0

    .line 19
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 20
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto/16 :goto_0

    .line 21
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 22
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_0

    .line 23
    :cond_7
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 24
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_0

    .line 25
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 26
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_0

    .line 27
    :cond_9
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 28
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_0

    .line 29
    :cond_a
    :pswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 30
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    .line 31
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_10

    .line 32
    invoke-virtual {p0}, Landroid/widget/AbsListView;->keyPressed()V

    :cond_b
    :goto_0
    move v4, v3

    goto :goto_2

    .line 33
    :cond_c
    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_f

    .line 34
    :cond_d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 35
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_0

    .line 36
    :cond_e
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 37
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_0

    :cond_f
    :goto_1
    move v4, v1

    :cond_10
    :goto_2
    if-eqz v4, :cond_11

    return v3

    .line 38
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_12

    return v3

    :cond_12
    if-eqz v0, :cond_15

    if-eq v0, v3, :cond_14

    if-eq v0, v2, :cond_13

    return v1

    .line 39
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 40
    :cond_14
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 41
    :cond_15
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    if-lez p3, :cond_3

    sub-int/2addr p3, v1

    .line 3
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 5
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, p3

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v0, :cond_3

    .line 8
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v3, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_3

    :cond_0
    if-nez v3, :cond_1

    .line 9
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 11
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v0, :cond_3

    .line 12
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    move p1, v1

    :cond_2
    sub-int/2addr v0, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 13
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p3, :cond_3

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

    add-int/lit8 v1, p3, -0x1

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 8
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, p3

    const/4 p3, 0x1

    sub-int/2addr v4, p3

    if-lez v0, :cond_3

    .line 9
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v5, -0x1

    if-lt v4, v6, :cond_0

    if-le v2, v3, :cond_3

    :cond_0
    sub-int/2addr v5, p3

    if-ne v4, v5, :cond_1

    sub-int/2addr v2, v3

    .line 10
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    neg-int v0, v0

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 12
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v0, p3

    if-ge v4, v0, :cond_3

    .line 13
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    move p1, p3

    :cond_2
    add-int/2addr v4, p1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, p2

    invoke-direct {p0, v4, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 14
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2
    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 3
    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 4
    iget v3, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    if-lez v2, :cond_0

    add-int v3, p1, v0

    add-int v5, v2, v0

    .line 5
    div-int/2addr v3, v5

    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 6
    :cond_0
    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 7
    :cond_1
    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 8
    :goto_0
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v5, 0x1

    if-gtz v3, :cond_2

    .line 9
    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_2
    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 10
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int v7, v6, v2

    sub-int/2addr p1, v7

    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v0

    sub-int/2addr p1, v7

    if-gez p1, :cond_3

    move v3, v5

    :cond_3
    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_6

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    if-le v6, v5, :cond_5

    add-int/2addr v6, v5

    .line 12
    div-int/2addr p1, v6

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_5
    add-int/2addr v0, p1

    .line 13
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 14
    :cond_6
    div-int/2addr p1, v6

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 15
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 16
    :cond_7
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    if-le v6, v5, :cond_8

    sub-int/2addr v6, v5

    .line 17
    div-int/2addr p1, v6

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_8
    add-int/2addr v0, p1

    .line 18
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 19
    :cond_9
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 20
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    :goto_1
    return v3
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 4

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
    :goto_0
    const/4 v1, 0x1

    if-ge p2, v0, :cond_2

    .line 4
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v2, :cond_2

    .line 5
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object v3, p2

    .line 6
    :cond_1
    iget-object p2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr p2, v1

    .line 7
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v1

    goto :goto_0

    .line 8
    :cond_2
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    add-int/2addr p2, p1

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    return-object v3
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    add-int/lit8 v0, v0, -0x1

    .line 4
    iget p1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int p1, v1, p1

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 5
    invoke-direct {p0, v0, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 3
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 4
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 5
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 6
    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v4, -0x1

    sub-int/2addr v6, v1

    sub-int/2addr v4, v5

    .line 8
    rem-int v1, v6, v2

    sub-int/2addr v6, v1

    sub-int/2addr v4, v6

    const/4 v1, 0x0

    sub-int v6, v4, v2

    add-int/2addr v6, v5

    .line 9
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10
    :goto_0
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result p2

    .line 11
    invoke-direct {p0, p3, v0, v2, v1}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p3

    .line 12
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0, p1, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 13
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 14
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 15
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 16
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 17
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez p2, :cond_2

    sub-int p2, v1, v2

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 19
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/2addr v1, v2

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_2

    :cond_2
    add-int/2addr v4, v2

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 22
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    sub-int/2addr v1, v5

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    :goto_2
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

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5
    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    move-result v0

    .line 2
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 3
    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 4
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 5
    rem-int v3, v0, v1

    sub-int/2addr v0, v3

    const/4 v3, -0x1

    goto :goto_0

    .line 6
    :cond_0
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    sub-int/2addr v3, v4

    .line 7
    rem-int v0, v5, v1

    sub-int/2addr v5, v0

    sub-int/2addr v3, v5

    const/4 v0, 0x0

    sub-int v5, v3, v1

    add-int/2addr v5, v4

    .line 8
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 10
    invoke-direct {p0, p1, v5, v0}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v6

    .line 11
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    invoke-direct {p0, v7, v6, v4}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    .line 12
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 13
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 14
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    add-int p1, v0, v1

    .line 15
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0, p1, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 16
    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    sub-int/2addr v0, v1

    .line 17
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 18
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 19
    :cond_2
    invoke-direct {p0, p2, v5, v1, v0}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p2

    .line 20
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr p2, v5

    .line 21
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    sub-int/2addr v0, v4

    .line 22
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-direct {p0, v0, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    add-int/2addr v3, v1

    .line 24
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {p0, v3, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 25
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :goto_2
    return-object v6
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    rem-int v1, p1, v0

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, p1

    sub-int/2addr v1, v2

    .line 5
    rem-int p1, v3, v0

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    const/4 p1, 0x0

    sub-int v3, v1, v0

    add-int/2addr v3, v2

    .line 6
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7
    :goto_0
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    invoke-direct {p0, v3, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    .line 8
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 9
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-nez v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_2
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 11
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v5, :cond_3

    sub-int v1, p1, v0

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 13
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/2addr p1, v0

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 16
    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    goto :goto_2

    :cond_3
    add-int/2addr v1, v0

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {p0, v1, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 18
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    sub-int/2addr p1, v2

    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 21
    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    :cond_4
    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    return-object p2

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object p1
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 4

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

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 3
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object v3, p2

    .line 4
    :cond_1
    iget-object p2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr p2, v1

    .line 5
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz p2, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 8
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 9
    :cond_3
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    return-object v3
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 0

    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    .line 1
    iget p3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 p3, p3, -0x1

    if-ge p4, p3, :cond_0

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

.method private isCandidateSelection(II)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    sub-int v2, v1, p1

    .line 2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 3
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, p1, v2

    sub-int v3, p1, v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    .line 4
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v2, v0

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    sub-int v0, v2, v0

    add-int/2addr v0, v5

    .line 6
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v2

    :goto_0
    if-eq p2, v5, :cond_b

    const/4 v2, 0x2

    if-eq p2, v2, :cond_9

    const/16 v2, 0x11

    if-eq p2, v2, :cond_7

    const/16 v2, 0x21

    if-eq p2, v2, :cond_5

    const/16 v0, 0x42

    if-eq p2, v0, :cond_3

    const/16 p1, 0x82

    if-ne p2, p1, :cond_2

    if-nez v3, :cond_1

    move v4, v5

    :cond_1
    return v4

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-ne p1, v3, :cond_4

    move v4, v5

    :cond_4
    return v4

    :cond_5
    if-ne v0, v1, :cond_6

    move v4, v5

    :cond_6
    return v4

    :cond_7
    if-ne p1, v0, :cond_8

    move v4, v5

    :cond_8
    return v4

    :cond_9
    if-ne p1, v3, :cond_a

    if-nez v3, :cond_a

    move v4, v5

    :cond_a
    return v4

    :cond_b
    if-ne p1, v0, :cond_c

    if-ne v0, v1, :cond_c

    move v4, v5

    :cond_c
    return v4
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 11

    move-object v9, p0

    move v2, p1

    .line 1
    iget-boolean v0, v9, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, v9, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    .line 3
    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v10

    .line 4
    :cond_0
    iget-object v0, v9, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v10

    .line 5
    iget-object v0, v9, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, p0

    move-object v1, v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v10
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 23

    move-object/from16 v7, p0

    .line 1
    iget v8, v7, Landroid/widget/GridView;->mColumnWidth:I

    .line 2
    iget v9, v7, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v10

    const/4 v0, 0x3

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v8

    iget v2, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v2, v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    sub-int/2addr v1, v0

    goto :goto_2

    .line 5
    :cond_1
    iget-object v1, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v2, v0, :cond_2

    move v0, v9

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    add-int/2addr v1, v0

    .line 6
    :goto_2
    iget-boolean v0, v7, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-nez v0, :cond_3

    .line 7
    iget v0, v7, Landroid/widget/GridView;->mNumColumns:I

    add-int v0, p1, v0

    iget v2, v7, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move/from16 v14, p1

    move v15, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v0, p1, 0x1

    .line 8
    iget v2, v7, Landroid/widget/GridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/2addr v2, v13

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, v0, v2

    .line 9
    iget v4, v7, Landroid/widget/GridView;->mNumColumns:I

    if-ge v3, v4, :cond_5

    sub-int/2addr v4, v3

    add-int v3, v8, v9

    mul-int/2addr v4, v3

    if-eqz v10, :cond_4

    move v3, v12

    goto :goto_3

    :cond_4
    move v3, v13

    :goto_3
    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    :cond_5
    move v15, v0

    move v14, v2

    .line 10
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v16

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v17

    .line 12
    iget v6, v7, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v0, 0x0

    move-object/from16 v18, v0

    move/from16 v19, v1

    move v5, v14

    :goto_5
    if-ge v5, v15, :cond_c

    if-ne v5, v6, :cond_6

    move/from16 v20, v13

    goto :goto_6

    :cond_6
    move/from16 v20, v11

    :goto_6
    if-eqz p3, :cond_7

    move/from16 v21, v12

    goto :goto_7

    :cond_7
    sub-int v0, v5, v14

    move/from16 v21, v0

    :goto_7
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v19

    move v11, v5

    move/from16 v5, v20

    move/from16 v22, v6

    move/from16 v6, v21

    .line 13
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v0

    if-eqz v10, :cond_8

    move v1, v12

    goto :goto_8

    :cond_8
    move v1, v13

    :goto_8
    mul-int/2addr v1, v8

    add-int v19, v19, v1

    add-int/lit8 v1, v15, -0x1

    if-ge v11, v1, :cond_9

    add-int v19, v19, v9

    :cond_9
    if-eqz v20, :cond_b

    if-nez v16, :cond_a

    if-eqz v17, :cond_b

    :cond_a
    move-object/from16 v18, v0

    :cond_b
    add-int/lit8 v5, v11, 0x1

    move/from16 v6, v22

    const/4 v11, 0x0

    goto :goto_5

    .line 14
    :cond_c
    iput-object v0, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-eqz v18, :cond_d

    .line 15
    iput-object v0, v7, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_d
    return-object v18
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 3
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 4
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 5
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    sub-int p1, v1, p1

    .line 6
    rem-int v4, p1, v2

    sub-int/2addr p1, v4

    .line 7
    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_0

    .line 8
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v1

    sub-int/2addr v4, v6

    .line 9
    rem-int v8, v7, v2

    sub-int/2addr v7, v8

    sub-int/2addr v4, v7

    sub-int v7, v4, v2

    add-int/2addr v7, v6

    .line 10
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 11
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v9, v8, -0x1

    sub-int/2addr v1, p1

    sub-int/2addr v9, v1

    sub-int/2addr v8, v6

    .line 12
    rem-int p1, v9, v2

    sub-int/2addr v9, p1

    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    add-int/2addr v8, v6

    .line 13
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v1, v7

    :goto_0
    sub-int p1, v1, p1

    .line 14
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result p2

    .line 15
    invoke-direct {p0, p3, v0, v2, v1}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p3

    .line 16
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez p1, :cond_3

    .line 17
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 18
    :goto_1
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    add-int/2addr v5, v3

    invoke-direct {p0, p1, v5, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 19
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 20
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    goto :goto_7

    :cond_3
    if-gez p1, :cond_6

    .line 21
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_4

    move p1, v5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 22
    :goto_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    sub-int/2addr p1, v3

    invoke-direct {p0, v0, p1, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 23
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 24
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto :goto_7

    .line 25
    :cond_6
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 26
    :goto_5
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz p1, :cond_8

    move p1, v4

    goto :goto_6

    :cond_8
    move p1, v1

    :goto_6
    invoke-direct {p0, p1, v5, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    .line 27
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 28
    :goto_7
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez p2, :cond_9

    sub-int p2, v1, v2

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 30
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/2addr v1, v2

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_8

    :cond_9
    add-int/2addr v4, v2

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 33
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    sub-int/2addr v1, v6

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    :goto_8
    return-object p1
.end method

.method private pinToBottom(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p8

    const-wide/16 v4, 0x8

    const-string/jumbo v6, "setupGridItem"

    .line 1
    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

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
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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
    iget-boolean v14, v13, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-nez v14, :cond_7

    .line 12
    invoke-virtual {p0, v1, v3, v13}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 13
    :cond_7
    iput-boolean v7, v13, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 14
    invoke-virtual {p0, v1, v3, v13, v6}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :goto_6
    if-eqz v9, :cond_8

    .line 15
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    if-eqz v8, :cond_8

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_8
    if-eqz v11, :cond_9

    .line 17
    invoke-virtual {v1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 18
    :cond_9
    iget v3, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v3, :cond_b

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_b

    .line 19
    instance-of v8, v1, Landroid/widget/Checkable;

    if-eqz v8, :cond_a

    .line 20
    move-object v8, v1

    check-cast v8, Landroid/widget/Checkable;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-interface {v8, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_7

    .line 21
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v3, v8, :cond_b

    .line 22
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    :cond_b
    :goto_7
    if-eqz v12, :cond_c

    .line 23
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v8, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 24
    iget v8, v0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v7, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 25
    invoke-virtual {v1, v7, v3}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .line 26
    :cond_c
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    .line 27
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eqz p4, :cond_d

    move/from16 v8, p3

    goto :goto_9

    :cond_d
    sub-int v8, p3, v7

    .line 29
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    .line 30
    iget v10, v0, Landroid/widget/GridView;->mGravity:I

    invoke-static {v10, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v9

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v6, :cond_f

    const/4 v10, 0x5

    if-eq v9, v10, :cond_e

    move/from16 v9, p5

    goto :goto_a

    .line 31
    :cond_e
    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    add-int v9, p5, v9

    sub-int/2addr v9, v3

    goto :goto_a

    .line 32
    :cond_f
    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int/2addr v9, v3

    div-int/lit8 v9, v9, 0x2

    add-int v9, p5, v9

    :goto_a
    if-eqz v12, :cond_10

    add-int/2addr v3, v9

    add-int/2addr v7, v8

    .line 33
    invoke-virtual {v1, v9, v8, v3, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    .line 34
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v9, v3

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v8, v3

    invoke-virtual {v1, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 36
    :goto_b
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-eqz v3, :cond_11

    .line 37
    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_11
    if-eqz p7, :cond_12

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v3, v2, :cond_12

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 40
    :cond_12
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public arrowScroll(I)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 3
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 4
    div-int v2, v0, v1

    mul-int/2addr v2, v1

    add-int v5, v2, v1

    sub-int/2addr v5, v4

    .line 5
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 6
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v0

    sub-int/2addr v2, v4

    .line 7
    div-int/2addr v5, v1

    mul-int/2addr v5, v1

    sub-int v5, v2, v5

    sub-int v2, v5, v1

    add-int/2addr v2, v4

    .line 8
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    const/16 v6, 0x11

    const/4 v7, 0x6

    if-eq p1, v6, :cond_4

    const/16 v6, 0x21

    if-eq p1, v6, :cond_3

    const/16 v2, 0x42

    if-eq p1, v2, :cond_2

    const/16 v2, 0x82

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_5

    .line 10
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    add-int/2addr v0, v1

    sub-int/2addr v2, v4

    .line 11
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    goto :goto_1

    :cond_2
    if-ge v0, v5, :cond_5

    .line 12
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    add-int/2addr v0, v4

    .line 13
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    goto :goto_1

    :cond_3
    if-lez v2, :cond_5

    .line 14
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    sub-int/2addr v0, v1

    .line 15
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    goto :goto_1

    :cond_4
    if-le v0, v2, :cond_5

    .line 16
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    sub-int/2addr v0, v4

    .line 17
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    :goto_1
    move v3, v4

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 18
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    :cond_6
    if-eqz v3, :cond_7

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_7
    return v3
.end method

.method public attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 2

    .line 1
    iget-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {p1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 3
    iput-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 4
    :cond_0
    iput p4, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 5
    iput p3, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 6
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 7
    div-int v0, p4, p2

    iput v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 8
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 9
    rem-int p4, p3, p2

    iput p4, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 10
    div-int/2addr p3, p2

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p3

    add-int/lit8 p3, p2, -0x1

    .line 11
    rem-int v1, p4, p2

    sub-int/2addr p3, v1

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    add-int/lit8 v0, v0, -0x1

    .line 12
    div-int/2addr p4, p2

    sub-int/2addr v0, p4

    iput v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    .line 3
    div-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x64

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    mul-int/lit8 v2, v2, 0x64

    .line 7
    div-int/2addr v2, v1

    add-int/2addr v3, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v3, v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 6
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v5

    if-eqz v5, :cond_0

    mul-int v5, v4, v3

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_0
    move v5, v1

    .line 8
    :goto_0
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v5

    div-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0x64

    mul-int/lit8 v2, v2, 0x64

    .line 9
    div-int/2addr v2, v0

    sub-int/2addr v6, v2

    iget v0, p0, Landroid/view/View;->mScrollY:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v4

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v6, v0

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x64

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eqz v2, :cond_0

    int-to-float v2, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public fillGap(Z)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x22

    if-eqz p1, :cond_3

    .line 4
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v3

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 p1, v2, -0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int v3, p1, v1

    .line 7
    :cond_1
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v2

    .line 8
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    add-int/2addr p1, v2

    .line 9
    :cond_2
    invoke-direct {p0, p1, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/GridView;->correctTooHigh(III)V

    goto :goto_3

    .line 11
    :cond_3
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result p1

    goto :goto_0

    :cond_4
    move p1, v3

    :goto_0
    if-lez v2, :cond_5

    .line 13
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int p1, v2, p1

    .line 14
    :goto_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 15
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_6

    sub-int/2addr v2, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 16
    :goto_2
    invoke-direct {p0, v2, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/GridView;->correctTooLow(III)V

    :goto_3
    return-void
.end method

.method public findMotionRow(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 2
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 3
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 5
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v2

    return p1

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 7
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr p1, v0

    return p1

    :cond_2
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public fullScroll(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-ne p1, v3, :cond_0

    .line 1
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    .line 4
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_2
    return v1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method public layoutChildren()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-boolean v2, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    const/4 v0, 0x1

    if-nez v2, :cond_0

    .line 2
    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_0
    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5
    iget-object v4, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->resetList()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 8
    iput-boolean v3, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_1
    return-void

    .line 9
    :cond_2
    :try_start_1
    iget-object v4, v1, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 10
    iget v6, v1, Landroid/view/View;->mBottom:I

    iget v7, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 12
    iget v7, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    packed-switch v7, :pswitch_data_0

    .line 13
    iget v7, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    goto :goto_2

    .line 14
    :pswitch_0
    iget v7, v1, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v7, :cond_3

    .line 15
    iget v9, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int/2addr v7, v9

    move v9, v7

    goto :goto_0

    .line 16
    :pswitch_1
    iget v7, v1, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v9, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v9

    if-ltz v7, :cond_3

    if-ge v7, v4, :cond_3

    .line 17
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move v9, v3

    goto :goto_1

    :cond_3
    :pswitch_2
    move v9, v3

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_4

    .line 18
    :goto_2
    iget v9, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v9

    if-ltz v7, :cond_4

    if-ge v7, v4, :cond_4

    .line 19
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    .line 20
    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v10, v7

    move-object v11, v9

    const/4 v7, 0x0

    move v9, v3

    .line 21
    :goto_4
    iget-boolean v12, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v12, :cond_5

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->handleDataChanged()V

    .line 23
    :cond_5
    iget v13, v1, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v13, :cond_7

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->resetList()V

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_6

    .line 26
    iput-boolean v3, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_6
    return-void

    .line 27
    :cond_7
    :try_start_2
    iget v13, v1, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {v1, v13}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 28
    iget v13, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 29
    iget-object v14, v1, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    if-eqz v12, :cond_8

    move v12, v3

    :goto_5
    if-ge v12, v4, :cond_9

    .line 30
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    add-int v8, v13, v12

    invoke-virtual {v14, v15, v8}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 31
    :cond_8
    invoke-virtual {v14, v4, v13}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 32
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 33
    invoke-virtual {v14}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 34
    iget v8, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v12, -0x1

    packed-switch v8, :pswitch_data_1

    if-nez v4, :cond_10

    .line 35
    iget-boolean v4, v1, Landroid/widget/AbsListView;->mStackFromBottom:Z

    goto :goto_6

    .line 36
    :pswitch_3
    invoke-direct {v1, v9, v5, v6}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_d

    .line 37
    :pswitch_4
    iget v0, v1, Landroid/widget/AdapterView;->mSyncPosition:I

    iget v4, v1, Landroid/widget/AdapterView;->mSpecificTop:I

    invoke-direct {v1, v0, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_d

    .line 38
    :pswitch_5
    iget v0, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v4, v1, Landroid/widget/AdapterView;->mSpecificTop:I

    invoke-direct {v1, v0, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_d

    .line 39
    :pswitch_6
    iget v4, v1, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v4, v0

    invoke-direct {v1, v4, v6}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 40
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_d

    :pswitch_7
    if-eqz v7, :cond_a

    .line 41
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {v1, v0, v5, v6}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_d

    .line 42
    :cond_a
    invoke-direct {v1, v5, v6}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_d

    .line 43
    :pswitch_8
    iput v3, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 44
    invoke-direct {v1, v5}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_d

    :goto_6
    if-nez v4, :cond_d

    .line 46
    iget-object v0, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    move v0, v3

    goto :goto_8

    :cond_c
    :goto_7
    move v0, v12

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 47
    invoke-direct {v1, v5}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v0

    goto :goto_d

    .line 48
    :cond_d
    iget v4, v1, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v4, v0

    .line 49
    iget-object v0, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    move v0, v4

    goto :goto_a

    :cond_f
    :goto_9
    move v0, v12

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 50
    invoke-direct {v1, v4, v6}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v0

    goto :goto_d

    .line 51
    :cond_10
    iget v0, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    iget v4, v1, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v0, v4, :cond_12

    if-nez v10, :cond_11

    goto :goto_b

    .line 52
    :cond_11
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v5

    :goto_b
    invoke-direct {v1, v0, v5}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto :goto_d

    .line 53
    :cond_12
    iget v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v4, v1, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v0, v4, :cond_14

    if-nez v11, :cond_13

    goto :goto_c

    .line 54
    :cond_13
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v5

    :goto_c
    invoke-direct {v1, v0, v5}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    goto :goto_d

    .line 55
    :cond_14
    invoke-direct {v1, v3, v5}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v0

    .line 56
    :goto_d
    invoke-virtual {v14}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v0, :cond_15

    .line 57
    invoke-virtual {v1, v12, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    goto :goto_e

    .line 59
    :cond_15
    iget v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    if-lez v0, :cond_16

    const/4 v4, 0x3

    if-ge v0, v4, :cond_16

    .line 60
    iget v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v4, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 61
    iget v4, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v1, v4, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_e

    .line 62
    :cond_16
    iput v3, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 63
    iget-object v0, v1, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 64
    :cond_17
    :goto_e
    iput v3, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 65
    iput-boolean v3, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 66
    iget-object v0, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_18

    .line 67
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 68
    iput-object v0, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 69
    :cond_18
    iput-boolean v3, v1, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 70
    iget v0, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateScrollIndicators()V

    .line 72
    iget v0, v1, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_19

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 74
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1a

    .line 75
    iput-boolean v3, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_1a
    return-void

    :catchall_0
    move-exception v0

    if-nez v2, :cond_1b

    iput-boolean v3, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_1b
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 3
    iget p2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 2
    iget p1, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p3, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3
    iget-object p1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    const v1, 0x7fffffff

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 5
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7
    invoke-virtual {v4, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {p0, v4, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    invoke-static {p3, p1, p2}, Landroid/widget/AbsListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v4

    if-ge v4, v1, :cond_1

    move v0, v3

    move v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    .line 10
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/GridView;

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
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    div-int/2addr v1, v0

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 4
    div-int v2, v0, v1

    .line 5
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 6
    rem-int v0, p2, v1

    .line 7
    div-int/2addr p2, v1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v4

    sub-int/2addr v0, p2

    add-int/lit8 p2, v1, -0x1

    .line 8
    rem-int v3, v0, v1

    sub-int/2addr p2, v3

    sub-int/2addr v2, v4

    .line 9
    div-int/2addr v0, v1

    sub-int v0, v2, v0

    move v5, v0

    move v0, p2

    move p2, v5

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz p1, :cond_1

    .line 11
    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_1
    invoke-static {v0, v4, p2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p1

    .line 13
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 13

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

    if-nez v0, :cond_1

    .line 6
    iget v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    if-lez v2, :cond_0

    .line 7
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 10
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    .line 11
    invoke-direct {p0, v4}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v3

    .line 12
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    :goto_1
    iput v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-lez v4, :cond_4

    .line 13
    iget-object v8, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v5, v8}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v8

    .line 14
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    if-nez v9, :cond_3

    .line 15
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    .line 16
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :cond_3
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v5}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v10

    iput v10, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 18
    iput-boolean v7, v9, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 19
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v10, v5, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 20
    iget v11, p0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v12, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v11, v5, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 21
    invoke-virtual {v8, v11, v10}, Landroid/view/View;->measure(II)V

    .line 22
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 23
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v5, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 24
    iget-object v11, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v9, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v11, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 25
    iget-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9, v8, v6}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    move v10, v5

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 26
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, p2

    add-int/2addr v8, v10

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v8

    :cond_6
    const/high16 v8, -0x80000000

    if-ne v1, v8, :cond_a

    .line 27
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v1

    .line 28
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_7
    if-ge v5, v4, :cond_9

    add-int/2addr v9, v10

    add-int/2addr v5, v1

    if-ge v5, v4, :cond_8

    .line 29
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v9, v11

    :cond_8
    if-lt v9, p2, :cond_7

    goto :goto_3

    :cond_9
    move p2, v9

    :cond_a
    :goto_3
    if-ne v0, v8, :cond_c

    .line 30
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq v0, v6, :cond_c

    .line 31
    iget v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    mul-int/2addr v1, v0

    sub-int/2addr v0, v7

    iget v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    mul-int/2addr v0, v4

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    if-gt v1, v2, :cond_b

    if-eqz v3, :cond_c

    :cond_b
    const/high16 v0, 0x1000000

    or-int/2addr v2, v0

    .line 32
    :cond_c
    invoke-virtual {p0, v2, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 33
    iput p1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    return-void
.end method

.method public pageScroll(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    .line 1
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr p1, v0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    return v0

    :cond_2
    return v1
.end method

.method public sequenceScroll(I)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 3
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 4
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 5
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    add-int/2addr v1, v3

    sub-int/2addr v1, v5

    add-int/lit8 v6, v2, -0x1

    .line 6
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    sub-int v6, v3, v0

    .line 7
    div-int/2addr v6, v1

    mul-int/2addr v6, v1

    sub-int/2addr v3, v6

    sub-int v1, v3, v1

    add-int/2addr v1, v5

    .line 8
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v3

    move v3, v1

    move v1, v7

    :goto_0
    const/4 v6, 0x6

    if-eq p1, v5, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_2

    :cond_1
    sub-int/2addr v2, v5

    if-ge v0, v2, :cond_4

    .line 9
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    add-int/lit8 v2, v0, 0x1

    .line 10
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setSelectionInt(I)V

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_2
    if-lez v0, :cond_4

    .line 11
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    add-int/lit8 v1, v0, -0x1

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    if-ne v0, v3, :cond_3

    :goto_1
    move v4, v5

    :cond_3
    move v0, v4

    move v4, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v4

    :goto_3
    if-eqz v4, :cond_5

    .line 13
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    :cond_5
    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_6
    return v4
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 6
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 8
    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 9
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 11
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 12
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 14
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 15
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 16
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 17
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 18
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 19
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result p1

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 25
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 26
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

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

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :goto_0
    const/4 p1, 0x2

    .line 4
    iput p1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    return-void
.end method

.method public setSelectionInt(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 6
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz p1, :cond_1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    :goto_0
    if-eqz p1, :cond_2

    .line 7
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    sub-int v0, p1, v0

    .line 8
    :cond_2
    iget p1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr v1, p1

    .line 9
    div-int/2addr v0, p1

    if-eq v1, v0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_3
    return-void
.end method

.method public setStretchMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    :cond_0
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
