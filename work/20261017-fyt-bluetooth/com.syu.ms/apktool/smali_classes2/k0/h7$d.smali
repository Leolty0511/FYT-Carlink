.class public Lk0/h7$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/h7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public final d:I


# virtual methods
.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lk0/h7$d;->b:I

    .line 2
    iget-boolean p1, p0, Lk0/h7$d;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lk0/h7$d;->c:Z

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget v0, p0, Lk0/h7$d;->d:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized run()V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v4, 0x90

    const/4 v5, 0x1

    aput v4, v1, v5

    const/4 v6, 0x2

    aput v6, v1, v6

    .line 1
    iget v7, p0, Lk0/h7$d;->a:I

    const/4 v8, 0x3

    aput v7, v1, v8

    iget v7, p0, Lk0/h7$d;->b:I

    const/4 v9, 0x4

    aput v7, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    .line 2
    iget v1, p0, Lk0/h7$d;->a:I

    if-eq v1, v8, :cond_0

    if-eq v1, v9, :cond_0

    if-ne v1, v0, :cond_6

    .line 3
    :cond_0
    sget v1, Ly0/f;->a0:I

    const/4 v7, 0x7

    if-eq v1, v6, :cond_5

    if-eq v1, v9, :cond_1

    if-eq v1, v0, :cond_4

    const/4 v10, 0x6

    if-eq v1, v10, :cond_3

    if-eq v1, v7, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    move v1, v9

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_0

    :cond_5
    move v1, v8

    :goto_0
    new-array v0, v0, [I

    aput v2, v0, v3

    aput v4, v0, v5

    aput v6, v0, v6

    aput v7, v0, v8

    aput v1, v0, v9

    .line 4
    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_6
    iput-boolean v3, p0, Lk0/h7$d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
