.class public Lmodule/bt/CmdBtSG9832$f;
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
    iput-object p1, p0, Lmodule/bt/CmdBtSG9832$f;->a:Lmodule/bt/CmdBtSG9832;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    iget-object v1, p0, Lmodule/bt/CmdBtSG9832$f;->a:Lmodule/bt/CmdBtSG9832;

    iget v1, v1, Lmodule/bt/CmdBtSG9832;->i:I

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ly/g;->L2(II)V

    return-void
.end method
