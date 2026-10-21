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

.field static final NO_POSITION:I = -0x1

.field static final TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field mHeaderViewInfos:Ljava/util/ArrayList;
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

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

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
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 6
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 10
    new-instance v2, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v2, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 11
    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 13
    new-instance p4, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {p4, p1, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x5

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 p1, 0x6

    .line 18
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 p1, 0x2

    .line 20
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 21
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_4
    const/4 p1, 0x3

    .line 23
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    const/4 p1, 0x4

    .line 24
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 25
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .line 1
    add-int/lit8 v2, p2, -0x1

    .line 2
    .line 3
    iget-object p2, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 4
    .line 5
    invoke-virtual {p0, v2, p2}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 14
    .line 15
    sub-int v3, p1, v0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 19
    .line 20
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    iget-object p1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    aget-boolean v7, p1, v0

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    move-object v1, p2

    .line 30
    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 31
    .line 32
    .line 33
    return-object p2
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .line 1
    add-int/lit8 v2, p2, 0x1

    .line 2
    .line 3
    iget-object p2, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 4
    .line 5
    invoke-virtual {p0, v2, p2}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 14
    .line 15
    add-int v3, p1, v0

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 19
    .line 20
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    iget-object p1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    aget-boolean v7, p1, v0

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    move-object v1, p2

    .line 30
    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 31
    .line 32
    .line 33
    return-object p2
.end method

.method private adjustViewsUpOrDown()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_5

    .line 6
    .line 7
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 30
    .line 31
    sub-int/2addr v0, v1

    .line 32
    :cond_0
    if-gez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v2, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 54
    .line 55
    sub-int/2addr v3, v4

    .line 56
    sub-int/2addr v1, v3

    .line 57
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 58
    .line 59
    add-int/2addr v3, v0

    .line 60
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 61
    .line 62
    if-ge v3, v0, :cond_3

    .line 63
    .line 64
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 65
    .line 66
    add-int/2addr v1, v0

    .line 67
    :cond_3
    if-lez v1, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move v2, v1

    .line 71
    :goto_0
    if-eqz v2, :cond_5

    .line 72
    .line 73
    neg-int v0, v2

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 75
    .line 76
    .line 77
    :cond_5
    return-void
.end method

.method private amountToScroll(II)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 8
    .line 9
    sub-int/2addr v0, v2

    .line 10
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/16 v3, 0x82

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-ne p1, v3, :cond_6

    .line 21
    .line 22
    add-int/lit8 p1, v2, -0x1

    .line 23
    .line 24
    if-eq p2, v4, :cond_0

    .line 25
    .line 26
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 27
    .line 28
    sub-int p1, p2, p1

    .line 29
    .line 30
    :cond_0
    :goto_0
    if-gt v2, p1, :cond_1

    .line 31
    .line 32
    add-int/lit8 v1, v2, -0x1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 39
    .line 40
    add-int/2addr v3, v2

    .line 41
    add-int/lit8 v3, v3, -0x1

    .line 42
    .line 43
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 50
    .line 51
    add-int/2addr v1, p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 57
    .line 58
    add-int/lit8 v3, v3, -0x1

    .line 59
    .line 60
    if-ge v1, v3, :cond_2

    .line 61
    .line 62
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    sub-int v1, v0, v1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v1, v0

    .line 70
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-gt v3, v1, :cond_3

    .line 75
    .line 76
    return v5

    .line 77
    :cond_3
    if-eq p2, v4, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    sub-int p2, v1, p2

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-lt p2, v3, :cond_4

    .line 90
    .line 91
    return v5

    .line 92
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    sub-int/2addr p1, v1

    .line 97
    iget p2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 98
    .line 99
    add-int/2addr p2, v2

    .line 100
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 101
    .line 102
    if-ne p2, v1, :cond_5

    .line 103
    .line 104
    add-int/lit8 v2, v2, -0x1

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    sub-int/2addr p2, v0

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    return p1

    .line 128
    :cond_6
    if-eq p2, v4, :cond_7

    .line 129
    .line 130
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 131
    .line 132
    :goto_2
    sub-int p1, p2, p1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_7
    move p1, v5

    .line 136
    :goto_3
    if-gez p1, :cond_8

    .line 137
    .line 138
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 143
    .line 144
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 148
    .line 149
    add-int/lit8 p1, p1, -0x1

    .line 150
    .line 151
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_8
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 155
    .line 156
    add-int/2addr v0, p1

    .line 157
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-lez v0, :cond_9

    .line 162
    .line 163
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    add-int/2addr v0, v1

    .line 168
    goto :goto_4

    .line 169
    :cond_9
    move v0, v1

    .line 170
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-lt v2, v0, :cond_a

    .line 175
    .line 176
    return v5

    .line 177
    :cond_a
    if-eq p2, v4, :cond_b

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    sub-int/2addr p2, v0

    .line 184
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-lt p2, v2, :cond_b

    .line 189
    .line 190
    return v5

    .line 191
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    sub-int/2addr v0, p1

    .line 196
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 197
    .line 198
    if-nez p1, :cond_c

    .line 199
    .line 200
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    sub-int/2addr v1, p1

    .line 209
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    return p1
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    const/16 p2, 0x21

    .line 12
    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    if-ge p1, p2, :cond_1

    .line 24
    .line 25
    sub-int/2addr p2, p1

    .line 26
    if-lez p3, :cond_2

    .line 27
    .line 28
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 38
    .line 39
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    sub-int/2addr p1, p2

    .line 42
    iget-object p2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    if-le p2, p1, :cond_1

    .line 47
    .line 48
    sub-int/2addr p2, p1

    .line 49
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 50
    .line 51
    add-int/lit8 p1, p1, -0x1

    .line 52
    .line 53
    if-ge p3, p1, :cond_2

    .line 54
    .line 55
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    :goto_0
    add-int/2addr p2, p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 p2, 0x0

    .line 62
    :cond_2
    :goto_1
    return p2
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x82

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-ne p1, v1, :cond_4

    .line 32
    .line 33
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 34
    .line 35
    if-lez v4, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v2, v3

    .line 39
    :goto_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v2, v3

    .line 51
    :goto_1
    add-int/2addr v4, v2

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-le v2, v4, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    :cond_3
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    add-int/2addr v5, v4

    .line 77
    sub-int/2addr v5, v2

    .line 78
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 79
    .line 80
    if-ge v5, v4, :cond_5

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    move v2, v3

    .line 84
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 89
    .line 90
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 91
    .line 92
    sub-int/2addr v4, v5

    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    goto :goto_3

    .line 100
    :cond_6
    move v2, v3

    .line 101
    :goto_3
    sub-int/2addr v4, v2

    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-ge v2, v4, :cond_7

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    :cond_7
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 115
    .line 116
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    .line 118
    .line 119
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-virtual {v0, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :goto_5
    const/4 v2, 0x0

    .line 130
    if-eqz v0, :cond_c

    .line 131
    .line 132
    invoke-direct {p0, v0}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 137
    .line 138
    const/4 v5, -0x1

    .line 139
    if-eq v4, v5, :cond_a

    .line 140
    .line 141
    if-eq v3, v4, :cond_a

    .line 142
    .line 143
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eq v4, v5, :cond_a

    .line 148
    .line 149
    if-ne p1, v1, :cond_8

    .line 150
    .line 151
    if-lt v4, v3, :cond_9

    .line 152
    .line 153
    :cond_8
    const/16 v1, 0x21

    .line 154
    .line 155
    if-ne p1, v1, :cond_a

    .line 156
    .line 157
    if-le v4, v3, :cond_a

    .line 158
    .line 159
    :cond_9
    return-object v2

    .line 160
    :cond_a
    invoke-direct {p0, p1, v0, v3}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-ge v1, v4, :cond_b

    .line 169
    .line 170
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 174
    .line 175
    invoke-virtual {p1, v3, v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 179
    .line 180
    return-object p1

    .line 181
    :cond_b
    invoke-direct {p0, v0}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-ge v1, v4, :cond_c

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 191
    .line 192
    invoke-virtual {p1, v3, v4}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 196
    .line 197
    return-object p1

    .line 198
    :cond_c
    return-object v2
.end method

.method private arrowScrollImpl(I)Z
    .locals 10

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
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 14
    .line 15
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->amountToScroll(II)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v5, v6

    .line 34
    :goto_0
    if-eqz v5, :cond_2

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    :cond_2
    const/4 v7, 0x1

    .line 45
    if-eqz v5, :cond_3

    .line 46
    .line 47
    move v8, v7

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v8, v1

    .line 50
    :goto_1
    const/4 v9, -0x1

    .line 51
    if-eq v3, v9, :cond_6

    .line 52
    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    move v2, v7

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move v2, v1

    .line 58
    :goto_2
    invoke-direct {p0, v0, p1, v3, v2}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-boolean v2, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 72
    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    if-nez v5, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 87
    .line 88
    .line 89
    move v2, v3

    .line 90
    move v8, v7

    .line 91
    :cond_6
    if-lez v4, :cond_8

    .line 92
    .line 93
    const/16 v8, 0x21

    .line 94
    .line 95
    if-ne p1, v8, :cond_7

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_7
    neg-int v4, v4

    .line 99
    :goto_3
    invoke-direct {p0, v4}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 100
    .line 101
    .line 102
    move v8, v7

    .line 103
    :cond_8
    iget-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 104
    .line 105
    if-eqz p1, :cond_a

    .line 106
    .line 107
    if-nez v5, :cond_a

    .line 108
    .line 109
    if-eqz v0, :cond_a

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_a

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_a

    .line 122
    .line 123
    invoke-direct {p0, p1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_9

    .line 128
    .line 129
    invoke-direct {p0, p1}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-lez v4, :cond_a

    .line 134
    .line 135
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 136
    .line 137
    .line 138
    :cond_a
    if-ne v3, v9, :cond_b

    .line 139
    .line 140
    if-eqz v0, :cond_b

    .line 141
    .line 142
    invoke-direct {p0, v0, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_b

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 149
    .line 150
    .line 151
    iput v9, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_b
    move-object v6, v0

    .line 155
    :goto_4
    if-eqz v8, :cond_e

    .line 156
    .line 157
    if-eqz v6, :cond_c

    .line 158
    .line 159
    invoke-virtual {p0, v2, v6}, Landroid/widget/AbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    iput p1, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 167
    .line 168
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_d

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 175
    .line 176
    .line 177
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 178
    .line 179
    .line 180
    return v7

    .line 181
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

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    .line 16
    .line 17
    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iput-boolean v1, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_17

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-eq v0, v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-lez v4, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/AbsListView;->keyPressed()V

    .line 59
    .line 60
    .line 61
    move v2, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v2, v1

    .line 64
    :cond_3
    :goto_0
    const/4 v4, 0x2

    .line 65
    if-nez v2, :cond_11

    .line 66
    .line 67
    if-eq v0, v3, :cond_11

    .line 68
    .line 69
    const/16 v5, 0x3d

    .line 70
    .line 71
    const/16 v6, 0x21

    .line 72
    .line 73
    const/16 v7, 0x82

    .line 74
    .line 75
    if-eq p1, v5, :cond_f

    .line 76
    .line 77
    const/16 v5, 0x5c

    .line 78
    .line 79
    if-eq p1, v5, :cond_d

    .line 80
    .line 81
    const/16 v5, 0x5d

    .line 82
    .line 83
    if-eq p1, v5, :cond_b

    .line 84
    .line 85
    const/16 v5, 0x7a

    .line 86
    .line 87
    if-eq p1, v5, :cond_a

    .line 88
    .line 89
    const/16 v5, 0x7b

    .line 90
    .line 91
    if-eq p1, v5, :cond_9

    .line 92
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_11

    .line 103
    .line 104
    const/16 v2, 0x42

    .line 105
    .line 106
    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_11

    .line 117
    .line 118
    const/16 v2, 0x11

    .line 119
    .line 120
    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    goto/16 :goto_4

    .line 125
    .line 126
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_4

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_11

    .line 137
    .line 138
    :goto_1
    add-int/lit8 v5, p2, -0x1

    .line 139
    .line 140
    if-lez p2, :cond_7

    .line 141
    .line 142
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_7

    .line 147
    .line 148
    move v2, v3

    .line 149
    move p2, v5

    .line 150
    goto :goto_1

    .line 151
    :cond_4
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_11

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_6

    .line 162
    .line 163
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_5

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    move v2, v1

    .line 171
    goto/16 :goto_4

    .line 172
    .line 173
    :cond_6
    :goto_2
    move v2, v3

    .line 174
    goto/16 :goto_4

    .line 175
    .line 176
    :pswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_8

    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_11

    .line 187
    .line 188
    :goto_3
    add-int/lit8 v5, p2, -0x1

    .line 189
    .line 190
    if-lez p2, :cond_7

    .line 191
    .line 192
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_7

    .line 197
    .line 198
    move v2, v3

    .line 199
    move p2, v5

    .line 200
    goto :goto_3

    .line 201
    :cond_7
    move p2, v5

    .line 202
    goto/16 :goto_4

    .line 203
    .line 204
    :cond_8
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_11

    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-nez v2, :cond_6

    .line 215
    .line 216
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_5

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_11

    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-nez v2, :cond_6

    .line 234
    .line 235
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_5

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_11

    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-nez v2, :cond_6

    .line 253
    .line 254
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_5

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_c

    .line 266
    .line 267
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_6

    .line 272
    .line 273
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_5

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_c
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_11

    .line 285
    .line 286
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-nez v2, :cond_6

    .line 291
    .line 292
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_5

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-eqz v5, :cond_e

    .line 304
    .line 305
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-nez v2, :cond_6

    .line 310
    .line 311
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-eqz v2, :cond_5

    .line 316
    .line 317
    goto/16 :goto_2

    .line 318
    .line 319
    :cond_e
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    if-eqz v5, :cond_11

    .line 324
    .line 325
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-nez v2, :cond_6

    .line 330
    .line 331
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-eqz v2, :cond_5

    .line 336
    .line 337
    goto/16 :goto_2

    .line 338
    .line 339
    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-eqz v5, :cond_10

    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-nez v2, :cond_6

    .line 350
    .line 351
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-eqz v2, :cond_5

    .line 356
    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :cond_10
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    if-eqz v5, :cond_11

    .line 364
    .line 365
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-nez v2, :cond_6

    .line 370
    .line 371
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_5

    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :cond_11
    :goto_4
    if-eqz v2, :cond_12

    .line 380
    .line 381
    return v3

    .line 382
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-eqz v2, :cond_13

    .line 387
    .line 388
    return v3

    .line 389
    :cond_13
    if-eqz v0, :cond_16

    .line 390
    .line 391
    if-eq v0, v3, :cond_15

    .line 392
    .line 393
    if-eq v0, v4, :cond_14

    .line 394
    .line 395
    return v1

    .line 396
    :cond_14
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    return p1

    .line 401
    :cond_15
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    return p1

    .line 406
    :cond_16
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    return p1

    .line 411
    :cond_17
    :goto_5
    return v1

    .line 412
    nop

    .line 413
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    if-lez p1, :cond_2

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget v0, p0, Landroid/view/View;->mBottom:I

    .line 25
    .line 26
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 27
    .line 28
    sub-int/2addr v0, v1

    .line 29
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    sub-int/2addr v0, v1

    .line 34
    sub-int/2addr v0, p1

    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v0, :cond_2

    .line 45
    .line 46
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 47
    .line 48
    if-gtz v2, :cond_0

    .line 49
    .line 50
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    if-ge v1, v3, :cond_2

    .line 55
    .line 56
    :cond_0
    if-nez v2, :cond_1

    .line 57
    .line 58
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 59
    .line 60
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    sub-int/2addr v2, v1

    .line 63
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 68
    .line 69
    .line 70
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 71
    .line 72
    if-lez v0, :cond_2

    .line 73
    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 81
    .line 82
    sub-int/2addr p1, v1

    .line 83
    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    if-lez p1, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    iget v3, p0, Landroid/view/View;->mBottom:I

    .line 21
    .line 22
    iget v4, p0, Landroid/view/View;->mTop:I

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    sub-int/2addr v3, v1

    .line 28
    sub-int/2addr v0, v2

    .line 29
    add-int/lit8 v1, p1, -0x1

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 40
    .line 41
    add-int/2addr v4, p1

    .line 42
    add-int/lit8 v4, v4, -0x1

    .line 43
    .line 44
    if-lez v0, :cond_3

    .line 45
    .line 46
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 47
    .line 48
    add-int/lit8 v5, p1, -0x1

    .line 49
    .line 50
    if-lt v4, v5, :cond_1

    .line 51
    .line 52
    if-le v2, v3, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 56
    .line 57
    if-ne v4, p1, :cond_3

    .line 58
    .line 59
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 64
    .line 65
    if-ne v4, p1, :cond_2

    .line 66
    .line 67
    sub-int/2addr v2, v3

    .line 68
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    :cond_2
    neg-int p1, v0

    .line 73
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 74
    .line 75
    .line 76
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 77
    .line 78
    add-int/lit8 p1, p1, -0x1

    .line 79
    .line 80
    if-ge v4, p1, :cond_3

    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 89
    .line 90
    add-int/2addr p1, v0

    .line 91
    invoke-direct {p0, v4, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    return-void
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Landroid/view/View;->mBottom:I

    .line 12
    .line 13
    iget v0, p0, Landroid/view/View;->mTop:I

    .line 14
    .line 15
    sub-int/2addr p1, v0

    .line 16
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    sub-int/2addr p1, v1

    .line 21
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 22
    .line 23
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 24
    .line 25
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    if-ge v2, v0, :cond_0

    .line 28
    .line 29
    sub-int/2addr v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    if-le v0, p1, :cond_1

    .line 34
    .line 35
    sub-int/2addr v0, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, p2, -0x1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v0

    .line 14
    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 p2, p2, 0x1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v0

    .line 27
    invoke-direct {p0, p2, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v2, v0

    .line 38
    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 42
    .line 43
    .line 44
    add-int/lit8 p2, p2, -0x1

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    sub-int/2addr p1, v0

    .line 51
    invoke-direct {p0, p2, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 10

    .line 1
    iget v0, p0, Landroid/view/View;->mBottom:I

    .line 2
    .line 3
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7
    .line 8
    const/16 v2, 0x22

    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    :cond_0
    move v6, p2

    .line 20
    :goto_0
    const/4 p2, 0x1

    .line 21
    if-ge v6, v0, :cond_3

    .line 22
    .line 23
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 24
    .line 25
    if-ge p1, v1, :cond_3

    .line 26
    .line 27
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 28
    .line 29
    if-ne p1, v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p2, 0x0

    .line 33
    :goto_1
    const/4 v7, 0x1

    .line 34
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v8, v1, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    move-object v4, p0

    .line 39
    move v5, p1

    .line 40
    move v9, p2

    .line 41
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 50
    .line 51
    add-int v6, v2, v4

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    move-object v3, v1

    .line 56
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, p1

    .line 66
    sub-int/2addr v0, p2

    .line 67
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 68
    .line 69
    .line 70
    return-object v3
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 7

    .line 1
    sub-int/2addr p2, p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    .line 3
    .line 4
    .line 5
    move-result v6

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    move-object v0, p0

    .line 13
    move v1, v6

    .line 14
    move v2, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-gt v0, p2, :cond_0

    .line 26
    .line 27
    sub-int/2addr p2, v0

    .line 28
    div-int/lit8 p2, p2, 0x2

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-direct {p0, p1, v6}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 34
    .line 35
    .line 36
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 37
    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 6
    .line 7
    invoke-direct {p0, p2, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-direct {p0, p3, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v4, 0x1

    .line 16
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    move-object v1, p0

    .line 22
    move v2, v7

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-le v0, p3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sub-int/2addr v0, p2

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    sub-int/2addr p2, p3

    .line 44
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    neg-int p2, p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ge v0, p2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sub-int/2addr p2, v0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    sub-int/2addr p3, v0

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 80
    .line 81
    if-nez p2, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-direct {p0, p2}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-object p1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10
    .line 11
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 27
    .line 28
    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 9

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const/4 v5, 0x1

    .line 10
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    move-object v2, p0

    .line 15
    move v3, p1

    .line 16
    move v4, p2

    .line 17
    move v7, v0

    .line 18
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 23
    .line 24
    iget v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 25
    .line 26
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    add-int/lit8 v3, p1, -0x1

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    sub-int/2addr v4, v2

    .line 37
    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 42
    .line 43
    .line 44
    add-int/2addr p1, v1

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int/2addr v1, v2

    .line 50
    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-lez v1, :cond_3

    .line 59
    .line 60
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v3, p1, 0x1

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    add-int/2addr v4, v2

    .line 71
    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 76
    .line 77
    .line 78
    sub-int/2addr p1, v1

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    sub-int/2addr v1, v2

    .line 84
    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-lez v1, :cond_2

    .line 93
    .line 94
    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 95
    .line 96
    .line 97
    :cond_2
    move-object v8, v3

    .line 98
    move-object v3, p1

    .line 99
    move-object p1, v8

    .line 100
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 101
    .line 102
    return-object p2

    .line 103
    :cond_4
    if-eqz v3, :cond_5

    .line 104
    .line 105
    return-object v3

    .line 106
    :cond_5
    return-object p1
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 10

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
    const/4 v3, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 13
    .line 14
    move v6, p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v6, p2

    .line 17
    move v0, v3

    .line 18
    :goto_0
    const/4 p2, 0x1

    .line 19
    if-le v6, v0, :cond_3

    .line 20
    .line 21
    if-ltz p1, :cond_3

    .line 22
    .line 23
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 24
    .line 25
    if-ne p1, v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move p2, v3

    .line 29
    :goto_1
    const/4 v7, 0x0

    .line 30
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 31
    .line 32
    iget v8, v1, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    move-object v4, p0

    .line 35
    move v5, p1

    .line 36
    move v9, p2

    .line 37
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 46
    .line 47
    sub-int v6, v4, v5

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    move-object v2, v1

    .line 52
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    add-int/2addr p1, p2

    .line 56
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-int/2addr v0, p1

    .line 63
    sub-int/2addr v0, p2

    .line 64
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 65
    .line 66
    .line 67
    return-object v2
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 1

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

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x42

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    if-lez v0, :cond_4

    .line 27
    .line 28
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    if-eq v0, v1, :cond_4

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v0, Landroid/view/ViewGroup;

    .line 58
    .line 59
    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v2, 0x0

    .line 80
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    return p1

    .line 88
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Landroid/view/ViewGroup;

    .line 97
    .line 98
    invoke-virtual {v0, v2, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    invoke-direct {p0, p1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    return p1

    .line 109
    :cond_4
    const/4 p1, 0x0

    .line 110
    return p1
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p3, v0, :cond_5

    .line 3
    .line 4
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 5
    .line 6
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    sub-int/2addr p3, v1

    .line 10
    const/16 v1, 0x21

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne p2, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    move v1, v2

    .line 21
    move-object v6, p2

    .line 22
    move-object p2, p1

    .line 23
    move-object p1, v6

    .line 24
    move v7, v0

    .line 25
    move v0, p3

    .line 26
    move p3, v7

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    move v1, v3

    .line 33
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    if-nez p4, :cond_1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    move v5, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v5, v3

    .line 46
    :goto_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1, v0, v4}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 50
    .line 51
    .line 52
    :cond_2
    if-eqz p2, :cond_4

    .line 53
    .line 54
    if-nez p4, :cond_3

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move v2, v3

    .line 60
    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p2, p3, v4}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void

    .line 67
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string p2, "newSelectedPosition needs to be valid"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    const/4 v4, 0x1

    .line 10
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    .line 17
    .line 18
    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 19
    .line 20
    if-ne p1, v5, :cond_0

    .line 21
    .line 22
    return v4

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    move v3, v2

    .line 33
    :goto_1
    if-ge v3, v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    .line 40
    .line 41
    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 42
    .line 43
    if-ne p1, v5, :cond_2

    .line 44
    .line 45
    return v4

    .line 46
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    return v2
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast p1, Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne p1, v1, :cond_4

    .line 7
    .line 8
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 9
    .line 10
    if-eq p1, v2, :cond_0

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v0

    .line 16
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 17
    .line 18
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lt p1, v1, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    if-ge p1, v0, :cond_2

    .line 26
    .line 27
    move p1, v0

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :goto_1
    if-gt p1, v1, :cond_9

    .line 37
    .line 38
    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    sub-int v4, p1, v0

    .line 45
    .line 46
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    return p1

    .line 57
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    add-int/2addr p1, v0

    .line 65
    add-int/lit8 p1, p1, -0x1

    .line 66
    .line 67
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 68
    .line 69
    if-eq v1, v2, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v1, v0

    .line 77
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 78
    .line 79
    if-ltz v1, :cond_9

    .line 80
    .line 81
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 82
    .line 83
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-lt v1, v3, :cond_6

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_6
    if-le v1, p1, :cond_7

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_7
    move p1, v1

    .line 94
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    :goto_4
    if-lt p1, v0, :cond_9

    .line 99
    .line 100
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_8

    .line 105
    .line 106
    sub-int v3, p1, v0

    .line 107
    .line 108
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_8

    .line 117
    .line 118
    return p1

    .line 119
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_9
    :goto_5
    return v2
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v8, 0x1

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, v0

    .line 16
    move v3, p1

    .line 17
    move v4, p2

    .line 18
    move v5, p3

    .line 19
    move v6, p4

    .line 20
    move v7, p5

    .line 21
    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    aget-boolean v8, v1, v2

    .line 35
    .line 36
    move-object v1, p0

    .line 37
    move-object v2, v0

    .line 38
    move v3, p1

    .line 39
    move v4, p2

    .line 40
    move v5, p3

    .line 41
    move v6, p4

    .line 42
    move v7, p5

    .line 43
    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eq v1, v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sub-int/2addr p1, v0

    .line 22
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 23
    .line 24
    if-ge p2, p3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
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
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, -0x2

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 15
    .line 16
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    add-int/2addr v3, v2

    .line 23
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 24
    .line 25
    invoke-static {v1, v3, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    const/high16 v2, 0x40000000    # 2.0f

    .line 34
    .line 35
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private measureScrapChild(Landroid/view/View;III)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 19
    .line 20
    invoke-interface {v1, p2}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 25
    .line 26
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 27
    .line 28
    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput-boolean p2, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    iput-boolean p2, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 36
    .line 37
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 38
    .line 39
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    add-int/2addr v1, p2

    .line 44
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    .line 46
    invoke-static {p3, v1, p2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iget p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    if-lez p3, :cond_1

    .line 53
    .line 54
    const/high16 p4, 0x40000000    # 2.0f

    .line 55
    .line 56
    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p3, 0x0

    .line 62
    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 6
    .line 7
    invoke-direct {p0, p4, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    invoke-direct {p0, p4, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez p3, :cond_2

    .line 16
    .line 17
    add-int/lit8 v2, v7, -0x1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v1, p0

    .line 30
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget p2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    add-int v3, p3, p2

    .line 41
    .line 42
    iget-object p3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v5, p3, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    move v2, v7

    .line 48
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-le v1, v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sub-int/2addr v1, v8

    .line 63
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    sub-int/2addr v2, v0

    .line 68
    sub-int/2addr p5, p4

    .line 69
    div-int/lit8 p5, p5, 0x2

    .line 70
    .line 71
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result p4

    .line 75
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    neg-int p4, p4

    .line 80
    invoke-virtual {p1, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 87
    .line 88
    if-nez p1, :cond_1

    .line 89
    .line 90
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 91
    .line 92
    add-int/lit8 p1, p1, -0x2

    .line 93
    .line 94
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    sub-int/2addr p4, p2

    .line 99
    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 103
    .line 104
    .line 105
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 106
    .line 107
    add-int/lit8 p1, p1, 0x1

    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 110
    .line 111
    .line 112
    move-result p4

    .line 113
    add-int/2addr p4, p2

    .line 114
    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_1
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 120
    .line 121
    add-int/lit8 p1, p1, 0x1

    .line 122
    .line 123
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    add-int/2addr p4, p2

    .line 128
    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 132
    .line 133
    .line 134
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 135
    .line 136
    add-int/lit8 p1, p1, -0x2

    .line 137
    .line 138
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 139
    .line 140
    .line 141
    move-result p4

    .line 142
    sub-int/2addr p4, p2

    .line 143
    invoke-direct {p0, p1, p4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_2
    if-gez p3, :cond_5

    .line 149
    .line 150
    if-eqz p2, :cond_3

    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    const/4 v4, 0x1

    .line 157
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 158
    .line 159
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 160
    .line 161
    const/4 v6, 0x1

    .line 162
    move-object v1, p0

    .line 163
    move v2, v7

    .line 164
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    const/4 v4, 0x0

    .line 174
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 175
    .line 176
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 177
    .line 178
    const/4 v6, 0x1

    .line 179
    move-object v1, p0

    .line 180
    move v2, v7

    .line 181
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    :goto_0
    move-object p3, p1

    .line 186
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-ge p1, v8, :cond_4

    .line 191
    .line 192
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    sub-int/2addr v8, p1

    .line 197
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    sub-int/2addr v0, p1

    .line 202
    sub-int/2addr p5, p4

    .line 203
    div-int/lit8 p5, p5, 0x2

    .line 204
    .line 205
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    invoke-virtual {p3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 214
    .line 215
    .line 216
    :cond_4
    invoke-direct {p0, p3, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    const/4 v4, 0x1

    .line 225
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 226
    .line 227
    iget v5, p2, Landroid/graphics/Rect;->left:I

    .line 228
    .line 229
    const/4 v6, 0x1

    .line 230
    move-object v1, p0

    .line 231
    move v2, v7

    .line 232
    move v3, p1

    .line 233
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    if-ge p1, p4, :cond_6

    .line 238
    .line 239
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    add-int/lit8 p2, p4, 0x14

    .line 244
    .line 245
    if-ge p1, p2, :cond_6

    .line 246
    .line 247
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    sub-int/2addr p4, p1

    .line 252
    invoke-virtual {p3, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 253
    .line 254
    .line 255
    :cond_6
    invoke-direct {p0, p3, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 256
    .line 257
    .line 258
    :goto_1
    return-object p3
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    const/16 v2, 0x82

    .line 4
    .line 5
    if-ne p3, v2, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    sub-int/2addr v3, v4

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-gt p1, v3, :cond_1

    .line 23
    .line 24
    if-eq p2, v1, :cond_0

    .line 25
    .line 26
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 27
    .line 28
    if-lt p2, p1, :cond_0

    .line 29
    .line 30
    add-int/2addr p2, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget p2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v1

    .line 36
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    if-eqz p1, :cond_6

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-lt p1, v3, :cond_6

    .line 47
    .line 48
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    add-int/2addr v3, p1

    .line 55
    sub-int/2addr v3, v0

    .line 56
    if-eq p2, v1, :cond_3

    .line 57
    .line 58
    if-gt p2, v3, :cond_3

    .line 59
    .line 60
    sub-int/2addr p2, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move p2, v3

    .line 63
    :goto_0
    if-ltz p2, :cond_6

    .line 64
    .line 65
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 66
    .line 67
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-lt p2, p1, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    if-ne p3, v2, :cond_5

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    const/4 v0, 0x0

    .line 78
    :goto_1
    invoke-virtual {p0, p2, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1

    .line 83
    :cond_6
    :goto_2
    return v1
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 19
    .line 20
    add-int/2addr p1, v1

    .line 21
    return p1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "newFocus is not a child of any of the children of the list!"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    add-int/2addr v0, v2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v1, v3

    .line 19
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 20
    .line 21
    .line 22
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 13
    .line 14
    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 15
    .line 16
    if-ne v2, p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    return-void
.end method

.method private removeUnusedFixedViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 17
    .line 18
    iget-object v1, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-boolean v3, v2, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 40
    .line 41
    .line 42
    iput-boolean v3, v2, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 43
    .line 44
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method

.method private scrollListItemsBy(I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 11
    .line 12
    sub-int/2addr v0, v2

    .line 13
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-gez p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    add-int/lit8 v4, p1, -0x1

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ge v5, v0, :cond_0

    .line 35
    .line 36
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 37
    .line 38
    add-int/2addr v5, p1

    .line 39
    add-int/lit8 v5, v5, -0x1

    .line 40
    .line 41
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 42
    .line 43
    add-int/lit8 v6, v6, -0x1

    .line 44
    .line 45
    if-ge v5, v6, :cond_0

    .line 46
    .line 47
    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ge p1, v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    sub-int/2addr v0, p1

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    if-eqz p1, :cond_7

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-ge v0, v1, :cond_7

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 85
    .line 86
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 95
    .line 96
    invoke-virtual {v2, p1, v0}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 107
    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 109
    .line 110
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :goto_2
    if-eqz p1, :cond_4

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-le v3, v1, :cond_4

    .line 124
    .line 125
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 126
    .line 127
    if-lez v3, :cond_4

    .line 128
    .line 129
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 134
    .line 135
    add-int/lit8 v3, v3, -0x1

    .line 136
    .line 137
    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    if-eqz p1, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-le v3, v1, :cond_5

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    sub-int/2addr v1, p1

    .line 153
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    add-int/lit8 p1, p1, -0x1

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    :goto_3
    if-eqz v1, :cond_7

    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-le v3, v0, :cond_7

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 179
    .line 180
    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 181
    .line 182
    invoke-virtual {v2, v3}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_6

    .line 187
    .line 188
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 189
    .line 190
    add-int/2addr v3, p1

    .line 191
    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 192
    .line 193
    .line 194
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    add-int/lit8 p1, p1, -0x1

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    goto :goto_3

    .line 204
    :cond_7
    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {p0, p1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {p0, p1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move/from16 v2, p2

    .line 5
    .line 6
    move/from16 v3, p5

    .line 7
    .line 8
    const-string/jumbo v4, "setupListItem"

    .line 9
    .line 10
    .line 11
    const-wide/16 v5, 0x8

    .line 12
    .line 13
    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    if-eqz p6, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    move v8, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v8, v7

    .line 29
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    if-eq v8, v9, :cond_1

    .line 34
    .line 35
    move v9, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v9, v7

    .line 38
    :goto_1
    iget v10, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 39
    .line 40
    if-lez v10, :cond_2

    .line 41
    .line 42
    const/4 v11, 0x3

    .line 43
    if-ge v10, v11, :cond_2

    .line 44
    .line 45
    iget v10, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 46
    .line 47
    if-ne v10, v2, :cond_2

    .line 48
    .line 49
    move v10, v4

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v10, v7

    .line 52
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    if-eq v10, v11, :cond_3

    .line 57
    .line 58
    move v11, v4

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    move v11, v7

    .line 61
    :goto_3
    if-eqz p7, :cond_5

    .line 62
    .line 63
    if-nez v9, :cond_5

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    if-eqz v12, :cond_4

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    move v12, v7

    .line 73
    goto :goto_5

    .line 74
    :cond_5
    :goto_4
    move v12, v4

    .line 75
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    check-cast v13, Landroid/widget/AbsListView$LayoutParams;

    .line 80
    .line 81
    if-nez v13, :cond_6

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    check-cast v13, Landroid/widget/AbsListView$LayoutParams;

    .line 88
    .line 89
    :cond_6
    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 90
    .line 91
    invoke-interface {v14, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    iput v14, v13, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 96
    .line 97
    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 98
    .line 99
    invoke-interface {v14, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    iput-boolean v14, v13, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 104
    .line 105
    if-eqz v9, :cond_7

    .line 106
    .line 107
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 108
    .line 109
    .line 110
    :cond_7
    if-eqz v11, :cond_8

    .line 111
    .line 112
    invoke-virtual {v1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 113
    .line 114
    .line 115
    :cond_8
    iget v8, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 116
    .line 117
    if-eqz v8, :cond_a

    .line 118
    .line 119
    iget-object v8, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 120
    .line 121
    if-eqz v8, :cond_a

    .line 122
    .line 123
    instance-of v9, v1, Landroid/widget/Checkable;

    .line 124
    .line 125
    if-eqz v9, :cond_9

    .line 126
    .line 127
    move-object v9, v1

    .line 128
    check-cast v9, Landroid/widget/Checkable;

    .line 129
    .line 130
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    invoke-interface {v9, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 147
    .line 148
    const/16 v9, 0xb

    .line 149
    .line 150
    if-lt v8, v9, :cond_a

    .line 151
    .line 152
    iget-object v8, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 153
    .line 154
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    invoke-virtual {v1, v8}, Landroid/view/View;->setActivated(Z)V

    .line 159
    .line 160
    .line 161
    :cond_a
    :goto_6
    const/4 v8, -0x1

    .line 162
    if-eqz p7, :cond_b

    .line 163
    .line 164
    iget-boolean v9, v13, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 165
    .line 166
    if-eqz v9, :cond_c

    .line 167
    .line 168
    :cond_b
    iget-boolean v9, v13, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 169
    .line 170
    const/4 v10, -0x2

    .line 171
    if-eqz v9, :cond_e

    .line 172
    .line 173
    iget v9, v13, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 174
    .line 175
    if-ne v9, v10, :cond_e

    .line 176
    .line 177
    :cond_c
    if-eqz p4, :cond_d

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_d
    move v8, v7

    .line 181
    :goto_7
    invoke-virtual {p0, v1, v8, v13}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    if-eqz p7, :cond_11

    .line 185
    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 191
    .line 192
    iget v8, v8, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 193
    .line 194
    if-eq v8, v2, :cond_11

    .line 195
    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 197
    .line 198
    .line 199
    goto :goto_9

    .line 200
    :cond_e
    iput-boolean v7, v13, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 201
    .line 202
    iget v2, v13, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 203
    .line 204
    if-ne v2, v10, :cond_f

    .line 205
    .line 206
    iput-boolean v4, v13, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 207
    .line 208
    :cond_f
    if-eqz p4, :cond_10

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_10
    move v8, v7

    .line 212
    :goto_8
    invoke-virtual {p0, v1, v8, v13, v4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 216
    .line 217
    .line 218
    :cond_11
    :goto_9
    if-eqz v12, :cond_13

    .line 219
    .line 220
    iget v2, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 221
    .line 222
    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 223
    .line 224
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 225
    .line 226
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 227
    .line 228
    add-int/2addr v9, v8

    .line 229
    iget v8, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    .line 231
    invoke-static {v2, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    iget v8, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 236
    .line 237
    if-lez v8, :cond_12

    .line 238
    .line 239
    const/high16 v7, 0x40000000    # 2.0f

    .line 240
    .line 241
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    goto :goto_a

    .line 246
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    :goto_a
    invoke-virtual {v1, v2, v7}, Landroid/view/View;->measure(II)V

    .line 255
    .line 256
    .line 257
    goto :goto_b

    .line 258
    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    .line 259
    .line 260
    .line 261
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-eqz p4, :cond_14

    .line 270
    .line 271
    move/from16 v8, p3

    .line 272
    .line 273
    goto :goto_c

    .line 274
    :cond_14
    sub-int v8, p3, v7

    .line 275
    .line 276
    :goto_c
    if-eqz v12, :cond_15

    .line 277
    .line 278
    add-int/2addr v2, v3

    .line 279
    add-int/2addr v7, v8

    .line 280
    invoke-virtual {v1, v3, v8, v2, v7}, Landroid/view/View;->layout(IIII)V

    .line 281
    .line 282
    .line 283
    goto :goto_d

    .line 284
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    sub-int v2, v3, v2

    .line 289
    .line 290
    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    sub-int/2addr v8, v2

    .line 298
    invoke-virtual {v1, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 299
    .line 300
    .line 301
    :goto_d
    iget-boolean v2, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 302
    .line 303
    if-eqz v2, :cond_16

    .line 304
    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-nez v2, :cond_16

    .line 310
    .line 311
    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 312
    .line 313
    .line 314
    :cond_16
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 315
    .line 316
    .line 317
    return-void
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .locals 14

    .line 1
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v3

    .line 14
    :goto_0
    if-eqz v2, :cond_1

    .line 15
    .line 16
    move v2, v4

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v2, v3

    .line 19
    :goto_1
    if-lez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    move v0, v4

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v0, v3

    .line 28
    :goto_2
    if-eqz v0, :cond_12

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/ListView;->isOpaque()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    move v0, v4

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move v0, v3

    .line 45
    :goto_3
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    iget-object v7, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    sub-int v7, v5, v7

    .line 58
    .line 59
    if-ge p1, v6, :cond_4

    .line 60
    .line 61
    move v8, v4

    .line 62
    goto :goto_4

    .line 63
    :cond_4
    move v8, v3

    .line 64
    :goto_4
    if-lt p1, v7, :cond_5

    .line 65
    .line 66
    move v9, v4

    .line 67
    goto :goto_5

    .line 68
    :cond_5
    move v9, v3

    .line 69
    :goto_5
    iget-boolean v10, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 70
    .line 71
    iget-boolean v11, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 72
    .line 73
    if-nez v10, :cond_6

    .line 74
    .line 75
    if-nez v8, :cond_12

    .line 76
    .line 77
    :cond_6
    if-nez v11, :cond_7

    .line 78
    .line 79
    if-nez v9, :cond_12

    .line 80
    .line 81
    :cond_7
    iget-object v12, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 82
    .line 83
    iget-boolean v13, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 84
    .line 85
    if-nez v13, :cond_d

    .line 86
    .line 87
    sub-int/2addr v5, v4

    .line 88
    if-ne p1, v5, :cond_8

    .line 89
    .line 90
    move v1, v4

    .line 91
    goto :goto_6

    .line 92
    :cond_8
    move v1, v3

    .line 93
    :goto_6
    if-eqz v2, :cond_9

    .line 94
    .line 95
    if-nez v1, :cond_12

    .line 96
    .line 97
    :cond_9
    add-int/lit8 v2, p1, 0x1

    .line 98
    .line 99
    invoke-interface {v12, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_c

    .line 104
    .line 105
    if-nez v10, :cond_a

    .line 106
    .line 107
    if-nez v8, :cond_c

    .line 108
    .line 109
    if-lt v2, v6, :cond_c

    .line 110
    .line 111
    :cond_a
    if-nez v1, :cond_b

    .line 112
    .line 113
    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_c

    .line 118
    .line 119
    if-nez v11, :cond_b

    .line 120
    .line 121
    if-nez v9, :cond_c

    .line 122
    .line 123
    if-ge v2, v7, :cond_c

    .line 124
    .line 125
    :cond_b
    return v4

    .line 126
    :cond_c
    if-eqz v0, :cond_12

    .line 127
    .line 128
    return v4

    .line 129
    :cond_d
    if-ne p1, v1, :cond_e

    .line 130
    .line 131
    move v1, v4

    .line 132
    goto :goto_7

    .line 133
    :cond_e
    move v1, v3

    .line 134
    :goto_7
    if-nez v1, :cond_12

    .line 135
    .line 136
    add-int/lit8 v2, p1, -0x1

    .line 137
    .line 138
    invoke-interface {v12, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_11

    .line 143
    .line 144
    if-nez v10, :cond_f

    .line 145
    .line 146
    if-nez v8, :cond_11

    .line 147
    .line 148
    if-lt v2, v6, :cond_11

    .line 149
    .line 150
    :cond_f
    if-nez v1, :cond_10

    .line 151
    .line 152
    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_11

    .line 157
    .line 158
    if-nez v11, :cond_10

    .line 159
    .line 160
    if-nez v9, :cond_11

    .line 161
    .line 162
    if-ge v2, v7, :cond_11

    .line 163
    .line 164
    :cond_10
    return v4

    .line 165
    :cond_11
    if-eqz v0, :cond_12

    .line 166
    .line 167
    return v4

    .line 168
    :cond_12
    return v3
.end method

.method private showingBottomFadingEdge()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 16
    .line 17
    add-int/2addr v2, v0

    .line 18
    const/4 v0, 0x1

    .line 19
    sub-int/2addr v2, v0

    .line 20
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    add-int/2addr v4, v3

    .line 27
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    sub-int/2addr v4, v3

    .line 32
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 33
    .line 34
    sub-int/2addr v3, v0

    .line 35
    if-lt v2, v3, :cond_1

    .line 36
    .line 37
    if-ge v1, v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :cond_1
    :goto_0
    return v0
.end method

.method private showingTopFadingEdge()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 9
    .line 10
    if-gtz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-le v2, v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    :cond_1
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x5

    const-string v1, "ListView"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 5
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 6
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 7
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 8
    iget-object p1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr p1, p3

    iput-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 10
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 11
    instance-of p1, p1, Landroid/widget/HeaderViewListAdapter;

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 13
    :cond_1
    iget-object p1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_2
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x5

    const-string v1, "ListView"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 5
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 6
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 7
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 8
    iget-object p1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr p1, p3

    iput-boolean p1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 10
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 11
    instance-of p1, p1, Landroid/widget/HeaderViewListAdapter;

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 13
    :cond_1
    iget-object p1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_2
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 19
    .line 20
    return v0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 23
    .line 24
    throw p1
.end method

.method public canAnimate()Z
    .locals 1

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

.method public dispatchDataSetObserverOnChangedInternal()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 11
    .line 12
    :cond_0
    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 13
    .line 14
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget-object v5, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    move v7, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v7, 0x0

    .line 23
    :goto_0
    if-eqz v5, :cond_2

    .line 24
    .line 25
    move v8, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/4 v8, 0x0

    .line 28
    :goto_1
    if-lez v2, :cond_3

    .line 29
    .line 30
    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    if-eqz v9, :cond_3

    .line 33
    .line 34
    move v9, v3

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    const/4 v9, 0x0

    .line 37
    :goto_2
    if-nez v9, :cond_4

    .line 38
    .line 39
    if-nez v7, :cond_4

    .line 40
    .line 41
    if-eqz v8, :cond_29

    .line 42
    .line 43
    :cond_4
    iget-object v10, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 44
    .line 45
    iget v11, v0, Landroid/view/View;->mPaddingLeft:I

    .line 46
    .line 47
    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    iget v11, v0, Landroid/view/View;->mRight:I

    .line 50
    .line 51
    iget v12, v0, Landroid/view/View;->mLeft:I

    .line 52
    .line 53
    sub-int/2addr v11, v12

    .line 54
    iget v12, v0, Landroid/view/View;->mPaddingRight:I

    .line 55
    .line 56
    sub-int/2addr v11, v12

    .line 57
    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    iget v13, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 68
    .line 69
    iget-object v14, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    sub-int v14, v13, v14

    .line 76
    .line 77
    iget-boolean v15, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 78
    .line 79
    iget-boolean v3, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 80
    .line 81
    iget v6, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 82
    .line 83
    move-object/from16 v17, v5

    .line 84
    .line 85
    iget-object v5, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 86
    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    .line 88
    .line 89
    .line 90
    move-result v18

    .line 91
    if-eqz v18, :cond_5

    .line 92
    .line 93
    invoke-super/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    .line 94
    .line 95
    .line 96
    move-result v18

    .line 97
    if-nez v18, :cond_5

    .line 98
    .line 99
    const/16 v18, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const/16 v18, 0x0

    .line 103
    .line 104
    :goto_3
    if-eqz v18, :cond_7

    .line 105
    .line 106
    move/from16 v19, v13

    .line 107
    .line 108
    iget-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 109
    .line 110
    if-nez v13, :cond_6

    .line 111
    .line 112
    iget-boolean v13, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 113
    .line 114
    if-eqz v13, :cond_6

    .line 115
    .line 116
    new-instance v13, Landroid/graphics/Paint;

    .line 117
    .line 118
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 122
    .line 123
    move-object/from16 v20, v5

    .line 124
    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    move-object/from16 v20, v5

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_7
    move-object/from16 v20, v5

    .line 137
    .line 138
    move/from16 v19, v13

    .line 139
    .line 140
    :goto_4
    iget-object v5, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 141
    .line 142
    iget v13, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 143
    .line 144
    move-object/from16 v21, v5

    .line 145
    .line 146
    const/16 v5, 0x22

    .line 147
    .line 148
    and-int/2addr v13, v5

    .line 149
    if-ne v13, v5, :cond_8

    .line 150
    .line 151
    iget-object v5, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 152
    .line 153
    iget v13, v5, Landroid/graphics/Rect;->top:I

    .line 154
    .line 155
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 156
    .line 157
    move/from16 v22, v13

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_8
    const/4 v5, 0x0

    .line 161
    const/16 v22, 0x0

    .line 162
    .line 163
    :goto_5
    iget v13, v0, Landroid/view/View;->mBottom:I

    .line 164
    .line 165
    move/from16 v23, v8

    .line 166
    .line 167
    iget v8, v0, Landroid/view/View;->mTop:I

    .line 168
    .line 169
    sub-int/2addr v13, v8

    .line 170
    sub-int/2addr v13, v5

    .line 171
    iget v5, v0, Landroid/view/View;->mScrollY:I

    .line 172
    .line 173
    add-int/2addr v13, v5

    .line 174
    iget-boolean v8, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 175
    .line 176
    move/from16 v24, v13

    .line 177
    .line 178
    const/4 v13, -0x1

    .line 179
    if-nez v8, :cond_19

    .line 180
    .line 181
    if-lez v11, :cond_a

    .line 182
    .line 183
    if-gez v5, :cond_a

    .line 184
    .line 185
    if-eqz v7, :cond_9

    .line 186
    .line 187
    const/4 v7, 0x0

    .line 188
    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 189
    .line 190
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 191
    .line 192
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_9
    const/4 v7, 0x0

    .line 197
    if-eqz v9, :cond_a

    .line 198
    .line 199
    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 200
    .line 201
    neg-int v4, v2

    .line 202
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 203
    .line 204
    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 205
    .line 206
    .line 207
    :cond_a
    :goto_6
    const/4 v4, 0x0

    .line 208
    const/4 v7, 0x0

    .line 209
    :goto_7
    if-ge v7, v11, :cond_18

    .line 210
    .line 211
    add-int v5, v6, v7

    .line 212
    .line 213
    if-ge v5, v12, :cond_b

    .line 214
    .line 215
    const/4 v8, 0x1

    .line 216
    goto :goto_8

    .line 217
    :cond_b
    const/4 v8, 0x0

    .line 218
    :goto_8
    if-lt v5, v14, :cond_c

    .line 219
    .line 220
    const/4 v13, 0x1

    .line 221
    goto :goto_9

    .line 222
    :cond_c
    const/4 v13, 0x0

    .line 223
    :goto_9
    if-nez v15, :cond_d

    .line 224
    .line 225
    if-nez v8, :cond_e

    .line 226
    .line 227
    :cond_d
    if-nez v3, :cond_11

    .line 228
    .line 229
    if-nez v13, :cond_e

    .line 230
    .line 231
    goto :goto_c

    .line 232
    :cond_e
    move/from16 v25, v6

    .line 233
    .line 234
    move/from16 v26, v9

    .line 235
    .line 236
    :cond_f
    :goto_a
    move/from16 v27, v11

    .line 237
    .line 238
    move-object/from16 v11, v20

    .line 239
    .line 240
    :cond_10
    :goto_b
    move-object/from16 v6, v21

    .line 241
    .line 242
    goto :goto_e

    .line 243
    :cond_11
    :goto_c
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    move/from16 v25, v6

    .line 252
    .line 253
    add-int/lit8 v6, v11, -0x1

    .line 254
    .line 255
    if-ne v7, v6, :cond_12

    .line 256
    .line 257
    const/4 v6, 0x1

    .line 258
    goto :goto_d

    .line 259
    :cond_12
    const/4 v6, 0x0

    .line 260
    :goto_d
    move/from16 v26, v9

    .line 261
    .line 262
    if-eqz v9, :cond_f

    .line 263
    .line 264
    move/from16 v9, v24

    .line 265
    .line 266
    if-ge v4, v9, :cond_17

    .line 267
    .line 268
    if-eqz v23, :cond_13

    .line 269
    .line 270
    if-nez v6, :cond_17

    .line 271
    .line 272
    :cond_13
    move/from16 v24, v9

    .line 273
    .line 274
    add-int/lit8 v9, v5, 0x1

    .line 275
    .line 276
    move/from16 v27, v11

    .line 277
    .line 278
    move-object/from16 v11, v20

    .line 279
    .line 280
    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_16

    .line 285
    .line 286
    if-nez v15, :cond_14

    .line 287
    .line 288
    if-nez v8, :cond_16

    .line 289
    .line 290
    if-lt v9, v12, :cond_16

    .line 291
    .line 292
    :cond_14
    if-nez v6, :cond_15

    .line 293
    .line 294
    invoke-interface {v11, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-eqz v5, :cond_16

    .line 299
    .line 300
    if-nez v3, :cond_15

    .line 301
    .line 302
    if-nez v13, :cond_16

    .line 303
    .line 304
    if-ge v9, v14, :cond_16

    .line 305
    .line 306
    :cond_15
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 307
    .line 308
    add-int v5, v4, v2

    .line 309
    .line 310
    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 311
    .line 312
    invoke-virtual {v0, v1, v10, v7}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 313
    .line 314
    .line 315
    goto :goto_b

    .line 316
    :cond_16
    if-eqz v18, :cond_10

    .line 317
    .line 318
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 319
    .line 320
    add-int v5, v4, v2

    .line 321
    .line 322
    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 323
    .line 324
    move-object/from16 v6, v21

    .line 325
    .line 326
    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 327
    .line 328
    .line 329
    goto :goto_e

    .line 330
    :cond_17
    move/from16 v24, v9

    .line 331
    .line 332
    goto :goto_a

    .line 333
    :goto_e
    add-int/lit8 v7, v7, 0x1

    .line 334
    .line 335
    move-object/from16 v21, v6

    .line 336
    .line 337
    move-object/from16 v20, v11

    .line 338
    .line 339
    move/from16 v6, v25

    .line 340
    .line 341
    move/from16 v9, v26

    .line 342
    .line 343
    move/from16 v11, v27

    .line 344
    .line 345
    goto/16 :goto_7

    .line 346
    .line 347
    :cond_18
    move/from16 v25, v6

    .line 348
    .line 349
    move/from16 v27, v11

    .line 350
    .line 351
    iget v2, v0, Landroid/view/View;->mBottom:I

    .line 352
    .line 353
    iget v3, v0, Landroid/view/View;->mScrollY:I

    .line 354
    .line 355
    add-int/2addr v2, v3

    .line 356
    if-eqz v23, :cond_29

    .line 357
    .line 358
    add-int v6, v25, v27

    .line 359
    .line 360
    move/from16 v3, v19

    .line 361
    .line 362
    if-ne v6, v3, :cond_29

    .line 363
    .line 364
    if-le v2, v4, :cond_29

    .line 365
    .line 366
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 367
    .line 368
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 369
    .line 370
    move-object/from16 v8, v17

    .line 371
    .line 372
    invoke-virtual {v0, v1, v8, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_15

    .line 376
    .line 377
    :cond_19
    move/from16 v25, v6

    .line 378
    .line 379
    move/from16 v26, v9

    .line 380
    .line 381
    move/from16 v27, v11

    .line 382
    .line 383
    move-object/from16 v8, v17

    .line 384
    .line 385
    move-object/from16 v11, v20

    .line 386
    .line 387
    move-object/from16 v6, v21

    .line 388
    .line 389
    if-lez v27, :cond_1a

    .line 390
    .line 391
    if-eqz v7, :cond_1a

    .line 392
    .line 393
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 394
    .line 395
    const/4 v9, 0x0

    .line 396
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object v16

    .line 400
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    .line 401
    .line 402
    .line 403
    move-result v9

    .line 404
    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 405
    .line 406
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 407
    .line 408
    .line 409
    :cond_1a
    move v4, v7

    .line 410
    move/from16 v9, v27

    .line 411
    .line 412
    :goto_f
    if-ge v4, v9, :cond_27

    .line 413
    .line 414
    add-int v13, v25, v4

    .line 415
    .line 416
    if-ge v13, v12, :cond_1b

    .line 417
    .line 418
    const/16 v19, 0x1

    .line 419
    .line 420
    goto :goto_10

    .line 421
    :cond_1b
    const/16 v19, 0x0

    .line 422
    .line 423
    :goto_10
    if-lt v13, v14, :cond_1c

    .line 424
    .line 425
    const/16 v20, 0x1

    .line 426
    .line 427
    goto :goto_11

    .line 428
    :cond_1c
    const/16 v20, 0x0

    .line 429
    .line 430
    :goto_11
    if-nez v15, :cond_1f

    .line 431
    .line 432
    if-nez v19, :cond_1d

    .line 433
    .line 434
    goto :goto_12

    .line 435
    :cond_1d
    move/from16 v21, v5

    .line 436
    .line 437
    move-object/from16 v27, v8

    .line 438
    .line 439
    :cond_1e
    move/from16 v28, v22

    .line 440
    .line 441
    goto :goto_14

    .line 442
    :cond_1f
    :goto_12
    if-nez v3, :cond_20

    .line 443
    .line 444
    if-nez v20, :cond_1d

    .line 445
    .line 446
    :cond_20
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object v21

    .line 450
    move-object/from16 v27, v8

    .line 451
    .line 452
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    move/from16 v21, v5

    .line 457
    .line 458
    if-eqz v26, :cond_1e

    .line 459
    .line 460
    move/from16 v5, v22

    .line 461
    .line 462
    if-le v8, v5, :cond_25

    .line 463
    .line 464
    if-ne v4, v7, :cond_21

    .line 465
    .line 466
    const/16 v22, 0x1

    .line 467
    .line 468
    goto :goto_13

    .line 469
    :cond_21
    const/16 v22, 0x0

    .line 470
    .line 471
    :goto_13
    move/from16 v28, v5

    .line 472
    .line 473
    add-int/lit8 v5, v13, -0x1

    .line 474
    .line 475
    invoke-interface {v11, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 476
    .line 477
    .line 478
    move-result v13

    .line 479
    if-eqz v13, :cond_24

    .line 480
    .line 481
    if-nez v15, :cond_22

    .line 482
    .line 483
    if-nez v19, :cond_24

    .line 484
    .line 485
    if-lt v5, v12, :cond_24

    .line 486
    .line 487
    :cond_22
    if-nez v22, :cond_23

    .line 488
    .line 489
    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 490
    .line 491
    .line 492
    move-result v13

    .line 493
    if-eqz v13, :cond_24

    .line 494
    .line 495
    if-nez v3, :cond_23

    .line 496
    .line 497
    if-nez v20, :cond_24

    .line 498
    .line 499
    if-ge v5, v14, :cond_24

    .line 500
    .line 501
    :cond_23
    sub-int v5, v8, v2

    .line 502
    .line 503
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 504
    .line 505
    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 506
    .line 507
    add-int/lit8 v5, v4, -0x1

    .line 508
    .line 509
    invoke-virtual {v0, v1, v10, v5}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 510
    .line 511
    .line 512
    goto :goto_14

    .line 513
    :cond_24
    if-eqz v18, :cond_26

    .line 514
    .line 515
    sub-int v5, v8, v2

    .line 516
    .line 517
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 518
    .line 519
    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 520
    .line 521
    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 522
    .line 523
    .line 524
    goto :goto_14

    .line 525
    :cond_25
    move/from16 v28, v5

    .line 526
    .line 527
    :cond_26
    :goto_14
    add-int/lit8 v4, v4, 0x1

    .line 528
    .line 529
    move/from16 v5, v21

    .line 530
    .line 531
    move-object/from16 v8, v27

    .line 532
    .line 533
    move/from16 v22, v28

    .line 534
    .line 535
    const/4 v13, -0x1

    .line 536
    goto :goto_f

    .line 537
    :cond_27
    move/from16 v21, v5

    .line 538
    .line 539
    move-object/from16 v27, v8

    .line 540
    .line 541
    if-lez v9, :cond_29

    .line 542
    .line 543
    if-lez v21, :cond_29

    .line 544
    .line 545
    if-eqz v23, :cond_28

    .line 546
    .line 547
    iget v2, v0, Landroid/view/View;->mBottom:I

    .line 548
    .line 549
    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 550
    .line 551
    add-int v2, v2, v21

    .line 552
    .line 553
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 554
    .line 555
    move-object/from16 v2, v27

    .line 556
    .line 557
    invoke-virtual {v0, v1, v2, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 558
    .line 559
    .line 560
    goto :goto_15

    .line 561
    :cond_28
    if-eqz v26, :cond_29

    .line 562
    .line 563
    move/from16 v13, v24

    .line 564
    .line 565
    iput v13, v10, Landroid/graphics/Rect;->top:I

    .line 566
    .line 567
    add-int/2addr v13, v2

    .line 568
    iput v13, v10, Landroid/graphics/Rect;->bottom:I

    .line 569
    .line 570
    const/4 v2, -0x1

    .line 571
    invoke-virtual {v0, v1, v10, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 572
    .line 573
    .line 574
    :cond_29
    :goto_15
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 575
    .line 576
    .line 577
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_0
    return v0
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-boolean p3, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-boolean p2, p2, Landroid/view/View;->mCachingFailed:Z

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 15
    .line 16
    :cond_0
    return p1
.end method

.method public drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 0

    .line 1
    iget-object p3, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 9
    .line 10
    .line 11
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    iget v2, p3, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    add-int/2addr v2, v0

    .line 19
    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 9
    .line 10
    .line 11
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    iget v2, p3, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    sub-int v2, v1, v2

    .line 16
    .line 17
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v0

    .line 20
    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "recycleOnMeasure"

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public fillGap(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x22

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 11
    .line 12
    and-int/2addr p1, v2

    .line 13
    if-ne p1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :cond_0
    if-lez v0, :cond_1

    .line 20
    .line 21
    add-int/lit8 p1, v0, -0x1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 32
    .line 33
    add-int/2addr v1, p1

    .line 34
    :cond_1
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 35
    .line 36
    add-int/2addr p1, v0

    .line 37
    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 49
    .line 50
    and-int/2addr p1, v2

    .line 51
    if-ne p1, v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move p1, v1

    .line 59
    :goto_0
    if-lez v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 70
    .line 71
    sub-int/2addr p1, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    sub-int p1, v0, p1

    .line 78
    .line 79
    :goto_1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 80
    .line 81
    add-int/lit8 v0, v0, -0x1

    .line 82
    .line 83
    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void
.end method

.method public findMotionRow(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_3

    .line 6
    .line 7
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-gt p1, v2, :cond_0

    .line 23
    .line 24
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 25
    .line 26
    add-int/2addr p1, v1

    .line 27
    return p1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    :goto_1
    if-ltz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lt p1, v1, :cond_2

    .line 44
    .line 45
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 46
    .line 47
    add-int/2addr p1, v0

    .line 48
    return p1

    .line 49
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 p1, -0x1

    .line 53
    return p1
.end method

.method public findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 15
    .line 16
    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 17
    .line 18
    if-eq v2, p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
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

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 15
    .line 16
    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public findViewTraversal(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewTraversal(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
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

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 15
    .line 16
    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :cond_1
    return-object v0
.end method

.method fullScroll(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1, v2, v1}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ltz p1, :cond_2

    .line 16
    .line 17
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, 0x82

    .line 27
    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 31
    .line 32
    sub-int/2addr p1, v1

    .line 33
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 34
    .line 35
    if-ge v0, p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, v0, p1, v2}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-ltz p1, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v2

    .line 54
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    .line 67
    .line 68
    :cond_3
    return v1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 26
    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    new-array v3, v2, [J

    .line 34
    .line 35
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 36
    .line 37
    move v5, v1

    .line 38
    move v6, v5

    .line 39
    :goto_0
    if-ge v5, v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    add-int/lit8 v7, v6, 0x1

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    invoke-interface {v4, v8}, Landroid/widget/Adapter;->getItemId(I)J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    aput-wide v8, v3, v6

    .line 58
    .line 59
    move v6, v7

    .line 60
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-ne v6, v2, :cond_3

    .line 64
    .line 65
    return-object v3

    .line 66
    :cond_3
    new-array v0, v6, [J

    .line 67
    .line 68
    invoke-static {v3, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_4
    new-array v0, v1, [J

    .line 73
    .line 74
    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeightForPosition(I)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    :cond_0
    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

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

    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->hasOpaqueScrollbars()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v0, v2

    .line 30
    :goto_0
    if-eqz v0, :cond_7

    .line 31
    .line 32
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    .line 40
    .line 41
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v4, :cond_6

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-le v4, v3, :cond_4

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 59
    .line 60
    if-eqz v4, :cond_5

    .line 61
    .line 62
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 66
    .line 67
    :goto_2
    sub-int/2addr v3, v4

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    sub-int/2addr v4, v1

    .line 73
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ge v1, v3, :cond_7

    .line 84
    .line 85
    :cond_6
    :goto_3
    return v2

    .line 86
    :cond_7
    return v0
.end method

.method public layoutChildren()V
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-boolean v8, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4
    .line 5
    if-eqz v8, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    .line 28
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 33
    .line 34
    .line 35
    :cond_1
    if-nez v8, :cond_2

    .line 36
    .line 37
    iput-boolean v9, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 38
    .line 39
    :cond_2
    return-void

    .line 40
    :cond_3
    :try_start_1
    iget-object v1, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 43
    .line 44
    iget v2, v7, Landroid/view/View;->mBottom:I

    .line 45
    .line 46
    iget v3, v7, Landroid/view/View;->mTop:I

    .line 47
    .line 48
    sub-int/2addr v2, v3

    .line 49
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    sub-int v6, v2, v1

    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget v2, v7, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 58
    .line 59
    const/4 v10, 0x2

    .line 60
    if-eq v2, v0, :cond_7

    .line 61
    .line 62
    if-eq v2, v10, :cond_6

    .line 63
    .line 64
    const/4 v3, 0x3

    .line 65
    if-eq v2, v3, :cond_7

    .line 66
    .line 67
    const/4 v3, 0x4

    .line 68
    if-eq v2, v3, :cond_7

    .line 69
    .line 70
    const/4 v3, 0x5

    .line 71
    if-eq v2, v3, :cond_7

    .line 72
    .line 73
    iget v2, v7, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 74
    .line 75
    iget v3, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 76
    .line 77
    sub-int/2addr v2, v3

    .line 78
    if-ltz v2, :cond_4

    .line 79
    .line 80
    if-ge v2, v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/4 v3, 0x0

    .line 88
    :goto_0
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget v12, v7, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 93
    .line 94
    if-ltz v12, :cond_5

    .line 95
    .line 96
    iget v13, v7, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 97
    .line 98
    sub-int/2addr v12, v13

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    move v12, v9

    .line 101
    :goto_1
    add-int/2addr v2, v12

    .line 102
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    move-object/from16 v22, v3

    .line 107
    .line 108
    move-object v3, v2

    .line 109
    move-object/from16 v2, v22

    .line 110
    .line 111
    move/from16 v23, v12

    .line 112
    .line 113
    move-object v12, v4

    .line 114
    move/from16 v4, v23

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    iget v2, v7, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 118
    .line 119
    iget v3, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 120
    .line 121
    sub-int/2addr v2, v3

    .line 122
    if-ltz v2, :cond_7

    .line 123
    .line 124
    if-ge v2, v1, :cond_7

    .line 125
    .line 126
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    move-object v3, v2

    .line 131
    move v4, v9

    .line 132
    const/4 v2, 0x0

    .line 133
    goto :goto_2

    .line 134
    :cond_7
    move v4, v9

    .line 135
    const/4 v2, 0x0

    .line 136
    const/4 v3, 0x0

    .line 137
    :goto_2
    const/4 v12, 0x0

    .line 138
    :goto_3
    iget-boolean v13, v7, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 139
    .line 140
    if-eqz v13, :cond_8

    .line 141
    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->handleDataChanged()V

    .line 143
    .line 144
    .line 145
    :cond_8
    iget v14, v7, Landroid/widget/AdapterView;->mItemCount:I

    .line 146
    .line 147
    if-nez v14, :cond_b

    .line 148
    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    .line 154
    .line 155
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 156
    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 160
    .line 161
    .line 162
    :cond_9
    if-nez v8, :cond_a

    .line 163
    .line 164
    iput-boolean v9, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 165
    .line 166
    :cond_a
    return-void

    .line 167
    :cond_b
    :try_start_2
    iget-object v15, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 168
    .line 169
    invoke-interface {v15}, Landroid/widget/Adapter;->getCount()I

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    if-eq v14, v15, :cond_10

    .line 174
    .line 175
    move v0, v9

    .line 176
    :goto_4
    iget-object v1, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 177
    .line 178
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 179
    .line 180
    .line 181
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    const-string v2, "ListView"

    .line 183
    .line 184
    if-ge v0, v1, :cond_c

    .line 185
    .line 186
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v3, "adapter count "

    .line 192
    .line 193
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, " is: "

    .line 200
    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object v3, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 205
    .line 206
    invoke-interface {v3, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    add-int/lit8 v0, v0, 0x1

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v3, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    .line 231
    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v3, ", "

    .line 243
    .line 244
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v3, ") with Adapter("

    .line 255
    .line 256
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v3, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v3, ")], mItemCount = "

    .line 269
    .line 270
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget v3, v7, Landroid/widget/AdapterView;->mItemCount:I

    .line 274
    .line 275
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v3, ", but adapter\'s count = "

    .line 279
    .line 280
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget-object v3, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 284
    .line 285
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_f

    .line 304
    .line 305
    const-string v1, "ListView get into error state while monkey testing!!!"

    .line 306
    .line 307
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    .line 309
    .line 310
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 311
    .line 312
    if-eqz v0, :cond_d

    .line 313
    .line 314
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 315
    .line 316
    .line 317
    :cond_d
    if-nez v8, :cond_e

    .line 318
    .line 319
    iput-boolean v9, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 320
    .line 321
    :cond_e
    return-void

    .line 322
    :cond_f
    :try_start_4
    throw v0

    .line 323
    :cond_10
    iget v14, v7, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 324
    .line 325
    invoke-virtual {v7, v14}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 329
    .line 330
    .line 331
    move-result-object v14

    .line 332
    if-eqz v14, :cond_13

    .line 333
    .line 334
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    if-eqz v11, :cond_13

    .line 339
    .line 340
    invoke-virtual {v7, v11}, Landroid/widget/AbsListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    if-eqz v10, :cond_13

    .line 345
    .line 346
    if-eqz v13, :cond_12

    .line 347
    .line 348
    invoke-direct {v7, v10}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    .line 349
    .line 350
    .line 351
    move-result v16

    .line 352
    if-nez v16, :cond_12

    .line 353
    .line 354
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    .line 355
    .line 356
    .line 357
    move-result v16

    .line 358
    if-eqz v16, :cond_11

    .line 359
    .line 360
    iget-boolean v15, v7, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 361
    .line 362
    if-eqz v15, :cond_11

    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_11
    const/4 v11, 0x0

    .line 366
    const/4 v15, 0x0

    .line 367
    goto :goto_6

    .line 368
    :cond_12
    :goto_5
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 369
    .line 370
    .line 371
    move-result-object v15

    .line 372
    :goto_6
    invoke-virtual {v7, v10}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 373
    .line 374
    .line 375
    move-result v10

    .line 376
    goto :goto_7

    .line 377
    :cond_13
    const/4 v10, -0x1

    .line 378
    const/4 v11, 0x0

    .line 379
    const/4 v15, 0x0

    .line 380
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 381
    .line 382
    .line 383
    move-result-object v9

    .line 384
    if-eqz v9, :cond_17

    .line 385
    .line 386
    if-eqz v13, :cond_15

    .line 387
    .line 388
    invoke-direct {v7, v9}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    .line 389
    .line 390
    .line 391
    move-result v17

    .line 392
    if-nez v17, :cond_15

    .line 393
    .line 394
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    .line 395
    .line 396
    .line 397
    move-result v17

    .line 398
    if-nez v17, :cond_15

    .line 399
    .line 400
    iget-boolean v0, v7, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 401
    .line 402
    if-eqz v0, :cond_14

    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_14
    const/4 v0, 0x0

    .line 406
    const/4 v9, 0x0

    .line 407
    goto :goto_9

    .line 408
    :cond_15
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    if-eqz v0, :cond_16

    .line 413
    .line 414
    invoke-virtual {v0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 415
    .line 416
    .line 417
    :cond_16
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 418
    .line 419
    .line 420
    move/from16 v18, v8

    .line 421
    .line 422
    goto :goto_a

    .line 423
    :cond_17
    move/from16 v18, v8

    .line 424
    .line 425
    const/4 v0, 0x0

    .line 426
    const/4 v9, 0x0

    .line 427
    :goto_a
    :try_start_5
    iget v8, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 428
    .line 429
    move/from16 v19, v10

    .line 430
    .line 431
    iget-object v10, v7, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 432
    .line 433
    if-eqz v13, :cond_19

    .line 434
    .line 435
    const/4 v13, 0x0

    .line 436
    :goto_b
    if-ge v13, v1, :cond_18

    .line 437
    .line 438
    move-object/from16 v20, v15

    .line 439
    .line 440
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 441
    .line 442
    .line 443
    move-result-object v15

    .line 444
    move-object/from16 v21, v11

    .line 445
    .line 446
    add-int v11, v8, v13

    .line 447
    .line 448
    invoke-virtual {v10, v15, v11}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 449
    .line 450
    .line 451
    add-int/lit8 v13, v13, 0x1

    .line 452
    .line 453
    move-object/from16 v15, v20

    .line 454
    .line 455
    move-object/from16 v11, v21

    .line 456
    .line 457
    goto :goto_b

    .line 458
    :cond_18
    move-object/from16 v21, v11

    .line 459
    .line 460
    move-object/from16 v20, v15

    .line 461
    .line 462
    goto :goto_c

    .line 463
    :cond_19
    move-object/from16 v21, v11

    .line 464
    .line 465
    move-object/from16 v20, v15

    .line 466
    .line 467
    invoke-virtual {v10, v1, v8}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 468
    .line 469
    .line 470
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 474
    .line 475
    .line 476
    iget v8, v7, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 477
    .line 478
    packed-switch v8, :pswitch_data_0

    .line 479
    .line 480
    .line 481
    if-nez v1, :cond_1d

    .line 482
    .line 483
    iget-boolean v1, v7, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 484
    .line 485
    goto :goto_e

    .line 486
    :pswitch_0
    move-object/from16 v1, p0

    .line 487
    .line 488
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    goto/16 :goto_11

    .line 493
    .line 494
    :pswitch_1
    iget v1, v7, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 495
    .line 496
    iget v2, v7, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 497
    .line 498
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    goto/16 :goto_11

    .line 503
    .line 504
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    iget v2, v7, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 509
    .line 510
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    if-nez v2, :cond_1a

    .line 515
    .line 516
    iget-object v3, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 517
    .line 518
    if-eqz v3, :cond_1a

    .line 519
    .line 520
    invoke-virtual {v3, v1}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    if-eqz v1, :cond_1a

    .line 525
    .line 526
    invoke-virtual {v7, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 527
    .line 528
    .line 529
    :cond_1a
    :goto_d
    move-object v1, v2

    .line 530
    goto/16 :goto_11

    .line 531
    .line 532
    :pswitch_3
    iget v1, v7, Landroid/widget/AdapterView;->mItemCount:I

    .line 533
    .line 534
    const/4 v2, 0x1

    .line 535
    sub-int/2addr v1, v2

    .line 536
    invoke-direct {v7, v1, v6}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_11

    .line 544
    .line 545
    :pswitch_4
    if-eqz v3, :cond_1b

    .line 546
    .line 547
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    invoke-direct {v7, v1, v5, v6}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    goto :goto_11

    .line 556
    :cond_1b
    invoke-direct {v7, v5, v6}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    goto :goto_11

    .line 561
    :pswitch_5
    const/4 v1, 0x0

    .line 562
    iput v1, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 563
    .line 564
    invoke-direct {v7, v5}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 569
    .line 570
    .line 571
    goto :goto_11

    .line 572
    :goto_e
    if-nez v1, :cond_1c

    .line 573
    .line 574
    const/4 v1, 0x1

    .line 575
    const/4 v2, 0x0

    .line 576
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    invoke-virtual {v7, v3}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 581
    .line 582
    .line 583
    invoke-direct {v7, v5}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    goto :goto_11

    .line 588
    :cond_1c
    iget v1, v7, Landroid/widget/AdapterView;->mItemCount:I

    .line 589
    .line 590
    const/4 v2, 0x1

    .line 591
    sub-int/2addr v1, v2

    .line 592
    const/4 v3, 0x0

    .line 593
    invoke-virtual {v7, v1, v3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    invoke-virtual {v7, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 598
    .line 599
    .line 600
    iget v1, v7, Landroid/widget/AdapterView;->mItemCount:I

    .line 601
    .line 602
    sub-int/2addr v1, v2

    .line 603
    invoke-direct {v7, v1, v6}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    goto :goto_11

    .line 608
    :cond_1d
    iget v1, v7, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 609
    .line 610
    if-ltz v1, :cond_1f

    .line 611
    .line 612
    iget v3, v7, Landroid/widget/AdapterView;->mItemCount:I

    .line 613
    .line 614
    if-ge v1, v3, :cond_1f

    .line 615
    .line 616
    if-nez v2, :cond_1e

    .line 617
    .line 618
    goto :goto_f

    .line 619
    :cond_1e
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 620
    .line 621
    .line 622
    move-result v5

    .line 623
    :goto_f
    invoke-direct {v7, v1, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    goto :goto_11

    .line 628
    :cond_1f
    iget v1, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 629
    .line 630
    iget v2, v7, Landroid/widget/AdapterView;->mItemCount:I

    .line 631
    .line 632
    if-ge v1, v2, :cond_21

    .line 633
    .line 634
    if-nez v12, :cond_20

    .line 635
    .line 636
    goto :goto_10

    .line 637
    :cond_20
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    .line 638
    .line 639
    .line 640
    move-result v5

    .line 641
    :goto_10
    invoke-direct {v7, v1, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    goto :goto_11

    .line 646
    :cond_21
    const/4 v1, 0x0

    .line 647
    invoke-direct {v7, v1, v5}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    goto :goto_d

    .line 652
    :goto_11
    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 653
    .line 654
    .line 655
    iget-object v2, v7, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 656
    .line 657
    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 658
    .line 659
    .line 660
    iget-object v2, v7, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 661
    .line 662
    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 663
    .line 664
    .line 665
    if-eqz v1, :cond_28

    .line 666
    .line 667
    iget-boolean v2, v7, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 668
    .line 669
    if-eqz v2, :cond_27

    .line 670
    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 672
    .line 673
    .line 674
    move-result v2

    .line 675
    if-eqz v2, :cond_27

    .line 676
    .line 677
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-nez v2, :cond_27

    .line 682
    .line 683
    if-ne v1, v9, :cond_22

    .line 684
    .line 685
    if-eqz v0, :cond_22

    .line 686
    .line 687
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    if-nez v2, :cond_23

    .line 692
    .line 693
    :cond_22
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 694
    .line 695
    .line 696
    move-result v2

    .line 697
    if-eqz v2, :cond_24

    .line 698
    .line 699
    :cond_23
    const/4 v2, 0x1

    .line 700
    goto :goto_12

    .line 701
    :cond_24
    const/4 v2, 0x0

    .line 702
    :goto_12
    if-nez v2, :cond_26

    .line 703
    .line 704
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 705
    .line 706
    .line 707
    move-result-object v2

    .line 708
    if-eqz v2, :cond_25

    .line 709
    .line 710
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 711
    .line 712
    .line 713
    :cond_25
    const/4 v2, -0x1

    .line 714
    invoke-virtual {v7, v2, v1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 715
    .line 716
    .line 717
    goto :goto_13

    .line 718
    :cond_26
    const/4 v2, 0x0

    .line 719
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 720
    .line 721
    .line 722
    iget-object v2, v7, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 723
    .line 724
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 725
    .line 726
    .line 727
    goto :goto_13

    .line 728
    :cond_27
    const/4 v2, -0x1

    .line 729
    invoke-virtual {v7, v2, v1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 730
    .line 731
    .line 732
    :goto_13
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    iput v1, v7, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 737
    .line 738
    goto :goto_17

    .line 739
    :cond_28
    iget v1, v7, Landroid/widget/AbsListView;->mTouchMode:I

    .line 740
    .line 741
    const/4 v2, 0x1

    .line 742
    if-eq v1, v2, :cond_2a

    .line 743
    .line 744
    const/4 v2, 0x2

    .line 745
    if-ne v1, v2, :cond_29

    .line 746
    .line 747
    goto :goto_14

    .line 748
    :cond_29
    const/4 v1, 0x0

    .line 749
    goto :goto_15

    .line 750
    :cond_2a
    :goto_14
    const/4 v1, 0x1

    .line 751
    :goto_15
    if-eqz v1, :cond_2b

    .line 752
    .line 753
    iget v1, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 754
    .line 755
    iget v2, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 756
    .line 757
    sub-int/2addr v1, v2

    .line 758
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    if-eqz v1, :cond_2d

    .line 763
    .line 764
    iget v2, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 765
    .line 766
    invoke-virtual {v7, v2, v1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 767
    .line 768
    .line 769
    goto :goto_16

    .line 770
    :cond_2b
    iget v1, v7, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 771
    .line 772
    const/4 v2, -0x1

    .line 773
    if-eq v1, v2, :cond_2c

    .line 774
    .line 775
    iget v2, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 776
    .line 777
    sub-int/2addr v1, v2

    .line 778
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    if-eqz v1, :cond_2d

    .line 783
    .line 784
    iget v2, v7, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 785
    .line 786
    invoke-virtual {v7, v2, v1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 787
    .line 788
    .line 789
    goto :goto_16

    .line 790
    :cond_2c
    const/4 v1, 0x0

    .line 791
    iput v1, v7, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 792
    .line 793
    iget-object v1, v7, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 794
    .line 795
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 796
    .line 797
    .line 798
    :cond_2d
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 799
    .line 800
    .line 801
    move-result v1

    .line 802
    if-eqz v1, :cond_2e

    .line 803
    .line 804
    if-eqz v0, :cond_2e

    .line 805
    .line 806
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 807
    .line 808
    .line 809
    :cond_2e
    :goto_17
    if-eqz v14, :cond_31

    .line 810
    .line 811
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    if-nez v1, :cond_31

    .line 816
    .line 817
    if-eqz v21, :cond_30

    .line 818
    .line 819
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->isAttachedToWindow()Z

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    if-eqz v1, :cond_30

    .line 824
    .line 825
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    if-eqz v20, :cond_2f

    .line 830
    .line 831
    if-eqz v1, :cond_2f

    .line 832
    .line 833
    invoke-virtual/range {v20 .. v20}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    .line 834
    .line 835
    .line 836
    move-result-wide v2

    .line 837
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    .line 838
    .line 839
    .line 840
    move-result v2

    .line 841
    const/16 v3, 0x40

    .line 842
    .line 843
    const/4 v4, 0x0

    .line 844
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 845
    .line 846
    .line 847
    goto :goto_18

    .line 848
    :cond_2f
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 849
    .line 850
    .line 851
    goto :goto_18

    .line 852
    :cond_30
    move/from16 v10, v19

    .line 853
    .line 854
    const/4 v1, -0x1

    .line 855
    if-eq v10, v1, :cond_31

    .line 856
    .line 857
    iget v1, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 858
    .line 859
    sub-int/2addr v10, v1

    .line 860
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 861
    .line 862
    .line 863
    move-result v1

    .line 864
    const/4 v2, 0x1

    .line 865
    sub-int/2addr v1, v2

    .line 866
    const/4 v2, 0x0

    .line 867
    invoke-static {v10, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    if-eqz v1, :cond_31

    .line 876
    .line 877
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 878
    .line 879
    .line 880
    :cond_31
    :goto_18
    if-eqz v0, :cond_32

    .line 881
    .line 882
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    if-eqz v1, :cond_32

    .line 887
    .line 888
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 889
    .line 890
    .line 891
    :cond_32
    const/4 v1, 0x0

    .line 892
    iput v1, v7, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 893
    .line 894
    iput-boolean v1, v7, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 895
    .line 896
    iget-object v0, v7, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 897
    .line 898
    if-eqz v0, :cond_33

    .line 899
    .line 900
    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 901
    .line 902
    .line 903
    const/4 v0, 0x0

    .line 904
    iput-object v0, v7, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 905
    .line 906
    :cond_33
    const/4 v1, 0x0

    .line 907
    iput-boolean v1, v7, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 908
    .line 909
    iget v0, v7, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 910
    .line 911
    invoke-virtual {v7, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 912
    .line 913
    .line 914
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateScrollIndicators()V

    .line 915
    .line 916
    .line 917
    iget v0, v7, Landroid/widget/AdapterView;->mItemCount:I

    .line 918
    .line 919
    if-lez v0, :cond_34

    .line 920
    .line 921
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 922
    .line 923
    .line 924
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 925
    .line 926
    .line 927
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 928
    .line 929
    if-eqz v0, :cond_35

    .line 930
    .line 931
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 932
    .line 933
    .line 934
    :cond_35
    if-nez v18, :cond_36

    .line 935
    .line 936
    const/4 v1, 0x0

    .line 937
    iput-boolean v1, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 938
    .line 939
    :cond_36
    return-void

    .line 940
    :catchall_0
    move-exception v0

    .line 941
    goto :goto_19

    .line 942
    :catchall_1
    move-exception v0

    .line 943
    move/from16 v18, v8

    .line 944
    .line 945
    :goto_19
    iget-object v1, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 946
    .line 947
    if-eqz v1, :cond_37

    .line 948
    .line 949
    invoke-virtual {v1}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 950
    .line 951
    .line 952
    :cond_37
    if-nez v18, :cond_38

    .line 953
    .line 954
    const/4 v1, 0x0

    .line 955
    iput-boolean v1, v7, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 956
    .line 957
    :cond_38
    throw v0

    .line 958
    nop

    .line 959
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

.method lookForSelectablePosition(IZ)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    :goto_0
    if-ge p1, v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/lit8 p2, v2, -0x1

    .line 40
    .line 41
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    :goto_1
    if-ltz p1, :cond_2

    .line 46
    .line 47
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    add-int/lit8 p1, p1, -0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-ltz p1, :cond_4

    .line 57
    .line 58
    if-lt p1, v2, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    return p1

    .line 62
    :cond_4
    :goto_2
    return v1
.end method

.method public lookForSelectablePositionAfter(IIZ)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq v2, v1, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p3, :cond_3

    .line 31
    .line 32
    add-int/lit8 p2, p2, -0x1

    .line 33
    .line 34
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    :goto_0
    if-le p2, p1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-nez p3, :cond_2

    .line 45
    .line 46
    add-int/lit8 p2, p2, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    if-gt p2, p1, :cond_5

    .line 50
    .line 51
    return v1

    .line 52
    :cond_3
    const/4 p3, 0x0

    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    :goto_1
    if-ge p2, p1, :cond_4

    .line 60
    .line 61
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-nez p3, :cond_4

    .line 66
    .line 67
    add-int/lit8 p2, p2, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    if-lt p2, p1, :cond_5

    .line 71
    .line 72
    return v1

    .line 73
    :cond_5
    return p2

    .line 74
    :cond_6
    :goto_2
    return v1
.end method

.method public final measureHeightOfChildren(IIIII)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 10
    .line 11
    add-int/2addr p2, p1

    .line 12
    return p2

    .line 13
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 18
    .line 19
    add-int/2addr v2, v1

    .line 20
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    if-ne p3, v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    add-int/lit8 p3, p3, -0x1

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    :goto_0
    if-gt p2, p3, :cond_7

    .line 41
    .line 42
    invoke-virtual {p0, p2, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-direct {p0, v7, p2, p1, p4}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 47
    .line 48
    .line 49
    if-lez p2, :cond_2

    .line 50
    .line 51
    add-int/2addr v2, v1

    .line 52
    :cond_2
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 59
    .line 60
    iget v8, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 61
    .line 62
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    add-int/2addr v2, v7

    .line 76
    if-lt v2, p4, :cond_5

    .line 77
    .line 78
    if-ltz p5, :cond_4

    .line 79
    .line 80
    if-le p2, p5, :cond_4

    .line 81
    .line 82
    if-lez v6, :cond_4

    .line 83
    .line 84
    if-eq v2, p4, :cond_4

    .line 85
    .line 86
    move p4, v6

    .line 87
    :cond_4
    return p4

    .line 88
    :cond_5
    if-ltz p5, :cond_6

    .line 89
    .line 90
    if-lt p2, p5, :cond_6

    .line 91
    .line 92
    move v6, v2

    .line 93
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_7
    return v2
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViews()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    if-eqz p1, :cond_4

    .line 11
    .line 12
    if-eqz p3, :cond_4

    .line 13
    .line 14
    iget p1, p0, Landroid/view/View;->mScrollX:I

    .line 15
    .line 16
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 17
    .line 18
    invoke-virtual {p3, p1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 30
    .line 31
    add-int/2addr v3, v4

    .line 32
    if-ge p1, v3, :cond_0

    .line 33
    .line 34
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 46
    .line 47
    const v5, 0x7fffffff

    .line 48
    .line 49
    .line 50
    move v6, v5

    .line 51
    move v5, v2

    .line 52
    :goto_0
    if-ge v2, v3, :cond_3

    .line 53
    .line 54
    add-int v7, v4, v2

    .line 55
    .line 56
    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-nez v7, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v7, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v7, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p3, p1, p2}, Landroid/widget/AbsListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-ge v8, v6, :cond_2

    .line 78
    .line 79
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    move v1, v2

    .line 84
    move v6, v8

    .line 85
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move v2, v5

    .line 89
    :cond_4
    if-ltz v1, :cond_5

    .line 90
    .line 91
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 92
    .line 93
    add-int/2addr v1, p1

    .line 94
    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 99
    .line 100
    .line 101
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 13
    .line 14
    const/4 v0, -0x2

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    move v4, p1

    .line 21
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    move v0, p2

    .line 29
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectionModeForAccessibility()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v0, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 19
    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    move v3, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    :goto_0
    iput v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 32
    .line 33
    if-lez v3, :cond_3

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 40
    .line 41
    invoke-virtual {p0, v4, v3}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {p0, v3, v4, p1, p2}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-static {v4, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_2

    .line 69
    .line 70
    iget-object v8, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    .line 77
    .line 78
    iget v9, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 79
    .line 80
    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_2

    .line 85
    .line 86
    iget-object v8, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 87
    .line 88
    invoke-virtual {v8, v3, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 89
    .line 90
    .line 91
    :cond_2
    move v4, v7

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v5, v4

    .line 94
    move v6, v5

    .line 95
    :goto_1
    if-nez v0, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 98
    .line 99
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 102
    .line 103
    add-int/2addr v2, v0

    .line 104
    add-int/2addr v2, v5

    .line 105
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-int/2addr v0, v2

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    const/high16 v0, -0x1000000

    .line 112
    .line 113
    and-int/2addr v0, v4

    .line 114
    or-int/2addr v0, v2

    .line 115
    :goto_2
    if-nez v1, :cond_5

    .line 116
    .line 117
    iget-object p2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 118
    .line 119
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 120
    .line 121
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 122
    .line 123
    add-int/2addr v2, p2

    .line 124
    add-int/2addr v2, v6

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    mul-int/lit8 p2, p2, 0x2

    .line 130
    .line 131
    add-int/2addr p2, v2

    .line 132
    :cond_5
    move v6, p2

    .line 133
    const/high16 p2, -0x80000000

    .line 134
    .line 135
    if-ne v1, p2, :cond_6

    .line 136
    .line 137
    const/4 v4, 0x0

    .line 138
    const/4 v5, -0x1

    .line 139
    const/4 v7, -0x1

    .line 140
    move-object v2, p0

    .line 141
    move v3, p1

    .line 142
    invoke-virtual/range {v2 .. v7}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    :cond_6
    invoke-virtual {p0, v0, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 147
    .line 148
    .line 149
    iput p1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 150
    .line 151
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v2, v1

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    .line 25
    .line 26
    sub-int v3, p2, v3

    .line 27
    .line 28
    sub-int/2addr v1, v3

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sub-int/2addr v0, v1

    .line 39
    iget-object v1, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Landroid/widget/ListView$FocusSelector;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-direct {v1, p0, v3}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 50
    .line 51
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 52
    .line 53
    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method pageScroll(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sub-int/2addr p1, v0

    .line 14
    sub-int/2addr p1, v2

    .line 15
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v0, 0x82

    .line 22
    .line 23
    if-ne p1, v0, :cond_4

    .line 24
    .line 25
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 26
    .line 27
    sub-int/2addr p1, v2

    .line 28
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, v0

    .line 35
    sub-int/2addr v3, v2

    .line 36
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    move v0, v2

    .line 41
    :goto_0
    if-ltz p1, :cond_4

    .line 42
    .line 43
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 44
    .line 45
    invoke-virtual {p0, v3, p1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-ltz p1, :cond_4

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 53
    .line 54
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    add-int/2addr v3, v1

    .line 61
    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    sub-int/2addr v1, v3

    .line 72
    if-le p1, v1, :cond_1

    .line 73
    .line 74
    const/4 v1, 0x3

    .line 75
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 76
    .line 77
    :cond_1
    if-nez v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-ge p1, v0, :cond_2

    .line 84
    .line 85
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 100
    .line 101
    .line 102
    :cond_3
    return v2

    .line 103
    :cond_4
    return v1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const v0, 0x1020037

    .line 10
    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    sub-int/2addr p2, v1

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-ltz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 38
    return p1
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

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return v1
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return v1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 7

    .line 1
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    neg-int v0, v0

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    neg-int v1, v1

    .line 24
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int v2, v1, v0

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 48
    .line 49
    if-gtz v4, :cond_0

    .line 50
    .line 51
    if-le p3, v3, :cond_1

    .line 52
    .line 53
    :cond_0
    add-int/2addr v1, v3

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    const/4 v4, 0x1

    .line 59
    sub-int/2addr p3, v4

    .line 60
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 75
    .line 76
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 77
    .line 78
    sub-int/2addr v6, v4

    .line 79
    if-lt v5, v6, :cond_2

    .line 80
    .line 81
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 82
    .line 83
    sub-int v6, p3, v3

    .line 84
    .line 85
    if-ge v5, v6, :cond_3

    .line 86
    .line 87
    :cond_2
    sub-int/2addr v2, v3

    .line 88
    :cond_3
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    if-le v3, v2, :cond_5

    .line 92
    .line 93
    iget v6, p2, Landroid/graphics/Rect;->top:I

    .line 94
    .line 95
    if-le v6, v1, :cond_5

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-le v3, v0, :cond_4

    .line 102
    .line 103
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 104
    .line 105
    sub-int/2addr p2, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 108
    .line 109
    sub-int/2addr p2, v2

    .line 110
    :goto_0
    add-int/2addr p2, v5

    .line 111
    sub-int/2addr p3, v2

    .line 112
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 118
    .line 119
    if-ge p3, v1, :cond_7

    .line 120
    .line 121
    if-ge v3, v2, :cond_7

    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-le p3, v0, :cond_6

    .line 128
    .line 129
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 130
    .line 131
    sub-int/2addr v2, p2

    .line 132
    rsub-int/lit8 p2, v2, 0x0

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 136
    .line 137
    sub-int p2, v1, p2

    .line 138
    .line 139
    rsub-int/lit8 p2, p2, 0x0

    .line 140
    .line 141
    :goto_1
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    sub-int/2addr p3, v1

    .line 150
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    goto :goto_2

    .line 155
    :cond_7
    move p2, v5

    .line 156
    :goto_2
    if-eqz p2, :cond_8

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    move v4, v5

    .line 160
    :goto_3
    if-eqz v4, :cond_9

    .line 161
    .line 162
    neg-int p2, p2

    .line 163
    invoke-direct {p0, p2}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 164
    .line 165
    .line 166
    const/4 p2, -0x1

    .line 167
    invoke-virtual {p0, p2, p1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    iput p1, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 177
    .line 178
    .line 179
    :cond_9
    return v4
.end method

.method public resetList()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 16
    .line 17
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
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

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

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 12
    .line 13
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v1, -0x1

    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    :cond_2
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x60000

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget p1, p0, Landroid/view/View;->mScrollY:I

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public setSelectionInt(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 5
    .line 6
    if-ltz v0, :cond_1

    .line 7
    .line 8
    add-int/lit8 v1, v0, -0x1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    add-int/2addr v0, v2

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 27
    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public trackMotionScroll(II)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p0, p2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/HeaderViewListAdapter;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public wrapHeaderListAdapterInternal()V
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method
