.class public Lk0/bp;
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
    iput v0, p0, Lk0/bp;->c:I

    const/16 v1, 0x15

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

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v2, 0x14

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/bp;->d:[[I

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
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
        0xd
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x11
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x12
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x13
        0x1f
    .end array-data

    :array_10
    .array-data 4
        0x14
        0x1e
    .end array-data

    :array_11
    .array-data 4
        0x15
        0x18
    .end array-data

    :array_12
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x18
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x19
        0xd
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->j:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    iput v2, v0, Lk0/mt;->l:I

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    aget-byte v0, v2, p2

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v3, :cond_16

    const/16 v7, 0x30

    if-eq v0, v7, :cond_15

    const/4 v9, 0x7

    const/4 v10, 0x5

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/16 v14, 0xff

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    const/16 v0, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 2
    aget-byte v8, v2, v7

    shr-int/2addr v8, v9

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6f

    new-array v3, v6, [I

    .line 3
    aget-byte v8, v2, v7

    shr-int/2addr v8, v11

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x70

    new-array v3, v6, [I

    .line 4
    aget-byte v8, v2, v7

    shr-int/2addr v8, v10

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x71

    new-array v3, v6, [I

    .line 5
    aget-byte v8, v2, v7

    shr-int/2addr v8, v12

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x72

    new-array v3, v6, [I

    .line 6
    aget-byte v8, v2, v7

    shr-int/2addr v8, v13

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x73

    new-array v3, v6, [I

    .line 7
    aget-byte v8, v2, v7

    shr-int/2addr v8, v4

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    .line 8
    aget-byte v0, v2, v7

    shr-int/2addr v0, v9

    and-int/2addr v0, v6

    const-string v3, "com.syu.carinfo.wc.ruijie15.LZBinliTianyueCarAirSet"

    if-eq v0, v6, :cond_1

    aget-byte v0, v2, v7

    shr-int/2addr v0, v11

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_1

    aget-byte v0, v2, v7

    shr-int/2addr v0, v10

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_1

    aget-byte v0, v2, v7

    shr-int/2addr v0, v12

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    .line 11
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.syu.canbus"

    .line 15
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    .line 16
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_2
    :goto_1
    aget-byte v0, v2, v7

    shr-int/2addr v0, v13

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_3

    aget-byte v0, v2, v7

    shr-int/2addr v0, v4

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_18

    .line 21
    :cond_3
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-nez v0, :cond_18

    .line 22
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_d

    :pswitch_1
    add-int/lit8 v0, p2, 0x2

    .line 23
    aget-byte v0, v2, v0

    const-string v2, "persist.syu.reversefrontdoor"

    .line 24
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    new-array v2, v6, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 25
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 26
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    new-array v2, v6, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 27
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 28
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v6, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 29
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 30
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v0, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 31
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v0, v4

    and-int/2addr v0, v6

    aput v0, v2, v5

    .line 32
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_2
    add-int/lit8 v0, p2, 0x2

    .line 33
    aget-byte v3, v2, v0

    and-int/2addr v3, v14

    add-int/lit8 v4, p2, 0x3

    .line 34
    aget-byte v7, v2, v4

    and-int/2addr v7, v14

    add-int/lit8 v8, p2, 0x4

    .line 35
    aget-byte v9, v2, v8

    and-int/2addr v9, v14

    add-int/lit8 v10, p2, 0x5

    .line 36
    aget-byte v11, v2, v10

    and-int/2addr v11, v14

    if-nez v3, :cond_5

    if-nez v7, :cond_5

    if-nez v9, :cond_5

    if-nez v11, :cond_5

    .line 37
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 38
    :cond_5
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_6

    sget v5, Ll0/c0;->h:I

    if-ne v5, v7, :cond_6

    sget v5, Ll0/c0;->i:I

    if-ne v5, v9, :cond_6

    sget v5, Ll0/c0;->j:I

    if-eq v5, v11, :cond_7

    .line 39
    :cond_6
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_7

    .line 40
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 41
    sput v12, Ll0/c0;->k:I

    .line 42
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 43
    :cond_7
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 44
    sput v7, Ll0/c0;->h:I

    .line 45
    sput v9, Ll0/c0;->i:I

    .line 46
    sput v11, Ll0/c0;->j:I

    .line 47
    aget-byte v0, v2, v0

    and-int/2addr v0, v14

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    .line 48
    aget-byte v0, v2, v4

    and-int/2addr v0, v14

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    .line 49
    aget-byte v0, v2, v8

    and-int/2addr v0, v14

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->F2(I)V

    .line 50
    aget-byte v0, v2, v10

    and-int/2addr v0, v14

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_d

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 51
    aget-byte v0, v2, v0

    and-int/2addr v0, v14

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 52
    aget-byte v0, v2, v0

    and-int/2addr v0, v14

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 53
    aget-byte v0, v2, v0

    and-int/2addr v0, v14

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/lit8 v0, p2, 0xf

    .line 54
    aget-byte v0, v2, v0

    and-int/2addr v0, v14

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_d

    :pswitch_4
    add-int/lit8 v0, p2, 0x2

    .line 55
    aget-byte v0, v2, v0

    and-int/2addr v0, v14

    add-int/lit8 v15, p2, 0x3

    .line 56
    aget-byte v15, v2, v15

    and-int/2addr v15, v14

    new-array v9, v6, [I

    shr-int/lit8 v16, v0, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v5

    .line 57
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v9, v6, [I

    shr-int/lit8 v16, v0, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v5

    .line 58
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v9, v6, [I

    shr-int/lit8 v16, v0, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v5

    .line 59
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v9, v6, [I

    shr-int/lit8 v16, v0, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v5

    .line 60
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1a

    new-array v9, v6, [I

    shr-int/lit8 v16, v0, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v5

    .line 61
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v9, v6, [I

    shr-int/lit8 v16, v0, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v5

    .line 62
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v9, v6, [I

    shr-int/lit8 v16, v0, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v5

    .line 63
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v9, v6, [I

    shr-int/2addr v0, v5

    and-int/2addr v0, v6

    aput v0, v9, v5

    .line 64
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x12

    new-array v3, v6, [I

    shr-int/lit8 v9, v15, 0x7

    and-int/2addr v9, v6

    aput v9, v3, v5

    .line 65
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v3, v6, [I

    shr-int/lit8 v9, v15, 0x6

    and-int/2addr v9, v6

    aput v9, v3, v5

    .line 66
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v3, v6, [I

    shr-int/lit8 v9, v15, 0x5

    and-int/2addr v9, v6

    aput v9, v3, v5

    .line 67
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x31

    new-array v3, v6, [I

    shr-int/lit8 v9, v15, 0x4

    and-int/2addr v9, v6

    aput v9, v3, v5

    .line 68
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v3, v6, [I

    and-int/lit8 v9, v15, 0xf

    aput v9, v3, v5

    .line 69
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x4

    .line 70
    aget-byte v3, v2, v0

    and-int/2addr v3, v14

    add-int/lit8 v9, p2, 0x5

    .line 71
    aget-byte v15, v2, v9

    and-int/2addr v15, v14

    const-string v7, "persist.fyt.reversetemp"

    .line 72
    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 73
    aget-byte v3, v2, v9

    and-int/2addr v3, v14

    .line 74
    aget-byte v0, v2, v0

    and-int/lit16 v15, v0, 0xff

    :cond_8
    const/4 v0, -0x3

    const/4 v7, -0x2

    const/16 v9, 0x1b

    if-nez v3, :cond_9

    new-array v3, v6, [I

    aput v7, v3, v5

    .line 75
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_9
    if-ne v3, v14, :cond_a

    new-array v3, v6, [I

    aput v0, v3, v5

    .line 76
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    new-array v8, v6, [I

    aput v3, v8, v5

    .line 77
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v3, 0x1c

    if-nez v15, :cond_b

    new-array v0, v6, [I

    aput v7, v0, v5

    .line 78
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_b
    if-ne v15, v14, :cond_c

    new-array v7, v6, [I

    aput v0, v7, v5

    .line 79
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array v0, v6, [I

    aput v15, v0, v5

    .line 80
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v0, 0x62

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 81
    aget-byte v8, v2, v7

    shr-int/2addr v8, v10

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x63

    new-array v3, v6, [I

    .line 82
    aget-byte v8, v2, v7

    shr-int/2addr v8, v12

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x64

    new-array v3, v6, [I

    .line 83
    aget-byte v8, v2, v7

    shr-int/2addr v8, v4

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x65

    new-array v3, v6, [I

    .line 84
    aget-byte v8, v2, v7

    shr-int/2addr v8, v6

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v3, v6, [I

    .line 85
    aget-byte v8, v2, v7

    shr-int/2addr v8, v13

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x25

    new-array v3, v6, [I

    .line 86
    aget-byte v7, v2, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1d

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 87
    aget-byte v8, v2, v7

    shr-int/2addr v8, v11

    and-int/2addr v8, v13

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    .line 88
    aget-byte v3, v2, v7

    shr-int/2addr v3, v12

    and-int/2addr v3, v13

    aput v3, v0, v5

    const/16 v3, 0x1f

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    .line 89
    aget-byte v3, v2, v7

    shr-int/2addr v3, v4

    and-int/2addr v3, v13

    aput v3, v0, v5

    const/16 v3, 0x1e

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x20

    new-array v3, v6, [I

    .line 90
    aget-byte v7, v2, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v13

    aput v7, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x16

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 91
    aget-byte v8, v2, v7

    const/4 v9, 0x7

    shr-int/2addr v8, v9

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x17

    new-array v3, v6, [I

    .line 92
    aget-byte v8, v2, v7

    shr-int/2addr v8, v11

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x18

    new-array v3, v6, [I

    .line 93
    aget-byte v8, v2, v7

    shr-int/2addr v8, v10

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x32

    new-array v3, v6, [I

    .line 94
    aget-byte v8, v2, v7

    shr-int/2addr v8, v12

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x19

    new-array v3, v6, [I

    .line 95
    aget-byte v7, v2, v7

    and-int/lit8 v7, v7, 0xf

    aput v7, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x9

    .line 96
    aget-byte v8, v2, v7

    const/4 v9, 0x7

    shr-int/2addr v8, v9

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    new-array v3, v6, [I

    .line 97
    aget-byte v8, v2, v7

    shr-int/2addr v8, v11

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x68

    new-array v3, v6, [I

    .line 98
    aget-byte v8, v2, v7

    shr-int/2addr v8, v10

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x69

    new-array v3, v6, [I

    .line 99
    aget-byte v8, v2, v7

    shr-int/2addr v8, v12

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6a

    new-array v3, v6, [I

    .line 100
    aget-byte v8, v2, v7

    shr-int/2addr v8, v13

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6b

    new-array v3, v6, [I

    .line 101
    aget-byte v8, v2, v7

    shr-int/lit8 v4, v8, 0x2

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6c

    new-array v3, v6, [I

    .line 102
    aget-byte v4, v2, v7

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6d

    new-array v3, v6, [I

    .line 103
    aget-byte v2, v2, v7

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_5
    add-int/lit8 v0, p2, 0x2

    .line 104
    aget-byte v0, v2, v0

    add-int/lit8 v3, p2, 0x3

    .line 105
    aget-byte v2, v2, v3

    and-int/2addr v0, v14

    .line 106
    iput v0, v1, Lk0/bp;->c:I

    move v0, v5

    .line 107
    :goto_6
    iget-object v3, v1, Lk0/bp;->d:[[I

    array-length v4, v3

    if-ge v0, v4, :cond_e

    .line 108
    iget v4, v1, Lk0/bp;->c:I

    aget-object v7, v3, v0

    aget v7, v7, v5

    if-ne v4, v7, :cond_d

    if-eqz v4, :cond_e

    .line 109
    iput v0, v1, Lk0/bp;->b:I

    goto :goto_7

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 110
    :cond_e
    :goto_7
    iget v4, v1, Lk0/bp;->c:I

    packed-switch v4, :pswitch_data_1

    and-int/2addr v2, v14

    if-ne v2, v6, :cond_13

    .line 111
    array-length v2, v3

    if-ge v0, v2, :cond_18

    .line 112
    aget-object v0, v3, v0

    aget v0, v0, v6

    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :pswitch_6
    move v0, v5

    :goto_8
    and-int/lit16 v3, v2, 0xff

    if-ge v0, v3, :cond_f

    const/16 v3, 0x1e

    .line 113
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    const/16 v3, 0x1e

    .line 114
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :pswitch_7
    move v0, v5

    :goto_9
    and-int/lit16 v3, v2, 0xff

    if-ge v0, v3, :cond_10

    const/16 v3, 0x1f

    .line 115
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_10
    const/16 v3, 0x1f

    .line 116
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :pswitch_8
    move v0, v5

    :goto_a
    and-int/lit16 v3, v2, 0xff

    const/16 v4, 0x8

    if-ge v0, v3, :cond_11

    .line 117
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 118
    :cond_11
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    goto :goto_d

    :pswitch_9
    move v0, v5

    :goto_b
    and-int/lit16 v3, v2, 0xff

    if-ge v0, v3, :cond_12

    const/4 v3, 0x7

    .line 119
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_12
    const/4 v3, 0x7

    .line 120
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_13
    if-nez v2, :cond_18

    .line 121
    iget v0, v1, Lk0/bp;->b:I

    array-length v2, v3

    if-ge v0, v2, :cond_14

    if-eq v0, v14, :cond_14

    .line 122
    aget-object v0, v3, v0

    aget v0, v0, v6

    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 123
    :cond_14
    iput v14, v1, Lk0/bp;->b:I

    goto :goto_d

    :pswitch_a
    add-int/lit8 v0, p2, 0x2

    .line 124
    aget-byte v3, v2, v0

    shr-int/2addr v3, v10

    and-int/2addr v3, v6

    invoke-static {v3}, Lu0/d;->C2(I)V

    .line 125
    aget-byte v0, v2, v0

    shr-int/2addr v0, v11

    and-int/2addr v0, v6

    invoke-static {v0}, Lk0/qt;->a(I)V

    goto :goto_d

    .line 126
    :cond_15
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    add-int/lit8 v0, p2, 0x3

    .line 127
    aget-byte v0, v2, v0

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v2, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v2, v2, v4

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_17

    goto :goto_c

    :cond_17
    move v5, v6

    :goto_c
    const/16 v2, 0x1e0

    invoke-static {v0, v3, v5, v2}, Lk0/qt;->j(IIII)V

    :cond_18
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x74

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

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0xa8

    aput p4, p1, v4

    aput v3, p1, v3

    .line 1
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p4, p1, v2

    const/16 p4, 0xa7

    aput p4, p1, v4

    aput v0, p1, v3

    .line 2
    aget p4, p2, v2

    aput p4, p1, v1

    aget p4, p2, v4

    aput p4, p1, p3

    aget p3, p2, v3

    aput p3, p1, v0

    const/4 p3, 0x6

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [I

    aput p4, p1, v2

    const/16 p3, 0xff

    aput p3, p1, v4

    aput v4, p1, v3

    .line 3
    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0xc6

    aput p4, p1, v4

    aput v3, p1, v3

    .line 4
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
