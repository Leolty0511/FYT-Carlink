.class public Lmodule/bt/CmdBtSG9832$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodule/bt/CmdBtSG9832;->i0()V
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
    iput-object p1, p0, Lmodule/bt/CmdBtSG9832$h;->a:Lmodule/bt/CmdBtSG9832;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public R(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lmodule/bt/CmdBtSG9832$h;->a:Lmodule/bt/CmdBtSG9832;

    const/4 v0, 0x1

    invoke-static {p1}, Lmodule/bt/CmdBtSG9832;->f0(Lmodule/bt/CmdBtSG9832;)Z

    move-result v1

    iget-object v2, p0, Lmodule/bt/CmdBtSG9832$h;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {v2}, Lmodule/bt/CmdBtSG9832;->Y(Lmodule/bt/CmdBtSG9832;)Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lmodule/bt/CmdBtSG9832;->Z(Lmodule/bt/CmdBtSG9832;ZZZ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lmodule/bt/CmdBtSG9832$h;->a:Lmodule/bt/CmdBtSG9832;

    const/4 v0, 0x0

    invoke-static {p1}, Lmodule/bt/CmdBtSG9832;->f0(Lmodule/bt/CmdBtSG9832;)Z

    move-result v1

    iget-object v2, p0, Lmodule/bt/CmdBtSG9832$h;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {v2}, Lmodule/bt/CmdBtSG9832;->Y(Lmodule/bt/CmdBtSG9832;)Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lmodule/bt/CmdBtSG9832;->Z(Lmodule/bt/CmdBtSG9832;ZZZ)V

    :goto_0
    return-void
.end method
