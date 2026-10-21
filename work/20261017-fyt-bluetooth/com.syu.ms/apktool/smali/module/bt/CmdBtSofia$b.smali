.class public Lmodule/bt/CmdBtSofia$b;
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
    iput-object p1, p0, Lmodule/bt/CmdBtSofia$b;->a:Lmodule/bt/CmdBtSofia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/bt/CmdBtSofia$b;->a:Lmodule/bt/CmdBtSofia;

    invoke-static {v0}, Lmodule/bt/CmdBtSofia;->Y(Lmodule/bt/CmdBtSofia;)Lo1/g0;

    move-result-object v0

    sget v1, Lh0/c;->R:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget v0, Lu0/b;->f:I

    const/16 v1, 0x1e

    if-eqz v0, :cond_1

    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lh0/c;->c:Ly/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/g;->L2(II)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    sget v0, Lh0/c;->E:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 5
    :cond_2
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v2}, Lh0/f;->I(I)V

    const-wide/16 v3, 0x7d0

    .line 6
    invoke-static {v3, v4}, La/i;->a0(J)V

    .line 7
    :cond_3
    sget-object v0, Lh0/c;->c:Ly/g;

    invoke-virtual {v0, v1, v2}, Ly/g;->L2(II)V

    :cond_4
    :goto_1
    return-void
.end method
