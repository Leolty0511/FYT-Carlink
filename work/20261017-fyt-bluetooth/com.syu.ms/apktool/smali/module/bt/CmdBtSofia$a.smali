.class public Lmodule/bt/CmdBtSofia$a;
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
.field public a:Z

.field public final synthetic b:Lmodule/bt/CmdBtSofia;


# direct methods
.method public constructor <init>(Lmodule/bt/CmdBtSofia;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/bt/CmdBtSofia$a;->b:Lmodule/bt/CmdBtSofia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/bt/CmdBtSofia$a;->b:Lmodule/bt/CmdBtSofia;

    invoke-static {v0, v1}, Lmodule/bt/CmdBtSofia;->X(Lmodule/bt/CmdBtSofia;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lmodule/bt/CmdBtSofia$a;->b:Lmodule/bt/CmdBtSofia;

    invoke-static {v0, v2}, Lmodule/bt/CmdBtSofia;->X(Lmodule/bt/CmdBtSofia;I)V

    .line 4
    :goto_0
    sget v0, Lu0/b;->D:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 5
    iget-boolean v0, p0, Lmodule/bt/CmdBtSofia$a;->a:Z

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v1, p0, Lmodule/bt/CmdBtSofia$a;->a:Z

    .line 7
    iget-object v0, p0, Lmodule/bt/CmdBtSofia$a;->b:Lmodule/bt/CmdBtSofia;

    invoke-virtual {v0}, Lmodule/bt/CmdBtSofia;->w()V

    goto :goto_1

    .line 8
    :cond_1
    sget v0, Lu0/b;->C:I

    if-ne v0, v3, :cond_2

    .line 9
    sget v0, Lh0/c;->N:I

    if-ne v0, v2, :cond_2

    .line 10
    iput-boolean v2, p0, Lmodule/bt/CmdBtSofia$a;->a:Z

    .line 11
    iget-object v0, p0, Lmodule/bt/CmdBtSofia$a;->b:Lmodule/bt/CmdBtSofia;

    invoke-virtual {v0}, Lmodule/bt/CmdBtSofia;->E()V

    :cond_2
    :goto_1
    return-void
.end method
