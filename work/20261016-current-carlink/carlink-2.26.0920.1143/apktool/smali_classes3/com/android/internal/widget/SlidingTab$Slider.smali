.class Lcom/android/internal/widget/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slider"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x3

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field public static final ALIGN_TOP:I = 0x2

.field public static final ALIGN_UNKNOWN:I = 0x4

.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_PRESSED:I = 0x1


# instance fields
.field private alignment:I

.field private alignment_value:I

.field private currentState:I

.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;III)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 9
    .line 10
    new-instance v1, Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 25
    .line 26
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    const/4 v3, -0x2

    .line 32
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 48
    .line 49
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    const/4 v5, -0x1

    .line 52
    invoke-direct {v4, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    const v4, 0x10303a0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 69
    .line 70
    .line 71
    new-instance p3, Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-direct {p3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    iput-object p3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    .line 87
    .line 88
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 89
    .line 90
    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static synthetic access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getTabHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move v3, v2

    .line 13
    :goto_1
    if-eqz v3, :cond_3

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    :goto_2
    sub-int/2addr v0, v4

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move v0, v1

    .line 37
    :goto_3
    if-eqz v3, :cond_4

    .line 38
    .line 39
    goto :goto_5

    .line 40
    :cond_4
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-ne v1, v3, :cond_5

    .line 44
    .line 45
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    goto :goto_4

    .line 54
    :cond_5
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :goto_4
    sub-int/2addr v1, v3

    .line 63
    :goto_5
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    .line 64
    .line 65
    int-to-float v0, v0

    .line 66
    int-to-float v1, v1

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-direct {v3, v4, v0, v4, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 69
    .line 70
    .line 71
    const-wide/16 v0, 0xfa

    .line 72
    .line 73
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 90
    .line 91
    const/4 v1, 0x4

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public hideTarget()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public layout(IIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    iput v5, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 14
    .line 15
    iget-object v6, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    iget-object v8, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    sub-int v10, v3, v1

    .line 44
    .line 45
    sub-int v11, v4, v2

    .line 46
    .line 47
    int-to-float v12, v10

    .line 48
    const v13, 0x3f2aaaab

    .line 49
    .line 50
    .line 51
    mul-float v14, v12, v13

    .line 52
    .line 53
    float-to-int v14, v14

    .line 54
    sub-int/2addr v14, v9

    .line 55
    div-int/lit8 v15, v7, 0x2

    .line 56
    .line 57
    add-int/2addr v14, v15

    .line 58
    const v16, 0x3eaaaaaa

    .line 59
    .line 60
    .line 61
    mul-float v12, v12, v16

    .line 62
    .line 63
    float-to-int v12, v12

    .line 64
    sub-int/2addr v12, v15

    .line 65
    sub-int v15, v10, v7

    .line 66
    .line 67
    div-int/lit8 v13, v15, 0x2

    .line 68
    .line 69
    add-int v3, v13, v7

    .line 70
    .line 71
    move/from16 v17, v12

    .line 72
    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    const/4 v12, 0x1

    .line 76
    if-ne v5, v12, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    sub-int v1, v10, v9

    .line 80
    .line 81
    const/4 v7, 0x2

    .line 82
    div-int/2addr v1, v7

    .line 83
    add-int/2addr v10, v9

    .line 84
    div-int/2addr v10, v7

    .line 85
    int-to-float v9, v11

    .line 86
    const v12, 0x3f2aaaab

    .line 87
    .line 88
    .line 89
    mul-float/2addr v12, v9

    .line 90
    float-to-int v12, v12

    .line 91
    div-int/lit8 v14, v6, 0x2

    .line 92
    .line 93
    add-int/2addr v12, v14

    .line 94
    sub-int/2addr v12, v8

    .line 95
    mul-float v9, v9, v16

    .line 96
    .line 97
    float-to-int v9, v9

    .line 98
    sub-int/2addr v9, v14

    .line 99
    if-ne v5, v7, :cond_1

    .line 100
    .line 101
    iget-object v4, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    invoke-virtual {v4, v13, v5, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 105
    .line 106
    .line 107
    iget-object v4, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 108
    .line 109
    rsub-int/lit8 v6, v11, 0x0

    .line 110
    .line 111
    invoke-virtual {v4, v13, v6, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 112
    .line 113
    .line 114
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 115
    .line 116
    add-int/2addr v8, v12

    .line 117
    invoke-virtual {v3, v1, v12, v10, v8}, Landroid/view/View;->layout(IIII)V

    .line 118
    .line 119
    .line 120
    iput v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 124
    .line 125
    sub-int v5, v11, v6

    .line 126
    .line 127
    invoke-virtual {v2, v13, v5, v3, v11}, Landroid/view/View;->layout(IIII)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 131
    .line 132
    add-int v5, v11, v11

    .line 133
    .line 134
    invoke-virtual {v2, v13, v11, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 135
    .line 136
    .line 137
    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 138
    .line 139
    add-int/2addr v8, v9

    .line 140
    invoke-virtual {v2, v1, v9, v10, v8}, Landroid/view/View;->layout(IIII)V

    .line 141
    .line 142
    .line 143
    iput v4, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    :goto_0
    sub-int v2, v11, v8

    .line 147
    .line 148
    const/4 v3, 0x2

    .line 149
    div-int/2addr v2, v3

    .line 150
    add-int/2addr v8, v2

    .line 151
    sub-int v4, v11, v6

    .line 152
    .line 153
    div-int/2addr v4, v3

    .line 154
    add-int/2addr v11, v6

    .line 155
    div-int/2addr v11, v3

    .line 156
    if-nez v5, :cond_3

    .line 157
    .line 158
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    invoke-virtual {v3, v5, v4, v7, v11}, Landroid/view/View;->layout(IIII)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 165
    .line 166
    rsub-int/lit8 v12, v10, 0x0

    .line 167
    .line 168
    invoke-virtual {v3, v12, v4, v5, v11}, Landroid/view/View;->layout(IIII)V

    .line 169
    .line 170
    .line 171
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 172
    .line 173
    const/4 v4, 0x5

    .line 174
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 175
    .line 176
    .line 177
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 178
    .line 179
    add-int/2addr v9, v14

    .line 180
    invoke-virtual {v3, v14, v2, v9, v8}, Landroid/view/View;->layout(IIII)V

    .line 181
    .line 182
    .line 183
    iput v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_3
    iget-object v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 187
    .line 188
    invoke-virtual {v1, v15, v4, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 192
    .line 193
    add-int v3, v10, v10

    .line 194
    .line 195
    invoke-virtual {v1, v10, v4, v3, v11}, Landroid/view/View;->layout(IIII)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 199
    .line 200
    add-int v12, v17, v9

    .line 201
    .line 202
    move/from16 v3, v17

    .line 203
    .line 204
    invoke-virtual {v1, v3, v2, v12, v8}, Landroid/view/View;->layout(IIII)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 208
    .line 209
    const/16 v2, 0x30

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 212
    .line 213
    .line 214
    move/from16 v1, p3

    .line 215
    .line 216
    iput v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 217
    .line 218
    :goto_1
    return-void
.end method

.method public measure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public reset(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const v3, 0x10303a0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v2, v0

    .line 42
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    :goto_1
    sub-int/2addr v1, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move v1, v0

    .line 66
    :goto_2
    if-eqz v2, :cond_4

    .line 67
    .line 68
    move v3, v0

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 71
    .line 72
    const/4 v4, 0x2

    .line 73
    if-ne v3, v4, :cond_5

    .line 74
    .line 75
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 85
    .line 86
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    :goto_3
    sub-int/2addr v3, v4

    .line 93
    :goto_4
    if-eqz p1, :cond_6

    .line 94
    .line 95
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .line 96
    .line 97
    int-to-float v1, v1

    .line 98
    int-to-float v2, v3

    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-direct {p1, v3, v1, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v1, 0xfa

    .line 104
    .line 105
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_6
    if-eqz v2, :cond_7

    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_7
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {p1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 143
    .line 144
    .line 145
    :goto_5
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 158
    .line 159
    .line 160
    :goto_6
    return-void
.end method

.method public setBarBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setHintText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setState(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v2, :cond_0

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 14
    .line 15
    if-ne p1, v2, :cond_1

    .line 16
    .line 17
    move v3, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v3, v1

    .line 20
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p1, v0, :cond_4

    .line 25
    .line 26
    new-array v0, v2, [I

    .line 27
    .line 28
    const v2, 0x10100a2

    .line 29
    .line 30
    .line 31
    aput v2, v0, v1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const v2, 0x103039f

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const v2, 0x10303a0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 98
    .line 99
    .line 100
    :goto_2
    iput p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 101
    .line 102
    return-void
.end method

.method public setTabBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setTarget(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_6

    .line 13
    .line 14
    iget p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    neg-int p1, p1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move p1, v1

    .line 43
    :goto_1
    if-eqz v0, :cond_4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    if-ne v0, v1, :cond_5

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    neg-int v1, v0

    .line 65
    :goto_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 66
    .line 67
    neg-int p1, p1

    .line 68
    int-to-float p1, p1

    .line 69
    neg-int v1, v1

    .line 70
    int-to-float v1, v1

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-direct {v0, p1, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v1, 0xfa

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    .line 89
    .line 90
    :cond_6
    return-void
.end method

.method public showTarget()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, 0x1f4

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public updateDrawableStates()V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    return-void
.end method
