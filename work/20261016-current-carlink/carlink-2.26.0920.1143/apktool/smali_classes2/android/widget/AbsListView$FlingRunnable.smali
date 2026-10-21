.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSuppressIdleStateChangeCall:Z

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 12
    .line 13
    new-instance v0, Landroid/widget/OverScroller;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic access$2000(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method public static synthetic access$502(Landroid/widget/AbsListView$FlingRunnable;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    return p1
.end method


# virtual methods
.method public edgeReached(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 10
    .line 11
    iget v2, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    iput v0, p1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 41
    .line 42
    iget-object p1, p1, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 51
    .line 52
    const/4 v1, 0x6

    .line 53
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 54
    .line 55
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    float-to-int v0, v0

    .line 62
    if-lez p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 65
    .line 66
    invoke-static {p1}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 75
    .line 76
    invoke-static {p1}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public endFling()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 45
    .line 46
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$2302(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public flywheelTouch()V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 2
    .line 3
    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v1, :cond_8

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq v0, v1, :cond_9

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_7

    .line 27
    .line 28
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 29
    .line 30
    invoke-static {v1}, Landroid/widget/AbsListView;->access$3700(Landroid/widget/AbsListView;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 35
    .line 36
    .line 37
    move-result v14

    .line 38
    sub-int v6, v14, v1

    .line 39
    .line 40
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    iget v12, v4, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 48
    .line 49
    const/4 v13, 0x0

    .line 50
    move v8, v1

    .line 51
    invoke-static/range {v4 .. v13}, Landroid/widget/AbsListView;->access$3800(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_6

    .line 56
    .line 57
    if-gtz v1, :cond_1

    .line 58
    .line 59
    if-lez v14, :cond_1

    .line 60
    .line 61
    move v4, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v4, v2

    .line 64
    :goto_0
    if-ltz v1, :cond_2

    .line 65
    .line 66
    if-gez v14, :cond_2

    .line 67
    .line 68
    move v2, v3

    .line 69
    :cond_2
    if-nez v4, :cond_4

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    float-to-int v1, v1

    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    neg-int v1, v1

    .line 87
    :cond_5
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_9

    .line 119
    .line 120
    return-void

    .line 121
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 122
    .line 123
    iget-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 124
    .line 125
    if-eqz v1, :cond_a

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 128
    .line 129
    .line 130
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 131
    .line 132
    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 133
    .line 134
    if-eqz v1, :cond_14

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_b

    .line 141
    .line 142
    goto/16 :goto_5

    .line 143
    .line 144
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iget v4, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 155
    .line 156
    sub-int/2addr v4, v0

    .line 157
    if-lez v4, :cond_c

    .line 158
    .line 159
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 160
    .line 161
    iget v6, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 162
    .line 163
    iput v6, v5, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 164
    .line 165
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 170
    .line 171
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    iput v5, v6, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 176
    .line 177
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 178
    .line 179
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 184
    .line 185
    invoke-static {v6}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    sub-int/2addr v5, v6

    .line 190
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 191
    .line 192
    invoke-static {v6}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    sub-int/2addr v5, v6

    .line 197
    sub-int/2addr v5, v3

    .line 198
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    goto :goto_2

    .line 203
    :cond_c
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 204
    .line 205
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    sub-int/2addr v5, v3

    .line 210
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 211
    .line 212
    iget v7, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 213
    .line 214
    add-int/2addr v7, v5

    .line 215
    iput v7, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 216
    .line 217
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 222
    .line 223
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    iput v5, v6, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 228
    .line 229
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 230
    .line 231
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 236
    .line 237
    invoke-static {v6}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    sub-int/2addr v5, v6

    .line 242
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 243
    .line 244
    invoke-static {v6}, Landroid/widget/AbsListView;->access$3400(Landroid/widget/AbsListView;)I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    sub-int/2addr v5, v6

    .line 249
    sub-int/2addr v5, v3

    .line 250
    neg-int v5, v5

    .line 251
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    :goto_2
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 256
    .line 257
    iget v6, v5, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 258
    .line 259
    iget v7, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 260
    .line 261
    sub-int/2addr v6, v7

    .line 262
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    if-eqz v5, :cond_d

    .line 267
    .line 268
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    goto :goto_3

    .line 273
    :cond_d
    move v6, v2

    .line 274
    :goto_3
    iget-object v7, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 275
    .line 276
    invoke-virtual {v7, v4, v4}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-eqz v7, :cond_e

    .line 281
    .line 282
    if-eqz v4, :cond_e

    .line 283
    .line 284
    move v2, v3

    .line 285
    :cond_e
    if-eqz v2, :cond_10

    .line 286
    .line 287
    if-eqz v5, :cond_f

    .line 288
    .line 289
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    sub-int/2addr v0, v6

    .line 294
    sub-int v0, v4, v0

    .line 295
    .line 296
    neg-int v7, v0

    .line 297
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 298
    .line 299
    const/4 v6, 0x0

    .line 300
    const/4 v8, 0x0

    .line 301
    invoke-static {v5}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;)I

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    const/4 v10, 0x0

    .line 306
    const/4 v11, 0x0

    .line 307
    const/4 v12, 0x0

    .line 308
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 309
    .line 310
    iget v13, v0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 311
    .line 312
    const/4 v14, 0x0

    .line 313
    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->access$3600(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 314
    .line 315
    .line 316
    :cond_f
    if-eqz v1, :cond_13

    .line 317
    .line 318
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_10
    if-eqz v1, :cond_12

    .line 323
    .line 324
    if-nez v2, :cond_12

    .line 325
    .line 326
    if-eqz v7, :cond_11

    .line 327
    .line 328
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 329
    .line 330
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 331
    .line 332
    .line 333
    :cond_11
    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 334
    .line 335
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 336
    .line 337
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 338
    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_12
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 342
    .line 343
    .line 344
    :cond_13
    :goto_4
    return-void

    .line 345
    :cond_14
    :goto_5
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 346
    .line 347
    .line 348
    return-void
.end method

.method public start(I)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    const v1, 0x7fffffff

    .line 5
    .line 6
    .line 7
    move v4, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v4, v0

    .line 10
    :goto_0
    iput v4, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 11
    .line 12
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const v8, 0x7fffffff

    .line 24
    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    const v10, 0x7fffffff

    .line 28
    .line 29
    .line 30
    move v6, p1

    .line 31
    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    iput v1, p1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 38
    .line 39
    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 45
    .line 46
    invoke-static {p1}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 53
    .line 54
    const-string v0, "AbsListView-fling"

    .line 55
    .line 56
    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Landroid/widget/AbsListView;->access$2302(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public startOverfling(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/high16 v9, -0x80000000

    .line 20
    .line 21
    const v10, 0x7fffffff

    .line 22
    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v12

    .line 31
    move v6, p1

    .line 32
    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 36
    .line 37
    const/4 v0, 0x6

    .line 38
    iput v0, p1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public startScroll(IIZZ)V
    .locals 7

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    move v3, v0

    .line 9
    iput v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    sget-object p3, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 p3, 0x0

    .line 19
    :goto_1
    invoke-virtual {v0, p3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    move v5, p1

    .line 27
    move v6, p2

    .line 28
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 32
    .line 33
    const/4 p2, 0x4

    .line 34
    iput p2, p1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 35
    .line 36
    iput-boolean p4, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public startSpringback()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 8
    .line 9
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 24
    .line 25
    const/4 v1, 0x6

    .line 26
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 38
    .line 39
    const/4 v2, -0x1

    .line 40
    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
