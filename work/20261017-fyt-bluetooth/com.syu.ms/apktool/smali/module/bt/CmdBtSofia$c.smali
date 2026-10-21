.class public Lmodule/bt/CmdBtSofia$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/bt/CmdBtSofia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/bt/CmdBtSofia;


# direct methods
.method public constructor <init>(Lmodule/bt/CmdBtSofia;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/bt/CmdBtSofia$c;->a:Lmodule/bt/CmdBtSofia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/bt/CmdBtSofia$c;->a:Lmodule/bt/CmdBtSofia;

    invoke-static {v0, v1}, Lmodule/bt/CmdBtSofia;->a0(Lmodule/bt/CmdBtSofia;I)I

    .line 3
    invoke-static {p0}, Lh0/e;->T(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {v1}, Lmodule/bt/CmdBtSofia;->d0(Z)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lmodule/bt/CmdBtSofia$c;->a:Lmodule/bt/CmdBtSofia;

    invoke-static {v0}, Lmodule/bt/CmdBtSofia;->b0(Lmodule/bt/CmdBtSofia;)I

    .line 6
    iget-object v0, p0, Lmodule/bt/CmdBtSofia$c;->a:Lmodule/bt/CmdBtSofia;

    invoke-static {v0}, Lmodule/bt/CmdBtSofia;->Z(Lmodule/bt/CmdBtSofia;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 7
    invoke-static {p0}, Lh0/e;->T(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {v1}, Lmodule/bt/CmdBtSofia;->d0(Z)Z

    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Lu0/d;->C3(I)V
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
