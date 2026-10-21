.class public Lo1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/v$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo1/v$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo1/v;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lo1/v;->d:I

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lo1/v;->a:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lo1/o;I)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lo1/v;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    if-gez p2, :cond_2

    .line 3
    :try_start_1
    iget-object v1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/v$a;

    iget v1, v1, Lo1/v$a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v1, :cond_2

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 6
    iget-object v1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/v$a;

    iget v1, v1, Lo1/v$a;->b:I

    if-ge p2, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_4
    :goto_1
    iget-object v1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    new-instance v2, Lo1/v$a;

    invoke-direct {v2, p0, p1, p2}, Lo1/v$a;-><init>(Lo1/v;Lo1/o;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-gez p2, :cond_5

    .line 8
    iget p1, p0, Lo1/v;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo1/v;->d:I

    goto :goto_2

    .line 9
    :cond_5
    iget p1, p0, Lo1/v;->d:I

    if-gt v0, p1, :cond_6

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo1/v;->c:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    sub-int/2addr p2, p1

    if-ltz p2, :cond_6

    .line 11
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    invoke-static {p1, p0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 12
    iget p1, p0, Lo1/v;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo1/v;->d:I

    .line 13
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    int-to-long v0, p2

    invoke-static {p1, p0, v0, v1}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget v0, p0, Lo1/v;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iput v1, p0, Lo1/v;->d:I

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-static {v0, p0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(II)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Lo1/v;->d:I

    if-eq p1, v0, :cond_0

    .line 3
    iput v0, p0, Lo1/v;->d:I

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    invoke-static {p1, p0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    iget-object p1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_7

    .line 7
    iget-object p1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/v$a;

    iget-object v0, p1, Lo1/v$a;->a:Lo1/o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_5

    .line 8
    iget p1, p0, Lo1/v;->d:I

    if-eq p1, v0, :cond_3

    .line 9
    iput v0, p0, Lo1/v;->d:I

    .line 10
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    invoke-static {p1, p0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 11
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo1/v;->c:J

    .line 12
    iput v2, p0, Lo1/v;->d:I

    .line 13
    iget-object p1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/v$a;

    iget p1, p1, Lo1/v$a;->b:I

    if-gez p1, :cond_4

    .line 14
    iput v1, p0, Lo1/v;->d:I

    .line 15
    :cond_4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Lo1/v;->b:Ljava/util/ArrayList;

    iget v0, p0, Lo1/v;->d:I

    .line 16
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo1/v$a;

    iget p2, p2, Lo1/v$a;->b:I

    int-to-long v0, p2

    .line 17
    invoke-static {p1, p0, v0, v1}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 18
    :cond_5
    iget p1, p0, Lo1/v;->d:I

    if-eq p1, v0, :cond_6

    .line 19
    iput v0, p0, Lo1/v;->d:I

    .line 20
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    invoke-static {p1, p0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 21
    :cond_6
    iget-object p1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/v$a;

    iget p1, p1, Lo1/v$a;->b:I

    if-gez p1, :cond_7

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lo1/v;->c:J

    sub-long/2addr v0, v3

    neg-int p1, p1

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_7

    .line 23
    iget-object p1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/v$a;

    iget-object v0, p1, Lo1/v$a;->a:Lo1/o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Lo1/v;->d:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v0, p0, Lo1/v;->b:Ljava/util/ArrayList;

    iget v1, p0, Lo1/v;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo1/v$a;

    iget-object v0, v0, Lo1/v$a;->a:Lo1/o;

    :cond_0
    move-object v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    invoke-interface/range {v1 .. v6}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget v0, p0, Lo1/v;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo1/v;->d:I

    .line 5
    iget-object v1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Lo1/v;->b:Ljava/util/ArrayList;

    iget v1, p0, Lo1/v;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo1/v$a;

    iget v0, v0, Lo1/v$a;->b:I

    iget-object v1, p0, Lo1/v;->b:Ljava/util/ArrayList;

    iget v2, p0, Lo1/v;->d:I

    add-int/lit8 v2, v2, -0x1

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/v$a;

    iget v1, v1, Lo1/v$a;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lo1/v;->run()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v1, p0, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lo1/v;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
