.class public Lmodule/canbus/r$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/r;


# direct methods
.method public constructor <init>(Lmodule/canbus/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/r$e;->a:Lmodule/canbus/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/canbus/r$e;->a:Lmodule/canbus/r;

    iget-byte v1, v0, Lmodule/canbus/r;->r:B

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/r;->r:B

    const/16 v3, 0x14

    if-ne v1, v3, :cond_1

    .line 2
    iput-boolean v2, v0, Lmodule/canbus/r;->h:Z

    .line 3
    iget v0, v0, Lmodule/canbus/r;->f:I

    const/4 v1, 0x0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v3, v1}, Ll0/b0;->l0(II)V

    .line 5
    invoke-static {v3, v2}, Ll0/b0;->l0(II)V

    .line 6
    :goto_0
    iget-object v0, p0, Lmodule/canbus/r$e;->a:Lmodule/canbus/r;

    invoke-static {v0}, Lmodule/canbus/r;->e3(Lmodule/canbus/r;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/r$e;->a:Lmodule/canbus/r;

    iput-byte v1, v0, Lmodule/canbus/r;->r:B

    :cond_1
    return-void
.end method
