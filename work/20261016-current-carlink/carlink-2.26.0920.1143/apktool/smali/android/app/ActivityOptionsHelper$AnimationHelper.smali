.class public Landroid/app/ActivityOptionsHelper$AnimationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationHelper"
.end annotation


# static fields
.field private static sPending:Landroid/app/ActivityOptionsHelper$AnimationHelper;


# instance fields
.field private mNextTransitionType:I

.field private mOverrideAnimationType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/app/ActivityOptionsHelper$AnimationHelper;->mOverrideAnimationType:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/app/ActivityOptionsHelper$AnimationHelper;->mNextTransitionType:I

    .line 9
    .line 10
    return-void
.end method

.method private static computePivot(IF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    int-to-float p0, p0

    return p0

    :cond_0
    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static createOverrideAnimation(Landroid/app/ActivityOptionsHelper$AnimationHelper;IZIILandroid/app/ActivityOptionsHelper$AnimationParameters;)Landroid/view/animation/Animation;
    .locals 25

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v4

    .line 13
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityOptionsHelper$AnimationHelper;->getOverrideAnimationType()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const-string v6, "AnimationHelper"

    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    if-eq v5, v7, :cond_1

    .line 21
    .line 22
    const-string v0, "Not developed yet"

    .line 23
    .line 24
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-object v4

    .line 28
    :cond_1
    const-string v4, "createOverrideAnimation enter "

    .line 29
    .line 30
    invoke-static {v4, v0, v6}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/high16 v5, 0x3f800000    # 1.0f

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget v0, v3, Landroid/app/ActivityOptionsHelper$AnimationParameters;->nextAppTransitionStartWidth:I

    .line 39
    .line 40
    int-to-float v0, v0

    .line 41
    int-to-float v6, v1

    .line 42
    div-float/2addr v0, v6

    .line 43
    iget v6, v3, Landroid/app/ActivityOptionsHelper$AnimationParameters;->nextAppTransitionStartHeight:I

    .line 44
    .line 45
    int-to-float v6, v6

    .line 46
    int-to-float v8, v2

    .line 47
    div-float/2addr v6, v8

    .line 48
    new-instance v15, Landroid/view/animation/ScaleAnimation;

    .line 49
    .line 50
    const/high16 v9, 0x3f400000    # 0.75f

    .line 51
    .line 52
    const/high16 v10, 0x3f800000    # 1.0f

    .line 53
    .line 54
    const/high16 v11, 0x3f400000    # 0.75f

    .line 55
    .line 56
    const/high16 v12, 0x3f800000    # 1.0f

    .line 57
    .line 58
    iget v8, v3, Landroid/app/ActivityOptionsHelper$AnimationParameters;->nextAppTransitionStartX:I

    .line 59
    .line 60
    invoke-static {v8, v0}, Landroid/app/ActivityOptionsHelper$AnimationHelper;->computePivot(IF)F

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    iget v0, v3, Landroid/app/ActivityOptionsHelper$AnimationParameters;->nextAppTransitionStartY:I

    .line 65
    .line 66
    invoke-static {v0, v6}, Landroid/app/ActivityOptionsHelper$AnimationHelper;->computePivot(IF)F

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    move-object v8, v15

    .line 71
    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v3, Landroid/app/ActivityOptionsHelper$AnimationParameters;->decelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 75
    .line 76
    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 83
    .line 84
    .line 85
    iget-object v5, v3, Landroid/app/ActivityOptionsHelper$AnimationParameters;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 86
    .line 87
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    .line 89
    .line 90
    new-instance v5, Landroid/view/animation/AnimationSet;

    .line 91
    .line 92
    invoke-direct {v5, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    if-nez v0, :cond_3

    .line 106
    .line 107
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 108
    .line 109
    const/high16 v17, 0x3f800000    # 1.0f

    .line 110
    .line 111
    const v18, 0x3f8a3d71    # 1.08f

    .line 112
    .line 113
    .line 114
    const/high16 v19, 0x3f800000    # 1.0f

    .line 115
    .line 116
    const v20, 0x3f8a3d71    # 1.08f

    .line 117
    .line 118
    .line 119
    const/16 v21, 0x1

    .line 120
    .line 121
    const/high16 v22, 0x3f000000    # 0.5f

    .line 122
    .line 123
    const/16 v23, 0x1

    .line 124
    .line 125
    const/high16 v24, 0x3f000000    # 0.5f

    .line 126
    .line 127
    move-object/from16 v16, v0

    .line 128
    .line 129
    invoke-direct/range {v16 .. v24}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 130
    .line 131
    .line 132
    iget-object v6, v3, Landroid/app/ActivityOptionsHelper$AnimationParameters;->decelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 133
    .line 134
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 138
    .line 139
    invoke-direct {v0, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 140
    .line 141
    .line 142
    iget-object v5, v3, Landroid/app/ActivityOptionsHelper$AnimationParameters;->decelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 143
    .line 144
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 145
    .line 146
    .line 147
    new-instance v5, Landroid/view/animation/AnimationSet;

    .line 148
    .line 149
    invoke-direct {v5, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 160
    .line 161
    invoke-direct {v0, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 162
    .line 163
    .line 164
    move-object v5, v0

    .line 165
    :goto_0
    const-wide/16 v8, 0x96

    .line 166
    .line 167
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 171
    .line 172
    .line 173
    iget-object v0, v3, Landroid/app/ActivityOptionsHelper$AnimationParameters;->decelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 174
    .line 175
    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v1, v2, v1, v2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 179
    .line 180
    .line 181
    return-object v5
.end method

.method public static ensureHelper(Landroid/app/ActivityOptionsHelper$AnimationHelper;)Landroid/app/ActivityOptionsHelper$AnimationHelper;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/app/ActivityOptionsHelper$AnimationHelper;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/ActivityOptionsHelper$AnimationHelper;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/ActivityOptionsHelper$AnimationHelper;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/app/ActivityOptionsHelper$AnimationHelper;->mOverrideAnimationType:I

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/app/ActivityOptionsHelper$AnimationHelper;->mNextTransitionType:I

    .line 6
    .line 7
    return-void
.end method

.method public getNextTransitionType()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptionsHelper$AnimationHelper;->mNextTransitionType:I

    return v0
.end method

.method public getOverrideAnimationType()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptionsHelper$AnimationHelper;->mOverrideAnimationType:I

    return v0
.end method

.method public setNextTransitionType(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptionsHelper$AnimationHelper;->mNextTransitionType:I

    return-void
.end method

.method public setOverrideAnimationType(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptionsHelper$AnimationHelper;->mOverrideAnimationType:I

    return-void
.end method

.method public shouldOverrideAnimation()Z
    .locals 2

    iget v0, p0, Landroid/app/ActivityOptionsHelper$AnimationHelper;->mOverrideAnimationType:I

    if-lez v0, :cond_0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
