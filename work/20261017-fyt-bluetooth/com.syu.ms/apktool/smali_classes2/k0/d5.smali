.class public Lk0/d5;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/d5;->b:I

    .line 3
    iput v0, p0, Lk0/d5;->d:I

    const/16 v1, 0x15

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

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v2, 0x14

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/d5;->e:[[I

    .line 5
    new-instance v0, Lk0/d5$a;

    invoke-direct {v0, p0}, Lk0/d5$a;-><init>(Lk0/d5;)V

    iput-object v0, p0, Lk0/d5;->f:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x81
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x86
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x94
        0xd
    .end array-data

    :array_a
    .array-data 4
        0x87
        0x18
    .end array-data

    :array_b
    .array-data 4
        0x9b
        0x12
    .end array-data

    :array_c
    .array-data 4
        0xd0
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x97
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x98
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x99
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x9a
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x88
        0x1d
    .end array-data

    :array_12
    .array-data 4
        0x82
        0x3
    .end array-data

    :array_13
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_14
    .array-data 4
        0xe1
        0x36
    .end array-data
.end method

.method public static synthetic c3(Lk0/d5;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/d5;->a3()V

    return-void
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
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/d5;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/d5;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/d5;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 6

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0xa9

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xff

    if-eq p3, v3, :cond_10

    const/16 v5, 0x26

    if-eq p3, v5, :cond_f

    const/16 v5, 0x74

    if-eq p3, v5, :cond_9

    if-eq p3, v1, :cond_6

    const/4 v1, 0x4

    if-eq p3, v1, :cond_4

    const/16 v1, 0x22

    if-eq p3, v1, :cond_2

    const/16 v1, 0x23

    if-eq p3, v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 3
    sget p3, Lk0/nt;->a:I

    if-ne p3, v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 4
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 5
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 6
    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x5

    .line 7
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 8
    invoke-virtual {p0, p2}, Lk0/d5;->b3(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->D2(I)V

    and-int/lit16 p2, v0, 0xff

    .line 9
    invoke-virtual {p0, p2}, Lk0/d5;->b3(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->E2(I)V

    and-int/lit16 p2, v1, 0xff

    .line 10
    invoke-virtual {p0, p2}, Lk0/d5;->b3(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->F2(I)V

    and-int/2addr p1, v4

    .line 11
    invoke-virtual {p0, p1}, Lk0/d5;->b3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_5

    .line 12
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 13
    sget p3, Lk0/nt;->a:I

    if-ne p3, v0, :cond_3

    return-void

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 14
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 15
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 16
    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x5

    .line 17
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 18
    invoke-virtual {p0, p2}, Lk0/d5;->b3(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->R2(I)V

    and-int/lit16 p2, v0, 0xff

    .line 19
    invoke-virtual {p0, p2}, Lk0/d5;->b3(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->S2(I)V

    and-int/lit16 p2, v1, 0xff

    .line 20
    invoke-virtual {p0, p2}, Lk0/d5;->b3(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->T2(I)V

    and-int/2addr p1, v4

    .line 21
    invoke-virtual {p0, p1}, Lk0/d5;->b3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_5

    .line 22
    :cond_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_16

    add-int/lit8 p2, p2, 0x2

    .line 23
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    .line 24
    invoke-static {v3}, Lk0/qt;->b(I)V

    goto/16 :goto_5

    .line 25
    :cond_5
    invoke-static {v2}, Lk0/qt;->b(I)V

    goto/16 :goto_5

    .line 26
    :cond_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_16

    add-int/lit8 p2, p2, 0x7

    .line 27
    aget-byte p1, p1, p2

    .line 28
    sget p2, Lk0/nt;->a:I

    if-ne p2, v0, :cond_7

    return-void

    :cond_7
    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_8

    and-int/2addr p1, v4

    not-int p1, p1

    add-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0xa

    rsub-int p1, p1, 0x3e8

    goto :goto_0

    :cond_8
    and-int/2addr p1, v4

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x3e8

    .line 29
    :goto_0
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_5

    .line 30
    :cond_9
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_16

    add-int/lit8 p3, p2, 0x2

    .line 31
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 32
    aget-byte p1, p1, p2

    .line 33
    sget p2, Lk0/nt;->a:I

    if-ne p2, v0, :cond_a

    return-void

    :cond_a
    and-int/lit16 p2, p3, 0xff

    or-int/lit16 p2, p2, 0x80

    .line 34
    iput p2, p0, Lk0/d5;->d:I

    move p2, v2

    .line 35
    :goto_1
    iget-object p3, p0, Lk0/d5;->e:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_c

    .line 36
    iget v0, p0, Lk0/d5;->d:I

    aget-object v1, p3, p2

    aget v1, v1, v2

    if-ne v0, v1, :cond_b

    if-eqz v0, :cond_c

    .line 37
    iput p2, p0, Lk0/d5;->c:I

    goto :goto_2

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_c
    :goto_2
    and-int/2addr p1, v4

    if-eqz p1, :cond_d

    .line 38
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 39
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    .line 40
    :cond_d
    iget p1, p0, Lk0/d5;->c:I

    array-length p2, p3

    if-ge p1, p2, :cond_e

    if-eq p1, v4, :cond_e

    .line 41
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 42
    :cond_e
    iput v4, p0, Lk0/d5;->c:I

    goto :goto_5

    :cond_f
    add-int/lit8 p3, p2, 0x2

    .line 43
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x1e78

    invoke-static {p3, p1, v2, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_5

    .line 44
    :cond_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_16

    add-int/lit8 p3, p2, 0x2

    .line 45
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 46
    aget-byte p1, p1, p2

    .line 47
    sget p2, Lk0/nt;->a:I

    if-ne p2, v0, :cond_11

    return-void

    :cond_11
    and-int/lit16 p2, p3, 0xff

    .line 48
    iput p2, p0, Lk0/d5;->d:I

    move p2, v2

    .line 49
    :goto_3
    iget-object p3, p0, Lk0/d5;->e:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_13

    .line 50
    iget v0, p0, Lk0/d5;->d:I

    aget-object v1, p3, p2

    aget v1, v1, v2

    if-ne v0, v1, :cond_12

    if-eqz v0, :cond_13

    .line 51
    iput p2, p0, Lk0/d5;->c:I

    goto :goto_4

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_13
    :goto_4
    and-int/2addr p1, v4

    if-eqz p1, :cond_14

    .line 52
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 53
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 54
    :cond_14
    iget p1, p0, Lk0/d5;->c:I

    array-length p2, p3

    if-ge p1, p2, :cond_15

    if-eq p1, v4, :cond_15

    .line 55
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 56
    :cond_15
    iput v4, p0, Lk0/d5;->c:I

    :cond_16
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/d5;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/d5;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/d5;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0x8b

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Lo0/e;->k:I

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    aput v2, v1, v5

    goto :goto_0

    :cond_0
    aput v3, v1, v5

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 2
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(I)I
    .locals 1

    const/16 v0, 0xa

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x0

    :goto_0
    :pswitch_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
