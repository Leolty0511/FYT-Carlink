.class public Lk0/j4;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/j4;->c:I

    const/16 v1, 0xc

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v2, 0xb

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/j4;->d:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v3, Ll0/g0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v3, Ll0/g0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 8

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_c

    const/16 p3, 0x72

    const/16 v1, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, p3, :cond_6

    const/16 p3, 0x73

    if-eq v0, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    new-array v0, v4, [I

    shr-int/lit8 v5, p3, 0x2

    and-int/2addr v5, v4

    aput v5, v0, v3

    const/16 v5, 0xe

    .line 3
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v4

    aput v5, v0, v3

    const/16 v5, 0xd

    .line 4
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v0, p3, 0x30

    const/16 v5, 0x10

    const/16 v6, 0xc

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    const/16 v7, 0x30

    if-eq v0, v7, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v4, [I

    aput v2, v0, v3

    .line 5
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v0, v4, [I

    aput v4, v0, v3

    .line 6
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v0, v4, [I

    aput v3, v0, v3

    .line 7
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v0, v4, [I

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v4

    aput p3, v0, v3

    const/16 p3, 0xa

    .line 8
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 9
    aget-byte p3, p1, p3

    const/16 v0, 0x41

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x4

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 10
    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v6, p3, 0x5

    and-int/2addr v6, v4

    aput v6, v0, v3

    .line 11
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v4

    aput v5, v0, v3

    const/16 v5, 0xb

    .line 12
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1d

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x0

    and-int/lit8 v6, v6, 0x3

    aput v6, v5, v3

    .line 13
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1e

    new-array v5, v4, [I

    shr-int/2addr p3, v2

    and-int/lit8 p3, p3, 0x3

    aput p3, v5, v3

    .line 14
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 15
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/16 v0, 0x1c

    const/16 v2, 0x1b

    if-eqz p3, :cond_4

    new-array p3, v4, [I

    add-int/lit8 v5, p2, 0x5

    .line 16
    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    aput v5, p3, v3

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/lit8 v2, p2, 0x4

    .line 17
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    aput v2, p3, v3

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array p3, v4, [I

    add-int/lit8 v5, p2, 0x4

    .line 18
    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    aput v5, p3, v3

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/lit8 v2, p2, 0x5

    .line 19
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    aput v2, p3, v3

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 p3, p2, 0x6

    .line 20
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x4

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 21
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 22
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 23
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v2, v4, [I

    shr-int/2addr p3, v3

    and-int/lit8 p3, p3, 0xf

    aput p3, v2, v3

    .line 24
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x7

    .line 25
    aget-byte p3, p1, p3

    const/16 v0, 0x16

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x4

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 26
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x17

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 27
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x18

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 28
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x19

    new-array v2, v4, [I

    shr-int/2addr p3, v3

    and-int/lit8 p3, p3, 0xf

    aput p3, v2, v3

    .line 29
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 30
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p2, p2, 0x8

    .line 31
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const/16 p2, 0x50

    if-lt p1, p2, :cond_5

    mul-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, 0x3e8

    add-int/lit16 p1, p1, -0x190

    goto :goto_2

    :cond_5
    mul-int/lit8 p1, p1, 0x5

    rsub-int p1, p1, 0x190

    rsub-int p1, p1, 0x3e8

    :goto_2
    const/16 p2, 0x258

    if-le p1, p2, :cond_d

    .line 32
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_6

    :cond_6
    const/16 p3, 0x62

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x3

    .line 33
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 34
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p3, p2, 0x6

    .line 35
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    const/16 v2, 0x86

    invoke-static {p3, v0, v2}, Lk0/qt;->p(III)V

    add-int/lit8 p3, p2, 0x4

    .line 36
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    iput p3, p0, Lk0/j4;->c:I

    move p3, v3

    .line 37
    :goto_3
    iget-object v0, p0, Lk0/j4;->d:[[I

    array-length v2, v0

    if-ge p3, v2, :cond_8

    .line 38
    iget v2, p0, Lk0/j4;->c:I

    aget-object v5, v0, p3

    aget v5, v5, v3

    if-ne v2, v5, :cond_7

    if-eqz v2, :cond_8

    .line 39
    iput p3, p0, Lk0/j4;->b:I

    goto :goto_4

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 40
    :cond_8
    :goto_4
    iget v2, p0, Lk0/j4;->c:I

    if-eqz v2, :cond_9

    .line 41
    array-length v1, v0

    if-ge p3, v1, :cond_b

    .line 42
    aget-object p3, v0, p3

    aget p3, p3, v4

    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 43
    :cond_9
    iget p3, p0, Lk0/j4;->b:I

    array-length v2, v0

    if-ge p3, v2, :cond_a

    if-eq p3, v1, :cond_a

    .line 44
    aget-object p3, v0, p3

    aget p3, p3, v4

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    .line 45
    :cond_a
    iput v1, p0, Lk0/j4;->b:I

    :cond_b
    :goto_5
    add-int/lit8 p3, p2, 0x2

    .line 46
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x5

    and-int/2addr p3, v4

    invoke-static {p3}, Lu0/d;->C2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 47
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x9

    .line 48
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0xa

    .line 49
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0xb

    .line 50
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0xc

    .line 51
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0xd

    .line 52
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0xe

    .line 53
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0xf

    .line 54
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_6

    .line 55
    :cond_c
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v1, Ll0/g0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v1, Ll0/g0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/16 p3, 0x81

    const/16 p4, 0x82

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_7

    .line 1
    array-length p1, p2

    if-lez p1, :cond_7

    const/4 p1, 0x0

    .line 2
    aget p1, p2, p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lk0/j4;->b3(I)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x83

    .line 4
    invoke-virtual {p0, p1}, Lk0/j4;->a3(I)V

    goto :goto_1

    .line 5
    :cond_3
    sget p1, Lk0/nt;->c:I

    if-ne p1, v0, :cond_4

    .line 6
    invoke-virtual {p0, p4}, Lk0/j4;->a3(I)V

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p0, p3}, Lk0/j4;->a3(I)V

    goto :goto_1

    .line 8
    :cond_5
    sget p1, Lk0/nt;->c:I

    if-ne p1, v0, :cond_6

    .line 9
    invoke-virtual {p0, p3}, Lk0/j4;->a3(I)V

    goto :goto_1

    .line 10
    :cond_6
    invoke-virtual {p0, p4}, Lk0/j4;->a3(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final a3(I)V
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0xd

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v4, -0x2e

    aput v4, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput v2, v0, p1

    const/4 p1, 0x5

    aput v2, v0, p1

    const/4 p1, 0x6

    aput v2, v0, p1

    const/4 p1, 0x7

    aput v2, v0, p1

    const/16 p1, 0x8

    aput v2, v0, p1

    const/16 p1, 0x9

    aput v2, v0, p1

    const/16 p1, 0xa

    aput v2, v0, p1

    const/16 p1, 0xb

    aput v2, v0, p1

    const/16 p1, 0xc

    aput v2, v0, p1

    aput v2, v0, v3

    const/16 p1, 0xe

    aput v2, v0, p1

    const/16 p1, 0xf

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public b3(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x7c

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
