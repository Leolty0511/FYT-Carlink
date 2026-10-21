.class public Lq0/e;
.super Ly/c$a;
.source "SourceFile"


# static fields
.field public static a:Lq0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly/c$a;-><init>()V

    return-void
.end method

.method public static declared-synchronized K2()Lq0/e;
    .locals 2

    const-class v0, Lq0/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lq0/e;->a:Lq0/e;

    if-nez v1, :cond_0

    new-instance v1, Lq0/e;

    invoke-direct {v1}, Lq0/e;-><init>()V

    sput-object v1, Lq0/e;->a:Lq0/e;

    .line 2
    :cond_0
    sget-object v1, Lq0/e;->a:Lq0/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0xa

    if-ge p2, v0, :cond_1

    .line 1
    sget-object v0, Lq0/b;->c:[Lo1/x;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lq0/b;->d:Lo1/x;

    invoke-static {v0, p1, p2}, Lo1/x;->o(Lo1/x;Ly/b;I)V

    :cond_1
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_3

    const/16 v0, 0xa

    if-ge p2, v0, :cond_3

    .line 1
    sget-object v0, Lq0/b;->c:[Lo1/x;

    aget-object v1, v0, p2

    if-nez v1, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    aget-object v1, v0, p2

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lq0/b;->d:Lo1/x;

    aput-object v1, v0, p2

    .line 5
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_2
    :goto_0
    sget-object v0, Lq0/b;->d:Lo1/x;

    invoke-static {v0, p1, p2}, Lo1/x;->k(Lo1/x;Ly/b;I)V

    :cond_3
    if-nez p3, :cond_4

    return-void

    :cond_4
    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    goto :goto_1

    :cond_5
    new-array v0, v0, [I

    .line 7
    sget v1, Lq0/b;->f:I

    aput v1, v0, p3

    invoke-static {p1, p2, v0}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_1

    :cond_6
    new-array v0, v0, [I

    .line 8
    sget v1, Lq0/b;->e:I

    aput v1, v0, p3

    invoke-static {p1, p2, v0}, Lo1/x;->v(Ly/b;I[I)V

    :goto_1
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p2, p4}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    sget-object p1, Lq0/b;->b:Lq0/d;

    aget p2, p2, p3

    invoke-interface {p1, p2}, Lq0/d;->e(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2, p4}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lq0/b;->b:Lq0/d;

    aget p2, p2, p3

    invoke-interface {p1, p2}, Lq0/d;->f(I)V

    :cond_2
    :goto_0
    return-void
.end method
