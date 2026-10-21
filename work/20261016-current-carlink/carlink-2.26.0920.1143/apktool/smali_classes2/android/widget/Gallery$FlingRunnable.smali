.class Landroid/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method public constructor <init>(Landroid/widget/Gallery;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/widget/Scroller;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$100(Landroid/widget/Gallery$FlingRunnable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method public static synthetic access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method private endFling(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/widget/Gallery;->access$500(Landroid/widget/Gallery;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 2
    .line 3
    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v2}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Landroid/widget/Gallery;->access$602(Landroid/widget/Gallery;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v3, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 27
    .line 28
    sub-int/2addr v3, v0

    .line 29
    if-lez v3, :cond_2

    .line 30
    .line 31
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 32
    .line 33
    invoke-static {v4}, Landroid/widget/Gallery;->access$800(Landroid/widget/Gallery;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 40
    .line 41
    iget v6, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    add-int/2addr v5, v6

    .line 48
    sub-int/2addr v5, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 51
    .line 52
    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 53
    .line 54
    :goto_0
    invoke-static {v4, v5}, Landroid/widget/Gallery;->access$702(Landroid/widget/Gallery;I)I

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 64
    .line 65
    invoke-static {v5}, Landroid/widget/Gallery;->access$900(Landroid/widget/Gallery;)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    sub-int/2addr v4, v5

    .line 70
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 71
    .line 72
    invoke-static {v5}, Landroid/widget/Gallery;->access$1000(Landroid/widget/Gallery;)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    sub-int/2addr v4, v5

    .line 77
    sub-int/2addr v4, v2

    .line 78
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 84
    .line 85
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 89
    .line 90
    invoke-static {v4}, Landroid/widget/Gallery;->access$800(Landroid/widget/Gallery;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_3

    .line 95
    .line 96
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 97
    .line 98
    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 102
    .line 103
    iget v6, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 104
    .line 105
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    add-int/2addr v5, v6

    .line 110
    sub-int/2addr v5, v2

    .line 111
    :goto_1
    invoke-static {v4, v5}, Landroid/widget/Gallery;->access$702(Landroid/widget/Gallery;I)I

    .line 112
    .line 113
    .line 114
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 121
    .line 122
    invoke-static {v5}, Landroid/widget/Gallery;->access$1100(Landroid/widget/Gallery;)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    sub-int/2addr v4, v5

    .line 127
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 128
    .line 129
    invoke-static {v5}, Landroid/widget/Gallery;->access$1200(Landroid/widget/Gallery;)I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    sub-int/2addr v4, v5

    .line 134
    sub-int/2addr v4, v2

    .line 135
    neg-int v4, v4

    .line 136
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    :goto_2
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 141
    .line 142
    invoke-virtual {v4, v3}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 143
    .line 144
    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 148
    .line 149
    invoke-static {v1}, Landroid/widget/Gallery;->access$600(Landroid/widget/Gallery;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_4

    .line 154
    .line 155
    iput v0, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 156
    .line 157
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 158
    .line 159
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    invoke-direct {p0, v2}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 164
    .line 165
    .line 166
    :goto_3
    return-void
.end method

.method public startUsingDistance(I)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 9
    .line 10
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    neg-int v4, p1

    .line 15
    const/4 v5, 0x0

    .line 16
    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/widget/Gallery;->access$400(Landroid/widget/Gallery;)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 5
    .line 6
    .line 7
    if-gez p1, :cond_1

    .line 8
    .line 9
    const v0, 0x7fffffff

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_0
    move v2, v0

    .line 15
    iput v2, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 16
    .line 17
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const v7, 0x7fffffff

    .line 23
    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const v9, 0x7fffffff

    .line 27
    .line 28
    .line 29
    move v4, p1

    .line 30
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public stop(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
