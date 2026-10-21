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

    .line 1
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-wide v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    .line 4
    :goto_0
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5
    iget v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    int-to-float v5, v3

    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    sub-int/2addr v6, v3

    int-to-float v3, v6

    mul-float/2addr v3, v0

    add-float/2addr v5, v3

    float-to-int v0, v5

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    goto :goto_2

    .line 6
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 7
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    move v4, v1

    .line 8
    :goto_2
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 9
    iget-boolean v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 10
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/16 v6, 0xff

    if-eqz v4, :cond_7

    if-eqz v3, :cond_4

    if-nez v0, :cond_5

    .line 11
    :cond_4
    aget-object v1, v5, v1

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    if-ne v0, v6, :cond_6

    .line 12
    aget-object v0, v5, v2

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void

    .line 13
    :cond_7
    aget-object v1, v5, v1

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    rsub-int v7, v0, 0xff

    .line 14
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 15
    :cond_8
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_9

    .line 16
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    if-lez v0, :cond_a

    .line 17
    aget-object v1, v5, v2

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 19
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 20
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a
    if-nez v4, :cond_b

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public isCrossFadeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public resetTransition()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public reverseTransition(I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v4, v0, v2

    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/16 v6, 0xff

    const/4 v7, 0x0

    if-lez v4, :cond_1

    .line 3
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    if-nez v0, :cond_0

    .line 4
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 5
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 6
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 7
    iput-boolean v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    goto :goto_0

    .line 8
    :cond_0
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 9
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 10
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 11
    iput-boolean v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 12
    :goto_0
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 13
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 15
    :cond_1
    iget-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    xor-int/2addr p1, v5

    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 16
    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    if-eqz p1, :cond_2

    move v6, v7

    .line 17
    :cond_2
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    if-eqz p1, :cond_3

    sub-long/2addr v0, v2

    goto :goto_1

    .line 18
    :cond_3
    iget p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    int-to-long v4, p1

    sub-long/2addr v0, v2

    sub-long v0, v4, v0

    :goto_1
    long-to-int p1, v0

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 19
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    return-void
.end method

.method public setCrossFadeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return-void
.end method

.method public startTransition(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    const/16 v1, 0xff

    .line 2
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 3
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 4
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 5
    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 6
    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
