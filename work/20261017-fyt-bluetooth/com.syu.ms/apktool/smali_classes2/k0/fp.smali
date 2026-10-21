.class public Lk0/fp;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/fp;->c:I

    const/16 v1, 0x1b

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_1a

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/fp;->d:[[I

    .line 4
    iput v0, p0, Lk0/fp;->e:I

    .line 5
    new-instance v0, Lk0/fp$a;

    invoke-direct {v0, p0}, Lk0/fp$a;-><init>(Lk0/fp;)V

    iput-object v0, p0, Lk0/fp;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/fp$b;

    invoke-direct {v0, p0}, Lk0/fp$b;-><init>(Lk0/fp;)V

    iput-object v0, p0, Lk0/fp;->g:Ljava/lang/Runnable;

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x26
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x5
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x22
    .end array-data

    :array_e
    .array-data 4
        0x10
        0x23
    .end array-data

    :array_f
    .array-data 4
        0x11
        0x20
    .end array-data

    :array_10
    .array-data 4
        0x12
        0x21
    .end array-data

    :array_11
    .array-data 4
        0x13
        0x1d
    .end array-data

    :array_12
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_13
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_14
    .array-data 4
        0x16
        0x1f
    .end array-data

    :array_15
    .array-data 4
        0x17
        0x1e
    .end array-data

    :array_16
    .array-data 4
        0x18
        0x18
    .end array-data

    :array_17
    .array-data 4
        0x19
        0x36
    .end array-data

    :array_18
    .array-data 4
        0x1a
        0x12
    .end array-data

    :array_19
    .array-data 4
        0x1b
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0x1c
        0x9
    .end array-data
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/fp;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v2, v0, Lk0/mt;->l:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0x29

    if-eq v0, v1, :cond_7

    const/16 v1, 0x30

    const/4 v8, 0x2

    if-eq v0, v1, :cond_6

    const/16 p3, 0x35

    const/4 v1, 0x5

    if-eq v0, p3, :cond_4

    const/4 p3, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v0, p1, v0

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 4
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 5
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 6
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 7
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 8
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    shr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v7

    aput v2, p3, v6

    .line 9
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    shr-int/lit8 v2, v0, 0x3

    and-int/2addr v2, v7

    aput v2, p3, v6

    .line 10
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    shr-int/2addr v0, v8

    and-int/2addr v0, v7

    aput v0, p3, v6

    .line 11
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v4

    .line 12
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v7

    invoke-static {p1}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 13
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 v0, p2, 0x2

    .line 14
    aget-byte v2, p1, v0

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    .line 15
    aget-byte v4, p1, v3

    and-int/2addr v4, v5

    add-int/lit8 v8, p2, 0x4

    .line 16
    aget-byte v9, p1, v8

    and-int/2addr v9, v5

    add-int/2addr p2, v1

    .line 17
    aget-byte v1, p1, p2

    and-int/2addr v1, v5

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    if-nez v9, :cond_1

    if-nez v1, :cond_1

    .line 18
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 19
    :cond_1
    sget v6, Ll0/c0;->g:I

    if-ne v6, v2, :cond_2

    sget v6, Ll0/c0;->h:I

    if-ne v6, v4, :cond_2

    sget v6, Ll0/c0;->i:I

    if-ne v6, v9, :cond_2

    sget v6, Ll0/c0;->j:I

    if-eq v6, v1, :cond_3

    .line 20
    :cond_2
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_3

    .line 21
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 22
    sput p3, Ll0/c0;->k:I

    .line 23
    sget-object p3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 24
    :cond_3
    :goto_1
    sput v2, Ll0/c0;->g:I

    .line 25
    sput v4, Ll0/c0;->h:I

    .line 26
    sput v9, Ll0/c0;->i:I

    .line 27
    sput v1, Ll0/c0;->j:I

    .line 28
    aget-byte p3, p1, v0

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->J1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 29
    aget-byte p3, p1, v3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->J1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 30
    aget-byte p3, p1, v8

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->J1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 31
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    invoke-static {p1}, Ll0/c0;->J1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    .line 32
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_11

    add-int/lit8 p3, p2, 0x2

    .line 33
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->J1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 34
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->J1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 35
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->J1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 36
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    invoke-static {p1}, Ll0/c0;->J1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_4
    new-array p3, v7, [I

    add-int/lit8 v0, p2, 0x4

    .line 37
    aget-byte v0, p1, v0

    shl-int/2addr v0, v2

    const v4, 0xff00

    and-int/2addr v0, v4

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, p1, v8

    and-int/2addr v8, v5

    or-int/2addr v0, v8

    aput v0, p3, v6

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    add-int/lit8 v0, p2, 0x9

    .line 38
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v0, v8

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, p1, v8

    shl-int/2addr v8, v2

    and-int/2addr v4, v8

    or-int/2addr v0, v4

    add-int/lit8 v4, p2, 0xb

    aget-byte v4, p1, v4

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    aput v0, p3, v6

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    add-int/lit8 v0, p2, 0xc

    .line 39
    aget-byte v4, p1, v0

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v7

    aput v4, p3, v6

    const/16 v4, 0xa

    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v2

    .line 40
    aget-byte p2, p1, p2

    and-int/2addr p2, v5

    .line 41
    aget-byte p1, p1, v0

    shr-int/2addr p1, v3

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_5

    mul-int/lit8 p2, p2, 0x9

    add-int/lit16 p2, p2, 0x258

    const/high16 p1, 0x10000000

    or-int/2addr p1, p2

    and-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_5
    mul-int/2addr p2, v1

    add-int/lit16 p1, p2, 0x258

    .line 42
    :goto_2
    invoke-static {p1}, Lu0/d;->B3(I)V

    goto/16 :goto_9

    .line 43
    :cond_6
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 44
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    const/16 p2, 0xe10

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_8
    add-int/lit8 p3, p2, 0x2

    .line 45
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 46
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 47
    iput p2, p0, Lk0/fp;->c:I

    move p2, v6

    .line 48
    :goto_3
    iget-object p3, p0, Lk0/fp;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_a

    .line 49
    iget v0, p0, Lk0/fp;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v6

    if-ne v0, v1, :cond_9

    if-eqz v0, :cond_a

    .line 50
    iput p2, p0, Lk0/fp;->b:I

    goto :goto_4

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 51
    :cond_a
    :goto_4
    iget v0, p0, Lk0/fp;->c:I

    packed-switch v0, :pswitch_data_1

    and-int/2addr p1, v5

    if-ne p1, v7, :cond_f

    .line 52
    array-length p1, p3

    if-ge p2, p1, :cond_11

    .line 53
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto :goto_9

    :pswitch_3
    move p2, v6

    :goto_5
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1e

    if-ge p2, p3, :cond_b

    .line 54
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 55
    :cond_b
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    :pswitch_4
    move p2, v6

    :goto_6
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_c

    .line 56
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 57
    :cond_c
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    :pswitch_5
    move p2, v6

    :goto_7
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_d

    .line 58
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 59
    :cond_d
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    :pswitch_6
    move p2, v6

    :goto_8
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_e

    .line 60
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 61
    :cond_e
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_f
    if-nez p1, :cond_11

    .line 62
    iget p1, p0, Lk0/fp;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_10

    if-eq p1, v5, :cond_10

    .line 63
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 64
    :cond_10
    iput v5, p0, Lk0/fp;->b:I

    :cond_11
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/fp;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/fp;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb

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
    .locals 4

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/4 v0, 0x2

    const/16 v1, 0xe3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    aput v1, p1, v2

    aput v1, p1, v3

    aput v3, p1, v0

    .line 1
    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    new-array p1, p1, [I

    aput v1, p1, v2

    const/16 v1, 0x90

    aput v1, p1, v3

    aput v0, p1, v0

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
