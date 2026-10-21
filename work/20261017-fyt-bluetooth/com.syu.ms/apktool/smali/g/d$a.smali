.class public Lg/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/d;


# direct methods
.method public constructor <init>(Lg/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/d$a;->a:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "boot.car.reverse"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lg/d$a;->a:Lg/d;

    invoke-static {v0, v2}, Lg/d;->i(Lg/d;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lg/d$a;->a:Lg/d;

    invoke-static {v0}, Lg/d;->h(Lg/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lg/d$a;->a:Lg/d;

    invoke-static {v0, v1}, Lg/d;->i(Lg/d;Z)Z

    .line 6
    invoke-static {v1}, Lo1/q0;->H(I)V

    .line 7
    :cond_1
    sget v0, Lu0/b;->o:I

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 8
    :cond_2
    sget v0, Lu0/b;->o4:I

    if-eqz v0, :cond_3

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_3

    .line 9
    sget v0, Lu0/b;->o4:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lg/d$a;->a:Lg/d;

    invoke-static {v3}, Lg/d;->j(Lg/d;)I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 11
    iget-object v3, p0, Lg/d$a;->a:Lg/d;

    invoke-static {v3, v0}, Lg/d;->k(Lg/d;I)I

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    if-ltz v0, :cond_6

    const/16 v4, 0xb

    if-ge v0, v4, :cond_6

    .line 12
    iget-object v4, p0, Lg/d$a;->a:Lg/d;

    invoke-static {v4}, Lg/d;->l(Lg/d;)I

    move-result v4

    if-ne v4, v0, :cond_5

    if-eqz v3, :cond_6

    .line 13
    :cond_5
    iget-object v3, p0, Lg/d$a;->a:Lg/d;

    invoke-static {v3, v0}, Lg/d;->m(Lg/d;I)I

    .line 14
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v3

    iget-object v4, p0, Lg/d$a;->a:Lg/d;

    invoke-static {v4}, Lg/d;->n(Lg/d;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v3, v4}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 15
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v3

    iget-object v4, p0, Lg/d$a;->a:Lg/d;

    invoke-static {v4}, Lg/d;->n(Lg/d;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    :cond_6
    if-eqz v0, :cond_7

    const/16 v0, 0x45

    new-array v2, v2, [I

    .line 16
    sget v3, Lu0/b;->r4:I

    aput v3, v2, v1

    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
