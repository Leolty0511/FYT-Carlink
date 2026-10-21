.class public Landroid/view/HandlerActionQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandlerActionQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

.field private mCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeActions(Landroid/os/Handler;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 3
    .line 4
    iget v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_0

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    iget-object v5, v4, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 13
    .line 14
    iget-wide v6, v4, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    .line 15
    .line 16
    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 24
    .line 25
    iput v2, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public getDelay(I)J
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 6
    .line 7
    aget-object p1, v0, p1

    .line 8
    .line 9
    iget-wide v0, p1, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public getRunnable(I)Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 6
    .line 7
    aget-object p1, v0, p1

    .line 8
    .line 9
    iget-object p1, p1, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/HandlerActionQueue;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/HandlerActionQueue$HandlerAction;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Landroid/view/HandlerActionQueue$HandlerAction;-><init>(Ljava/lang/Runnable;J)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x4

    .line 12
    new-array p1, p1, [Landroid/view/HandlerActionQueue$HandlerAction;

    .line 13
    .line 14
    iput-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 17
    .line 18
    iget p2, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 19
    .line 20
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, [Landroid/view/HandlerActionQueue$HandlerAction;

    .line 25
    .line 26
    iput-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 27
    .line 28
    iget p1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    iput p1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 3
    .line 4
    iget-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v0, :cond_2

    .line 9
    .line 10
    aget-object v4, v1, v2

    .line 11
    .line 12
    invoke-virtual {v4, p1}, Landroid/view/HandlerActionQueue$HandlerAction;->matches(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    if-eq v3, v2, :cond_1

    .line 20
    .line 21
    aget-object v4, v1, v2

    .line 22
    .line 23
    aput-object v4, v1, v3

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iput v3, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 31
    .line 32
    :goto_2
    if-ge v3, v0, :cond_3

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    aput-object p1, v1, v3

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    return v0
.end method
