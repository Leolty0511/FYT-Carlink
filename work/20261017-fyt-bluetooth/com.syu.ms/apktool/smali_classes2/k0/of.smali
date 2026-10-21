.class public Lk0/of;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static k:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v1, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lk0/of;->b:Lo1/g0;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/of;->c:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/of;->e:I

    const/16 v3, 0x13

    new-array v4, v3, [[I

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 5
    fill-array-data v6, :array_0

    aput-object v6, v4, v2

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    aput-object v6, v4, v1

    new-array v6, v5, [I

    fill-array-data v6, :array_2

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_3

    const/4 v7, 0x3

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_4

    const/4 v8, 0x4

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_5

    const/4 v9, 0x5

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_6

    const/4 v10, 0x6

    aput-object v6, v4, v10

    new-array v6, v5, [I

    fill-array-data v6, :array_7

    const/4 v11, 0x7

    aput-object v6, v4, v11

    new-array v6, v5, [I

    fill-array-data v6, :array_8

    const/16 v12, 0x8

    aput-object v6, v4, v12

    new-array v6, v5, [I

    fill-array-data v6, :array_9

    const/16 v13, 0x9

    aput-object v6, v4, v13

    new-array v6, v5, [I

    fill-array-data v6, :array_a

    const/16 v14, 0xa

    aput-object v6, v4, v14

    new-array v6, v5, [I

    fill-array-data v6, :array_b

    const/16 v15, 0xb

    aput-object v6, v4, v15

    new-array v6, v5, [I

    fill-array-data v6, :array_c

    const/16 v16, 0xc

    aput-object v6, v4, v16

    new-array v6, v5, [I

    fill-array-data v6, :array_d

    const/16 v17, 0xd

    aput-object v6, v4, v17

    new-array v6, v5, [I

    fill-array-data v6, :array_e

    const/16 v18, 0xe

    aput-object v6, v4, v18

    new-array v6, v5, [I

    fill-array-data v6, :array_f

    const/16 v19, 0xf

    aput-object v6, v4, v19

    new-array v6, v5, [I

    fill-array-data v6, :array_10

    const/16 v20, 0x10

    aput-object v6, v4, v20

    new-array v6, v5, [I

    fill-array-data v6, :array_11

    const/16 v21, 0x11

    aput-object v6, v4, v21

    new-array v6, v5, [I

    fill-array-data v6, :array_12

    const/16 v22, 0x12

    aput-object v6, v4, v22

    iput-object v4, v0, Lk0/of;->f:[[I

    new-array v3, v3, [[I

    new-array v4, v5, [I

    .line 6
    fill-array-data v4, :array_13

    aput-object v4, v3, v2

    new-array v4, v5, [I

    fill-array-data v4, :array_14

    aput-object v4, v3, v1

    new-array v1, v5, [I

    fill-array-data v1, :array_15

    aput-object v1, v3, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_16

    aput-object v1, v3, v7

    new-array v1, v5, [I

    fill-array-data v1, :array_17

    aput-object v1, v3, v8

    new-array v1, v5, [I

    fill-array-data v1, :array_18

    aput-object v1, v3, v9

    new-array v1, v5, [I

    fill-array-data v1, :array_19

    aput-object v1, v3, v10

    new-array v1, v5, [I

    fill-array-data v1, :array_1a

    aput-object v1, v3, v11

    new-array v1, v5, [I

    fill-array-data v1, :array_1b

    aput-object v1, v3, v12

    new-array v1, v5, [I

    fill-array-data v1, :array_1c

    aput-object v1, v3, v13

    new-array v1, v5, [I

    fill-array-data v1, :array_1d

    aput-object v1, v3, v14

    new-array v1, v5, [I

    fill-array-data v1, :array_1e

    aput-object v1, v3, v15

    new-array v1, v5, [I

    fill-array-data v1, :array_1f

    aput-object v1, v3, v16

    new-array v1, v5, [I

    fill-array-data v1, :array_20

    aput-object v1, v3, v17

    new-array v1, v5, [I

    fill-array-data v1, :array_21

    aput-object v1, v3, v18

    new-array v1, v5, [I

    fill-array-data v1, :array_22

    aput-object v1, v3, v19

    new-array v1, v5, [I

    fill-array-data v1, :array_23

    aput-object v1, v3, v20

    new-array v1, v5, [I

    fill-array-data v1, :array_24

    aput-object v1, v3, v21

    new-array v1, v5, [I

    fill-array-data v1, :array_25

    aput-object v1, v3, v22

    iput-object v3, v0, Lk0/of;->g:[[I

    .line 7
    iput v2, v0, Lk0/of;->h:I

    .line 8
    new-instance v1, Lk0/of$a;

    invoke-direct {v1, v0}, Lk0/of$a;-><init>(Lk0/of;)V

    iput-object v1, v0, Lk0/of;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lk0/of$b;

    invoke-direct {v1, v0}, Lk0/of$b;-><init>(Lk0/of;)V

    iput-object v1, v0, Lk0/of;->j:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x26
    .end array-data

    :array_a
    .array-data 4
        0xa
        0x1b
    .end array-data

    :array_b
    .array-data 4
        0xb
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_e
    .array-data 4
        0x10
        0xd
    .end array-data

    :array_f
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0x60
        0xd
    .end array-data

    :array_12
    .array-data 4
        0x61
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_15
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_16
    .array-data 4
        0x3
        0x7
    .end array-data

    :array_17
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_18
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_1a
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_1b
    .array-data 4
        0x8
        0x6
    .end array-data

    :array_1c
    .array-data 4
        0x9
        0x26
    .end array-data

    :array_1d
    .array-data 4
        0xa
        0x1b
    .end array-data

    :array_1e
    .array-data 4
        0xb
        0x1c
    .end array-data

    :array_1f
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_20
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_21
    .array-data 4
        0x10
        0xd
    .end array-data

    :array_22
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_23
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_24
    .array-data 4
        0x60
        0xd
    .end array-data

    :array_25
    .array-data 4
        0x61
        0x1
    .end array-data
.end method


# virtual methods
.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x1

    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 2
    iput v2, v0, Lk0/mt;->f:I

    .line 3
    iput v2, v0, Lk0/mt;->g:I

    .line 4
    iput v1, v0, Lk0/mt;->o:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 6
    fill-array-data v3, :array_0

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 8
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa5

    if-eq v0, v3, :cond_0

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    :goto_0
    iget-object v0, p0, Lk0/of;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 12
    iget-object v0, p0, Lk0/of;->b:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/of;->c3(I)V

    .line 13
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    iget-object v0, p0, Lk0/of;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/of;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x89
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x8a
        0x1
        0x0
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x29

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x30

    const/4 v6, 0x2

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x68

    const/16 v7, 0x66

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x1

    if-eq v2, v7, :cond_1a

    const/16 v7, 0xff

    if-eq v2, v3, :cond_19

    const/16 v3, 0xc

    const/16 v11, 0x12

    const/4 v12, 0x4

    const/16 v13, 0xf

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v10, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v10

    aput v7, v3, v5

    .line 4
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v10

    aput v7, v3, v5

    .line 5
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v3, v10, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v10

    aput v7, v3, v5

    .line 6
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v10

    aput v7, v3, v5

    .line 7
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v10, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v10

    aput v6, v3, v5

    .line 8
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v10

    aput v6, v3, v5

    .line 9
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v10

    aput v2, v3, v5

    .line 10
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 11
    aget-byte v3, v1, v2

    .line 12
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    iput v1, v0, Lk0/of;->h:I

    if-nez v1, :cond_1d

    .line 13
    invoke-static {v13}, Lu0/d;->R2(I)V

    .line 14
    invoke-static {v13}, Lu0/d;->S2(I)V

    .line 15
    invoke-static {v13}, Lu0/d;->T2(I)V

    .line 16
    invoke-static {v13}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    invoke-static {v3}, Ll0/c0;->t1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 18
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    invoke-static {v3}, Ll0/c0;->t1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->E2(I)V

    .line 19
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    invoke-static {v3}, Ll0/c0;->t1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    .line 20
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->t1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    .line 21
    :pswitch_2
    iget v2, v0, Lk0/of;->h:I

    if-ne v2, v10, :cond_1

    add-int/lit8 v2, p2, 0x3

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lk0/of;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lk0/of;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lk0/of;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 25
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk0/of;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    .line 26
    :cond_1
    invoke-static {v13}, Lu0/d;->R2(I)V

    .line 27
    invoke-static {v13}, Lu0/d;->S2(I)V

    .line 28
    invoke-static {v13}, Lu0/d;->T2(I)V

    .line 29
    invoke-static {v13}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    const/16 v6, 0xa

    new-array v7, v10, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v10

    aput v14, v7, v5

    .line 31
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xb

    new-array v7, v10, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v10

    aput v14, v7, v5

    .line 32
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    new-array v6, v10, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v10

    aput v7, v6, v5

    .line 33
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v6, v10, [I

    shr-int/lit8 v7, v2, 0x3

    and-int/2addr v7, v10

    aput v7, v6, v5

    .line 34
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v6, v10, [I

    shr-int/lit8 v7, v2, 0x2

    and-int/2addr v7, v10

    aput v7, v6, v5

    .line 35
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v10

    aput v6, v3, v5

    .line 36
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x26

    new-array v6, v10, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v10

    aput v2, v6, v5

    .line 37
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 38
    aget-byte v7, v1, v6

    and-int/2addr v7, v13

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 39
    aget-byte v2, v1, v6

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_2

    move v2, v5

    move v3, v10

    :goto_1
    move v6, v3

    goto :goto_2

    .line 40
    :cond_2
    aget-byte v2, v1, v6

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_3

    move v2, v5

    move v6, v2

    move v3, v10

    goto :goto_2

    .line 41
    :cond_3
    aget-byte v2, v1, v6

    shr-int/2addr v2, v8

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_4

    move v2, v5

    move v3, v2

    move v6, v10

    goto :goto_2

    .line 42
    :cond_4
    aget-byte v2, v1, v6

    shr-int/2addr v2, v12

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_5

    move v3, v5

    move v2, v10

    move v6, v2

    goto :goto_2

    :cond_5
    move v2, v5

    move v3, v2

    goto :goto_1

    :goto_2
    new-array v7, v10, [I

    aput v2, v7, v5

    .line 43
    invoke-static {v11, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v10, [I

    aput v3, v7, v5

    .line 44
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    aput v6, v3, v5

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x38

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x4

    .line 46
    aget-byte v7, v1, v6

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v10, [I

    .line 47
    aget-byte v7, v1, v6

    and-int/lit8 v7, v7, 0x7f

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v10, [I

    .line 48
    aget-byte v6, v1, v6

    and-int/lit8 v6, v6, 0x7f

    aput v6, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x6

    .line 49
    aget-byte v7, v1, v6

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v10, [I

    .line 50
    aget-byte v7, v1, v6

    shr-int/2addr v7, v9

    and-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v3, v10, [I

    .line 51
    aget-byte v7, v1, v6

    shr-int/2addr v7, v8

    and-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v10, [I

    .line 52
    aget-byte v7, v1, v6

    shr-int/2addr v7, v12

    and-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v10, [I

    .line 53
    aget-byte v7, v1, v6

    shr-int/lit8 v4, v7, 0x3

    and-int/2addr v4, v10

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v10, [I

    .line 54
    aget-byte v1, v1, v6

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v1, v2

    add-int/lit8 v6, p2, 0x3

    .line 56
    aget-byte v1, v1, v6

    and-int/2addr v2, v7

    .line 57
    iput v2, v0, Lk0/of;->e:I

    .line 58
    sget v2, Lk0/nt;->c:I

    const/16 v6, 0xa2

    const/16 v13, 0x11

    const/16 v14, 0x1a

    if-eq v2, v6, :cond_f

    move v2, v5

    .line 59
    :goto_3
    iget-object v6, v0, Lk0/of;->f:[[I

    array-length v15, v6

    if-ge v2, v15, :cond_7

    .line 60
    iget v15, v0, Lk0/of;->e:I

    aget-object v16, v6, v2

    aget v3, v16, v5

    if-ne v15, v3, :cond_6

    if-eqz v15, :cond_7

    .line 61
    iput v2, v0, Lk0/of;->d:I

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xc

    goto :goto_3

    .line 62
    :cond_7
    :goto_4
    iget v3, v0, Lk0/of;->e:I

    if-eq v3, v9, :cond_c

    if-eq v3, v13, :cond_a

    and-int/2addr v1, v7

    if-ne v1, v10, :cond_8

    .line 63
    array-length v1, v6

    if-ge v2, v1, :cond_1d

    .line 64
    aget-object v1, v6, v2

    aget v1, v1, v10

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_8
    if-nez v1, :cond_1d

    .line 65
    iget v1, v0, Lk0/of;->d:I

    array-length v2, v6

    if-ge v1, v2, :cond_9

    if-eq v1, v7, :cond_9

    .line 66
    aget-object v1, v6, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 67
    :cond_9
    iput v7, v0, Lk0/of;->d:I

    goto/16 :goto_7

    :cond_a
    and-int/2addr v1, v7

    if-ne v1, v10, :cond_1d

    .line 68
    sget v1, Lh0/c;->E:I

    if-eq v1, v4, :cond_b

    if-eq v1, v8, :cond_b

    .line 69
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    .line 70
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 71
    :cond_b
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    .line 72
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_c
    and-int/2addr v1, v7

    if-ne v1, v10, :cond_1d

    .line 73
    sget v1, Lh0/c;->E:I

    if-eq v1, v4, :cond_e

    if-eq v1, v12, :cond_d

    if-eq v1, v8, :cond_e

    const/16 v1, 0xc

    .line 74
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 75
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 76
    :cond_d
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    .line 77
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 78
    :cond_e
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    .line 79
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_f
    move v2, v5

    .line 80
    :goto_5
    iget-object v3, v0, Lk0/of;->g:[[I

    array-length v6, v3

    if-ge v2, v6, :cond_11

    .line 81
    iget v6, v0, Lk0/of;->e:I

    aget-object v15, v3, v2

    aget v15, v15, v5

    if-ne v6, v15, :cond_10

    if-eqz v6, :cond_11

    .line 82
    iput v2, v0, Lk0/of;->d:I

    goto :goto_6

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 83
    :cond_11
    :goto_6
    iget v6, v0, Lk0/of;->e:I

    if-eq v6, v9, :cond_16

    if-eq v6, v13, :cond_14

    and-int/2addr v1, v7

    if-ne v1, v10, :cond_12

    .line 84
    array-length v1, v3

    if-ge v2, v1, :cond_1d

    .line 85
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_12
    if-nez v1, :cond_1d

    .line 86
    iget v1, v0, Lk0/of;->d:I

    array-length v2, v3

    if-ge v1, v2, :cond_13

    if-eq v1, v7, :cond_13

    .line 87
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 88
    :cond_13
    iput v7, v0, Lk0/of;->d:I

    goto/16 :goto_7

    :cond_14
    and-int/2addr v1, v7

    if-ne v1, v10, :cond_1d

    .line 89
    sget v1, Lh0/c;->E:I

    if-eq v1, v4, :cond_15

    if-eq v1, v8, :cond_15

    .line 90
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    .line 91
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 92
    :cond_15
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    .line 93
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_16
    and-int/2addr v1, v7

    if-ne v1, v10, :cond_1d

    .line 94
    sget v1, Lh0/c;->E:I

    if-eq v1, v4, :cond_18

    if-eq v1, v12, :cond_17

    if-eq v1, v8, :cond_18

    const/16 v1, 0xc

    .line 95
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 96
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 97
    :cond_17
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    .line 98
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 99
    :cond_18
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    .line 100
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_19
    const/16 v2, 0x408

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 101
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v8, 0xff00

    and-int/2addr v4, v8

    add-int/lit8 v6, p2, 0x2

    aget-byte v1, v1, v6

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_1a
    const/16 v2, 0x62

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x2

    .line 102
    aget-byte v11, v1, v6

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v10

    aput v11, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v10, [I

    .line 103
    aget-byte v6, v1, v6

    shr-int/2addr v6, v9

    and-int/2addr v6, v10

    aput v6, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 104
    aget-byte v11, v1, v6

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v10

    aput v11, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v10, [I

    .line 105
    aget-byte v6, v1, v6

    shr-int/2addr v6, v9

    and-int/2addr v6, v10

    aput v6, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 106
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v10

    aput v6, v2, v5

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v6, v10, [I

    .line 107
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    aput v4, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 108
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v10

    aput v1, v2, v5

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 109
    :cond_1b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_7

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 110
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const v3, 0x8000

    const/16 v4, 0x2000

    invoke-static {v2, v1, v3, v5, v4}, Lk0/qt;->m(IIIZI)V

    :cond_1d
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x20
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
    iget-object v0, p0, Lk0/of;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/of;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/of;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6a

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
    .locals 5

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lez p1, :cond_3

    .line 2
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lk0/of;->c3(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-lez p1, :cond_3

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0xe0

    aput v0, p1, v4

    aput v3, p1, v3

    .line 4
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-lez p1, :cond_3

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x88

    aput v0, p1, v4

    aput v3, p1, v3

    .line 6
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public final b3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x4

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public final c3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/of;->k:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x69

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0x99

    aput v3, v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v0, v1, v3

    aput p1, v1, v4

    const/4 p1, 0x5

    aput v2, v1, p1

    const/4 p1, 0x6

    aput v2, v1, p1

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/of;->b:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/of;->k:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/of;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
