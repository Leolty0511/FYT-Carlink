.class public Lmodule/bt/CmdBtSG9832$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/bt/CmdBtSG9832;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/bt/CmdBtSG9832;


# direct methods
.method public constructor <init>(Lmodule/bt/CmdBtSG9832;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/bt/CmdBtSG9832$d;->a:Lmodule/bt/CmdBtSG9832;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lh0/c;->G:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$d;->a:Lmodule/bt/CmdBtSG9832;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmodule/bt/CmdBtSG9832;->c0(Lmodule/bt/CmdBtSG9832;I)I

    .line 3
    invoke-static {p0}, Lh0/e;->T(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$d;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {v0}, Lmodule/bt/CmdBtSG9832;->b0(Lmodule/bt/CmdBtSG9832;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lmodule/bt/CmdBtSG9832$d;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {v1}, Lmodule/bt/CmdBtSG9832;->d0(Lmodule/bt/CmdBtSG9832;)I

    .line 6
    iget-object v1, p0, Lmodule/bt/CmdBtSG9832$d;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {v1}, Lmodule/bt/CmdBtSG9832;->b0(Lmodule/bt/CmdBtSG9832;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 7
    invoke-static {p0}, Lh0/e;->T(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lh0/c;->b:Lh0/f;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lh0/f;->P(I)V

    if-lez v0, :cond_1

    .line 9
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lmodule/bt/CmdBtSG9832$d$a;

    invoke-direct {v1, p0}, Lmodule/bt/CmdBtSG9832$d$a;-><init>(Lmodule/bt/CmdBtSG9832$d;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
