.class public Lchip/Chip$c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lchip/Chip;


# direct methods
.method public constructor <init>(Lchip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip$c0;->a:Lchip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "chip"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   ==========>>>    startCheck    00  reversingTakeOver :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lchip/Chip$c0;->a:Lchip/Chip;

    iget-object v2, v2, Lchip/Chip;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "    DataMain.sHostBackcar =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "chip"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   ==========>>>    startCheck    00   DataMain.sVideoId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->o4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " DataMain.sMcuOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " DataMain.sWhat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->p4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lchip/Chip$c0;->a:Lchip/Chip;

    iget-object v0, v0, Lchip/Chip;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6
    :goto_0
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v3

    invoke-virtual {v3}, Lf1/o;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7
    sget v0, Lu0/b;->p4:I

    if-nez v0, :cond_2

    sget v0, Lu0/b;->o4:I

    sget v1, Lu0/b;->p4:I

    if-eq v0, v1, :cond_2

    .line 8
    sget v0, Lu0/b;->o4:I

    sput v0, Lu0/b;->p4:I

    .line 9
    :cond_2
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    sget v1, Lu0/b;->p4:I

    sget v3, Lu0/b;->o4:I

    invoke-virtual {v0, v1, v3}, Lf1/o;->F(II)V

    .line 10
    sget v0, Lu0/b;->p4:I

    if-eqz v0, :cond_3

    .line 11
    sput v2, Lu0/b;->p4:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_1

    .line 13
    :cond_5
    :try_start_2
    sget v0, Lu0/b;->o4:I

    if-eqz v0, :cond_6

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_6

    .line 14
    sget v0, Lu0/b;->o4:I

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    const-string v3, "chip"

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   ==========>>>    startCheck    00   videoId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v3, Le1/a;->b:Le1/l;

    instance-of v3, v3, Le1/c;

    if-eqz v3, :cond_f

    const-string v3, "chip"

    const-string v4, "   ==========>>>    startCheck    00 "

    .line 17
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v3, Le1/a;->b:Le1/l;

    check-cast v3, Le1/c;

    if-ne v0, v1, :cond_7

    const-string v0, "chip"

    const-string v4, "   ==========>>>  sync back Car videoChannel    1 "

    .line 19
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v3}, Le1/c;->u()I

    move-result v0

    .line 21
    invoke-static {v0, v1}, Lu0/d;->S3(II)V

    :cond_7
    if-eqz v0, :cond_c

    .line 22
    iget v1, v3, Le1/c;->e:I

    if-ne v0, v1, :cond_8

    invoke-virtual {v3}, Le1/c;->u()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 23
    :cond_8
    iget v1, v3, Le1/c;->e:I

    const-wide/16 v4, 0x14

    if-eqz v1, :cond_9

    invoke-virtual {v3}, Le1/c;->u()I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 24
    invoke-virtual {v3}, Le1/c;->a()V

    .line 25
    invoke-static {v4, v5}, La/i;->a0(J)V

    .line 26
    :cond_9
    sget v1, Lu0/b;->r:I

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Le1/c;->u()I

    move-result v1

    if-ne v0, v1, :cond_a

    const-string v1, "1"

    goto :goto_2

    :cond_a
    const-string v1, "0"

    :goto_2
    const-string/jumbo v2, "sys.fyt.cvbs.mirror"

    .line 27
    invoke-static {v2, v1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "persist.lsec.cvbs.mirror"

    .line 28
    invoke-static {v2, v1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {v4, v5}, La/i;->a0(J)V

    .line 30
    invoke-virtual {v3, v0}, Le1/c;->c(I)V

    .line 31
    :cond_b
    invoke-virtual {v3}, Le1/c;->A()V

    goto :goto_4

    .line 32
    :cond_c
    sget-object v0, Le1/a;->b:Le1/l;

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    check-cast v0, Le1/c;

    invoke-virtual {v0}, Le1/c;->o()Z

    move-result v2

    :goto_3
    const-string v0, "chip"

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==========>>>  sync back Car reversing : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_e

    .line 34
    invoke-virtual {v3}, Le1/c;->B()V

    .line 35
    invoke-virtual {v3}, Le1/c;->a()V

    goto :goto_4

    .line 36
    :cond_e
    invoke-virtual {v3}, Le1/c;->a()V

    .line 37
    invoke-virtual {v3}, Le1/c;->u()I

    move-result v0

    invoke-virtual {v3, v0}, Le1/c;->c(I)V

    .line 38
    invoke-virtual {v3}, Le1/c;->A()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :cond_f
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
