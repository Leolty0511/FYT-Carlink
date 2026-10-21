.class public final Lh/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public c:Z

.field public d:Landroid/view/Surface;

.field public final e:Lh/i;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:I

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:Lh/f;

.field public l:Lh/g;


# direct methods
.method public constructor <init>(Lh/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x400

    .line 5
    .line 6
    iput v0, p0, Lh/h;->a:I

    .line 7
    .line 8
    const/16 v0, 0x258

    .line 9
    .line 10
    iput v0, p0, Lh/h;->b:I

    .line 11
    .line 12
    iput-object p1, p0, Lh/h;->e:Lh/i;

    .line 13
    .line 14
    const/16 p1, 0x3c

    .line 15
    .line 16
    iput p1, p0, Lh/h;->f:I

    .line 17
    .line 18
    const-string p1, "video/avc"

    .line 19
    .line 20
    iput-object p1, p0, Lh/h;->g:Ljava/lang/String;

    .line 21
    .line 22
    const-wide/32 v0, 0x186a0

    .line 23
    .line 24
    .line 25
    iput-wide v0, p0, Lh/h;->h:J

    .line 26
    .line 27
    const/16 p1, 0xa

    .line 28
    .line 29
    iput p1, p0, Lh/h;->i:I

    .line 30
    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lh/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    new-instance p1, Landroid/os/HandlerThread;

    .line 40
    .line 41
    const-string v0, "Data"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 47
    .line 48
    .line 49
    new-instance v0, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Codec ------- prepare()   type: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lh/h;->g:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lh/h;->a:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " x "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lh/h;->b:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " - "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lh/h;->f:I

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lh/h;->d:Landroid/view/Surface;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "HDL"

    .line 56
    .line 57
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lh/h;->e:Lh/i;

    .line 61
    .line 62
    iget-object v3, p0, Lh/h;->g:Ljava/lang/String;

    .line 63
    .line 64
    iget v4, p0, Lh/h;->a:I

    .line 65
    .line 66
    iget v5, p0, Lh/h;->b:I

    .line 67
    .line 68
    iget v6, p0, Lh/h;->f:I

    .line 69
    .line 70
    iget-object v7, p0, Lh/h;->d:Landroid/view/Surface;

    .line 71
    .line 72
    invoke-virtual/range {v2 .. v7}, Lh/i;->b(Ljava/lang/String;IIILandroid/view/Surface;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    const-string v0, "------- stop 0"

    .line 2
    .line 3
    const-string v1, "HDL"

    .line 4
    .line 5
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "Codec ------- pause 0"

    .line 9
    .line 10
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lh/h;->c:Z

    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lh/h;->c:Z

    .line 19
    .line 20
    iget-object v2, p0, Lh/h;->e:Lh/i;

    .line 21
    .line 22
    invoke-virtual {v2}, Lh/i;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lh/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lh/h;->k:Lh/f;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput-boolean v0, v2, Lh/f;->b:Z

    .line 37
    .line 38
    :goto_0
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lh/h;->k:Lh/f;

    .line 45
    .line 46
    iget-object v2, p0, Lh/h;->l:Lh/g;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 51
    .line 52
    .line 53
    :cond_2
    iput-object v0, p0, Lh/h;->l:Lh/g;

    .line 54
    .line 55
    :cond_3
    const-string v0, "Codec  ------- pause 1"

    .line 56
    .line 57
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
