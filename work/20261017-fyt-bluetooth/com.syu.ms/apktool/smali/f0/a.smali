.class public abstract Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Lf0/a$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf0/a;->b:Z

    .line 3
    iput-boolean v0, p0, Lf0/a;->c:Z

    .line 4
    iput-boolean v0, p0, Lf0/a;->d:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lf0/a;->e:I

    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "amp-work"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lf0/a;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    .line 9
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/a;->f:Lf0/a$a;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lf0/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Lf0/a;->f:Lf0/a$a;

    iput p1, v0, Lf0/a$a;->a:I

    :cond_0
    if-ltz p2, :cond_1

    .line 4
    iget-object p1, p0, Lf0/a;->f:Lf0/a$a;

    iput p2, p1, Lf0/a$a;->b:I

    .line 5
    :cond_1
    iget-object p1, p0, Lf0/a;->f:Lf0/a$a;

    iput p3, p1, Lf0/a$a;->c:I

    .line 6
    iput p4, p1, Lf0/a$a;->d:I

    goto :goto_0

    .line 7
    :cond_2
    new-instance p2, Lf0/a$a;

    invoke-direct {p2, p0, p1, p3, p4}, Lf0/a$a;-><init>(Lf0/a;III)V

    iput-object p2, p0, Lf0/a;->f:Lf0/a$a;

    .line 8
    :goto_0
    iget-object p1, p0, Lf0/a;->a:Landroid/os/Handler;

    iget-object p2, p0, Lf0/a;->f:Lf0/a$a;

    const-wide/16 p3, 0x32

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public abstract c(I[I[F[Ljava/lang/String;)Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()V
.end method

.method public f(Z)V
    .locals 0

    return-void
.end method

.method public abstract g()V
.end method

.method public abstract h(Ly/b;I)Z
.end method

.method public i(III)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 3
    :goto_0
    iget-boolean v0, p0, Lf0/a;->b:Z

    if-eq v2, v0, :cond_2

    .line 4
    iput-boolean v2, p0, Lf0/a;->b:Z

    if-eqz v2, :cond_1

    .line 5
    iget-boolean v0, p0, Lf0/a;->d:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lf0/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lf0/a;->d:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lf0/a;->g()V

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 8
    iget-boolean v0, p0, Lf0/a;->d:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lf0/a;->a()V

    .line 10
    iput-boolean v1, p0, Lf0/a;->d:Z

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lf0/a;->e()V

    .line 12
    iget-object v0, p0, Lf0/a;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
