.class public Lcom/android/internal/widget/BackgroundFallback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBackgroundFallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

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
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    move v6, p1

    .line 22
    move v4, v0

    .line 23
    move v3, v2

    .line 24
    move v5, v3

    .line 25
    move v7, v5

    .line 26
    :goto_0
    if-ge v3, v1, :cond_4

    .line 27
    .line 28
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    if-ne v8, p4, :cond_1

    .line 37
    .line 38
    if-nez v9, :cond_2

    .line 39
    .line 40
    instance-of v9, v8, Landroid/view/ViewGroup;

    .line 41
    .line 42
    if-eqz v9, :cond_2

    .line 43
    .line 44
    move-object v9, v8

    .line 45
    check-cast v9, Landroid/view/ViewGroup;

    .line 46
    .line 47
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-nez v9, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-nez v10, :cond_3

    .line 59
    .line 60
    if-eqz v9, :cond_3

    .line 61
    .line 62
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    const/4 v10, -0x1

    .line 67
    if-eq v9, v10, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    if-ge v4, v5, :cond_9

    .line 106
    .line 107
    if-lt v6, v7, :cond_5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    if-lez v6, :cond_6

    .line 111
    .line 112
    iget-object p2, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    invoke-virtual {p2, v2, v2, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    .line 121
    .line 122
    :cond_6
    if-lez v4, :cond_7

    .line 123
    .line 124
    iget-object p2, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    invoke-virtual {p2, v2, v6, v4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    .line 128
    .line 129
    iget-object p2, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    if-ge v5, v0, :cond_8

    .line 135
    .line 136
    iget-object p2, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    invoke-virtual {p2, v5, v6, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    if-ge v7, p1, :cond_9

    .line 147
    .line 148
    iget-object p2, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    invoke-virtual {p2, v4, v7, v5, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 154
    .line 155
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    .line 157
    .line 158
    :cond_9
    :goto_2
    return-void
.end method

.method public hasFallback()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    return-void
.end method
