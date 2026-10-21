.class public Lg/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/a;


# direct methods
.method public constructor <init>(Lg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a$f;->a:Lg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/a$f;->a:Lg/a;

    invoke-static {v0}, Lg/a;->c(Lg/a;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 4
    :cond_1
    sget v0, Lu0/b;->o4:I

    if-eqz v0, :cond_2

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_2

    sget v0, Lu0/b;->h:I

    if-nez v0, :cond_2

    .line 5
    sget v0, Lu0/b;->o4:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6
    :goto_0
    sget v3, Lg/a;->j:I

    if-eq v3, v0, :cond_3

    .line 7
    sput v0, Lg/a;->j:I

    move v1, v2

    :cond_3
    if-ltz v0, :cond_a

    const/16 v3, 0xb

    if-ge v0, v3, :cond_a

    .line 8
    sget-object v3, Lu0/b;->t4:[I

    aget v3, v3, v0

    .line 9
    iget-object v4, p0, Lg/a$f;->a:Lg/a;

    invoke-static {v4}, Lg/a;->e(Lg/a;)I

    move-result v4

    if-ne v4, v3, :cond_4

    if-eqz v1, :cond_7

    .line 10
    :cond_4
    iget-object v1, p0, Lg/a$f;->a:Lg/a;

    invoke-static {v1, v3}, Lg/a;->f(Lg/a;I)I

    .line 11
    sget v1, Lu0/b;->D:I

    if-ne v0, v2, :cond_6

    const/16 v2, 0x9

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 12
    :cond_5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, p0, Lg/a$f;->a:Lg/a;

    invoke-static {v2}, Lg/a;->g(Lg/a;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-static {v1, v2, v3, v4}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 13
    :cond_6
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, p0, Lg/a$f;->a:Lg/a;

    invoke-static {v2}, Lg/a;->g(Lg/a;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 14
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, p0, Lg/a$f;->a:Lg/a;

    invoke-static {v2}, Lg/a;->g(Lg/a;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 15
    :cond_7
    :goto_1
    invoke-static {}, Lg/e;->e()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_a

    const/4 v1, 0x5

    if-ne v0, v2, :cond_8

    .line 16
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    goto :goto_2

    :cond_8
    if-ne v0, v1, :cond_a

    .line 17
    sget v0, Lp0/b;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 18
    :cond_9
    sget-object v0, Lu0/b;->c:Lu0/h;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lu0/h;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_a
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
