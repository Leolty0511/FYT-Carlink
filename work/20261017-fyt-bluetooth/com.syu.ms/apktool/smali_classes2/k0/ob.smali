.class public Lk0/ob;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/ob;->d:I

    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/ob;->e:[[I

    return-void

    nop

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
        0x8
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x4
        0xc
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public static b3(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_c

    const/16 p3, 0x41

    const/16 v1, 0xff

    if-eq v0, p3, :cond_b

    const/16 p3, 0x11

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, p3, :cond_2

    const/16 p3, 0x12

    if-eq v0, p3, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/2addr p2, v5

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 4
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 5
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 6
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 7
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 8
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 9
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 10
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 11
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p3, p2, 0x4

    .line 12
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 13
    aget-byte v0, p1, v0

    and-int/2addr p3, v1

    .line 14
    iput p3, p0, Lk0/ob;->c:I

    move p3, v6

    .line 15
    :goto_1
    iget-object v2, p0, Lk0/ob;->e:[[I

    array-length v8, v2

    if-ge p3, v8, :cond_4

    .line 16
    iget v8, p0, Lk0/ob;->c:I

    aget-object v9, v2, p3

    aget v9, v9, v6

    if-ne v8, v9, :cond_3

    if-eqz v8, :cond_4

    .line 17
    iput p3, p0, Lk0/ob;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 18
    array-length v0, v2

    if-ge p3, v0, :cond_a

    .line 19
    aget-object v0, v2, p3

    aget v0, v0, v6

    if-ne v0, v4, :cond_5

    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_5

    const/16 p3, 0xd

    .line 20
    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 21
    :cond_5
    aget-object v0, v2, p3

    aget v0, v0, v6

    const/4 v5, 0x6

    if-ne v0, v5, :cond_7

    sget v0, Lh0/c;->E:I

    if-lt v0, v3, :cond_6

    if-le v0, v4, :cond_7

    :cond_6
    const/16 p3, 0xc

    .line 22
    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 23
    :cond_7
    aget-object p3, v2, p3

    aget p3, p3, v7

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 24
    :cond_8
    iget p3, p0, Lk0/ob;->b:I

    array-length v0, v2

    if-ge p3, v0, :cond_9

    if-eq p3, v1, :cond_9

    .line 25
    aget-object p3, v2, p3

    aget p3, p3, v7

    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    .line 26
    :cond_9
    iput v1, p0, Lk0/ob;->b:I

    :cond_a
    :goto_3
    add-int/lit8 p3, p2, 0x9

    .line 27
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const/16 p2, 0x21c

    invoke-static {p3, p1, v7, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_4

    .line 28
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p3, p2, 0x2

    .line 29
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Lk0/ob;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Lk0/ob;->b3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Lk0/ob;->b3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Lk0/ob;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 33
    aget-byte v0, p1, p3

    and-int/2addr v0, v1

    invoke-static {v0}, Lk0/ob;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    .line 34
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Lk0/ob;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 35
    aget-byte p3, p1, p2

    and-int/2addr p3, v1

    invoke-static {p3}, Lk0/ob;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 36
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    invoke-static {p1}, Lk0/ob;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_4

    .line 37
    :cond_c
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_d
    :goto_4
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x61

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
    .locals 0

    return-void
.end method
