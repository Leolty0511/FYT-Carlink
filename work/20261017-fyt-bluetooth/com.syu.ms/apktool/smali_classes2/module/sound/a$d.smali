.class public Lmodule/sound/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lmodule/sound/a;


# direct methods
.method public constructor <init>(Lmodule/sound/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/a$d;->b:Lmodule/sound/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmodule/sound/a$d;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "ii2s.on"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    iget v3, p0, Lmodule/sound/a$d;->a:I

    if-eq v3, v2, :cond_0

    .line 4
    iput v2, p0, Lmodule/sound/a$d;->a:I

    .line 5
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v2

    iget-object v3, p0, Lmodule/sound/a$d;->b:Lmodule/sound/a;

    invoke-static {v3}, Lmodule/sound/a;->H1(Lmodule/sound/a;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v2, p0, Lmodule/sound/a$d;->b:Lmodule/sound/a;

    iput-boolean v1, v2, Lmodule/sound/a;->q1:Z

    .line 7
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v1

    iget-object v2, p0, Lmodule/sound/a$d;->b:Lmodule/sound/a;

    invoke-static {v2}, Lmodule/sound/a;->H1(Lmodule/sound/a;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "0"

    .line 8
    invoke-static {v0, v1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 9
    iput v1, p0, Lmodule/sound/a$d;->a:I

    .line 10
    :cond_1
    :goto_0
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
