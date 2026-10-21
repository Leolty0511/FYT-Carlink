.class public Lmodule/sound/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/a;


# direct methods
.method public constructor <init>(Lmodule/sound/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/a$e;->a:Lmodule/sound/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  i2sResetClk ============>> needInit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmodule/sound/a$e;->a:Lmodule/sound/a;

    iget-boolean v1, v1, Lmodule/sound/a;->q1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "soundMute1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lmodule/sound/a$e;->a:Lmodule/sound/a;

    iget-boolean v1, v0, Lmodule/sound/a;->q1:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lmodule/sound/a;->l2()V

    .line 4
    :cond_0
    iget-object v0, p0, Lmodule/sound/a$e;->a:Lmodule/sound/a;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lmodule/sound/a;->c2(I)V

    .line 5
    iget-object v0, p0, Lmodule/sound/a$e;->a:Lmodule/sound/a;

    invoke-static {v0}, Lmodule/sound/a;->H1(Lmodule/sound/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lmodule/sound/a$e;->a:Lmodule/sound/a;

    invoke-static {v1}, Lmodule/sound/a;->G1(Lmodule/sound/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lmodule/sound/a$e;->a:Lmodule/sound/a;

    invoke-static {v1}, Lmodule/sound/a;->G1(Lmodule/sound/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
