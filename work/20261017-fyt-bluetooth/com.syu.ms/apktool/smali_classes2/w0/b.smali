.class public Lw0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x12

    aput v1, p1, v0

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0, p1}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public B()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 1
    invoke-static {v1, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public C(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lw0/d;->C:I

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lw0/b;->C(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lw0/b;->C(I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x63
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x62
    .end array-data
.end method

.method public final D()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lg/e;->g()I

    :goto_0
    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw0/b;->D()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/16 v1, 0x1c

    .line 1
    invoke-static {v1, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 1
    invoke-static {v1, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lw0/f;->h(I)V

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0, v1}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 1
    invoke-static {v1, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 1
    invoke-static {v1, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public j(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/16 p1, 0x1c

    .line 1
    invoke-static {p1, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public k()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 1
    invoke-static {v1, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public l(II)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lu0/b;->D:I

    if-ne p1, v0, :cond_1

    const/16 p1, 0x1c

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xd

    aput v3, v1, v2

    aput p2, v1, v0

    .line 2
    invoke-static {p1, v1}, Lw0/f;->J(I[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m(Ly/b;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public n(I)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x14

    aput v1, p1, v0

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0, p1}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public o(I)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x15

    aput v1, p1, v0

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0, p1}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public p(I)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x11

    aput v1, p1, v0

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0, p1}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public q(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lw0/d;->D:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lw0/b;->q(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lw0/b;->q(I)V

    :goto_0
    return-void
.end method

.method public r(I)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public s(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lw0/d;->w:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lw0/b;->s(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lw0/b;->s(I)V

    :goto_0
    return-void
.end method

.method public save()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 1
    invoke-static {v1, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public t(I[I[F[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lw0/f;->K(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public u(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x10

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x1c

    .line 1
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Lw0/d;->t:I

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lw0/b;->u(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v3}, Lw0/b;->u(I)V

    .line 5
    :goto_0
    sget v1, Lu0/b;->B4:I

    if-ne v1, v0, :cond_2

    const/16 v0, 0xb2

    .line 6
    invoke-static {v0, p1}, Lm1/c;->g(II)V

    :cond_2
    return-void
.end method

.method public v(I)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x16

    aput v1, p1, v0

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0, p1}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public w(I)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x13

    aput v1, p1, v0

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0, p1}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public x(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/16 p1, 0x1c

    .line 1
    invoke-static {p1, v0}, Lw0/f;->J(I[I)V

    return-void
.end method

.method public y(II)V
    .locals 0

    return-void
.end method

.method public z(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/16 p1, 0x1c

    .line 1
    invoke-static {p1, v0}, Lw0/f;->J(I[I)V

    return-void
.end method
