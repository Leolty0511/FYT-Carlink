.class Lcom/android/internal/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 14
    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 25
    .line 26
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    mul-int/2addr p3, p3

    .line 15
    mul-int/2addr p4, p4

    .line 16
    add-int/2addr p4, p3

    .line 17
    int-to-double p3, p4

    .line 18
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide p3

    .line 22
    double-to-int p3, p3

    .line 23
    mul-int/2addr p1, p1

    .line 24
    mul-int/2addr p2, p2

    .line 25
    add-int/2addr p2, p1

    .line 26
    int-to-double p1, p2

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    double-to-int p1, p1

    .line 32
    iget-object p2, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    :goto_1
    div-int/lit8 p4, p2, 0x2

    .line 46
    .line 47
    int-to-float p1, p1

    .line 48
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    .line 50
    mul-float/2addr p1, v3

    .line 51
    int-to-float p2, p2

    .line 52
    div-float/2addr p1, p2

    .line 53
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-float p4, p4

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    mul-float/2addr p1, p4

    .line 63
    add-float/2addr p1, p4

    .line 64
    if-lez p3, :cond_2

    .line 65
    .line 66
    int-to-float p2, p3

    .line 67
    div-float/2addr p1, p2

    .line 68
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 73
    .line 74
    mul-float/2addr p1, p2

    .line 75
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    mul-int/lit8 p1, p1, 0x4

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    if-eqz v2, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v0, v1

    .line 86
    :goto_2
    int-to-float p1, v0

    .line 87
    div-float/2addr p1, p2

    .line 88
    add-float/2addr p1, v3

    .line 89
    const/high16 p2, 0x43960000    # 300.0f

    .line 90
    .line 91
    mul-float/2addr p1, p2

    .line 92
    float-to-int p1, p1

    .line 93
    :goto_3
    const/16 p2, 0x7d0

    .line 94
    .line 95
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    return p1
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 6
    .line 7
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/high16 v6, -0x80000000

    .line 17
    .line 18
    const v7, 0x7fffffff

    .line 19
    .line 20
    .line 21
    const/high16 v8, -0x80000000

    .line 22
    .line 23
    const v9, 0x7fffffff

    .line 24
    .line 25
    .line 26
    move v4, p1

    .line 27
    move v5, p2

    .line 28
    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public postOnAnimation()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->stop()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v3, :cond_1c

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget v6, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 45
    .line 46
    sub-int v6, v3, v6

    .line 47
    .line 48
    iget v7, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 49
    .line 50
    sub-int v7, v5, v7

    .line 51
    .line 52
    iput v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 53
    .line 54
    iput v5, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 55
    .line 56
    iget-object v8, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 57
    .line 58
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 59
    .line 60
    const/4 v10, 0x1

    .line 61
    if-eqz v9, :cond_5

    .line 62
    .line 63
    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 64
    .line 65
    .line 66
    iget-object v8, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 67
    .line 68
    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 69
    .line 70
    .line 71
    const-string v8, "RV Scroll"

    .line 72
    .line 73
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    iget-object v8, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 79
    .line 80
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 81
    .line 82
    iget-object v11, v8, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 83
    .line 84
    iget-object v8, v8, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 85
    .line 86
    invoke-virtual {v9, v6, v11, v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    sub-int v9, v6, v8

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move v8, v4

    .line 94
    move v9, v8

    .line 95
    :goto_0
    if-eqz v7, :cond_2

    .line 96
    .line 97
    iget-object v11, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 98
    .line 99
    iget-object v12, v11, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 100
    .line 101
    iget-object v13, v11, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 102
    .line 103
    iget-object v11, v11, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 104
    .line 105
    invoke-virtual {v12, v7, v13, v11}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    sub-int v12, v7, v11

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    move v11, v4

    .line 113
    move v12, v11

    .line 114
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 115
    .line 116
    .line 117
    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 118
    .line 119
    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView;->repositionShadowingViews()V

    .line 120
    .line 121
    .line 122
    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 123
    .line 124
    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 125
    .line 126
    .line 127
    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 128
    .line 129
    invoke-virtual {v13, v4}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 130
    .line 131
    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    if-nez v13, :cond_6

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    if-eqz v13, :cond_6

    .line 145
    .line 146
    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 147
    .line 148
    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 149
    .line 150
    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    if-nez v13, :cond_3

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    if-lt v14, v13, :cond_4

    .line 165
    .line 166
    sub-int/2addr v13, v10

    .line 167
    invoke-virtual {v2, v13}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 168
    .line 169
    .line 170
    sub-int v13, v6, v9

    .line 171
    .line 172
    sub-int v14, v7, v12

    .line 173
    .line 174
    invoke-static {v2, v13, v14}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->access$400(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    sub-int v13, v6, v9

    .line 179
    .line 180
    sub-int v14, v7, v12

    .line 181
    .line 182
    invoke-static {v2, v13, v14}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->access$400(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_5
    move v8, v4

    .line 187
    move v9, v8

    .line 188
    move v11, v9

    .line 189
    move v12, v11

    .line 190
    :cond_6
    :goto_2
    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 191
    .line 192
    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    if-nez v13, :cond_7

    .line 199
    .line 200
    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 201
    .line 202
    invoke-virtual {v13}, Landroid/view/View;->invalidate()V

    .line 203
    .line 204
    .line 205
    :cond_7
    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 206
    .line 207
    invoke-virtual {v13}, Landroid/view/View;->getOverScrollMode()I

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    const/4 v14, 0x2

    .line 212
    if-eq v13, v14, :cond_8

    .line 213
    .line 214
    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 215
    .line 216
    invoke-virtual {v13, v6, v7}, Lcom/android/internal/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 217
    .line 218
    .line 219
    :cond_8
    if-nez v9, :cond_9

    .line 220
    .line 221
    if-eqz v12, :cond_11

    .line 222
    .line 223
    :cond_9
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    float-to-int v13, v13

    .line 228
    if-eq v9, v3, :cond_b

    .line 229
    .line 230
    if-gez v9, :cond_a

    .line 231
    .line 232
    neg-int v15, v13

    .line 233
    goto :goto_3

    .line 234
    :cond_a
    if-lez v9, :cond_b

    .line 235
    .line 236
    move v15, v13

    .line 237
    goto :goto_3

    .line 238
    :cond_b
    move v15, v4

    .line 239
    :goto_3
    if-eq v12, v5, :cond_d

    .line 240
    .line 241
    if-gez v12, :cond_c

    .line 242
    .line 243
    neg-int v13, v13

    .line 244
    goto :goto_4

    .line 245
    :cond_c
    if-lez v12, :cond_d

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_d
    move v13, v4

    .line 249
    :goto_4
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 250
    .line 251
    invoke-virtual {v10}, Landroid/view/View;->getOverScrollMode()I

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    if-eq v10, v14, :cond_e

    .line 256
    .line 257
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 258
    .line 259
    invoke-virtual {v10, v15, v13}, Lcom/android/internal/widget/RecyclerView;->absorbGlows(II)V

    .line 260
    .line 261
    .line 262
    :cond_e
    if-nez v15, :cond_f

    .line 263
    .line 264
    if-eq v9, v3, :cond_f

    .line 265
    .line 266
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-nez v3, :cond_11

    .line 271
    .line 272
    :cond_f
    if-nez v13, :cond_10

    .line 273
    .line 274
    if-eq v12, v5, :cond_10

    .line 275
    .line 276
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-nez v3, :cond_11

    .line 281
    .line 282
    :cond_10
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 283
    .line 284
    .line 285
    :cond_11
    if-nez v8, :cond_12

    .line 286
    .line 287
    if-eqz v11, :cond_13

    .line 288
    .line 289
    :cond_12
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 290
    .line 291
    invoke-virtual {v3, v8, v11}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 292
    .line 293
    .line 294
    :cond_13
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 295
    .line 296
    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->access$500(Lcom/android/internal/widget/RecyclerView;)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-nez v3, :cond_14

    .line 301
    .line 302
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 303
    .line 304
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 305
    .line 306
    .line 307
    :cond_14
    if-eqz v7, :cond_15

    .line 308
    .line 309
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 310
    .line 311
    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 312
    .line 313
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-eqz v3, :cond_15

    .line 318
    .line 319
    if-ne v11, v7, :cond_15

    .line 320
    .line 321
    const/4 v3, 0x1

    .line 322
    goto :goto_5

    .line 323
    :cond_15
    move v3, v4

    .line 324
    :goto_5
    if-eqz v6, :cond_16

    .line 325
    .line 326
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 327
    .line 328
    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 329
    .line 330
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_16

    .line 335
    .line 336
    if-ne v8, v6, :cond_16

    .line 337
    .line 338
    const/4 v5, 0x1

    .line 339
    goto :goto_6

    .line 340
    :cond_16
    move v5, v4

    .line 341
    :goto_6
    if-nez v6, :cond_17

    .line 342
    .line 343
    if-eqz v7, :cond_19

    .line 344
    .line 345
    :cond_17
    if-nez v5, :cond_19

    .line 346
    .line 347
    if-eqz v3, :cond_18

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_18
    move v10, v4

    .line 351
    goto :goto_8

    .line 352
    :cond_19
    :goto_7
    const/4 v10, 0x1

    .line 353
    :goto_8
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-nez v1, :cond_1b

    .line 358
    .line 359
    if-nez v10, :cond_1a

    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 363
    .line 364
    .line 365
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 366
    .line 367
    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    .line 368
    .line 369
    if-eqz v3, :cond_1c

    .line 370
    .line 371
    invoke-virtual {v3, v1, v6, v7}, Lcom/android/internal/widget/GapWorker;->postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V

    .line 372
    .line 373
    .line 374
    goto :goto_a

    .line 375
    :cond_1b
    :goto_9
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 376
    .line 377
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 378
    .line 379
    .line 380
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->access$600()Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-eqz v1, :cond_1c

    .line 385
    .line 386
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 387
    .line 388
    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 389
    .line 390
    invoke-virtual {v1}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 391
    .line 392
    .line 393
    :cond_1c
    :goto_a
    if-eqz v2, :cond_1e

    .line 394
    .line 395
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_1d

    .line 400
    .line 401
    invoke-static {v2, v4, v4}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->access$400(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    .line 402
    .line 403
    .line 404
    :cond_1d
    iget-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 405
    .line 406
    if-nez v1, :cond_1e

    .line 407
    .line 408
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 409
    .line 410
    .line 411
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 412
    .line 413
    .line 414
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1

    .line 3
    sget-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 6
    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 8
    :cond_0
    iget-object p4, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    const/4 p4, 0x0

    .line 9
    iput p4, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput p4, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 10
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 11
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
