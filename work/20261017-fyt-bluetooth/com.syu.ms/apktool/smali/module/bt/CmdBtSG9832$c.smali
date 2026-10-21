.class public Lmodule/bt/CmdBtSG9832$c;
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
    iput-object p1, p0, Lmodule/bt/CmdBtSG9832$c;->a:Lmodule/bt/CmdBtSG9832;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$c;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {v0}, Lmodule/bt/CmdBtSG9832;->b0(Lmodule/bt/CmdBtSG9832;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$c;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {v0}, Lmodule/bt/CmdBtSG9832;->e0(Lmodule/bt/CmdBtSG9832;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lh0/e;->T(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$c;->a:Lmodule/bt/CmdBtSG9832;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmodule/bt/CmdBtSG9832;->c0(Lmodule/bt/CmdBtSG9832;I)I

    :cond_0
    return-void
.end method
