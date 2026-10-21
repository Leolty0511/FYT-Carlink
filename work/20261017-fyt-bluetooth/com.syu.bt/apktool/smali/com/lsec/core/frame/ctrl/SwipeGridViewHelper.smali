.class public Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;
.super Ljava/lang/Object;
.source "SwipeGridViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;
    }
.end annotation


# instance fields
.field gridView:Lcom/lsec/core/frame/ctrl/JGridView;

.field private mCurrentItemView:Landroid/view/View;

.field private final mDuration:I

.field private final mDurationStep:I

.field private mFirstX:F

.field private mFirstY:F

.field private mIsHorizontal:Ljava/lang/Boolean;

.field private mIsShown:Z

.field private mPreItemView:Landroid/view/View;

.field private mRightViewWidth:I

.field runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JGridView;I)V
    .locals 1
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "rightViewWidth"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x64

    iput v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mDuration:I

    .line 15
    const/16 v0, 0xa

    iput v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mDurationStep:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mRightViewWidth:I

    .line 23
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 24
    iput p2, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mRightViewWidth:I

    .line 25
    return-void
.end method

.method private clearPressedState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->setPressed(Z)V

    .line 196
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->refreshDrawableState()V

    .line 197
    return-void
.end method

.method private hiddenRight(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 200
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->stopRun(Z)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    .line 208
    :cond_1
    new-instance v0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;-><init>(Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    .line 209
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->run()V

    .line 210
    iput-boolean v2, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsShown:Z

    goto :goto_0
.end method

.method private isHitCurItemLeft(F)Z
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mRightViewWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private judgeScrollDirection(FF)Z
    .locals 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 180
    const/4 v0, 0x1

    .line 181
    .local v0, "canJudge":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 182
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsHorizontal:Ljava/lang/Boolean;

    .line 188
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 184
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsHorizontal:Ljava/lang/Boolean;

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showRight(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 214
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->stopRun(Z)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    .line 222
    :cond_1
    new-instance v0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mRightViewWidth:I

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;-><init>(Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    .line 223
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->runnableMove:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->run()V

    .line 224
    iput-boolean v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsShown:Z

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 29
    .local v3, "lastX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 30
    .local v4, "lastY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    const/4 v6, 0x0

    :goto_1
    return v6

    .line 32
    :pswitch_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsHorizontal:Ljava/lang/Boolean;

    .line 33
    iput v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mFirstX:F

    .line 34
    iput v4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mFirstY:F

    .line 35
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v7, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mFirstX:F

    float-to-int v7, v7

    iget v8, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mFirstY:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/lsec/core/frame/ctrl/JGridView;->pointToPosition(II)I

    move-result v5

    .line 36
    .local v5, "motionPosition":I
    if-ltz v5, :cond_0

    .line 37
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JGridView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "currentItemView":Landroid/view/View;
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    iput-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mPreItemView:Landroid/view/View;

    .line 39
    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    goto :goto_0

    .line 44
    .end local v0    # "currentItemView":Landroid/view/View;
    .end local v5    # "motionPosition":I
    :pswitch_1
    iget v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mFirstX:F

    sub-float v1, v3, v6

    .line 45
    .local v1, "dx":F
    iget v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mFirstY:F

    sub-float v2, v4, v6

    .line 46
    .local v2, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 47
    const/4 v6, 0x1

    goto :goto_1

    .line 53
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :pswitch_2
    iget-boolean v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsShown:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mPreItemView:Landroid/view/View;

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    if-ne v6, v7, :cond_1

    invoke-direct {p0, v3}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->isHitCurItemLeft(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    :cond_1
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mPreItemView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->hiddenRight(Landroid/view/View;)V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 64
    .local v2, "lastX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 65
    .local v3, "lastY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v4, v5

    .line 117
    :cond_1
    :goto_1
    return v4

    .line 70
    :pswitch_1
    iget v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mFirstX:F

    sub-float v0, v2, v6

    .line 71
    .local v0, "dx":F
    iget v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mFirstY:F

    sub-float v1, v3, v6

    .line 72
    .local v1, "dy":F
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsHorizontal:Ljava/lang/Boolean;

    if-nez v6, :cond_2

    .line 73
    invoke-direct {p0, v0, v1}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->judgeScrollDirection(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    :cond_2
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsHorizontal:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 78
    iget-boolean v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsShown:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mPreItemView:Landroid/view/View;

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    if-eq v6, v7, :cond_3

    .line 79
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mPreItemView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->hiddenRight(Landroid/view/View;)V

    .line 81
    :cond_3
    iget-boolean v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsShown:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mPreItemView:Landroid/view/View;

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    if-ne v6, v7, :cond_4

    .line 82
    iget v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mRightViewWidth:I

    int-to-float v6, v6

    sub-float/2addr v0, v6

    .line 84
    :cond_4
    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1

    iget v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mRightViewWidth:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_1

    .line 85
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 86
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    neg-float v7, v0

    float-to-int v7, v7

    invoke-virtual {v6, v7, v5}, Landroid/view/View;->scrollTo(II)V

    goto :goto_1

    .line 92
    :cond_5
    iget-boolean v4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsShown:Z

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mPreItemView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->hiddenRight(Landroid/view/View;)V

    goto :goto_0

    .line 99
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :pswitch_2
    invoke-direct {p0}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->clearPressedState()V

    .line 100
    iget-boolean v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsShown:Z

    if-eqz v6, :cond_6

    .line 101
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mPreItemView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->hiddenRight(Landroid/view/View;)V

    .line 103
    :cond_6
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsHorizontal:Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mIsHorizontal:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    iget v5, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mFirstX:F

    sub-float/2addr v5, v2

    iget v6, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mRightViewWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 105
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->showRight(Landroid/view/View;)V

    .line 109
    :goto_2
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 110
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v5, p1}, Lcom/lsec/core/frame/ctrl/JGridView;->superTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 107
    :cond_7
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->mCurrentItemView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->hiddenRight(Landroid/view/View;)V

    goto :goto_2

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
