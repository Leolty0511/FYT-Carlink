.class public Lmodule/bt/CmdBtSG9832$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodule/bt/CmdBtSG9832$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/bt/CmdBtSG9832$d;


# direct methods
.method public constructor <init>(Lmodule/bt/CmdBtSG9832$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/bt/CmdBtSG9832$d$a;->a:Lmodule/bt/CmdBtSG9832$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lh0/f;->P(I)V

    return-void
.end method
