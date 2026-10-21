.class public final Lh/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lh/h;


# direct methods
.method public constructor <init>(Lh/h;)V
    .locals 0

    iput-object p1, p0, Lh/g;->b:Lh/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :catch_0
    :cond_0
    :goto_0
    iget-object v0, p0, Lh/g;->b:Lh/h;

    .line 2
    .line 3
    iget-object v1, v0, Lh/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const-string v1, "MediaoCodec Format Changed New Format : "

    .line 12
    .line 13
    iget-object v2, v0, Lh/h;->e:Lh/i;

    .line 14
    .line 15
    iget-object v2, v2, Lh/i;->c:Landroid/media/MediaCodec;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    :try_start_0
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-wide v4, v0, Lh/h;->h:J

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ltz v0, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, -0x2

    .line 38
    if-ne v0, v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "HDL"

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void
.end method
