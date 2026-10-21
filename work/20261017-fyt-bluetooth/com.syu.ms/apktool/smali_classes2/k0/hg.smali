.class public Lk0/hg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hg;->c:I

    const/16 v1, 0x14

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

    iput-object v1, p0, Lk0/hg;->d:[[I

    .line 4
    new-instance v0, Lk0/hg$a;

    invoke-direct {v0, p0}, Lk0/hg$a;-><init>(Lk0/hg;)V

    iput-object v0, p0, Lk0/hg;->e:Ljava/lang/Runnable;

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
        0x6
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x1a
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x3
    .end array-data

    :array_5
    .array-data 4
        0xf
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x20
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x30
        0x1d
    .end array-data

    :array_8
    .array-data 4
        0x31
        0x1e
    .end array-data

    :array_9
    .array-data 4
        0x32
        0x1f
    .end array-data

    :array_a
    .array-data 4
        0x33
        0x22
    .end array-data

    :array_b
    .array-data 4
        0x34
        0x23
    .end array-data

    :array_c
    .array-data 4
        0x35
        0x20
    .end array-data

    :array_d
    .array-data 4
        0x36
        0x21
    .end array-data

    :array_e
    .array-data 4
        0x37
        0x22
    .end array-data

    :array_f
    .array-data 4
        0x38
        0x23
    .end array-data

    :array_10
    .array-data 4
        0x39
        0x22
    .end array-data

    :array_11
    .array-data 4
        0x3a
        0x23
    .end array-data

    :array_12
    .array-data 4
        0x3b
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x3c
        0x5
    .end array-data
.end method

.method public static synthetic a3(Lk0/hg;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/hg;->b3(Ljava/lang/String;)V

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iget-object v0, p0, Lk0/hg;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    const/16 v4, 0x9

    const/16 v5, 0x7f

    if-eq v0, v4, :cond_8

    const/16 v4, 0x2a

    const/4 v6, 0x5

    if-eq v0, v4, :cond_7

    if-eq v0, v5, :cond_6

    const/4 p3, 0x3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    if-eq v0, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x5

    .line 5
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 p2, p2, 0x6

    .line 6
    aget-byte v7, p1, p2

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xa

    new-array v9, v3, [I

    shr-int/lit8 v10, v0, 0x7

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 7
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xb

    new-array v9, v3, [I

    shr-int/lit8 v10, v0, 0x6

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 8
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xe

    new-array v9, v3, [I

    shr-int/lit8 v10, v0, 0x5

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 9
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xd

    new-array v9, v3, [I

    shr-int/lit8 v10, v0, 0x4

    and-int/2addr v10, v3

    aput v10, v9, v2

    .line 10
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xc

    new-array v9, v3, [I

    shr-int/lit8 v10, v0, 0x2

    and-int/2addr p3, v10

    aput p3, v9, v2

    .line 11
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v8, v3, [I

    shr-int/lit8 v9, v0, 0x1

    and-int/2addr v9, v3

    aput v9, v8, v2

    .line 12
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v8, v3, [I

    shr-int/2addr v0, v2

    and-int/2addr v0, v3

    aput v0, v8, v2

    .line 13
    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    new-array p3, v3, [I

    shr-int/lit8 v0, v1, 0x7

    and-int/2addr v0, v3

    aput v0, p3, v2

    const/16 v0, 0xf

    .line 14
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v3, [I

    shr-int/lit8 v8, v1, 0x4

    and-int/2addr v8, v3

    aput v8, p3, v2

    const/16 v8, 0x31

    .line 15
    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v9, v3, [I

    and-int/2addr v0, v1

    aput v0, v9, v2

    .line 16
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    new-array p3, v3, [I

    shr-int/lit8 v0, v4, 0x7

    and-int/2addr v0, v3

    aput v0, p3, v2

    .line 17
    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v3, [I

    shr-int/lit8 v1, v4, 0x6

    and-int/2addr v1, v3

    aput v1, v0, v2

    .line 18
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v3, [I

    shr-int/lit8 v1, v4, 0x5

    and-int/2addr v1, v3

    aput v1, v0, v2

    .line 19
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v3, [I

    shr-int/lit8 v1, v4, 0x4

    and-int/2addr v1, v3

    aput v1, v0, v2

    .line 20
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x25

    new-array v0, v3, [I

    shr-int/lit8 v1, v4, 0x0

    and-int/2addr v1, v3

    aput v1, v0, v2

    .line 21
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 22
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 23
    aget-byte p2, p1, p2

    and-int/lit16 v6, p2, 0xff

    .line 24
    aget-byte p1, p1, v5

    and-int/lit16 v7, p1, 0xff

    :cond_1
    const/4 p1, -0x3

    const/4 p2, -0x2

    const/4 p3, -0x1

    if-eqz v6, :cond_2

    packed-switch v6, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    move v0, p3

    goto :goto_0

    :pswitch_1
    move v0, p1

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    const/16 v1, 0x1b

    new-array v4, v3, [I

    aput v0, v4, v2

    .line 25
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    if-eqz v7, :cond_3

    packed-switch v7, :pswitch_data_1

    move p1, v2

    goto :goto_1

    :pswitch_2
    move p1, p3

    goto :goto_1

    :cond_3
    move p1, p2

    :goto_1
    :pswitch_3
    const/16 p2, 0x1c

    new-array p3, v3, [I

    aput p1, p3, v2

    .line 26
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_4
    add-int/2addr p2, v1

    .line 27
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 28
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_5

    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 29
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 30
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 31
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 32
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 33
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 34
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/2addr p1, p3

    and-int/2addr p1, v3

    aput p1, p2, v2

    .line 35
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 36
    :cond_6
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 37
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 38
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 39
    aget-byte v1, p1, v1

    add-int/2addr p2, v6

    .line 40
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 41
    invoke-static {p2}, Ll0/c0;->Q0(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->D2(I)V

    and-int/lit16 p2, v0, 0xff

    .line 42
    invoke-static {p2}, Ll0/c0;->Q0(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->E2(I)V

    and-int/lit16 p2, v1, 0xff

    .line 43
    invoke-static {p2}, Ll0/c0;->Q0(I)I

    move-result p2

    invoke-static {p2}, Lu0/d;->F2(I)V

    and-int/lit16 p1, p1, 0xff

    .line 44
    invoke-static {p1}, Ll0/c0;->Q0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_5

    :cond_8
    add-int/2addr p2, v1

    .line 45
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_9

    .line 46
    aget-byte p1, p1, p2

    const/16 p2, 0x80

    invoke-static {p1, v2, p2, v3, v5}, Lk0/qt;->m(IIIZI)V

    goto :goto_5

    .line 47
    :cond_9
    aget-byte p3, p1, p2

    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v3

    invoke-static {p3, v2, p1, v5}, Lk0/qt;->j(IIII)V

    goto :goto_5

    :cond_a
    add-int/2addr p2, v1

    .line 48
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 49
    iput p1, p0, Lk0/hg;->c:I

    move p1, v2

    .line 50
    :goto_3
    iget-object p2, p0, Lk0/hg;->d:[[I

    array-length p3, p2

    if-ge p1, p3, :cond_c

    .line 51
    iget p3, p0, Lk0/hg;->c:I

    aget-object v0, p2, p1

    aget v0, v0, v2

    if-ne p3, v0, :cond_b

    if-eqz p3, :cond_c

    .line 52
    iput p1, p0, Lk0/hg;->b:I

    goto :goto_4

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 53
    :cond_c
    :goto_4
    iget p1, p0, Lk0/hg;->c:I

    if-eqz p1, :cond_d

    .line 54
    iget p1, p0, Lk0/hg;->b:I

    array-length p3, p2

    if-ge p1, p3, :cond_d

    .line 55
    aget-object p1, p2, p1

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 56
    iget-object p1, p0, Lk0/hg;->d:[[I

    iget p2, p0, Lk0/hg;->b:I

    aget-object p1, p1, p2

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    :cond_d
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xfd
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfd
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/hg;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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

.method public final b3(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 2
    array-length v0, p1

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    add-int/lit8 v0, v1, 0x5

    .line 3
    new-array v0, v0, [I

    const/16 v2, -0x1d

    const/4 v3, 0x0

    .line 4
    aput v2, v0, v3

    const/16 v2, -0x7b

    const/4 v4, 0x1

    .line 5
    aput v2, v0, v4

    int-to-byte v2, v1

    const/4 v5, 0x2

    add-int/2addr v2, v5

    .line 6
    aput v2, v0, v5

    const/4 v2, 0x3

    .line 7
    aput v4, v0, v2

    const/4 v2, 0x4

    .line 8
    aput v1, v0, v2

    :goto_1
    if-ge v3, v1, :cond_1

    add-int/lit8 v2, v3, 0x5

    .line 9
    aget-byte v4, p1, v3

    aput v4, v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
