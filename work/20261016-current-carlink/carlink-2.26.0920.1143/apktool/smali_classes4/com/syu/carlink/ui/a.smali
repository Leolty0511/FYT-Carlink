.class public final Lcom/syu/carlink/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lk/b;

.field public final d:Z

.field public e:Lz/l;

.field public f:I

.field public final g:Landroid/os/Handler;

.field public final h:Landroid/view/View;

.field public i:Z

.field public j:Landroid/widget/FrameLayout;

.field public final k:Landroid/net/b;

.field public final l:Ls/a;

.field public final m:Ls/a;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/MainActivity;ILk/b;I)V
    .locals 5

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x5

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    and-int/lit8 v3, p4, 0x8

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    move-object p3, v4

    .line 16
    :cond_1
    and-int/lit8 p4, p4, 0x10

    .line 17
    .line 18
    if-eqz p4, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/syu/carlink/ui/a;->a:Landroid/content/Context;

    .line 25
    .line 26
    iput v0, p0, Lcom/syu/carlink/ui/a;->b:I

    .line 27
    .line 28
    iput-object p3, p0, Lcom/syu/carlink/ui/a;->c:Lk/b;

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/syu/carlink/ui/a;->d:Z

    .line 31
    .line 32
    iput v2, p0, Lcom/syu/carlink/ui/a;->f:I

    .line 33
    .line 34
    new-instance p4, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object p4, p0, Lcom/syu/carlink/ui/a;->g:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-static {p1, p2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "inflate(context, layoutId, null)"

    .line 50
    .line 51
    invoke-static {p1, p2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/syu/carlink/ui/a;->h:Landroid/view/View;

    .line 55
    .line 56
    new-instance p2, Landroid/net/b;

    .line 57
    .line 58
    const/16 p4, 0xe

    .line 59
    .line 60
    invoke-direct {p2, p0, p4}, Landroid/net/b;-><init>(Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/syu/carlink/ui/a;->k:Landroid/net/b;

    .line 64
    .line 65
    new-instance p2, Lcom/syu/carlink/ui/TimerWindow$widthPx$2;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/syu/carlink/ui/TimerWindow$widthPx$2;-><init>(Lcom/syu/carlink/ui/a;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p0, Lcom/syu/carlink/ui/a;->l:Ls/a;

    .line 75
    .line 76
    new-instance p2, Lcom/syu/carlink/ui/TimerWindow$heightPx$2;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lcom/syu/carlink/ui/TimerWindow$heightPx$2;-><init>(Lcom/syu/carlink/ui/a;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p2}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iput-object p2, p0, Lcom/syu/carlink/ui/a;->m:Ls/a;

    .line 86
    .line 87
    if-eqz p3, :cond_3

    .line 88
    .line 89
    invoke-interface {p3, p0, p1}, Lk/b;->b(Lcom/syu/carlink/ui/a;Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/ui/a;->g:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/syu/carlink/ui/a;->k:Landroid/net/b;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/syu/carlink/ui/a;->i:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/syu/carlink/ui/a;->i:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/syu/carlink/ui/a;->j:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v0

    .line 27
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    check-cast v1, Landroid/view/ViewGroup;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v1, v0

    .line 35
    :goto_1
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object v2, p0, Lcom/syu/carlink/ui/a;->j:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "TimerWindow dismiss error: "

    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "HDL"

    .line 63
    .line 64
    invoke-static {v2, v1}, Lcom/google/android/projection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_2
    iput-object v0, p0, Lcom/syu/carlink/ui/a;->j:Landroid/widget/FrameLayout;

    .line 68
    .line 69
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/syu/carlink/ui/a;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/syu/carlink/ui/a;->i:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/syu/carlink/ui/a;->c:Lk/b;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/syu/carlink/ui/a;->h:Landroid/view/View;

    .line 16
    .line 17
    invoke-interface {v0, p1, v1}, Lk/b;->a(ILandroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_2
    iput p1, p0, Lcom/syu/carlink/ui/a;->f:I

    .line 21
    .line 22
    if-lez p1, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lcom/syu/carlink/ui/a;->g:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/syu/carlink/ui/a;->k:Landroid/net/b;

    .line 27
    .line 28
    const-wide/16 v1, 0x3e8

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/syu/carlink/ui/a;->a()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/syu/carlink/ui/a;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/syu/carlink/ui/a;->a:Landroid/content/Context;

    .line 7
    .line 8
    instance-of v1, v0, Landroid/app/Activity;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Landroid/app/Activity;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object v1, v2

    .line 18
    :goto_0
    const-string v3, "HDL"

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    :cond_2
    const-string p1, "TimerWindow showAtLocation skipped: activity finishing/destroyed"

    .line 35
    .line 36
    invoke-static {v3, p1}, Lcom/google/android/projection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    if-eqz v1, :cond_4

    .line 41
    .line 42
    const v4, 0x1020002

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-nez v1, :cond_6

    .line 52
    .line 53
    :cond_4
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    check-cast p1, Landroid/view/ViewGroup;

    .line 58
    .line 59
    move-object v1, p1

    .line 60
    goto :goto_1

    .line 61
    :cond_5
    move-object v1, v2

    .line 62
    :goto_1
    if-nez v1, :cond_6

    .line 63
    .line 64
    const-string p1, "TimerWindow showAtLocation skipped: no container"

    .line 65
    .line 66
    invoke-static {v3, p1}, Lcom/google/android/projection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_6
    new-instance p1, Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 77
    .line 78
    .line 79
    new-instance v3, Lk/a;

    .line 80
    .line 81
    invoke-direct {v3, p0}, Lk/a;-><init>(Lcom/syu/carlink/ui/a;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lcom/syu/carlink/ui/a;->h:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 97
    .line 98
    if-eqz v5, :cond_7

    .line 99
    .line 100
    move-object v2, v4

    .line 101
    check-cast v2, Landroid/view/ViewGroup;

    .line 102
    .line 103
    :cond_7
    if-eqz v2, :cond_8

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    :cond_8
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    .line 110
    iget-object v4, p0, Lcom/syu/carlink/ui/a;->l:Ls/a;

    .line 111
    .line 112
    invoke-interface {v4}, Ls/a;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Ljava/lang/Number;

    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    iget-object v5, p0, Lcom/syu/carlink/ui/a;->m:Ls/a;

    .line 123
    .line 124
    invoke-interface {v5}, Ls/a;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Ljava/lang/Number;

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    const/16 v6, 0x11

    .line 135
    .line 136
    invoke-direct {v2, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 137
    .line 138
    .line 139
    const/4 v4, 0x0

    .line 140
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 141
    .line 142
    const/16 v4, 0x1e

    .line 143
    .line 144
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 145
    .line 146
    invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    .line 148
    .line 149
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 150
    .line 151
    const/4 v3, -0x1

    .line 152
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    iput-object p1, p0, Lcom/syu/carlink/ui/a;->j:Landroid/widget/FrameLayout;

    .line 159
    .line 160
    iput-boolean v0, p0, Lcom/syu/carlink/ui/a;->i:Z

    .line 161
    .line 162
    iget p1, p0, Lcom/syu/carlink/ui/a;->b:I

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lcom/syu/carlink/ui/a;->b(I)V

    .line 165
    .line 166
    .line 167
    return-void
.end method
