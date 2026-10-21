.class public Lmodule/bt/CmdBtSG9832$a;
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
.field public a:Z

.field public final synthetic b:Lmodule/bt/CmdBtSG9832;


# direct methods
.method public constructor <init>(Lmodule/bt/CmdBtSG9832;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/bt/CmdBtSG9832$a;->b:Lmodule/bt/CmdBtSG9832;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 2
    iget-boolean v0, p0, Lmodule/bt/CmdBtSG9832$a;->a:Z

    if-eqz v0, :cond_2

    .line 3
    iput-boolean v1, p0, Lmodule/bt/CmdBtSG9832$a;->a:Z

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v4, "net.easyconn"

    invoke-static {v0, v4}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lo1/u;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$a;->b:Lmodule/bt/CmdBtSG9832;

    invoke-virtual {v0}, Lmodule/bt/CmdBtSG9832;->w()V

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Lu0/b;->C:I

    if-ne v0, v3, :cond_2

    .line 8
    sget v0, Lh0/c;->N:I

    if-ne v0, v2, :cond_2

    .line 9
    iput-boolean v2, p0, Lmodule/bt/CmdBtSG9832$a;->a:Z

    .line 10
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$a;->b:Lmodule/bt/CmdBtSG9832;

    invoke-virtual {v0}, Lmodule/bt/CmdBtSG9832;->E()V

    .line 11
    :cond_2
    :goto_0
    sget v0, Lmodule/bt/CmdBtSG9832;->v:I

    if-nez v0, :cond_7

    .line 12
    sget-boolean v0, Lu0/b;->n2:Z

    if-eqz v0, :cond_5

    .line 13
    sget v0, Lu0/b;->D:I

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$a;->b:Lmodule/bt/CmdBtSG9832;

    invoke-static {v0}, Lmodule/bt/CmdBtSG9832;->X(Lmodule/bt/CmdBtSG9832;)Z

    move-result v2

    iget-object v3, p0, Lmodule/bt/CmdBtSG9832$a;->b:Lmodule/bt/CmdBtSG9832;

    invoke-static {v3}, Lmodule/bt/CmdBtSG9832;->Y(Lmodule/bt/CmdBtSG9832;)Z

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lmodule/bt/CmdBtSG9832;->Z(Lmodule/bt/CmdBtSG9832;ZZZ)V

    goto :goto_2

    .line 15
    :cond_4
    :goto_1
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$a;->b:Lmodule/bt/CmdBtSG9832;

    invoke-static {v0}, Lmodule/bt/CmdBtSG9832;->X(Lmodule/bt/CmdBtSG9832;)Z

    move-result v1

    iget-object v3, p0, Lmodule/bt/CmdBtSG9832$a;->b:Lmodule/bt/CmdBtSG9832;

    invoke-static {v3}, Lmodule/bt/CmdBtSG9832;->Y(Lmodule/bt/CmdBtSG9832;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lmodule/bt/CmdBtSG9832;->Z(Lmodule/bt/CmdBtSG9832;ZZZ)V

    goto :goto_2

    .line 16
    :cond_5
    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$a;->b:Lmodule/bt/CmdBtSG9832;

    invoke-static {v0}, Lmodule/bt/CmdBtSG9832;->X(Lmodule/bt/CmdBtSG9832;)Z

    move-result v4

    sget v5, Lu0/b;->D:I

    if-ne v5, v3, :cond_6

    move v1, v2

    :cond_6
    iget-object v2, p0, Lmodule/bt/CmdBtSG9832$a;->b:Lmodule/bt/CmdBtSG9832;

    invoke-static {v2}, Lmodule/bt/CmdBtSG9832;->Y(Lmodule/bt/CmdBtSG9832;)Z

    move-result v2

    invoke-static {v0, v4, v1, v2}, Lmodule/bt/CmdBtSG9832;->Z(Lmodule/bt/CmdBtSG9832;ZZZ)V

    :cond_7
    :goto_2
    return-void
.end method
