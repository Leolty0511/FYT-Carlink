.class public Ls0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->i:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(III)V
    .locals 5

    .line 1
    sget-object v0, Ls0/c;->r:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, p0, :cond_0

    aget v2, v0, v4

    if-ne v2, p1, :cond_0

    aget v2, v0, v3

    if-eq v2, p2, :cond_1

    .line 2
    :cond_0
    aput p0, v0, v1

    .line 3
    aput p1, v0, v4

    .line 4
    aput p2, v0, v3

    .line 5
    sget-object p0, Ls0/c;->c:[Lo1/x;

    const/16 p1, 0x9

    sget-object p2, Ls0/c;->r:[I

    invoke-static {p0, p1, p2}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_1
    return-void
.end method

.method public static c(I)V
    .locals 2

    .line 1
    sget-object v0, Ls0/c;->c:[Lo1/x;

    const/16 v1, 0x10

    invoke-static {v0, v1, p0}, Lo1/x;->x([Lo1/x;II)V

    return-void
.end method

.method public static d(II)V
    .locals 4

    .line 1
    sget-object v0, Ls0/c;->x:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p0, :cond_0

    aget v2, v0, v3

    if-eq v2, p1, :cond_1

    .line 2
    :cond_0
    aput p0, v0, v1

    .line 3
    aput p1, v0, v3

    .line 4
    sget-object p0, Ls0/c;->c:[Lo1/x;

    const/16 p1, 0xf

    sget-object v0, Ls0/c;->x:[I

    invoke-static {p0, p1, v0}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_1
    return-void
.end method

.method public static e(II)V
    .locals 4

    .line 1
    sget-object v0, Ls0/c;->u:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p0, :cond_0

    aget v2, v0, v3

    if-eq v2, p1, :cond_1

    .line 2
    :cond_0
    aput p0, v0, v1

    .line 3
    aput p1, v0, v3

    .line 4
    sget-object p0, Ls0/c;->c:[Lo1/x;

    const/16 p1, 0xc

    sget-object v0, Ls0/c;->u:[I

    invoke-static {p0, p1, v0}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_1
    return-void
.end method

.method public static f(II)V
    .locals 4

    .line 1
    sget-object v0, Ls0/c;->v:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p0, :cond_0

    aget v2, v0, v3

    if-eq v2, p1, :cond_1

    .line 2
    :cond_0
    aput p0, v0, v1

    .line 3
    aput p1, v0, v3

    .line 4
    sget-object p0, Ls0/c;->c:[Lo1/x;

    const/16 p1, 0xd

    sget-object v0, Ls0/c;->v:[I

    invoke-static {p0, p1, v0}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_1
    return-void
.end method

.method public static g(II)V
    .locals 4

    .line 1
    sget-object v0, Ls0/c;->v:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p0, :cond_0

    aget v2, v0, v3

    if-eq v2, p1, :cond_1

    .line 2
    :cond_0
    aput p0, v0, v1

    .line 3
    aput p1, v0, v3

    .line 4
    sget-object p0, Ls0/c;->c:[Lo1/x;

    const/16 p1, 0xe

    sget-object v0, Ls0/c;->v:[I

    invoke-static {p0, p1, v0}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_1
    return-void
.end method

.method public static h(I)V
    .locals 2

    .line 1
    sget v0, Ls0/c;->e:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ls0/c;->e:I

    .line 3
    sget-object v0, Ls0/c;->c:[Lo1/x;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lo1/x;->x([Lo1/x;II)V

    :cond_0
    return-void
.end method

.method public static i(III)V
    .locals 5

    .line 1
    sget-object v0, Ls0/c;->s:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, p0, :cond_0

    aget v2, v0, v4

    if-ne v2, p1, :cond_0

    aget v2, v0, v3

    if-eq v2, p2, :cond_1

    .line 2
    :cond_0
    aput p0, v0, v1

    .line 3
    aput p1, v0, v4

    .line 4
    aput p2, v0, v3

    .line 5
    sget-object p0, Ls0/c;->c:[Lo1/x;

    const/16 p1, 0xa

    sget-object p2, Ls0/c;->s:[I

    invoke-static {p0, p1, p2}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_1
    return-void
.end method

.method public static j(I)V
    .locals 2

    .line 1
    sget-object v0, Ls0/c;->c:[Lo1/x;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lo1/x;->x([Lo1/x;II)V

    return-void
.end method

.method public static declared-synchronized k(I)V
    .locals 2

    const-class v0, Ls0/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Ls0/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget-object v1, Ls0/c;->b:Ls0/e;

    invoke-interface {v1}, Ls0/e;->b()V

    .line 3
    sput p0, Ls0/c;->a:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    .line 4
    new-instance p0, Ls0/e$a;

    invoke-direct {p0}, Ls0/e$a;-><init>()V

    sput-object p0, Ls0/c;->b:Ls0/e;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ls0/b;

    invoke-direct {p0}, Ls0/b;-><init>()V

    sput-object p0, Ls0/c;->b:Ls0/e;

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Ls0/a;

    invoke-direct {p0}, Ls0/a;-><init>()V

    sput-object p0, Ls0/c;->b:Ls0/e;

    .line 7
    :goto_0
    sget-object p0, Ls0/c;->b:Ls0/e;

    invoke-interface {p0}, Ls0/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static l(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->i:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static m(I)V
    .locals 2

    .line 1
    sget-object v0, Ls0/c;->c:[Lo1/x;

    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Lo1/x;->x([Lo1/x;II)V

    return-void
.end method

.method public static n(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0xb4

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x81

    const/4 v3, 0x1

    aput v1, v0, v3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 p0, 0x2

    aput v2, v0, p0

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static o(III)V
    .locals 5

    .line 1
    sget-object v0, Ls0/c;->t:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, p0, :cond_0

    aget v2, v0, v4

    if-ne v2, p1, :cond_0

    aget v2, v0, v3

    if-eq v2, p2, :cond_1

    .line 2
    :cond_0
    aput p0, v0, v1

    .line 3
    aput p1, v0, v4

    .line 4
    aput p2, v0, v3

    .line 5
    sget-object p0, Ls0/c;->c:[Lo1/x;

    const/16 p1, 0xb

    sget-object p2, Ls0/c;->t:[I

    invoke-static {p0, p1, p2}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_1
    return-void
.end method
