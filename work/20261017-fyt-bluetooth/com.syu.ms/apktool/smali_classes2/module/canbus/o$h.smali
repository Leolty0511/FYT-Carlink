.class public Lmodule/canbus/o$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/o;


# direct methods
.method public constructor <init>(Lmodule/canbus/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/o$h;->a:Lmodule/canbus/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/canbus/o$h;->a:Lmodule/canbus/o;

    iput-boolean v1, v0, Lmodule/canbus/o;->R:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lmodule/canbus/o$h;->a:Lmodule/canbus/o;

    iget-boolean v3, v0, Lmodule/canbus/o;->R:Z

    if-nez v3, :cond_1

    .line 4
    iput-boolean v2, v0, Lmodule/canbus/o;->R:Z

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lmodule/canbus/o$h;->a:Lmodule/canbus/o;

    iput v1, v0, Lmodule/canbus/o;->Q:I

    .line 6
    sget v1, Lk0/nt;->c:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    const/16 v3, 0xe

    if-eq v1, v3, :cond_2

    const/16 v3, 0x1c

    if-eq v1, v3, :cond_2

    .line 7
    invoke-static {v0}, Lmodule/canbus/o;->i3(Lmodule/canbus/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lmodule/canbus/o$h;->a:Lmodule/canbus/o;

    iput-byte v2, v0, Lmodule/canbus/o;->V:B

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v0}, Lmodule/canbus/o;->j3(Lmodule/canbus/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lmodule/canbus/o$h;->a:Lmodule/canbus/o;

    invoke-static {v0}, Lmodule/canbus/o;->i3(Lmodule/canbus/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lmodule/canbus/o$h;->a:Lmodule/canbus/o;

    iput-byte v2, v0, Lmodule/canbus/o;->V:B

    :goto_1
    return-void
.end method
