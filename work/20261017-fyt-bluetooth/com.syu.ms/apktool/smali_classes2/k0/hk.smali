.class public Lk0/hk;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/hk;->c:I

    const/16 v0, 0xd

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/hk;->d:[[I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lk0/hk;->e:I

    .line 5
    iput v3, p0, Lk0/hk;->f:I

    .line 6
    new-instance v0, Lk0/hk$a;

    invoke-direct {v0, p0}, Lk0/hk$a;-><init>(Lk0/hk;)V

    iput-object v0, p0, Lk0/hk;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/hk$b;

    invoke-direct {v0, p0}, Lk0/hk$b;-><init>(Lk0/hk;)V

    iput-object v0, p0, Lk0/hk;->h:Ljava/lang/Runnable;

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
        0xd
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
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x10
        0x6
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
    iput v2, v0, Lk0/mt;->q:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iput v2, v0, Lk0/mt;->h:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/hk;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget v0, Lk0/nt;->a:I

    const-string v3, "com.syu.canbus"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 11
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x2

    iput v3, v0, Lk0/mt;->h:I

    goto :goto_0

    .line 12
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 13
    :sswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    iput v1, v0, Lk0/mt;->i:I

    .line 15
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5901bc -> :sswitch_2
        0x5a01bc -> :sswitch_1
        0x5b01bc -> :sswitch_1
        0x5c01bc -> :sswitch_1
        0xe501bb -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x5a

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_20

    const/16 v3, -0x18

    const/4 v7, 0x5

    if-eq v2, v3, :cond_1c

    const/16 v3, -0x10

    const/4 v8, 0x2

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x11

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v2, v3, :cond_14

    const/16 v3, 0x41

    const/16 v11, 0x31

    if-eq v2, v11, :cond_4

    if-eq v2, v3, :cond_0

    goto/16 :goto_e

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->s1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->s1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 6
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0x7

    .line 7
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    add-int/lit8 v10, p2, 0x8

    .line 8
    aget-byte v11, v1, v10

    and-int/2addr v11, v4

    add-int/lit8 v12, p2, 0x9

    .line 9
    aget-byte v13, v1, v12

    and-int/2addr v13, v4

    if-ne v3, v4, :cond_1

    if-ne v8, v4, :cond_1

    if-ne v11, v4, :cond_1

    if-ne v13, v4, :cond_1

    .line 10
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 11
    :cond_1
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_2

    sget v5, Ll0/c0;->h:I

    if-ne v5, v8, :cond_2

    sget v5, Ll0/c0;->i:I

    if-ne v5, v11, :cond_2

    sget v5, Ll0/c0;->j:I

    if-eq v5, v13, :cond_3

    .line 12
    :cond_2
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_3

    .line 13
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 14
    sput v9, Ll0/c0;->k:I

    .line 15
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 16
    :cond_3
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 17
    sput v8, Ll0/c0;->h:I

    .line 18
    sput v11, Ll0/c0;->i:I

    .line 19
    sput v13, Ll0/c0;->j:I

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->s1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 21
    aget-byte v2, v1, v7

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 22
    aget-byte v2, v1, v10

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 23
    aget-byte v1, v1, v12

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->s1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :cond_4
    const/16 v2, 0xa

    new-array v12, v6, [I

    add-int/lit8 v13, p2, 0x2

    .line 24
    aget-byte v14, v1, v13

    const/4 v15, 0x6

    shr-int/2addr v14, v15

    and-int/2addr v14, v6

    aput v14, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v12, v6, [I

    .line 25
    aget-byte v14, v1, v13

    shr-int/2addr v14, v7

    and-int/2addr v14, v6

    aput v14, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 26
    aget-byte v12, v1, v13

    shr-int/2addr v12, v10

    and-int/2addr v12, v6

    aput v12, v2, v5

    const/16 v12, 0xd

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v14, v6, [I

    .line 27
    aget-byte v13, v1, v13

    shr-int/2addr v13, v8

    and-int/2addr v13, v6

    aput v13, v14, v5

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v13, v6, [I

    add-int/lit8 v14, p2, 0x3

    .line 28
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v5

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v13, v6, [I

    .line 29
    aget-byte v14, v1, v14

    shr-int/2addr v14, v9

    and-int/2addr v14, v6

    aput v14, v13, v5

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v13, v6, [I

    add-int/lit8 v14, p2, 0x4

    .line 30
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v5

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 31
    aget-byte v13, v1, v14

    shr-int/2addr v13, v9

    and-int/2addr v13, v6

    aput v13, v2, v5

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v6, [I

    .line 32
    aget-byte v13, v1, v14

    shr-int/2addr v13, v5

    and-int/2addr v13, v10

    aput v13, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v6, [I

    .line 33
    aget-byte v13, v1, v14

    shr-int/lit8 v8, v13, 0x2

    and-int/2addr v8, v10

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x5

    .line 34
    aget-byte v13, v1, v8

    shr-int/lit8 v9, v13, 0x4

    and-int/2addr v9, v10

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v6, [I

    .line 35
    aget-byte v8, v1, v8

    shr-int/2addr v8, v15

    and-int/2addr v8, v10

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 36
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0xf

    if-eq v3, v6, :cond_8

    if-eq v3, v10, :cond_7

    if-eq v3, v7, :cond_6

    if-eq v3, v15, :cond_5

    packed-switch v3, :pswitch_data_0

    move v3, v5

    move v8, v3

    :goto_1
    move v9, v8

    :goto_2
    move v13, v9

    goto :goto_3

    :pswitch_0
    move v3, v5

    move v8, v6

    goto :goto_1

    :pswitch_1
    move v3, v5

    move v13, v3

    move v8, v6

    move v9, v8

    goto :goto_3

    :pswitch_2
    move v3, v5

    move v9, v3

    move v8, v6

    move v13, v8

    goto :goto_3

    :pswitch_3
    move v3, v5

    move v9, v3

    move v13, v9

    move v8, v6

    goto :goto_3

    :cond_5
    move v3, v5

    move v8, v3

    move v13, v8

    move v9, v6

    goto :goto_3

    :cond_6
    move v3, v5

    move v8, v3

    move v9, v6

    goto :goto_2

    :cond_7
    move v3, v5

    move v8, v3

    move v9, v8

    move v13, v6

    goto :goto_3

    :cond_8
    move v8, v5

    move v9, v8

    move v13, v9

    move v3, v6

    :goto_3
    new-array v14, v6, [I

    aput v3, v14, v5

    .line 37
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v11, v6, [I

    aput v8, v11, v5

    .line 38
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v8, v6, [I

    aput v9, v8, v5

    .line 39
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v8, v6, [I

    aput v13, v8, v5

    .line 40
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v8, v6, [I

    .line 41
    aget-byte v9, v1, v2

    and-int/lit8 v9, v9, 0xf

    aput v9, v8, v5

    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    .line 42
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v6, :cond_c

    if-eq v2, v10, :cond_b

    if-eq v2, v7, :cond_a

    if-eq v2, v15, :cond_9

    packed-switch v2, :pswitch_data_1

    move v2, v5

    move v3, v2

    :goto_4
    move v8, v3

    :goto_5
    move v9, v8

    goto :goto_6

    :pswitch_4
    move v2, v5

    move v3, v6

    goto :goto_4

    :pswitch_5
    move v2, v5

    move v9, v2

    move v3, v6

    move v8, v3

    goto :goto_6

    :pswitch_6
    move v2, v5

    move v8, v2

    move v3, v6

    move v9, v3

    goto :goto_6

    :pswitch_7
    move v2, v5

    move v8, v2

    move v9, v8

    move v3, v6

    goto :goto_6

    :cond_9
    move v2, v5

    move v3, v2

    move v9, v3

    move v8, v6

    goto :goto_6

    :cond_a
    move v2, v5

    move v3, v2

    move v8, v6

    goto :goto_5

    :cond_b
    move v2, v5

    move v3, v2

    move v8, v3

    move v9, v6

    goto :goto_6

    :cond_c
    move v3, v5

    move v8, v3

    move v9, v8

    move v2, v6

    :goto_6
    const/16 v10, 0x32

    new-array v11, v6, [I

    aput v2, v11, v5

    .line 43
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v10, v6, [I

    aput v3, v10, v5

    .line 44
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v6, [I

    aput v8, v3, v5

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v6, [I

    aput v9, v3, v5

    .line 46
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x7

    .line 47
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 48
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v8, p2, 0x9

    .line 49
    aget-byte v9, v1, v8

    and-int/2addr v9, v4

    const-string v10, "persist.fyt.reversetemp"

    .line 50
    invoke-static {v10, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 51
    aget-byte v3, v1, v8

    and-int/2addr v3, v4

    .line 52
    aget-byte v2, v1, v2

    and-int/lit16 v9, v2, 0xff

    :cond_d
    const/4 v2, -0x3

    const/4 v8, -0x2

    const/16 v10, 0xfe

    const/16 v11, 0x1b

    if-ne v3, v10, :cond_e

    new-array v3, v6, [I

    aput v8, v3, v5

    .line 53
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_e
    if-ne v3, v4, :cond_f

    new-array v3, v6, [I

    aput v2, v3, v5

    .line 54
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_f
    new-array v13, v6, [I

    mul-int/2addr v3, v7

    aput v3, v13, v5

    .line 55
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v3, 0x1c

    if-ne v9, v10, :cond_10

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 56
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_10
    if-ne v9, v4, :cond_11

    new-array v6, v6, [I

    aput v2, v6, v5

    .line 57
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    new-array v2, v6, [I

    mul-int/2addr v9, v7

    aput v9, v2, v5

    .line 58
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    add-int/lit8 v2, p2, 0xd

    .line 59
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_13

    if-nez v1, :cond_12

    goto :goto_9

    :cond_12
    mul-int/2addr v1, v7

    add-int/lit16 v1, v1, 0x258

    .line 60
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    .line 61
    :cond_13
    :goto_9
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :cond_14
    add-int/lit8 v2, p2, 0x4

    .line 62
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 63
    aget-byte v3, v1, v3

    and-int/2addr v2, v4

    .line 64
    iput v2, v0, Lk0/hk;->c:I

    move v2, v5

    .line 65
    :goto_a
    iget-object v11, v0, Lk0/hk;->d:[[I

    array-length v12, v11

    if-ge v2, v12, :cond_16

    .line 66
    iget v12, v0, Lk0/hk;->c:I

    aget-object v13, v11, v2

    aget v13, v13, v5

    if-ne v12, v13, :cond_15

    if-eqz v12, :cond_16

    .line 67
    iput v2, v0, Lk0/hk;->b:I

    goto :goto_b

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    :goto_b
    and-int/2addr v3, v4

    if-ne v3, v6, :cond_17

    .line 68
    array-length v3, v11

    if-ge v2, v3, :cond_19

    .line 69
    aget-object v2, v11, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_17
    if-nez v3, :cond_19

    .line 70
    iget v2, v0, Lk0/hk;->b:I

    array-length v3, v11

    if-ge v2, v3, :cond_18

    if-eq v2, v4, :cond_18

    .line 71
    aget-object v2, v11, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 72
    :cond_18
    iput v4, v0, Lk0/hk;->b:I

    :cond_19
    :goto_c
    add-int/lit8 v2, p2, 0x6

    .line 73
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 74
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1a

    new-array v3, v6, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v6

    aput v11, v3, v5

    .line 75
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v6

    aput v11, v3, v5

    .line 76
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_1a
    new-array v3, v6, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v6

    aput v11, v3, v5

    .line 77
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v6

    aput v11, v3, v5

    .line 78
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_d
    new-array v3, v6, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v6

    aput v11, v3, v5

    .line 79
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v6

    aput v10, v3, v5

    .line 80
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v6

    aput v9, v3, v5

    .line 81
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v6

    aput v2, v3, v5

    .line 82
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 83
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    const/16 v3, 0x21c

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    .line 84
    :cond_1b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 85
    :cond_1c
    sget v2, Lk0/nt;->a:I

    const v3, 0xe501bb

    if-ne v2, v3, :cond_21

    .line 86
    iget v2, v0, Lk0/hk;->e:I

    add-int/lit8 v3, p2, 0x5

    aget-byte v7, v1, v3

    and-int/2addr v7, v4

    if-eq v2, v7, :cond_21

    .line 87
    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    iput v1, v0, Lk0/hk;->e:I

    .line 88
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 89
    iget v1, v0, Lk0/hk;->e:I

    const/high16 v2, 0x20000

    if-ne v1, v6, :cond_1d

    .line 90
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Lu0/i;->g4(IZ)V

    goto/16 :goto_e

    .line 91
    :cond_1d
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Lu0/i;->g4(IZ)V

    goto/16 :goto_e

    .line 92
    :cond_1e
    iget v1, v0, Lk0/hk;->e:I

    if-ne v1, v6, :cond_1f

    .line 93
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_e

    .line 94
    :cond_1f
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_e

    :cond_20
    const/16 v2, 0x62

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 95
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 96
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 97
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 98
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 99
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 100
    aget-byte v7, v1, v7

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 101
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    .line 102
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_21
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/hk;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/hk;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    if-ltz p2, :cond_0

    const/16 p3, 0x6a

    if-ge p2, p3, :cond_0

    .line 1
    sget-object p3, Lk0/nt;->g:[I

    aget p3, p3, p2

    invoke-static {p1, p2, p3}, Ly/e;->a(Ly/b;II)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/16 v4, 0xe3

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v8, :cond_4

    const/16 v9, 0x3eb

    const/4 v10, 0x6

    if-eq v0, v9, :cond_3

    const/16 v9, 0x405

    if-eq v0, v9, :cond_0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0, v1, v6}, Lk0/lt;->T2([II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2
    aget v9, v1, v8

    mul-int/lit16 v9, v9, 0x3ff

    invoke-static {}, La/f;->w()I

    move-result v11

    div-int/2addr v9, v11

    .line 3
    aget v11, v1, v6

    mul-int/lit16 v11, v11, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v12

    div-int/2addr v11, v12

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    if-ne v12, v8, :cond_1

    .line 5
    aget v11, v1, v6

    mul-int/lit16 v11, v11, 0x3e8

    div-int/lit16 v11, v11, 0x208

    .line 6
    invoke-static {}, La/f;->w()I

    move-result v12

    const/16 v13, 0x4b0

    if-ne v12, v13, :cond_1

    .line 7
    aget v11, v1, v6

    mul-int/lit16 v11, v11, 0x3e8

    div-int/lit16 v11, v11, 0x384

    .line 8
    :cond_1
    aget v12, v1, v7

    const/4 v13, 0x7

    const/16 v14, 0x2c

    const/16 v15, 0x9

    const/16 v16, 0x8

    if-nez v12, :cond_2

    new-array v1, v15, [I

    aput v4, v1, v7

    aput v10, v1, v8

    aput v14, v1, v6

    aput v8, v1, v3

    shr-int/lit8 v3, v9, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    and-int/lit16 v2, v9, 0xff

    aput v2, v1, v5

    shr-int/lit8 v2, v11, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v10

    and-int/lit16 v2, v11, 0xff

    aput v2, v1, v13

    aput v7, v1, v16

    .line 9
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 10
    :cond_2
    aget v1, v1, v7

    if-ne v1, v8, :cond_6

    new-array v1, v15, [I

    aput v4, v1, v7

    aput v10, v1, v8

    aput v14, v1, v6

    aput v7, v1, v3

    shr-int/lit8 v3, v9, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    and-int/lit16 v2, v9, 0xff

    aput v2, v1, v5

    shr-int/lit8 v2, v11, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v10

    and-int/lit16 v2, v11, 0xff

    aput v2, v1, v13

    aput v7, v1, v16

    .line 11
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    new-array v1, v10, [I

    .line 12
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v1, 0x96

    .line 13
    invoke-static {v1, v2}, La/i;->a0(J)V

    new-array v1, v10, [I

    .line 14
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    new-array v5, v5, [I

    aput v4, v5, v7

    aput v6, v5, v8

    const/16 v4, 0xad

    aput v4, v5, v6

    .line 15
    aget v4, v1, v7

    aput v4, v5, v3

    aget v1, v1, v8

    aput v1, v5, v2

    invoke-static {v5}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    new-array v5, v5, [I

    aput v4, v5, v7

    aput v6, v5, v8

    const/16 v4, 0x3d

    aput v4, v5, v6

    .line 16
    aget v4, v1, v7

    aput v4, v5, v3

    aget v1, v1, v8

    aput v1, v5, v2

    invoke-static {v5}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x3
        0xfa
        0xff
        0x6
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x3
        0xfa
        0xff
        0x6
        0x0
    .end array-data
.end method
