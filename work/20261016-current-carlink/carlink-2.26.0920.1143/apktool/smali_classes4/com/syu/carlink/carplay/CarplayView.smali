.class public final Lcom/syu/carlink/carplay/CarplayView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public b:Lh/h;

.field public c:Lz/p;

.field public d:Lh/i;

.field public final e:Ls/a;

.field public final f:Ls/a;

.field public final g:Lh/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/syu/carlink/carplay/CarplayView$mHandler$2;->INSTANCE:Lcom/syu/carlink/carplay/CarplayView$mHandler$2;

    invoke-static {p1}, Lkotlin/a;->c(Lz/a;)Ls/a;

    move-result-object p1

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->e:Ls/a;

    .line 3
    sget-object p1, Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;->INSTANCE:Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;

    invoke-static {p1}, Lkotlin/a;->c(Lz/a;)Ls/a;

    move-result-object p1

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->f:Ls/a;

    .line 4
    new-instance p1, Lh/d;

    invoke-direct {p1}, Lh/d;-><init>()V

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->g:Lh/d;

    .line 5
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    sget-object p1, Lcom/syu/carlink/carplay/CarplayView$mHandler$2;->INSTANCE:Lcom/syu/carlink/carplay/CarplayView$mHandler$2;

    invoke-static {p1}, Lkotlin/a;->c(Lz/a;)Ls/a;

    move-result-object p1

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->e:Ls/a;

    .line 8
    sget-object p1, Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;->INSTANCE:Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;

    invoke-static {p1}, Lkotlin/a;->c(Lz/a;)Ls/a;

    move-result-object p1

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->f:Ls/a;

    .line 9
    new-instance p1, Lh/d;

    invoke-direct {p1}, Lh/d;-><init>()V

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->g:Lh/d;

    .line 10
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    sget-object p1, Lcom/syu/carlink/carplay/CarplayView$mHandler$2;->INSTANCE:Lcom/syu/carlink/carplay/CarplayView$mHandler$2;

    invoke-static {p1}, Lkotlin/a;->c(Lz/a;)Ls/a;

    move-result-object p1

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->e:Ls/a;

    .line 13
    sget-object p1, Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;->INSTANCE:Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;

    invoke-static {p1}, Lkotlin/a;->c(Lz/a;)Ls/a;

    move-result-object p1

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->f:Ls/a;

    .line 14
    new-instance p1, Lh/d;

    invoke-direct {p1}, Lh/d;-><init>()V

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->g:Lh/d;

    .line 15
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public final getDefSurfaceCodec()Z
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/carplay/CarplayView;->f:Ls/a;

    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getMHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/carplay/CarplayView;->e:Ls/a;

    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final getReceiver()Lh/i;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/carplay/CarplayView;->d:Lh/i;

    return-object v0
.end method

.method public final getTouchCallback()Lz/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz/p;"
        }
    .end annotation

    iget-object v0, p0, Lcom/syu/carlink/carplay/CarplayView;->c:Lz/p;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 5
    .line 6
    .line 7
    const-string v0, "HDL"

    .line 8
    .line 9
    const-string v1, "onAttachedToWindow CarplayView ============>>>"

    .line 10
    .line 11
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/CarplayView;->getMHandler()Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/syu/carlink/carplay/CarplayView;->g:Lh/d;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "HDL"

    .line 14
    .line 15
    const-string v1, "onDetachedFromWindow CarplayView ============>>>"

    .line 16
    .line 17
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onDisplayHint(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/syu/carlink/carplay/CarplayView;->c:Lz/p;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, p0}, Lz/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    :goto_0
    return p1
.end method

