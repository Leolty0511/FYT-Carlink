.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserRowAdapter"
.end annotation


# instance fields
.field private mAnimationCount:I

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private final mColumnCount:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 19
    .line 20
    const v0, 0x10c0005

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 28
    .line 29
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static synthetic access$1400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;[Lcom/android/internal/app/ChooserActivity$RowScale;)[Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object p0
.end method

.method private getRowScale(I)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    if-ge p1, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 15
    .line 16
    sub-int/2addr p1, v0

    .line 17
    aget-object p1, v1, p1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$RowScale;->get()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    return p1
.end method

.method private setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p1, p1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, v1, p2, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v2, v0, 0x4

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    sub-int/2addr v2, v3

    .line 15
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 16
    .line 17
    invoke-virtual {v4, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eq v4, v1, :cond_0

    .line 22
    .line 23
    if-lt v2, v0, :cond_0

    .line 24
    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const v4, 0x1050032

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    if-ne v1, v3, :cond_4

    .line 33
    .line 34
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 35
    .line 36
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 37
    .line 38
    const v7, 0x1060058

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 49
    .line 50
    add-int/lit8 v6, p1, 0x1

    .line 51
    .line 52
    invoke-virtual {p0, v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {v1, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    if-eq v1, v3, :cond_1

    .line 77
    .line 78
    invoke-direct {p0, p2, v5, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_1
    if-nez p1, :cond_2

    .line 83
    .line 84
    move v6, v4

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v6, v5

    .line 87
    :goto_1
    if-eq v1, v3, :cond_3

    .line 88
    .line 89
    invoke-direct {p0, p2, v6, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    invoke-direct {p0, p2, v6, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 98
    .line 99
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 103
    .line 104
    add-int/lit8 v6, p1, -0x1

    .line 105
    .line 106
    invoke-virtual {p0, v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    invoke-virtual {v1, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eq v1, v3, :cond_6

    .line 115
    .line 116
    if-nez p1, :cond_5

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-direct {p0, p2, v5, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    :goto_2
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-direct {p0, p2, v1, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .line 138
    .line 139
    .line 140
    :goto_3
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    .line 148
    iget-object v4, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 149
    .line 150
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iget v6, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    .line 155
    .line 156
    int-to-float v6, v6

    .line 157
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    mul-float/2addr v6, p1

    .line 162
    float-to-int p1, v6

    .line 163
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 168
    .line 169
    iget-object p1, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    .line 177
    if-eq p1, v1, :cond_7

    .line 178
    .line 179
    iget-object p1, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 182
    .line 183
    .line 184
    :cond_7
    move p1, v5

    .line 185
    :goto_4
    const/4 v1, 0x4

    .line 186
    if-ge p1, v1, :cond_9

    .line 187
    .line 188
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    .line 189
    .line 190
    aget-object v3, v3, p1

    .line 191
    .line 192
    add-int v4, v0, p1

    .line 193
    .line 194
    if-gt v4, v2, :cond_8

    .line 195
    .line 196
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    .line 200
    .line 201
    aput v4, v1, p1

    .line 202
    .line 203
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 204
    .line 205
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->bindView(ILandroid/view/View;)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_8
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .line 211
    .line 212
    :goto_5
    add-int/lit8 p1, p1, 0x1

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_9
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    const v1, 0x1090048

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    .line 13
    new-instance v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-direct {v0, p1, v1}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    move v4, v2

    .line 24
    :goto_0
    const/4 v5, -0x1

    .line 25
    if-ge v4, v1, :cond_2

    .line 26
    .line 27
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 28
    .line 29
    invoke-virtual {v6, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    .line 34
    .line 35
    invoke-direct {v7, p0, v0, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    .line 42
    .line 43
    invoke-direct {v7, p0, v0, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    iget-object v7, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    .line 53
    .line 54
    aput-object v6, v7, v4

    .line 55
    .line 56
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v6, v3, v3}, Landroid/view/View;->measure(II)V

    .line 61
    .line 62
    .line 63
    if-nez v7, :cond_0

    .line 64
    .line 65
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-direct {v7, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 83
    .line 84
    :goto_1
    const/4 v5, 0x3

    .line 85
    if-eq v4, v5, :cond_1

    .line 86
    .line 87
    new-instance v5, Landroid/widget/Space;

    .line 88
    .line 89
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 90
    .line 91
    invoke-direct {v5, v6}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    .line 96
    const/high16 v7, 0x3f800000    # 1.0f

    .line 97
    .line 98
    invoke-direct {v6, v2, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measure()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-nez v1, :cond_3

    .line 115
    .line 116
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 117
    .line 118
    iget v2, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    .line 119
    .line 120
    invoke-direct {v1, v5, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    iget v2, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    .line 128
    .line 129
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    .line 131
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-object v0
.end method

.method public getCallerTargetRowCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x40800000    # 4.0f

    .line 9
    .line 10
    div-float/2addr v0, v1

    .line 11
    float-to-double v0, v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    double-to-int v0, v0

    .line 17
    return v0
.end method

.method public getCount()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    int-to-double v0, v0

    .line 11
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    const/high16 v3, 0x40800000    # 4.0f

    .line 19
    .line 20
    div-float/2addr v2, v3

    .line 21
    float-to-double v2, v2

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    add-double/2addr v2, v0

    .line 27
    double-to-int v0, v2

    .line 28
    return v0
.end method

.method public getFirstRowPosition(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v1, v0

    .line 8
    const/high16 v2, 0x40800000    # 4.0f

    .line 9
    .line 10
    div-float/2addr v1, v2

    .line 11
    float-to-double v3, v1

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    double-to-int v1, v3

    .line 17
    if-ge p1, v1, :cond_0

    .line 18
    .line 19
    mul-int/lit8 p1, p1, 0x4

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    int-to-float v4, v3

    .line 29
    div-float/2addr v4, v2

    .line 30
    float-to-double v4, v4

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    double-to-int v2, v4

    .line 36
    add-int v4, v1, v2

    .line 37
    .line 38
    if-ge p1, v4, :cond_1

    .line 39
    .line 40
    sub-int/2addr p1, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    add-int/2addr v0, v3

    .line 43
    sub-int/2addr p1, v1

    .line 44
    sub-int/2addr p1, v2

    .line 45
    :goto_0
    mul-int/lit8 p1, p1, 0x4

    .line 46
    .line 47
    add-int/2addr p1, v0

    .line 48
    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getServiceTargetRowCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x40800000    # 4.0f

    .line 9
    .line 10
    div-float/2addr v0, v1

    .line 11
    float-to-double v0, v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    double-to-int v0, v0

    .line 17
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 18
    .line 19
    return-object p1
.end method

.method public onAnimationEnd()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setDismissLocked(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setDismissLocked(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method
