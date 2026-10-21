.class public Lk0/zn;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[I

.field public c:I

.field public d:I

.field public e:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0x65

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lk0/zn;->b:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/zn;->d:I

    const/16 v1, 0x14

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v2, 0x13

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/zn;->e:[[I

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
        0x21
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x20
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x13
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x20
        0x4a
    .end array-data

    :array_e
    .array-data 4
        0x21
        0x36
    .end array-data

    :array_f
    .array-data 4
        0x22
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x23
        0x38
    .end array-data

    :array_11
    .array-data 4
        0x24
        0x35
    .end array-data

    :array_12
    .array-data 4
        0x30
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x31
        -0x1
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->j:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xff

    if-eq p3, v0, :cond_8

    const/16 v0, 0x41

    const v5, 0xff00

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq p3, v0, :cond_6

    const/16 v0, 0x26

    if-eq p3, v0, :cond_5

    const/16 v0, 0x27

    if-eq p3, v0, :cond_3

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-array p3, v3, [I

    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    aput v0, p3, v2

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v3, [I

    add-int/2addr p2, v1

    .line 3
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, p3, v2

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 4
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    add-int/lit8 v1, p2, 0x3

    .line 5
    aget-byte v5, p1, v1

    and-int/2addr v5, v4

    add-int/lit8 v8, p2, 0x4

    .line 6
    aget-byte v9, p1, v8

    and-int/2addr v9, v4

    add-int/2addr p2, v6

    .line 7
    aget-byte v6, p1, p2

    and-int/2addr v6, v4

    if-ne v0, v4, :cond_0

    if-ne v5, v4, :cond_0

    if-ne v9, v4, :cond_0

    if-ne v6, v4, :cond_0

    .line 8
    invoke-static {v2}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 9
    :cond_0
    sget v2, Ll0/c0;->g:I

    if-ne v2, v0, :cond_1

    sget v2, Ll0/c0;->h:I

    if-ne v2, v5, :cond_1

    sget v2, Ll0/c0;->i:I

    if-ne v2, v9, :cond_1

    sget v2, Ll0/c0;->j:I

    if-eq v2, v6, :cond_2

    .line 10
    :cond_1
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_2

    .line 11
    invoke-static {v3}, Lu0/d;->C2(I)V

    .line 12
    sput v7, Ll0/c0;->k:I

    .line 13
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 14
    :cond_2
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 15
    sput v5, Ll0/c0;->h:I

    .line 16
    sput v9, Ll0/c0;->i:I

    .line 17
    sput v6, Ll0/c0;->j:I

    .line 18
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 19
    aget-byte p3, p1, v1

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 20
    aget-byte p3, p1, v8

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 21
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->X0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 23
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 24
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v6

    .line 25
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->X0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    :cond_3
    new-array p3, v3, [I

    add-int/lit8 v0, p2, 0x3

    .line 26
    aget-byte v3, p1, v0

    and-int/2addr v3, v4

    aput v3, p3, v2

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    .line 27
    :goto_1
    aget-byte p3, p1, v0

    if-ge v2, p3, :cond_4

    add-int/lit8 p3, p2, 0x4

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr p3, v3

    .line 28
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr p3, v5

    add-int/lit8 v7, p2, 0x5

    add-int/2addr v7, v3

    aget-byte v3, p1, v7

    and-int/2addr v3, v4

    or-int/2addr p3, v3

    .line 29
    iget-object v3, p0, Lk0/zn;->b:[I

    aput p3, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 30
    :cond_4
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    iget-object p2, p0, Lk0/zn;->b:[I

    invoke-static {p1, v1, p2}, Lo1/x;->B([Lo1/x;I[I)V

    goto/16 :goto_4

    :cond_5
    add-int/lit8 p3, p2, 0x4

    .line 31
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x1784

    invoke-static {p3, p1, v2, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_4

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 32
    aget-byte p3, p1, p3

    if-eq p3, v8, :cond_7

    goto/16 :goto_4

    :cond_7
    new-array p3, v3, [I

    add-int/lit8 v0, p2, 0x3

    .line 33
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v5

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    aput v0, p3, v2

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v3, [I

    add-int/lit8 v0, p2, 0x9

    .line 34
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    aput v0, p3, v2

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    const/4 p3, 0x6

    new-array v0, v3, [I

    add-int/lit8 p2, p2, 0xe

    .line 35
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_8
    add-int/lit8 p3, p2, 0x2

    .line 36
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 37
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 38
    iput p2, p0, Lk0/zn;->d:I

    move p2, v2

    .line 39
    :goto_2
    iget-object p3, p0, Lk0/zn;->e:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_a

    .line 40
    iget v0, p0, Lk0/zn;->d:I

    aget-object v1, p3, p2

    aget v1, v1, v2

    if-ne v0, v1, :cond_9

    if-eqz v0, :cond_a

    .line 41
    iput p2, p0, Lk0/zn;->c:I

    goto :goto_3

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 42
    :cond_a
    :goto_3
    iget v0, p0, Lk0/zn;->d:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_f

    const/16 v1, 0x31

    if-eq v0, v1, :cond_d

    and-int/2addr p1, v4

    if-ne p1, v3, :cond_b

    .line 43
    array-length p1, p3

    if-ge p2, p1, :cond_13

    .line 44
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_b
    if-nez p1, :cond_13

    .line 45
    iget p1, p0, Lk0/zn;->c:I

    array-length p2, p3

    if-ge p1, p2, :cond_c

    if-eq p1, v4, :cond_c

    .line 46
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 47
    :cond_c
    iput v4, p0, Lk0/zn;->c:I

    goto :goto_4

    :cond_d
    and-int/2addr p1, v4

    if-ne p1, v3, :cond_13

    .line 48
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_e

    .line 49
    invoke-static {v3}, Lk0/qt;->a(I)V

    goto :goto_4

    .line 50
    :cond_e
    invoke-static {v2}, Lk0/qt;->a(I)V

    goto :goto_4

    :cond_f
    and-int/2addr p1, v4

    if-ne p1, v3, :cond_13

    .line 51
    invoke-static {}, Lo1/u;->i0()Z

    move-result p1

    if-nez p1, :cond_10

    .line 52
    invoke-static {}, Lo1/u;->M()V

    goto :goto_4

    .line 53
    :cond_10
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_4

    .line 54
    :cond_11
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 55
    invoke-static {}, La/i;->A()V

    goto :goto_4

    .line 56
    :cond_12
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/u;->J0(Ljava/lang/String;)I

    :cond_13
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x7

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

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xa7
        0x2
        0x0
        0x4
    .end array-data
.end method
