.class public abstract Le1/c;
.super Le1/l;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Z

.field public b:I

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public volatile h:Z

.field public i:Z

.field public j:Landroid/os/Handler;

.field public k:I

.field public l:Z

.field public m:Lo1/n;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z

.field public s:I

.field public t:J

.field public u:I

.field public v:I

.field public final w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Le1/l;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le1/c;->a:Z

    const/16 v1, 0x28

    .line 3
    iput v1, p0, Le1/c;->b:I

    const/16 v1, 0xc8

    .line 4
    iput v1, p0, Le1/c;->c:I

    .line 5
    iput v0, p0, Le1/c;->d:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Le1/c;->e:I

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Le1/c;->f:I

    .line 8
    iput v2, p0, Le1/c;->g:I

    .line 9
    iput-boolean v1, p0, Le1/c;->h:Z

    .line 10
    iput-boolean v1, p0, Le1/c;->i:Z

    const/16 v2, 0x7d0

    .line 11
    iput v2, p0, Le1/c;->k:I

    .line 12
    iput-boolean v1, p0, Le1/c;->l:Z

    .line 13
    iput-boolean v0, p0, Le1/c;->o:Z

    .line 14
    iput-boolean v1, p0, Le1/c;->q:Z

    .line 15
    iput-boolean v1, p0, Le1/c;->r:Z

    .line 16
    iput v1, p0, Le1/c;->s:I

    const-wide v2, 0x7fffffffffffffffL

    .line 17
    iput-wide v2, p0, Le1/c;->t:J

    .line 18
    iput v1, p0, Le1/c;->u:I

    .line 19
    iput v1, p0, Le1/c;->v:I

    .line 20
    new-instance v1, Le1/c$a;

    invoke-direct {v1, p0}, Le1/c$a;-><init>(Le1/c;)V

    iput-object v1, p0, Le1/c;->w:Ljava/lang/Runnable;

    .line 21
    invoke-virtual {p0}, Le1/c;->l()V

    .line 22
    iput-object p1, p0, Le1/c;->j:Landroid/os/Handler;

    .line 23
    iput-boolean v0, p0, Le1/c;->l:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .line 24
    invoke-direct {p0, p3}, Le1/c;-><init>(Landroid/os/Handler;)V

    const/4 p3, 0x0

    .line 25
    iput-boolean p3, p0, Le1/c;->l:Z

    .line 26
    new-instance p3, Lo1/n;

    invoke-direct {p3}, Lo1/n;-><init>()V

    iput-object p3, p0, Le1/c;->m:Lo1/n;

    .line 27
    iput-object p1, p0, Le1/c;->n:Ljava/lang/String;

    .line 28
    iput p2, p0, Le1/c;->p:I

    return-void
.end method

.method public static n()Le1/c;
    .locals 2

    .line 1
    sget-object v0, Le1/a;->b:Le1/l;

    if-eqz v0, :cond_0

    instance-of v1, v0, Le1/c;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Le1/c;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le1/c;->h:Z

    const-string v0, "chip"

    const-string v1, "   ==========>>>    startCheck    device.startCheck() "

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    iget v1, p0, Le1/c;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le1/c;->h:Z

    const-string v0, "chip"

    const-string v1, "   ==========>>>    stopCheck    device.stopCheck() "

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>>>syncReservingk()    loaded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le1/c;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " readyToReversing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le1/c;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chip"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Le1/c;->i:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le1/c;->m()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Le1/c;->q:Z

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget v0, p0, Le1/c;->e:I

    invoke-virtual {p0}, Le1/c;->u()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 6
    iget v0, p0, Le1/c;->e:I

    iput v0, p0, Le1/c;->s:I

    const-string v0, "V2850"

    const-string v1, "  closeVideo 000"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Le1/c;->B()V

    .line 9
    invoke-virtual {p0}, Le1/c;->a()V

    :cond_2
    const-wide/16 v0, 0x64

    .line 10
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    .line 11
    invoke-virtual {p0}, Le1/c;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Le1/c;->c(I)V

    .line 12
    invoke-virtual {p0}, Le1/c;->A()V

    return-void
.end method

.method public D(II)I
    .locals 1

    .line 1
    iget v0, p0, Le1/c;->p:I

    invoke-virtual {p0, v0, p1, p2}, Le1/c;->E(III)I

    move-result p1

    return p1
.end method

