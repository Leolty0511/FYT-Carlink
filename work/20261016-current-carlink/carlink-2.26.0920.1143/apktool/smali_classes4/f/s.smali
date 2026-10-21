.class public final Lf/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    iput p4, p0, Lf/s;->b:I

    iput-object p1, p0, Lf/s;->e:Ljava/lang/Object;

    iput p2, p0, Lf/s;->c:I

    iput p3, p0, Lf/s;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lf/s;->b:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget v4, p0, Lf/s;->d:I

    .line 7
    .line 8
    iget v5, p0, Lf/s;->c:I

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    sget v0, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_PROJECTED:I

    .line 15
    .line 16
    if-eq v5, v0, :cond_0

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v4, v0, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/16 v6, 0x85

    .line 30
    .line 31
    new-array v7, v3, [I

    .line 32
    .line 33
    aput v1, v7, v2

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v4 .. v9}, Lo/e;->c(II[I[F[Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    :goto_0
    iget-object v0, p0, Lf/s;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/syu/carlink/auto/AutoFragment;

    .line 47
    .line 48
    iget-object v6, v0, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 49
    .line 50
    invoke-virtual {v6}, Lcom/google/android/projection/sink/settings/Settings;->isTouchScreenEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    iget-object v6, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iget-object v7, v0, Lcom/syu/carlink/auto/AutoFragment;->i:Landroid/view/SurfaceView;

    .line 63
    .line 64
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const/4 v8, 0x4

    .line 69
    new-array v8, v8, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    aput-object v9, v8, v2

    .line 76
    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    aput-object v2, v8, v3

    .line 82
    .line 83
    const/4 v2, 0x2

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    aput-object v3, v8, v2

    .line 89
    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    aput-object v2, v8, v1

    .line 95
    .line 96
    const-string v1, "0101 Auto width: %d, height: %d surfaceViewW: %d, surfaceViewH: %d"

    .line 97
    .line 98
    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "HDL"

    .line 103
    .line 104
    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 108
    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    invoke-virtual {v0, v5, v4}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->updatePreviewSize(II)V

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
