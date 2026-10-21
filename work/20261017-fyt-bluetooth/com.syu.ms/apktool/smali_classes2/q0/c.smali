.class public Lq0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized a(I)V
    .locals 2

    const-class v0, Lq0/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lq0/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sput p0, Lq0/b;->a:I

    .line 3
    sget-object v1, Lq0/b;->b:Lq0/d;

    invoke-interface {v1}, Lq0/d;->b()V

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    .line 4
    new-instance p0, Lq0/d$a;

    invoke-direct {p0}, Lq0/d$a;-><init>()V

    sput-object p0, Lq0/b;->b:Lq0/d;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Lq0/a;

    invoke-direct {p0}, Lq0/a;-><init>()V

    sput-object p0, Lq0/b;->b:Lq0/d;

    .line 6
    :goto_0
    sget-object p0, Lq0/b;->b:Lq0/d;

    invoke-interface {p0}, Lq0/d;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