.method public E(III)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le1/c;->m:Lo1/n;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Le1/c;->o:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    new-array p2, v1, [I

    aput p3, p2, v3

    invoke-virtual {v0, p1, v2, p2}, Lo1/n;->d(I[I[I)I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput v1, p0, Le1/c;->e:I

    return-void

    .line 3
    :cond_0
    iput-boolean v1, p0, Le1/c;->r:Z

    .line 4
    iget v0, p0, Le1/c;->e:I

    invoke-virtual {p0}, Le1/c;->u()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string v0, "sys.fyt.cvbs.mirror"

    const-string v2, "0"

    .line 5
    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.lsec.cvbs.mirror"

    .line 6
    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iput v1, p0, Le1/c;->e:I

    const/4 v0, -0x1

    .line 8
    invoke-static {v0}, Lu0/d;->n3(I)V

    .line 9
    invoke-static {v1}, Lu0/d;->o3(I)V

    .line 10
    invoke-static {v1, v1}, Lu0/d;->S3(II)V

    return-void
.end method

.method public b()V
    .locals 11

    .line 1
    invoke-super {p0}, Le1/l;->b()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================>>  in()   loaded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le1/c;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ignoreI2c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le1/c;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chip"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Le1/c;->l:Z

    if-nez v0, :cond_3

    .line 4
    :goto_0
    iget-object v0, p0, Le1/c;->m:Lo1/n;

    iget-object v2, p0, Le1/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lo1/n;->f(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v2, 0x50

    .line 5
    invoke-static {v2, v3}, La/i;->a0(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le1/c;->m:Lo1/n;

    invoke-virtual {v0}, Lo1/n;->c()I

    move-result v0

    if-gez v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========================>>  in()   i2c.open(i2cDev) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le1/c;->m:Lo1/n;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " open failed\uff01\uff01\uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "I2C OPEN ERROR!!!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v7, 0x32

    const/4 v8, -0x1

    const/16 v9, 0x3c

    const v10, 0x7fffff00

    const-string v4, "i2c error"

    invoke-virtual/range {v2 .. v10}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    .line 9
    :cond_1
    iget-object v0, p0, Le1/c;->m:Lo1/n;

    invoke-virtual {v0}, Lo1/n;->c()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Le1/c;->o:Z

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========================>>  in()  END i2cInvalid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le1/c;->o:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_3
    iget-boolean v0, p0, Le1/c;->i:Z

    if-eqz v0, :cond_4

    return-void

    .line 12
    :cond_4
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 13
    iget-object v1, p0, Le1/c;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Le1/c;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 15
    :cond_5
    iget-object v0, p0, Le1/c;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void
.end method

.method public declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Le1/l;->c(I)V

    .line 3
    iget-boolean v0, p0, Le1/c;->i:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "==============>>  openVideo  init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Le1/c;->m()V

    .line 6
    :cond_1
    sget v0, Lu0/b;->r:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le1/c;->u()I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v0, "0"

    :goto_0
    const-string v1, "sys.fyt.cvbs.mirror"

    .line 7
    invoke-static {v1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "persist.lsec.cvbs.mirror"

    .line 8
    invoke-static {v1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x14

    .line 9
    invoke-static {v0, v1}, La/i;->a0(J)V

    const-string v0, "chip"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   ==========>>>   open videoChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lu0/d;->S3(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Le1/c;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-boolean v0, p0, Le1/c;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Le1/c;->w(Z)V

    .line 4
    iput v0, p0, Le1/c;->e:I

    .line 5
    iget-boolean v0, p0, Le1/c;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le1/c;->m:Lo1/n;

    invoke-virtual {v0}, Lo1/n;->close()V

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Le1/c;->o:Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================>>  out()  loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le1/c;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chip"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-super {p0}, Le1/l;->d()V

    return-void
.end method

.method public abstract j()I
.end method

.method public k()Z
    .locals 2

    const-string v0, "sys.fyt.video.debug"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public abstract m()V
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le1/c;->q:Z

    return v0
.end method

.method public p(I)I
    .locals 4

    .line 1
    iget v0, p0, Le1/c;->f:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    .line 2
    iget v2, p0, Le1/c;->g:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    .line 3
    iget v2, p0, Le1/c;->u:I

    add-int/2addr v2, v3

    iput v2, p0, Le1/c;->u:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Le1/c;->u:I

    goto :goto_1

    .line 5
    :cond_1
    iput v3, p0, Le1/c;->u:I

    .line 6
    iput p1, p0, Le1/c;->g:I

    :goto_0
    move p1, v0

    goto :goto_1

    .line 7
    :cond_2
    iput v1, p0, Le1/c;->u:I

    :goto_1
    return p1
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le1/c;->t()V

    return-void
.end method

.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Le1/c;->h:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Le1/c;->j()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v4

    const-string v5, "   recersingBeforeChannel : "

    const-string v6, "    readyToReversing: "

    const-wide v7, 0x7fffffffffffffffL

    const-string v9, "chip"

    if-nez v4, :cond_2

    iget-boolean v4, p0, Le1/c;->r:Z

    if-eq v4, v3, :cond_3

    .line 5
    :cond_2
    iput-boolean v3, p0, Le1/c;->r:Z

    .line 6
    iget-boolean v4, p0, Le1/c;->q:Z

    if-eqz v4, :cond_3

    iget-wide v10, p0, Le1/c;->t:J

    cmp-long v4, v10, v7

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    const-string v3, "  001  ==========>>>    reversing    :   HandlerMain.backcar(1); "

    .line 7
    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v2}, Lu0/d;->C(I)V

    .line 9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->f:Lutil/log/LogType;

    const-string v10, "ENTER REVERSING  ===  HAS SIGNAL"

    invoke-virtual {v3, v4, v10}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ENTER REVERSING HAS SIGNAL setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Le1/c;->q:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Le1/c;->q:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Le1/c;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-wide v7, p0, Le1/c;->t:J

    .line 12
    :cond_3
    iget-boolean v3, p0, Le1/c;->q:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Le1/c;->t:J

    sub-long/2addr v10, v12

    iget v3, p0, Le1/c;->k:I

    int-to-long v12, v3

    cmp-long v3, v10, v12

    if-ltz v3, :cond_4

    .line 13
    iput v4, p0, Le1/c;->f:I

    const-string v3, "V2850"

    const-string v10, "  imagFormat 002"

    .line 14
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Le1/c;->m()V

    const-string v3, "   ==========>>>002    reversing    :   HandlerMain.backcar(1); "

    .line 16
    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {v2}, Lu0/d;->C(I)V

    .line 18
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v10, Lutil/log/LogType;->f:Lutil/log/LogType;

    const-string v11, "ENTER REVERSING  ===  CHECK TIMEOUT"

    invoke-virtual {v3, v10, v11}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ENTER REVERSING CHECK TIMEOUT setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Le1/c;->q:Z

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Le1/c;->q:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Le1/c;->s:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iput-wide v7, p0, Le1/c;->t:J

    .line 21
    :cond_4
    iget-boolean v3, p0, Le1/c;->h:Z

    if-eqz v3, :cond_5

    iget v4, p0, Le1/c;->f:I

    :cond_5
    invoke-static {v4}, Lu0/d;->n3(I)V

    .line 22
    iget-boolean v3, p0, Le1/c;->h:Z

    if-eqz v3, :cond_7

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :cond_7
    :goto_1
    invoke-static {v1}, Lu0/d;->o3(I)V

    .line 23
    iget-boolean v0, p0, Le1/c;->h:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    iget v1, p0, Le1/c;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_2
    return-void
.end method

.method public s(I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le1/c;->m:Lo1/n;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Le1/c;->m:Lo1/n;

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Le1/c;->o:Z

    if-eqz v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v4, p0, Le1/c;->p:I

    new-array v5, v1, [I

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-virtual {v2, v1, v4, v6, v5}, Lo1/n;->e(IIZ[I)[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    array-length v1, p1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    aget p1, p1, v6

    and-int/lit16 v3, p1, 0xff

    :cond_3
    :goto_0
    monitor-exit v0

    return v3

    .line 6
    :cond_4
    :goto_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le1/c;->y(Z)V

    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Le1/c;->d:I

    return v0
.end method

.method public v(II)V
    .locals 1

    .line 1
    sget-object v0, Lu0/b;->t4:[I

    aput p2, v0, p1

    return-void
.end method

.method public w(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le1/c;->i:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Le1/c;->i:Z

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "syu.imageic.inited"

    .line 3
    invoke-static {v0, p1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public x(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le1/c;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "    readyToReversing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "chip"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Le1/c;->q:Z

    if-eq v0, p1, :cond_4

    .line 3
    invoke-virtual {p0}, Le1/c;->B()V

    .line 4
    iput-boolean p1, p0, Le1/c;->q:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v3, "persist.lesc.video.ignore"

    .line 5
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v3, 0x7d0

    .line 6
    :goto_1
    iput v3, p0, Le1/c;->k:I

    if-nez p1, :cond_3

    const-string v3, "   ==========>>> 003    reversing    :   HandlerMain.backcar(0); "

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v0}, Lu0/d;->C(I)V

    .line 9
    invoke-virtual {p0}, Le1/c;->a()V

    .line 10
    iget v3, p0, Le1/c;->s:I

    if-nez v3, :cond_2

    sget v3, Lu0/b;->o4:I

    if-eqz v3, :cond_2

    .line 11
    iput v3, p0, Le1/c;->s:I

    .line 12
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXIT setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Le1/c;->q:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "   recersingBeforeChannel : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Le1/c;->s:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget p1, p0, Le1/c;->s:I

    if-eqz p1, :cond_4

    const-wide/16 v1, 0x96

    .line 14
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    .line 15
    iget p1, p0, Le1/c;->s:I

    invoke-virtual {p0, p1}, Le1/c;->c(I)V

    .line 16
    invoke-virtual {p0}, Le1/c;->A()V

    .line 17
    iput v0, p0, Le1/c;->s:I

    const-wide/32 v0, 0x7fffffff

    .line 18
    iput-wide v0, p0, Le1/c;->t:J

    goto :goto_2

    .line 19
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Le1/c;->t:J

    .line 20
    invoke-virtual {p0}, Le1/c;->C()V

    :cond_4
    :goto_2
    return-void
.end method

.method public y(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Le1/c;->e:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le1/c;->f:I

    .line 3
    invoke-virtual {p0}, Le1/c;->m()V

    :cond_0
    return-void
.end method

.method public abstract z()Z
.end method
