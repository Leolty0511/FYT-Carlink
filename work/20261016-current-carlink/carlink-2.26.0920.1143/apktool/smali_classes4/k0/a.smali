.class public final Lk0/a;
.super Lkotlinx/coroutines/b;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lg0/c;


# instance fields
.field public final c:Lkotlinx/coroutines/b;

.field public final d:I

.field public final e:Lk0/b;

.field public final f:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/scheduling/l;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk0/a;->c:Lkotlinx/coroutines/b;

    .line 5
    .line 6
    iput p2, p0, Lk0/a;->d:I

    .line 7
    .line 8
    instance-of p2, p1, Lg0/c;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    check-cast p1, Lg0/c;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    sget p1, Lg0/b;->a:I

    .line 19
    .line 20
    :cond_1
    new-instance p1, Lk0/b;

    .line 21
    .line 22
    invoke-direct {p1}, Lk0/b;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lk0/a;->e:Lk0/b;

    .line 26
    .line 27
    new-instance p1, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lk0/a;->f:Ljava/lang/Object;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lu/g;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lk0/a;->e:Lk0/b;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lk0/b;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lk0/a;->runningWorkers:I

    .line 7
    .line 8
    iget p2, p0, Lk0/a;->d:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    .line 14
    move p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v1

    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    iget-object p1, p0, Lk0/a;->f:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    iget p2, p0, Lk0/a;->runningWorkers:I

    .line 24
    .line 25
    iget v2, p0, Lk0/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    if-lt p2, v2, :cond_2

    .line 28
    .line 29
    monitor-exit p1

    .line 30
    move v0, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :try_start_1
    iget p2, p0, Lk0/a;->runningWorkers:I

    .line 33
    .line 34
    add-int/2addr p2, v0

    .line 35
    iput p2, p0, Lk0/a;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    monitor-exit p1

    .line 38
    :goto_1
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget-object p1, p0, Lk0/a;->c:Lkotlinx/coroutines/b;

    .line 42
    .line 43
    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/b;->a(Lu/g;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :goto_2
    return-void

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    monitor-exit p1

    .line 49
    throw p2
.end method

.method public final run()V
    .locals 6

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    :cond_0
    iget-object v1, p0, Lk0/a;->e:Lk0/b;

    .line 3
    .line 4
    invoke-virtual {v1}, Lk0/b;->d()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Runnable;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 18
    .line 19
    :try_start_1
    sget-object v3, Le/b;->a:Le/b;

    .line 20
    .line 21
    invoke-interface {v2, v3}, Lu/g;->get(Lu/f;)Lu/e;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lg0/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    invoke-static {v2, v1}, Lkotlinx/coroutines/c;->a(Lkotlin/coroutines/EmptyCoroutineContext;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :try_start_2
    invoke-interface {v3, v2, v1}, Lg0/a;->handleException(Lu/g;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catchall_1
    move-exception v3

    .line 38
    if-ne v1, v3, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string v5, "Exception while trying to handle coroutine exception"

    .line 44
    .line 45
    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v1}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    move-object v1, v4

    .line 52
    :goto_1
    invoke-static {v2, v1}, Lkotlinx/coroutines/c;->a(Lkotlin/coroutines/EmptyCoroutineContext;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    if-lt v0, v1, :cond_0

    .line 60
    .line 61
    iget-object v1, p0, Lk0/a;->c:Lkotlinx/coroutines/b;

    .line 62
    .line 63
    invoke-virtual {v1}, Lkotlinx/coroutines/b;->b()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    iget-object v0, p0, Lk0/a;->c:Lkotlinx/coroutines/b;

    .line 70
    .line 71
    invoke-virtual {v0, p0, p0}, Lkotlinx/coroutines/b;->a(Lu/g;Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    iget-object v0, p0, Lk0/a;->f:Ljava/lang/Object;

    .line 76
    .line 77
    monitor-enter v0

    .line 78
    :try_start_3
    iget v1, p0, Lk0/a;->runningWorkers:I

    .line 79
    .line 80
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    iput v1, p0, Lk0/a;->runningWorkers:I

    .line 83
    .line 84
    iget-object v1, p0, Lk0/a;->e:Lk0/b;

    .line 85
    .line 86
    invoke-virtual {v1}, Lk0/b;->c()I

    .line 87
    .line 88
    .line 89
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :cond_4
    :try_start_4
    iget v1, p0, Lk0/a;->runningWorkers:I

    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    iput v1, p0, Lk0/a;->runningWorkers:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 99
    .line 100
    monitor-exit v0

    .line 101
    goto :goto_0

    .line 102
    :catchall_2
    move-exception v1

    .line 103
    monitor-exit v0

    .line 104
    throw v1
.end method
