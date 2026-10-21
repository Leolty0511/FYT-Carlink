.class public Landroid/graphics/drawable/TransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    }
.end annotation


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private mAlpha:I

.field private mCrossFade:Z

.field private mDuration:I

.field private mFrom:I

.field private mOriginalDuration:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTo:I

.field private mTransitionState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    const/4 p1, 0x2

    .line 8
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-wide v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long v0, v3, v5

    .line 15
    .line 16
    if-ltz v0, :cond_2

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-wide v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 23
    .line 24
    sub-long/2addr v3, v5

    .line 25
    long-to-float v0, v3

    .line 26
    iget v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 27
    .line 28
    int-to-float v3, v3

    .line 29
    div-float/2addr v0, v3

    .line 30
    const/high16 v3, 0x3f800000    # 1.0f

    .line 31
    .line 32
    cmpl-float v4, v0, v3

    .line 33
    .line 34
    if-ltz v4, :cond_1

    .line 35
    .line 36
    move v4, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v4, v1

    .line 39
    :goto_0
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 44
    .line 45
    int-to-float v5, v3

    .line 46
    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 47
    .line 48
    sub-int/2addr v6, v3

    .line 49
    int-to-float v3, v6

    .line 50
    mul-float/2addr v3, v0

    .line 51
    add-float/2addr v3, v5

    .line 52
    float-to-int v0, v3

    .line 53
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    move v4, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    iput-wide v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 63
    .line 64
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 65
    .line 66
    move v4, v1

    .line 67
    :goto_2
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 68
    .line 69
    iget-boolean v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 70
    .line 71
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 72
    .line 73
    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 74
    .line 75
    const/16 v6, 0xff

    .line 76
    .line 77
    if-eqz v4, :cond_7

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    :cond_4
    aget-object v1, v5, v1

    .line 84
    .line 85
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    if-ne v0, v6, :cond_6

    .line 91
    .line 92
    aget-object v0, v5, v2

    .line 93
    .line 94
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    return-void

    .line 100
    :cond_7
    aget-object v1, v5, v1

    .line 101
    .line 102
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    if-eqz v3, :cond_8

    .line 105
    .line 106
    rsub-int v7, v0, 0xff

    .line 107
    .line 108
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 109
    .line 110
    .line 111
    :cond_8
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    .line 113
    .line 114
    if-eqz v3, :cond_9

    .line 115
    .line 116
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 117
    .line 118
    .line 119
    :cond_9
    if-lez v0, :cond_a

    .line 120
    .line 121
    aget-object v1, v5, v2

    .line 122
    .line 123
    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 132
    .line 133
    .line 134
    :cond_a
    if-nez v4, :cond_b

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 137
    .line 138
    .line 139
    :cond_b
    return-void
.end method

.method public isCrossFadeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public resetTransition()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reverseTransition(I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 6
    .line 7
    sub-long v4, v0, v2

    .line 8
    .line 9
    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 10
    .line 11
    int-to-long v6, v6

    .line 12
    cmp-long v4, v4, v6

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/16 v6, 0xff

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    if-lez v4, :cond_1

    .line 19
    .line 20
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 25
    .line 26
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 27
    .line 28
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 29
    .line 30
    iput-boolean v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 34
    .line 35
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 36
    .line 37
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 38
    .line 39
    iput-boolean v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 40
    .line 41
    :goto_0
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    .line 42
    .line 43
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 44
    .line 45
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 52
    .line 53
    xor-int/2addr p1, v5

    .line 54
    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 55
    .line 56
    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 57
    .line 58
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    move v6, v7

    .line 63
    :cond_2
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    sub-long/2addr v0, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    .line 70
    .line 71
    int-to-long v4, p1

    .line 72
    sub-long/2addr v0, v2

    .line 73
    sub-long v0, v4, v0

    .line 74
    .line 75
    :goto_1
    long-to-int p1, v0

    .line 76
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 77
    .line 78
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 79
    .line 80
    return-void
.end method

.method public setCrossFadeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return-void
.end method

.method public showSecondLayer()V
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public startTransition(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 3
    .line 4
    const/16 v1, 0xff

    .line 5
    .line 6
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 7
    .line 8
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 9
    .line 10
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    .line 11
    .line 12
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 13
    .line 14
    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 15
    .line 16
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
