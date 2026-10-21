.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mDefaultPaddingEnd:I

.field private mMeasureLinearly:Z

.field private mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTotalWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/app/r;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/app/r;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic c(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/NotificationActionListLayout;->lambda$static$0(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method private clearMeasureOrder()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static synthetic lambda$static$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private rebuildMeasureOrder(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 p2, 0x0

    .line 19
    :goto_0
    if-ge p2, p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Landroid/widget/TextView;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lez v2, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 73
    .line 74
    sget-object p2, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 75
    .line 76
    invoke-static {p1, p2}, Landroid/animation/b;->y(Ljava/util/ArrayList;Ljava/util/Comparator;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingEnd:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 14
    .line 15
    sub-int/2addr p5, p3

    .line 16
    sub-int/2addr p5, v0

    .line 17
    iget p3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 18
    .line 19
    sub-int/2addr p5, p3

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const v2, 0x800003

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x5

    .line 36
    if-eq v1, v2, :cond_1

    .line 37
    .line 38
    iget p2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 42
    .line 43
    add-int/2addr v1, p4

    .line 44
    sub-int/2addr v1, p2

    .line 45
    iget p2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 46
    .line 47
    sub-int p2, v1, p2

    .line 48
    .line 49
    :goto_0
    const/4 p4, 0x0

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    add-int/lit8 p1, p3, -0x1

    .line 53
    .line 54
    const/4 v1, -0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, 0x1

    .line 57
    move p1, p4

    .line 58
    :goto_1
    if-ge p4, p3, :cond_4

    .line 59
    .line 60
    mul-int v2, v1, p4

    .line 61
    .line 62
    add-int/2addr v2, p1

    .line 63
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/16 v4, 0x8

    .line 72
    .line 73
    if-eq v3, v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    .line 89
    const/4 v6, 0x2

    .line 90
    invoke-static {p5, v4, v6, v0}, Landroid/app/m;->b(IIII)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 95
    .line 96
    add-int/2addr v6, v7

    .line 97
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 98
    .line 99
    sub-int/2addr v6, v7

    .line 100
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 101
    .line 102
    add-int/2addr p2, v7

    .line 103
    add-int v7, p2, v3

    .line 104
    .line 105
    add-int/2addr v4, v6

    .line 106
    invoke-virtual {v2, p2, v6, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 107
    .line 108
    .line 109
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 110
    .line 111
    add-int/2addr v3, v2

    .line 112
    add-int/2addr v3, p2

    .line 113
    move p2, v3

    .line 114
    :cond_3
    add-int/lit8 p4, p4, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-boolean v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v7

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v0

    .line 18
    move v3, v2

    .line 19
    move v9, v3

    .line 20
    move-object v8, v1

    .line 21
    move v1, v9

    .line 22
    :goto_0
    const/16 v10, 0x8

    .line 23
    .line 24
    if-ge v1, v7, :cond_3

    .line 25
    .line 26
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    instance-of v5, v4, Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eq v5, v10, :cond_2

    .line 44
    .line 45
    add-int/lit8 v9, v9, 0x1

    .line 46
    .line 47
    move-object v8, v4

    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v11, 0x1

    .line 58
    if-ne v2, v1, :cond_5

    .line 59
    .line 60
    iget-object v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eq v3, v1, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    move v1, v0

    .line 70
    goto :goto_3

    .line 71
    :cond_5
    :goto_2
    move v1, v11

    .line 72
    :goto_3
    if-nez v1, :cond_7

    .line 73
    .line 74
    iget-object v4, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    move v5, v0

    .line 81
    :goto_4
    if-ge v5, v4, :cond_7

    .line 82
    .line 83
    iget-object v12, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    check-cast v12, Landroid/util/Pair;

    .line 90
    .line 91
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v13, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v12, Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-eq v13, v12, :cond_6

    .line 112
    .line 113
    move v1, v11

    .line 114
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_7
    if-le v9, v11, :cond_8

    .line 118
    .line 119
    if-eqz v1, :cond_8

    .line 120
    .line 121
    invoke-direct {v6, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    .line 122
    .line 123
    .line 124
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    move v12, v11

    .line 131
    goto :goto_5

    .line 132
    :cond_9
    move v12, v0

    .line 133
    :goto_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    iget v2, v6, Landroid/view/View;->mPaddingLeft:I

    .line 138
    .line 139
    sub-int/2addr v1, v2

    .line 140
    iget v2, v6, Landroid/view/View;->mPaddingRight:I

    .line 141
    .line 142
    sub-int v13, v1, v2

    .line 143
    .line 144
    iget-object v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v14

    .line 150
    move v5, v0

    .line 151
    move v15, v5

    .line 152
    move/from16 v16, v15

    .line 153
    .line 154
    :goto_6
    if-ge v15, v7, :cond_d

    .line 155
    .line 156
    if-le v9, v11, :cond_d

    .line 157
    .line 158
    if-ge v15, v14, :cond_a

    .line 159
    .line 160
    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/view/View;

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_a
    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 170
    .line 171
    sub-int v1, v15, v14

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroid/util/Pair;

    .line 178
    .line 179
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Landroid/view/View;

    .line 182
    .line 183
    :goto_7
    move-object/from16 v17, v0

    .line 184
    .line 185
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-ne v0, v10, :cond_b

    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_b
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    move-object v4, v0

    .line 197
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 198
    .line 199
    if-eqz v12, :cond_c

    .line 200
    .line 201
    sub-int v0, v13, v5

    .line 202
    .line 203
    sub-int v1, v9, v16

    .line 204
    .line 205
    div-int/2addr v0, v1

    .line 206
    sub-int v0, v13, v0

    .line 207
    .line 208
    move v3, v0

    .line 209
    goto :goto_8

    .line 210
    :cond_c
    move v3, v5

    .line 211
    :goto_8
    const/16 v18, 0x0

    .line 212
    .line 213
    move-object/from16 v0, p0

    .line 214
    .line 215
    move-object/from16 v1, v17

    .line 216
    .line 217
    move/from16 v2, p1

    .line 218
    .line 219
    move-object v10, v4

    .line 220
    move/from16 v4, p2

    .line 221
    .line 222
    move v11, v5

    .line 223
    move/from16 v5, v18

    .line 224
    .line 225
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 226
    .line 227
    .line 228
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 233
    .line 234
    add-int/2addr v0, v1

    .line 235
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 236
    .line 237
    add-int/2addr v0, v1

    .line 238
    add-int/2addr v0, v11

    .line 239
    add-int/lit8 v16, v16, 0x1

    .line 240
    .line 241
    move v5, v0

    .line 242
    :goto_9
    add-int/lit8 v15, v15, 0x1

    .line 243
    .line 244
    const/16 v10, 0x8

    .line 245
    .line 246
    const/4 v11, 0x1

    .line 247
    goto :goto_6

    .line 248
    :cond_d
    move v11, v5

    .line 249
    if-eqz v8, :cond_11

    .line 250
    .line 251
    if-eqz v12, :cond_f

    .line 252
    .line 253
    if-lt v11, v13, :cond_e

    .line 254
    .line 255
    goto :goto_a

    .line 256
    :cond_e
    const/4 v0, 0x1

    .line 257
    goto :goto_b

    .line 258
    :cond_f
    :goto_a
    const/4 v0, 0x1

    .line 259
    if-ne v9, v0, :cond_11

    .line 260
    .line 261
    :goto_b
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    move-object v7, v1

    .line 266
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 267
    .line 268
    if-le v9, v0, :cond_10

    .line 269
    .line 270
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 275
    .line 276
    add-int/2addr v0, v1

    .line 277
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 278
    .line 279
    add-int/2addr v0, v1

    .line 280
    sub-int v5, v11, v0

    .line 281
    .line 282
    move v11, v5

    .line 283
    :cond_10
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 284
    .line 285
    const/4 v0, -0x1

    .line 286
    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 287
    .line 288
    const/4 v5, 0x0

    .line 289
    move-object/from16 v0, p0

    .line 290
    .line 291
    move-object v1, v8

    .line 292
    move/from16 v2, p1

    .line 293
    .line 294
    move v3, v11

    .line 295
    move/from16 v4, p2

    .line 296
    .line 297
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 298
    .line 299
    .line 300
    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 301
    .line 302
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 307
    .line 308
    add-int/2addr v0, v1

    .line 309
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 310
    .line 311
    add-int/2addr v0, v1

    .line 312
    add-int v5, v0, v11

    .line 313
    .line 314
    goto :goto_c

    .line 315
    :cond_11
    move v5, v11

    .line 316
    :goto_c
    iget v0, v6, Landroid/view/View;->mPaddingRight:I

    .line 317
    .line 318
    add-int/2addr v5, v0

    .line 319
    iget v0, v6, Landroid/view/View;->mPaddingLeft:I

    .line 320
    .line 321
    add-int/2addr v5, v0

    .line 322
    iput v5, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 323
    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    move/from16 v1, p1

    .line 329
    .line 330
    invoke-static {v0, v1}, Landroid/view/View;->resolveSize(II)I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    move/from16 v2, p2

    .line 339
    .line 340
    invoke-static {v1, v2}, Landroid/view/View;->resolveSize(II)I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 345
    .line 346
    .line 347
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setEmphasizedMode(Z)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureLinearly:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingEnd:I

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
