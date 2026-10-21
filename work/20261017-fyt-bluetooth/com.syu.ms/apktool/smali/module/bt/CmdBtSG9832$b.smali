.class public Lmodule/bt/CmdBtSG9832$b;
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
    iput-object p1, p0, Lmodule/bt/CmdBtSG9832$b;->a:Lmodule/bt/CmdBtSG9832;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$b;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {v0}, Lmodule/bt/CmdBtSG9832;->a0(Lmodule/bt/CmdBtSG9832;)Lo1/g0;

    move-result-object v0

    sget v1, Lh0/c;->R:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    if-eqz v0, :cond_2

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
    sget-object v0, Lh0/c;->c:Ly/g;

    invoke-virtual {v0, v1, v2}, Ly/g;->L2(II)V

    :cond_2
    :goto_1
    return-void
.end method
