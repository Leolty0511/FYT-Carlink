.class public Lmodule/sound/AudioDevice$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/AudioDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public volatile a:Z

.field public final synthetic b:Lmodule/sound/AudioDevice;


# direct methods
.method public constructor <init>(Lmodule/sound/AudioDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmodule/sound/AudioDevice$c;->a:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget v0, Lu0/b;->g:I

    if-ne v0, v2, :cond_0

    sget v0, Lu0/b;->a0:I

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Audio"

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " >>>>>> AUDIO SETUP START >>>>>> old "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lmodule/sound/AudioDevice$c;->a:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const/4 v3, 0x4

    .line 3
    invoke-static {v3, v2}, Ly0/h;->Y(IZ)V

    :cond_1
    const-string v3, "Audio"

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " load >>>>>>>>> AUDIO  DataMain.sMcuOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lu0/b;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " DataMain.sScreenOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lu0/b;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  DataMain.sAccOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lu0/b;->a0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-boolean v3, p0, Lmodule/sound/AudioDevice$c;->a:Z

    if-eq v3, v0, :cond_3

    .line 6
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v3

    iget-object v4, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    iget-object v4, v4, Lmodule/sound/AudioDevice;->r0:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iput-boolean v0, p0, Lmodule/sound/AudioDevice$c;->a:Z

    .line 8
    iget-boolean v0, p0, Lmodule/sound/AudioDevice$c;->a:Z

    if-nez v0, :cond_2

    const-string v0, "Audio"

    const-string v3, " load >>>>>>>>>>>>>>>>>>>>>>>>>>> AUDIO DEVICE OFF"

    .line 9
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->v0(Z)V

    .line 11
    iget-object v0, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    iput-boolean v1, v0, Lmodule/sound/AudioDevice;->e:Z

    .line 12
    sput v1, Ly0/f;->u:I

    .line 13
    sget-object v0, Ly0/g;->c:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 14
    sget-object v0, Ly0/g;->p:Lo1/z;

    iget-object v1, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    invoke-static {v1}, Lmodule/sound/AudioDevice;->q(Lmodule/sound/AudioDevice;)Lo1/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    .line 15
    sget-object v0, Ly0/g;->n:Lo1/z;

    iget-object v1, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    invoke-static {v1}, Lmodule/sound/AudioDevice;->r(Lmodule/sound/AudioDevice;)Lo1/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    .line 16
    sget-object v0, Ly0/g;->o:Lo1/z;

    iget-object v1, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    invoke-static {v1}, Lmodule/sound/AudioDevice;->s(Lmodule/sound/AudioDevice;)Lo1/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    .line 17
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    invoke-static {v1}, Lmodule/sound/AudioDevice;->t(Lmodule/sound/AudioDevice;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 18
    sget-object v0, Lh0/d;->b:Lo1/y;

    iget-object v1, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    invoke-static {v1}, Lmodule/sound/AudioDevice;->u(Lmodule/sound/AudioDevice;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 19
    sget-object v0, Lk0/ot;->b:Lo1/y;

    iget-object v1, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    invoke-static {v1}, Lmodule/sound/AudioDevice;->v(Lmodule/sound/AudioDevice;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 20
    invoke-static {}, Ly0/h;->M()V

    .line 21
    iget-object v0, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    iput-boolean v2, v0, Lmodule/sound/AudioDevice;->R:Z

    const/high16 v1, -0x80000000

    .line 22
    iput v1, v0, Lmodule/sound/AudioDevice;->Q:I

    goto :goto_1

    .line 23
    :cond_2
    iget-object v0, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    iget-object v0, v0, Lmodule/sound/AudioDevice;->r:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 24
    new-instance v1, Lmodule/sound/AudioDevice$c$a;

    invoke-direct {v1, p0}, Lmodule/sound/AudioDevice$c$a;-><init>(Lmodule/sound/AudioDevice$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "Audio"

    const-string v1, " load >>>>>>>>>>>>>>>>>>>>>>>>>>> Post enterSystemUnmute"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lmodule/sound/AudioDevice$c;->b:Lmodule/sound/AudioDevice;

    iget-object v1, v1, Lmodule/sound/AudioDevice;->r0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
