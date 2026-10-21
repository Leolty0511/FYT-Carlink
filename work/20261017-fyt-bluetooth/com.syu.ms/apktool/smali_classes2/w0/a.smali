.class public Lw0/a;
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
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0xd
    .end array-data
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x5
    .end array-data
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
    invoke-virtual {p0, v1}, Lw0/a;->C(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lw0/a;->C(I)V

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
    .locals 0

    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw0/a;->D()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0xa
    .end array-data
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x10
    .end array-data
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 4

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    aput v0, v1, v3

    const/4 v0, 0x2

    add-int/lit8 p1, p1, 0x21

    aput p1, v1, v0

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x9
    .end array-data
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
    .end array-data
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x11
    .end array-data
.end method

.method public j(I)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lw0/f;->n(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    const/16 v4, 0xc

    if-ge p1, v4, :cond_0

    new-array v4, v2, [I

    aput v3, v4, v1

    aput v2, v4, v3

    add-int/lit8 p1, p1, 0x40

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x13

    aput p1, v4, v0

    .line 2
    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    const/high16 v4, 0x10000

    if-lt p1, v4, :cond_1

    const v5, 0x10012

    if-ge p1, v5, :cond_1

    new-array v5, v2, [I

    aput v3, v5, v1

    aput v2, v5, v3

    add-int/lit8 p1, p1, 0x40

    sub-int/2addr p1, v4

    add-int/2addr p1, v3

    aput p1, v5, v0

    .line 3
    invoke-static {v5}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x12
    .end array-data
.end method

.method public l(II)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2a30

    .line 1
    invoke-static {p2, v3, p1}, Lo1/o0;->a(III)I

    move-result p1

    new-array p2, v0, [I

    const/16 v0, 0x25

    aput v0, p2, v3

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, p2, v2

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v1

    .line 2
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    sget p1, Lw0/d;->O:I

    mul-int/2addr p2, p1

    const p1, 0xffff

    div-int/2addr p2, p1

    .line 4
    invoke-virtual {p0, v3, p2}, Lw0/a;->l(II)V

    goto :goto_0

    .line 5
    :cond_2
    sget p1, Lw0/d;->M:I

    sget v0, Lw0/d;->L:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sub-int/2addr p2, v0

    .line 6
    sget v0, Lw0/d;->O:I

    mul-int/2addr p2, v0

    div-int/2addr p2, p1

    .line 7
    invoke-virtual {p0, v3, p2}, Lw0/a;->l(II)V

    goto :goto_0

    :cond_4
    if-ltz p2, :cond_5

    .line 8
    sget p1, Lw0/d;->O:I

    if-gt p2, p1, :cond_5

    const/4 p1, 0x6

    new-array p1, p1, [I

    const/16 v4, 0xe1

    aput v4, p1, v3

    const/4 v3, 0x5

    aput v3, p1, v2

    .line 9
    div-int/lit8 v2, p2, 0x64

    aput v2, p1, v1

    rem-int/lit8 p2, p2, 0x64

    aput p2, p1, v0

    const/4 p2, 0x4

    const/16 v0, 0xee

    aput v0, p1, p2

    aput v0, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public m(Ly/b;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public n(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x17
    .end array-data
.end method

.method public o(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x15
    .end array-data
.end method

.method public p(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0xb
    .end array-data
.end method

.method public q(I)V
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
    sget p1, Lw0/d;->D:I

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lw0/a;->q(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lw0/a;->q(I)V

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
        0xbc
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xbb
    .end array-data
.end method

.method public r(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lw0/d;->B:I

    if-eq p1, v1, :cond_2

    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    sget p1, Lw0/d;->B:I

    if-eqz p1, :cond_2

    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x80
    .end array-data
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public s(I)V
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
    sget p1, Lw0/d;->w:I

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lw0/a;->s(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lw0/a;->s(I)V

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
        0x9f
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x9e
    .end array-data
.end method

.method public save()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x8
    .end array-data
.end method

.method public t(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public u(I)V
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
    sget p1, Lw0/d;->t:I

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lw0/a;->u(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lw0/a;->u(I)V

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
        0x61
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x60
    .end array-data
.end method

.method public v(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public w(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x16
    .end array-data
.end method

.method public x(I)V
    .locals 6

    const/4 v0, -0x3

    const v1, 0x10003

    const/high16 v2, 0x10000

    const/4 v3, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    const/4 v4, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    const/4 v5, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    new-array v1, v5, [I

    aput v3, v1, v4

    aput v5, v1, v3

    sub-int/2addr p1, v4

    add-int/lit8 p1, p1, 0x1d

    aput p1, v1, v0

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_0
    if-lt p1, v2, :cond_7

    if-ge p1, v1, :cond_7

    new-array v1, v5, [I

    aput v3, v1, v4

    aput v5, v1, v3

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1a

    aput p1, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    new-array p1, v5, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 4
    :cond_2
    sget p1, Lw0/d;->h:I

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0, v4}, Lw0/a;->x(I)V

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0, v3}, Lw0/a;->x(I)V

    goto :goto_1

    .line 7
    :cond_4
    sget p1, Lw0/d;->h:I

    add-int/2addr p1, v3

    if-lt p1, v2, :cond_6

    if-lt p1, v1, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0, p1}, Lw0/a;->x(I)V

    goto :goto_1

    .line 9
    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lw0/a;->x(I)V

    :cond_7
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x18
    .end array-data
.end method

.method public y(II)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x3

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_4

    goto :goto_0

    :cond_4
    new-array p1, v2, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, v2, [I

    .line 4
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x9b
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x9a
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x9d
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x9c
    .end array-data
.end method

.method public z(I)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    const/16 v4, 0xc

    if-ge p1, v4, :cond_0

    new-array v4, v2, [I

    aput v3, v4, v1

    aput v2, v4, v3

    add-int/lit16 p1, p1, 0x80

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x65

    aput p1, v4, v0

    .line 1
    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    const/high16 v4, 0x10000

    if-lt p1, v4, :cond_1

    const v5, 0x10012

    if-ge p1, v5, :cond_1

    new-array v5, v2, [I

    aput v3, v5, v1

    aput v2, v5, v3

    add-int/lit16 p1, p1, 0x80

    sub-int/2addr p1, v4

    add-int/2addr p1, v3

    aput p1, v5, v0

    .line 2
    invoke-static {v5}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method
