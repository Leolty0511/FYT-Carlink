.class public Lk0/mh;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/mh;->c:I

    const/16 v1, 0x11

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

    const/16 v2, 0x10

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/mh;->d:[[I

    .line 4
    new-instance v0, Lk0/mh$a;

    invoke-direct {v0, p0}, Lk0/mh$a;-><init>(Lk0/mh;)V

    iput-object v0, p0, Lk0/mh;->e:Ljava/lang/Runnable;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lk0/mh;->f:Ljava/lang/String;

    .line 6
    new-instance v0, Lk0/mh$b;

    invoke-direct {v0, p0}, Lk0/mh$b;-><init>(Lk0/mh;)V

    iput-object v0, p0, Lk0/mh;->g:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x17
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x50
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x51
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x52
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x53
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x21
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x22
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x23
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x24
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x25
        0x10
    .end array-data

    :array_f
    .array-data 4
        0x26
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x27
        0x4
    .end array-data
.end method

.method public static synthetic a3(Lk0/mh;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/mh;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b3(Lk0/mh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/mh;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c3(Lk0/mh;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/mh;->d3(Ljava/lang/String;)V

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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->o:I

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lk0/mh;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/mh;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_9

    const/16 v7, 0x30

    const/4 v8, 0x2

    if-eq v2, v7, :cond_8

    const/16 v7, 0x7d

    const/16 v9, 0xb

    const/4 v10, 0x4

    if-eq v2, v7, :cond_6

    const/4 v7, 0x5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 4
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 5
    aget-byte v1, v1, v6

    and-int/2addr v2, v4

    .line 6
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    and-int/lit16 v2, v3, 0xff

    .line 7
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    and-int/lit16 v2, v5, 0xff

    .line 8
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    and-int/2addr v1, v4

    .line 9
    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v6

    const/16 v2, 0x32

    invoke-static {v3, v5, v1, v2}, Lk0/qt;->j(IIII)V

    goto/16 :goto_5

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 12
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 13
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 14
    aget-byte v1, v1, v6

    and-int/2addr v2, v4

    .line 15
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    and-int/lit16 v2, v3, 0xff

    .line 16
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    and-int/lit16 v2, v5, 0xff

    .line 17
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    and-int/2addr v1, v4

    .line 18
    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_5

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    const-string v2, "persist.syu.reversefrontdoor"

    .line 20
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x0

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 21
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 22
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 23
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x0

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 24
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 25
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 26
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 27
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 28
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    .line 30
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    add-int/lit8 v8, p2, 0x4

    .line 31
    aget-byte v10, v1, v8

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0x5

    .line 32
    aget-byte v12, v1, v11

    and-int/2addr v12, v4

    add-int/lit8 v13, p2, 0x6

    .line 33
    aget-byte v13, v1, v13

    and-int/2addr v13, v4

    const/16 v14, 0xa

    new-array v15, v6, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v5

    .line 34
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    new-array v14, v6, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v6

    aput v15, v14, v5

    .line 35
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xc

    new-array v14, v6, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v6

    aput v15, v14, v5

    .line 36
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xd

    new-array v14, v6, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v6

    aput v15, v14, v5

    .line 37
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x10

    new-array v14, v6, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v6

    aput v15, v14, v5

    .line 38
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xe

    new-array v14, v6, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v6

    aput v15, v14, v5

    .line 39
    invoke-static {v9, v14}, Lk0/qt;->y0(I[I)V

    new-array v9, v6, [I

    shr-int/lit8 v14, v2, 0x0

    and-int/2addr v14, v6

    aput v14, v9, v5

    const/16 v14, 0xf

    .line 40
    invoke-static {v14, v9}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x26

    new-array v15, v6, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v6

    aput v2, v15, v5

    .line 41
    invoke-static {v9, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v9, v6, [I

    shr-int/lit8 v15, v3, 0x0

    and-int/2addr v14, v15

    aput v14, v9, v5

    .line 42
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v9, v6, [I

    shr-int/lit8 v14, v3, 0x7

    and-int/2addr v14, v6

    aput v14, v9, v5

    .line 43
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v6, [I

    shr-int/lit8 v14, v3, 0x6

    and-int/2addr v14, v6

    aput v14, v9, v5

    .line 44
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v9, v6, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aput v3, v9, v5

    .line 45
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 46
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    aget-byte v2, v1, v11

    and-int/lit16 v10, v2, 0xff

    .line 48
    aget-byte v1, v1, v8

    and-int/lit16 v12, v1, 0xff

    :cond_1
    and-int/lit16 v1, v10, 0xff

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v7, 0x1b

    if-nez v1, :cond_2

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 49
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_2
    if-ne v1, v4, :cond_3

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 50
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array v1, v6, [I

    aput v10, v1, v5

    .line 51
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit16 v1, v12, 0xff

    const/16 v7, 0x1c

    if-nez v1, :cond_4

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 52
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    if-ne v1, v4, :cond_5

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 53
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v1, v6, [I

    aput v12, v1, v5

    .line 54
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v1, 0x37

    new-array v2, v6, [I

    shr-int/lit8 v3, v13, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 55
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 56
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    if-eq v2, v6, :cond_7

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v2, p2, 0x3

    .line 57
    aget-byte v7, v1, v2

    shr-int/lit8 v3, v7, 0x3

    and-int/2addr v3, v6

    aget-byte v7, v1, v2

    shr-int/2addr v7, v10

    and-int/2addr v7, v6

    invoke-static {v3, v7, v5}, Ll0/c0;->a(III)V

    .line 58
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v7, 0x419

    new-array v8, v8, [I

    aput v9, v8, v5

    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    aput v1, v8, v6

    const/4 v1, 0x0

    invoke-static {v3, v7, v8, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_5

    .line 59
    :cond_8
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 61
    aget-byte v1, v1, v3

    and-int/2addr v2, v4

    .line 62
    iput v2, v0, Lk0/mh;->c:I

    move v2, v5

    .line 63
    :goto_3
    iget-object v3, v0, Lk0/mh;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_b

    .line 64
    iget v7, v0, Lk0/mh;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_a

    if-eqz v7, :cond_b

    .line 65
    iput v2, v0, Lk0/mh;->b:I

    goto :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    and-int/2addr v1, v4

    if-ne v1, v6, :cond_c

    .line 66
    array-length v1, v3

    if-ge v2, v1, :cond_e

    .line 67
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_c
    if-nez v1, :cond_e

    .line 68
    iget v1, v0, Lk0/mh;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_d

    if-eq v1, v4, :cond_d

    .line 69
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 70
    :cond_d
    iput v4, v0, Lk0/mh;->b:I

    :cond_e
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/mh;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/mh;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

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

.method public final d3(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    const/16 v1, 0xc

    new-array v2, v1, [B

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 3
    array-length v3, p1

    if-le v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    array-length v3, p1

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    .line 4
    aget-byte v6, p1, v5

    aput-byte v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_2
    if-ge p1, v1, :cond_3

    .line 5
    aput-byte v4, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    const/16 p1, 0x1c

    new-array p1, p1, [I

    const/16 v1, -0x1d

    aput v1, p1, v4

    const/16 v1, -0x7d

    const/4 v5, 0x1

    aput v1, p1, v5

    const/4 v1, 0x2

    const/16 v5, 0xd

    aput v5, p1, v1

    const/4 v1, 0x3

    add-int/lit8 v5, v3, 0x10

    aput v5, p1, v1

    :goto_3
    if-ge v4, v3, :cond_4

    add-int v1, v0, v4

    .line 6
    aget-byte v5, v2, v4

    aput v5, p1, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 7
    :cond_4
    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :cond_5
    :goto_4
    new-array p1, v0, [I

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x83
        0x1
        0x0
    .end array-data
.end method
