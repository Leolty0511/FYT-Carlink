.class public Lk0/zg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/zg;->c:I

    const/16 v1, 0x10

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

    const/4 v4, 0x6

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x7

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v4, 0xa

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v4, 0xb

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v4, 0xc

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v4, 0xd

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v4, 0xe

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v2, 0xf

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/zg;->d:[[I

    .line 4
    new-instance v0, Lk0/zg$a;

    invoke-direct {v0, p0}, Lk0/zg$a;-><init>(Lk0/zg;)V

    iput-object v0, p0, Lk0/zg;->e:Ljava/lang/Runnable;

    .line 5
    iput-byte v3, p0, Lk0/zg;->f:B

    .line 6
    new-instance v0, Lk0/zg$b;

    invoke-direct {v0, p0}, Lk0/zg$b;-><init>(Lk0/zg;)V

    iput-object v0, p0, Lk0/zg;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/zg$c;

    invoke-direct {v0, p0}, Lk0/zg$c;-><init>(Lk0/zg;)V

    iput-object v0, p0, Lk0/zg;->h:Ljava/lang/Runnable;

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
        0x1f
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1e
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x20
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x21
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0x10
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x11
        0x9
    .end array-data
.end method

.method public static synthetic a3(Lk0/zg;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/zg;->h:Ljava/lang/Runnable;

    return-object p0
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

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/zg;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/zg;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v3, :cond_e

    const/16 v5, 0x28

    const/16 v6, 0xf

    const/16 v7, 0x19

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v7, :cond_d

    const/16 v13, 0x38

    const v16, 0xff00

    const/16 v7, 0x8

    if-eq v2, v13, :cond_c

    const/16 v13, 0x1f

    const/16 v14, 0x1e

    const/16 v15, 0x9

    packed-switch v2, :pswitch_data_0

    const/16 v3, 0xb

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_0
    new-array v2, v12, [I

    add-int/lit8 v3, p2, 0x2

    .line 2
    aget-byte v4, v1, v3

    shr-int/2addr v4, v10

    and-int/2addr v4, v12

    aput v4, v2, v11

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 3
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v12

    aput v4, v2, v11

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v4, v12, [I

    .line 4
    aget-byte v5, v1, v3

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v4, v12, [I

    .line 5
    aget-byte v1, v1, v3

    shr-int/2addr v1, v8

    and-int/2addr v1, v12

    aput v1, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_1
    const/16 v2, 0xe

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x2

    .line 6
    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    and-int v5, v5, v16

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 7
    aget-byte v4, v1, v4

    shl-int/2addr v4, v7

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v2, v11

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x6

    .line 8
    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x8

    .line 9
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x33

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x9

    .line 10
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xa

    aget-byte v6, v1, v6

    shl-int/2addr v6, v7

    and-int v6, v6, v16

    or-int/2addr v5, v6

    add-int/lit8 v3, p2, 0xb

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v5

    aput v1, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_2
    new-array v2, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 11
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v11

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 12
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v11

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 13
    aget-byte v4, v1, v4

    shl-int/2addr v4, v7

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v2, v11

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 14
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v11

    const/16 v4, 0xa

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 15
    aget-byte v4, v1, v4

    shl-int/2addr v4, v7

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v2, v11

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v3, p2, 0x9

    .line 16
    aget-byte v3, v1, v3

    shl-int/2addr v3, v7

    and-int v3, v3, v16

    add-int/lit8 v4, p2, 0xa

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v11

    const/16 v3, 0xc

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0xb

    .line 17
    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    and-int v5, v5, v16

    add-int/lit8 v3, p2, 0xc

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v5

    aput v1, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 18
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    .line 19
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    if-ne v1, v12, :cond_f

    const-string v1, "persist.syu.reversefrontdoor"

    .line 20
    invoke-static {v1, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v12, [I

    shr-int/lit8 v2, v5, 0x7

    and-int/2addr v2, v12

    aput v2, v1, v11

    .line 21
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v12, [I

    shr-int/lit8 v2, v5, 0x6

    and-int/2addr v2, v12

    aput v2, v1, v11

    .line 22
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v1, v12, [I

    shr-int/lit8 v2, v5, 0x6

    and-int/2addr v2, v12

    aput v2, v1, v11

    .line 23
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v12, [I

    shr-int/lit8 v2, v5, 0x7

    and-int/2addr v2, v12

    aput v2, v1, v11

    .line 24
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v1, v12, [I

    shr-int/lit8 v2, v5, 0x5

    and-int/2addr v2, v12

    aput v2, v1, v11

    .line 25
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v12, [I

    shr-int/lit8 v2, v5, 0x4

    and-int/2addr v2, v12

    aput v2, v1, v11

    .line 26
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v12, [I

    shr-int/lit8 v2, v5, 0x3

    and-int/2addr v2, v12

    aput v2, v1, v11

    .line 27
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v12, [I

    shr-int/lit8 v2, v5, 0x2

    and-int/2addr v2, v12

    aput v2, v1, v11

    .line 28
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v1, v1, v2

    invoke-static {v1, v12, v5}, Lk0/qt;->o(IZI)V

    goto/16 :goto_6

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ll0/c0;->i1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 32
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 33
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 34
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x6

    .line 35
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    .line 36
    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, p2, 0x7

    .line 37
    aget-byte v9, v1, v7

    and-int/lit16 v9, v9, 0xff

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-nez v9, :cond_1

    .line 38
    invoke-static {v11}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 39
    :cond_1
    sget v10, Ll0/c0;->g:I

    if-ne v10, v3, :cond_2

    sget v10, Ll0/c0;->h:I

    if-ne v10, v5, :cond_2

    sget v10, Ll0/c0;->i:I

    if-ne v10, v6, :cond_2

    sget v10, Ll0/c0;->j:I

    if-eq v10, v9, :cond_3

    .line 40
    :cond_2
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_3

    .line 41
    invoke-static {v12}, Lu0/d;->C2(I)V

    .line 42
    sput v8, Ll0/c0;->k:I

    .line 43
    sget-object v8, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v8}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 44
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 45
    sput v5, Ll0/c0;->h:I

    .line 46
    sput v6, Ll0/c0;->i:I

    .line 47
    sput v9, Ll0/c0;->j:I

    .line 48
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 49
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 50
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 51
    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->i1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    :pswitch_6
    add-int/lit8 v2, p2, 0x5

    .line 52
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v12

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v12

    invoke-static {v3, v1, v11}, Ll0/c0;->N1(III)V

    goto/16 :goto_6

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 53
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 54
    aget-byte v1, v1, v4

    and-int/lit16 v2, v2, 0xff

    .line 55
    iput v2, v0, Lk0/zg;->c:I

    move v2, v11

    .line 56
    :goto_2
    iget-object v4, v0, Lk0/zg;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_5

    .line 57
    iget v5, v0, Lk0/zg;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v11

    if-ne v5, v6, :cond_4

    if-eqz v5, :cond_5

    .line 58
    iput v2, v0, Lk0/zg;->b:I

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 59
    :cond_5
    :goto_3
    iget v2, v0, Lk0/zg;->c:I

    if-eq v2, v9, :cond_a

    if-eq v2, v7, :cond_8

    if-eq v2, v15, :cond_6

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v12, :cond_f

    .line 60
    iget v1, v0, Lk0/zg;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_f

    .line 61
    aget-object v1, v4, v1

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 62
    iget-object v1, v0, Lk0/zg;->d:[[I

    iget v2, v0, Lk0/zg;->b:I

    aget-object v1, v1, v2

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_6
    move v2, v11

    :goto_4
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_7

    .line 63
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 64
    :cond_7
    invoke-static {v14, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_8
    move v2, v11

    :goto_5
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_9

    .line 65
    invoke-static {v13, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 66
    :cond_9
    invoke-static {v13, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_a
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v12, :cond_f

    .line 67
    sget v1, Lh0/c;->E:I

    if-eq v1, v3, :cond_b

    if-eq v1, v9, :cond_b

    const/16 v1, 0x12

    .line 68
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 69
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_b
    const/16 v1, 0x1a

    .line 70
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 71
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_c
    const/16 v2, 0x11

    new-array v5, v12, [I

    add-int/lit8 v6, p2, 0x2

    .line 72
    aget-byte v13, v1, v6

    shr-int/2addr v13, v10

    and-int/2addr v13, v12

    aput v13, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 73
    aget-byte v5, v1, v6

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v12

    aput v5, v2, v11

    const/16 v5, 0x12

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v12, [I

    .line 74
    aget-byte v13, v1, v6

    shr-int/2addr v13, v9

    and-int/2addr v13, v12

    aput v13, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v12, [I

    .line 75
    aget-byte v13, v1, v6

    shr-int/2addr v13, v8

    and-int/2addr v13, v12

    aput v13, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v5, v12, [I

    .line 76
    aget-byte v13, v1, v6

    shr-int/2addr v13, v3

    and-int/2addr v13, v12

    aput v13, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v5, v12, [I

    .line 77
    aget-byte v13, v1, v6

    shr-int/lit8 v4, v13, 0x2

    and-int/2addr v4, v12

    aput v4, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v4, v12, [I

    .line 78
    aget-byte v5, v1, v6

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v4, v12, [I

    .line 79
    aget-byte v5, v1, v6

    shr-int/2addr v5, v11

    and-int/2addr v5, v12

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 80
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v12

    aput v5, v2, v11

    const/16 v5, 0x19

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 81
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v3, v5

    aput v3, v2, v11

    const/16 v3, 0x1a

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x22

    new-array v3, v12, [I

    .line 82
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 83
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 84
    aget-byte v4, v1, v4

    shl-int/2addr v4, v7

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 85
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_d
    const/16 v2, 0x23

    new-array v7, v12, [I

    add-int/lit8 v13, p2, 0x2

    .line 86
    aget-byte v14, v1, v13

    shr-int/2addr v14, v10

    and-int/2addr v14, v12

    aput v14, v7, v11

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x24

    new-array v7, v12, [I

    .line 87
    aget-byte v14, v1, v13

    shr-int/lit8 v14, v14, 0x6

    and-int/2addr v14, v12

    aput v14, v7, v11

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v7, v12, [I

    .line 88
    aget-byte v13, v1, v13

    shr-int/2addr v13, v11

    and-int/2addr v6, v13

    aput v6, v7, v11

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x26

    new-array v6, v12, [I

    add-int/lit8 v7, p2, 0x3

    .line 89
    aget-byte v13, v1, v7

    shr-int/2addr v13, v10

    and-int/2addr v13, v12

    aput v13, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x27

    new-array v6, v12, [I

    .line 90
    aget-byte v13, v1, v7

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v12

    aput v13, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 91
    aget-byte v6, v1, v7

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v2, v11

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x29

    new-array v5, v12, [I

    .line 92
    aget-byte v6, v1, v7

    shr-int/2addr v6, v8

    and-int/2addr v6, v12

    aput v6, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v5, v12, [I

    .line 93
    aget-byte v6, v1, v7

    shr-int/lit8 v3, v6, 0x3

    and-int/2addr v3, v12

    aput v3, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v12, [I

    .line 94
    aget-byte v5, v1, v7

    shr-int/lit8 v4, v5, 0x2

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v12, [I

    .line 95
    aget-byte v4, v1, v7

    shr-int/2addr v4, v12

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2d

    new-array v3, v12, [I

    .line 96
    aget-byte v4, v1, v7

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 97
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 98
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x30

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 99
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 100
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    .line 101
    :cond_e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_f
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/zg;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/zg;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/zg;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x34

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
    .locals 10

    const/16 p3, 0x82

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/16 v8, 0x9

    const/4 v9, 0x6

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v8, [I

    aput p4, p1, v3

    const/16 p3, 0x99

    aput p3, p1, v5

    aput v9, p1, v4

    .line 1
    aget p3, p2, v3

    aput p3, p1, v2

    aget p3, p2, v5

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, v9

    aget p3, p2, v1

    aput p3, p1, v7

    aget p2, p2, v0

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput p4, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v5

    aput v5, p1, v4

    .line 2
    aget p2, p2, v3

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v8, [I

    aput p4, p1, v3

    aput p3, p1, v5

    aput v9, p1, v4

    .line 3
    aget p3, p2, v3

    aput p3, p1, v2

    aget p3, p2, v5

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, v9

    aget p3, p2, v1

    aput p3, p1, v7

    aget p2, p2, v0

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    aput p4, p1, v3

    aput p3, p1, v5

    aput v4, p1, v4

    .line 4
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
