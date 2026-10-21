.class final Lcom/google/android/material/progressindicator/LinearDrawingDelegate;
.super Lcom/google/android/material/progressindicator/DrawingDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/DrawingDelegate<",
        "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private displayedCornerRadius:F

.field private displayedTrackThickness:F

.field private trackLength:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, 0x43960000    # 300.0f

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 7
    .line 8
    return-void
.end method

.method private static drawRoundedEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZLandroid/graphics/RectF;)V
    .locals 10

    .line 1
    move-object v6, p0

    .line 2
    move v0, p2

    .line 3
    move v1, p3

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 5
    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    move v2, p4

    .line 9
    invoke-virtual {p0, p4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    .line 11
    .line 12
    if-nez p5, :cond_0

    .line 13
    .line 14
    const/high16 v2, 0x43340000    # 180.0f

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 17
    .line 18
    .line 19
    :cond_0
    neg-float v2, v1

    .line 20
    neg-float v3, v0

    .line 21
    const/high16 v4, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float/2addr v3, v4

    .line 24
    add-float v8, v3, v1

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    div-float/2addr v0, v4

    .line 28
    sub-float v9, v0, v1

    .line 29
    .line 30
    move-object v0, p0

    .line 31
    move v1, v2

    .line 32
    move v2, v8

    .line 33
    move v4, v9

    .line 34
    move-object v5, p1

    .line 35
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    .line 43
    .line 44
    const/high16 v2, 0x43340000    # 180.0f

    .line 45
    .line 46
    const/high16 v3, 0x42b40000    # 90.0f

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    move-object/from16 v1, p6

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    .line 59
    .line 60
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public adjustCanvas(Landroid/graphics/Canvas;F)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    iput v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 15
    .line 16
    iget v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    const/high16 v3, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr v2, v3

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    int-to-float v4, v4

    .line 32
    div-float/2addr v4, v3

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v5, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 38
    .line 39
    check-cast v5, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 40
    .line 41
    iget v5, v5, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 42
    .line 43
    sub-int/2addr v0, v5

    .line 44
    int-to-float v0, v0

    .line 45
    div-float/2addr v0, v3

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-float/2addr v0, v4

    .line 52
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 56
    .line 57
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 58
    .line 59
    iget-boolean v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    .line 60
    .line 61
    const/high16 v2, -0x40800000    # -1.0f

    .line 62
    .line 63
    const/high16 v4, 0x3f800000    # 1.0f

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 79
    .line 80
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 81
    .line 82
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    if-eq v0, v6, :cond_2

    .line 86
    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 96
    .line 97
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 98
    .line 99
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 100
    .line 101
    const/4 v6, 0x2

    .line 102
    if-ne v0, v6, :cond_3

    .line 103
    .line 104
    :cond_2
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_4

    .line 114
    .line 115
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 124
    .line 125
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 126
    .line 127
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 128
    .line 129
    int-to-float v0, v0

    .line 130
    sub-float v2, p2, v4

    .line 131
    .line 132
    mul-float/2addr v2, v0

    .line 133
    div-float/2addr v2, v3

    .line 134
    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    .line 136
    .line 137
    :cond_5
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 138
    .line 139
    neg-float v2, v0

    .line 140
    div-float/2addr v2, v3

    .line 141
    neg-float v4, v1

    .line 142
    div-float/2addr v4, v3

    .line 143
    div-float/2addr v0, v3

    .line 144
    div-float/2addr v1, v3

    .line 145
    invoke-virtual {p1, v2, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 149
    .line 150
    move-object v0, p1

    .line 151
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 152
    .line 153
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 154
    .line 155
    int-to-float v0, v0

    .line 156
    mul-float/2addr v0, p2

    .line 157
    iput v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    .line 158
    .line 159
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 160
    .line 161
    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    .line 162
    .line 163
    int-to-float p1, p1

    .line 164
    mul-float/2addr p1, p2

    .line 165
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 166
    .line 167
    return-void
.end method

.method public fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v8, p2

    .line 3
    cmpl-float v1, p3, p4

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 9
    .line 10
    neg-float v2, v1

    .line 11
    const/high16 v3, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v2, v3

    .line 14
    iget v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 15
    .line 16
    add-float/2addr v2, v4

    .line 17
    mul-float v5, v4, v3

    .line 18
    .line 19
    sub-float v5, v1, v5

    .line 20
    .line 21
    mul-float/2addr v5, p3

    .line 22
    add-float v7, v5, v2

    .line 23
    .line 24
    neg-float v2, v1

    .line 25
    div-float/2addr v2, v3

    .line 26
    add-float/2addr v2, v4

    .line 27
    mul-float/2addr v4, v3

    .line 28
    sub-float/2addr v1, v4

    .line 29
    mul-float/2addr v1, p4

    .line 30
    add-float v9, v1, v2

    .line 31
    .line 32
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    .line 40
    .line 41
    move/from16 v1, p5

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    .line 45
    .line 46
    iget v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    .line 47
    .line 48
    neg-float v2, v1

    .line 49
    div-float v4, v2, v3

    .line 50
    .line 51
    div-float v5, v1, v3

    .line 52
    .line 53
    move-object v1, p1

    .line 54
    move v2, v7

    .line 55
    move v3, v4

    .line 56
    move v4, v9

    .line 57
    move-object v6, p2

    .line 58
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    new-instance v10, Landroid/graphics/RectF;

    .line 62
    .line 63
    iget v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 64
    .line 65
    neg-float v2, v1

    .line 66
    neg-float v3, v1

    .line 67
    invoke-direct {v10, v2, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 68
    .line 69
    .line 70
    iget v3, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    .line 71
    .line 72
    iget v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    move-object v1, p1

    .line 76
    move-object v2, p2

    .line 77
    move v5, v7

    .line 78
    move-object v7, v10

    .line 79
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZLandroid/graphics/RectF;)V

    .line 80
    .line 81
    .line 82
    iget v3, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    .line 83
    .line 84
    iget v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    move v5, v9

    .line 88
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZLandroid/graphics/RectF;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 4
    .line 5
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 18
    .line 19
    neg-float v1, v1

    .line 20
    const/high16 v2, 0x40000000    # 2.0f

    .line 21
    .line 22
    div-float/2addr v1, v2

    .line 23
    iget v3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 24
    .line 25
    add-float/2addr v1, v3

    .line 26
    neg-float v11, v1

    .line 27
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 28
    .line 29
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    .line 40
    .line 41
    neg-float v3, v0

    .line 42
    div-float v6, v3, v2

    .line 43
    .line 44
    div-float v8, v0, v2

    .line 45
    .line 46
    move-object v4, p1

    .line 47
    move v5, v1

    .line 48
    move v7, v11

    .line 49
    move-object v9, p2

    .line 50
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Landroid/graphics/RectF;

    .line 54
    .line 55
    iget v2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 56
    .line 57
    neg-float v3, v2

    .line 58
    neg-float v4, v2

    .line 59
    invoke-direct {v0, v3, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    .line 61
    .line 62
    iget v6, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    .line 63
    .line 64
    iget v7, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 65
    .line 66
    const/4 v9, 0x1

    .line 67
    move-object v4, p1

    .line 68
    move-object v5, p2

    .line 69
    move v8, v1

    .line 70
    move-object v10, v0

    .line 71
    invoke-static/range {v4 .. v10}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZLandroid/graphics/RectF;)V

    .line 72
    .line 73
    .line 74
    iget v5, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    .line 75
    .line 76
    iget v6, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    move-object v3, p1

    .line 80
    move-object v4, p2

    .line 81
    move v7, v11

    .line 82
    move-object v9, v0

    .line 83
    invoke-static/range {v3 .. v9}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFZLandroid/graphics/RectF;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public getPreferredHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    return v0
.end method

.method public getPreferredWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
