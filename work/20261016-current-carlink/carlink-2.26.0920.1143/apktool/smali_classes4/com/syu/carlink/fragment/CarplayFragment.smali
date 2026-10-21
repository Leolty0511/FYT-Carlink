.class public final Lcom/syu/carlink/fragment/CarplayFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public final b:I

.field public final c:[I

.field public d:I

.field public e:I

.field public final f:Lz/p;

.field public g:Lcom/syu/carlink/carplay/CarplayView;

.field public h:Landroid/view/View;

.field public i:Landroid/os/Handler;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:Landroid/animation/ObjectAnimator;

.field public l:Landroid/util/Size;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->b:I

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->c:[I

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    .line 14
    .line 15
    iput v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    .line 16
    .line 17
    new-instance v0, Lcom/syu/carlink/fragment/CarplayFragment$touchHandle$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/syu/carlink/fragment/CarplayFragment$touchHandle$1;-><init>(Lcom/syu/carlink/fragment/CarplayFragment;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->f:Lz/p;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "overlay"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(IIZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->g:Lcom/syu/carlink/carplay/CarplayView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    .line 8
    .line 9
    const-string v3, "HDL"

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-static {p3, v2}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    .line 22
    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    .line 24
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "fixCarplayVideoSize updateSurfaceViewLayout ----------->> "

    .line 29
    .line 30
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v3, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object p3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 57
    .line 58
    if-eqz p3, :cond_1

    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    if-eqz p3, :cond_2

    .line 65
    .line 66
    iget-object p3, p3, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 67
    .line 68
    if-eqz p3, :cond_2

    .line 69
    .line 70
    iget v4, p3, Lh/c;->b:I

    .line 71
    .line 72
    iget v5, p3, Lh/c;->c:I

    .line 73
    .line 74
    invoke-virtual {p3, v4, v5, p1, p2}, Lh/c;->c(IIII)[I

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    const/4 v4, 0x0

    .line 79
    aget v4, p3, v4

    .line 80
    .line 81
    const/4 v5, 0x1

    .line 82
    aget v5, p3, v5

    .line 83
    .line 84
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    const-string v6, "toString(this)"

    .line 89
    .line 90
    invoke-static {p3, v6}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v6, "----------->> "

    .line 94
    .line 95
    invoke-virtual {v6, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {v3, p3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance p3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v6, "fixCarplayVideoSize updateSurfaceViewLayout 01 ----------->> "

    .line 105
    .line 106
    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    invoke-static {v3, p3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-static {p3, v2}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 133
    .line 134
    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    .line 136
    iput v5, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    .line 138
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    const-string p1, "me"

    .line 146
    .line 147
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 p1, 0x0

    .line 151
    throw p1

    .line 152
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/syu/carlink/fragment/CarplayFragment;->g:Lcom/syu/carlink/carplay/CarplayView;

    .line 153
    .line 154
    if-nez p3, :cond_3

    .line 155
    .line 156
    new-instance p3, Landroid/util/Size;

    .line 157
    .line 158
    invoke-direct {p3, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 159
    .line 160
    .line 161
    iput-object p3, p0, Lcom/syu/carlink/fragment/CarplayFragment;->l:Landroid/util/Size;

    .line 162
    .line 163
    :cond_3
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p3, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/syu/carlink/fragment/CarplayFragment;->i:Landroid/os/Handler;

    .line 16
    .line 17
    sget p3, Le/w;->carplay_layout:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    const-string v0, "HDL"

    .line 2
    .line 3
    const-string v1, "Carplay onDestroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->g:Lcom/syu/carlink/carplay/CarplayView;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v1, v0, Lcom/syu/carlink/carplay/CarplayView;->b:Lh/h;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lh/h;->b()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, v0, Lcom/syu/carlink/carplay/CarplayView;->d:Lh/i;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object v1, v0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    iput-boolean v2, v0, Lh/i;->d:Z

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    iget-object v1, v0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 39
    .line 40
    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    iput-object v1, v0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 43
    .line 44
    :cond_3
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "Carplay onHiddenChanged "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " carplay_preview : "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->g:Lcom/syu/carlink/carplay/CarplayView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "HDL"

    .line 29
    .line 30
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    xor-int/lit8 v0, p1, 0x1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_0
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    const-string v2, "me"

    .line 65
    .line 66
    if-eqz p1, :cond_b

    .line 67
    .line 68
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->t()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v1

    .line 89
    :cond_2
    :goto_0
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 90
    .line 91
    if-eqz p1, :cond_a

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    iget-object p1, p1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1}, Lh/c;->m()V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 107
    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 111
    .line 112
    .line 113
    iput-object v1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 114
    .line 115
    :cond_4
    iget-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->g:Lcom/syu/carlink/carplay/CarplayView;

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const/4 v1, 0x2

    .line 127
    new-array v1, v1, [F

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    aput v2, v1, v0

    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    const/4 v3, 0x1

    .line 141
    aput v2, v1, v3

    .line 142
    .line 143
    const-string v2, "alpha"

    .line 144
    .line 145
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 150
    .line 151
    if-nez p1, :cond_6

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    const-wide/16 v1, 0x320

    .line 155
    .line 156
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    .line 158
    .line 159
    :goto_1
    iget-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 160
    .line 161
    if-eqz p1, :cond_7

    .line 162
    .line 163
    new-instance v1, Li/c;

    .line 164
    .line 165
    invoke-direct {v1, p0, v0}, Li/c;-><init>(Lcom/syu/carlink/fragment/CarplayFragment;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    .line 170
    .line 171
    :cond_7
    iget-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 172
    .line 173
    if-nez p1, :cond_8

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_8
    const-wide/16 v0, 0x1f4

    .line 177
    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 179
    .line 180
    .line 181
    :goto_2
    iget-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 182
    .line 183
    if-eqz p1, :cond_9

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 186
    .line 187
    .line 188
    :cond_9
    :goto_3
    return-void

    .line 189
    :cond_a
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v1

    .line 193
    :cond_b
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v1
.end method

.method public final onPause()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->c:[I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "toString(this)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "onPause =======>>> "

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v3, "Touch"

    .line 19
    .line 20
    invoke-static {v3, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    aget v4, v0, v1

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x5

    .line 28
    const/4 v7, 0x0

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    aget v4, v0, v6

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    :cond_0
    aput v7, v0, v1

    .line 36
    .line 37
    aput v7, v0, v6

    .line 38
    .line 39
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v1, v1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    array-length v4, v0

    .line 54
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/16 v6, 0xca

    .line 59
    .line 60
    invoke-virtual {v1, v6, v5, v4}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v4, "onPause Event: "

    .line 66
    .line 67
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, "    \n\n\n\n"

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v3, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    const-string v0, "HDL"

    .line 93
    .line 94
    const-string v1, "Carplay onPause"

    .line 95
    .line 96
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 104
    .line 105
    .line 106
    iput-object v5, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 107
    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/high16 v1, 0x3f800000    # 1.0f

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    .line 126
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    .line 128
    .line 129
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    const-string v0, "me"

    .line 134
    .line 135
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v5
.end method

.method public final onResume()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Carplay onResume isHidden: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "HDL"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v3, 0x0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 55
    .line 56
    const-string v4, "me"

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->t()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v3

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    invoke-virtual {v0}, Lh/c;->m()V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v3

    .line 113
    :cond_3
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v3

    .line 117
    :cond_4
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v3

    .line 121
    :cond_5
    :goto_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 129
    .line 130
    .line 131
    iput-object v3, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 132
    .line 133
    :cond_6
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const/4 v4, 0x2

    .line 138
    new-array v4, v4, [F

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/syu/carlink/fragment/CarplayFragment;->a()Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    aput v5, v4, v1

    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    aput v1, v4, v2

    .line 152
    .line 153
    const-string v1, "alpha"

    .line 154
    .line 155
    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iput-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 160
    .line 161
    if-nez v0, :cond_7

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    const-wide/16 v4, 0x320

    .line 165
    .line 166
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    .line 168
    .line 169
    :goto_2
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 170
    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    new-instance v1, Li/c;

    .line 174
    .line 175
    invoke-direct {v1, p0, v2}, Li/c;-><init>(Lcom/syu/carlink/fragment/CarplayFragment;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    .line 180
    .line 181
    :cond_8
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 182
    .line 183
    const-wide/16 v4, 0x1f4

    .line 184
    .line 185
    if-nez v0, :cond_9

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_9
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 189
    .line 190
    .line 191
    :goto_3
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->k:Landroid/animation/ObjectAnimator;

    .line 192
    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 196
    .line 197
    .line 198
    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v1, "value"

    .line 203
    .line 204
    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v1, "sys.carlink.type"

    .line 208
    .line 209
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->i:Landroid/os/Handler;

    .line 213
    .line 214
    if-eqz v0, :cond_b

    .line 215
    .line 216
    new-instance v1, Landroid/net/b;

    .line 217
    .line 218
    const/16 v2, 0xc

    .line 219
    .line 220
    invoke-direct {v1, p0, v2}, Landroid/net/b;-><init>(Ljava/lang/Object;I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_b
    const-string v0, "handler"

    .line 228
    .line 229
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v3
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget p2, Le/v;->carplay_preview:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/syu/carlink/carplay/CarplayView;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/syu/carlink/fragment/CarplayFragment;->g:Lcom/syu/carlink/carplay/CarplayView;

    .line 18
    .line 19
    sget p2, Le/v;->carplay_overlay:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "view.findViewById(R.id.carplay_overlay)"

    .line 26
    .line 27
    invoke-static {p1, p2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->h:Landroid/view/View;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->g:Lcom/syu/carlink/carplay/CarplayView;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->z:Lh/i;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object v0, p2

    .line 52
    :goto_0
    invoke-virtual {p1, v0}, Lcom/syu/carlink/carplay/CarplayView;->setReceiver(Lh/i;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->g:Lcom/syu/carlink/carplay/CarplayView;

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/syu/carlink/fragment/CarplayFragment;->f:Lz/p;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/syu/carlink/carplay/CarplayView;->setTouchCallback(Lz/p;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    iget-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment;->l:Landroid/util/Size;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-virtual {p0, v0, p1, v1}, Lcom/syu/carlink/fragment/CarplayFragment;->b(IIZ)V

    .line 79
    .line 80
    .line 81
    :cond_3
    iput-object p2, p0, Lcom/syu/carlink/fragment/CarplayFragment;->l:Landroid/util/Size;

    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    const-string p1, "me"

    .line 85
    .line 86
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p2
.end method