.method public final setReceiver(Lh/i;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->d:Lh/i;

    return-void
.end method

.method public final setTouchCallback(Lz/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz/p;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->c:Lz/p;

    return-void
.end method

.method public setup(II)V
    .locals 0

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    const-string p2, "holder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p2, "------->>  CarPlay CarplayView surfaceChanged "

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 14
    .line 15
    const-string p3, "me"

    .line 16
    .line 17
    const/4 p4, 0x0

    .line 18
    if-eqz p2, :cond_6

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, "   "

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    sget-object p2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 29
    .line 30
    if-eqz p2, :cond_5

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    iget-object p2, p2, Lcom/syu/carlink/CarLinkService;->z:Lh/i;

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    iget-boolean p2, p2, Lh/i;->f:Z

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object p2, p4

    .line 50
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "HDL"

    .line 58
    .line 59
    invoke-static {p2, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    iget-boolean p1, p1, Lcom/syu/carlink/CarLink;->e:Z

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->p()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    const/4 p2, 0x1

    .line 85
    iput-boolean p2, p1, Lcom/syu/carlink/CarLink;->d:Z

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-static {p3}, Lt/b;->B(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p4

    .line 92
    :cond_2
    invoke-static {p3}, Lt/b;->B(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p4

    .line 96
    :cond_3
    :goto_1
    return-void

    .line 97
    :cond_4
    invoke-static {p3}, Lt/b;->B(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p4

    .line 101
    :cond_5
    invoke-static {p3}, Lt/b;->B(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p4

    .line 105
    :cond_6
    invoke-static {p3}, Lt/b;->B(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p4
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "HDL"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "------->>  CarPlay CarplayView surfaceCreated "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "  receiver: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/syu/carlink/carplay/CarplayView;->d:Lh/i;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/CarplayView;->getDefSurfaceCodec()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_d

    .line 51
    .line 52
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 53
    .line 54
    if-eqz v0, :cond_d

    .line 55
    .line 56
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Lh/c;->o(Landroid/view/Surface;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_0
    const-string p1, "me"

    .line 66
    .line 67
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->d:Lh/i;

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    const-string v0, "HDL"

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "------- surfaceCreated liveCodec "

    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v0, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lh/h;

    .line 95
    .line 96
    invoke-direct {v0, p1}, Lh/h;-><init>(Lh/i;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/syu/carlink/carplay/CarplayView;->b:Lh/h;

    .line 100
    .line 101
    :cond_2
    iget-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->b:Lh/h;

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p1, Lh/h;->d:Landroid/view/Surface;

    .line 116
    .line 117
    :cond_3
    iget-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->b:Lh/h;

    .line 118
    .line 119
    if-eqz p1, :cond_d

    .line 120
    .line 121
    const-string v0, "000 ----------->>>  mediaCodec start suface: "

    .line 122
    .line 123
    monitor-enter p1

    .line 124
    :try_start_0
    const-string v2, "HDL"

    .line 125
    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p1, Lh/h;->d:Landroid/view/Surface;

    .line 132
    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, " carplay link: "

    .line 137
    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 142
    .line 143
    if-eqz v0, :cond_c

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, "  link state "

    .line 153
    .line 154
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 158
    .line 159
    if-eqz v0, :cond_b

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->B()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p1, Lh/h;->d:Landroid/view/Surface;

    .line 176
    .line 177
    if-eqz v0, :cond_a

    .line 178
    .line 179
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 180
    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_4

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_4
    invoke-virtual {p1}, Lh/h;->a()V

    .line 191
    .line 192
    .line 193
    iget-object v0, p1, Lh/h;->k:Lh/f;

    .line 194
    .line 195
    if-nez v0, :cond_6

    .line 196
    .line 197
    const-string v0, "HDL"

    .line 198
    .line 199
    const-string v2, "00 ----------->>>  mediaCodec start"

    .line 200
    .line 201
    invoke-static {v0, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lh/f;

    .line 205
    .line 206
    invoke-direct {v0, p1}, Lh/f;-><init>(Lh/h;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p1, Lh/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 210
    .line 211
    const/4 v3, 0x1

    .line 212
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 216
    .line 217
    .line 218
    iput-object v0, p1, Lh/h;->k:Lh/f;

    .line 219
    .line 220
    iget-object v0, p1, Lh/h;->l:Lh/g;

    .line 221
    .line 222
    if-nez v0, :cond_5

    .line 223
    .line 224
    new-instance v0, Lh/g;

    .line 225
    .line 226
    invoke-direct {v0, p1}, Lh/g;-><init>(Lh/h;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    .line 231
    .line 232
    iput-object v0, p1, Lh/h;->l:Lh/g;

    .line 233
    .line 234
    :cond_5
    iget-object v0, p1, Lh/h;->e:Lh/i;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-nez v0, :cond_6

    .line 241
    .line 242
    iget-object v0, p1, Lh/h;->e:Lh/i;

    .line 243
    .line 244
    invoke-virtual {v0}, Lh/i;->start()V

    .line 245
    .line 246
    .line 247
    :cond_6
    iget-boolean v0, p1, Lh/h;->c:Z

    .line 248
    .line 249
    if-eqz v0, :cond_8

    .line 250
    .line 251
    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p1, Lh/h;->c:Z

    .line 253
    .line 254
    iget-object v2, p1, Lh/h;->k:Lh/f;

    .line 255
    .line 256
    if-nez v2, :cond_7

    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_7
    iput-boolean v0, v2, Lh/f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .line 261
    :cond_8
    :goto_0
    monitor-exit p1

    .line 262
    goto :goto_2

    .line 263
    :cond_9
    :try_start_1
    const-string v0, "me"

    .line 264
    .line 265
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_a
    :goto_1
    monitor-exit p1

    .line 270
    goto :goto_2

    .line 271
    :cond_b
    :try_start_2
    const-string v0, "me"

    .line 272
    .line 273
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v1

    .line 277
    :cond_c
    const-string v0, "me"

    .line 278
    .line 279
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :catchall_0
    move-exception v0

    .line 284
    monitor-exit p1

    .line 285
    throw v0

    .line 286
    :cond_d
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v0, "------- CarplayView start  00 "

    .line 289
    .line 290
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 294
    .line 295
    if-eqz v0, :cond_f

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    if-eqz v0, :cond_e

    .line 302
    .line 303
    iget-object v1, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 304
    .line 305
    :cond_e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    const-string v0, "HDL"

    .line 313
    .line 314
    invoke-static {v0, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/CarplayView;->getMHandler()Landroid/os/Handler;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/syu/carlink/carplay/CarplayView;->g:Lh/d;

    .line 322
    .line 323
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/CarplayView;->getMHandler()Landroid/os/Handler;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    const-wide/16 v1, 0xfa

    .line 331
    .line 332
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_f
    const-string p1, "me"

    .line 337
    .line 338
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v1
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/CarplayView;->getDefSurfaceCodec()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const-string v0, "me"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lh/c;->o(Landroid/view/Surface;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "------->>  CarPlay CarplayView surfaceDestroyed start!! "

    .line 40
    .line 41
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v2, "HDL"

    .line 52
    .line 53
    invoke-static {v2, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/CarplayView;->getMHandler()Landroid/os/Handler;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v3, p0, Lcom/syu/carlink/carplay/CarplayView;->g:Lh/d;

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Lh/c;->p(Z)V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/CarplayView;->getDefSurfaceCodec()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/syu/carlink/carplay/CarplayView;->b:Lh/h;

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Lh/h;->b()V

    .line 94
    .line 95
    .line 96
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v0, "------- surfaceDestroyed end!! "

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v2, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v1
.end method
