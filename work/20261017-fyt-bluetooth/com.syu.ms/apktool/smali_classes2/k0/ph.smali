.class public Lk0/ph;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ph;->c:I

    const/16 v1, 0xb

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v9, 0x8

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v9, 0x9

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v9, 0xa

    aput-object v3, v1, v9

    iput-object v1, p0, Lk0/ph;->d:[[I

    .line 4
    iput v0, p0, Lk0/ph;->f:I

    new-array v1, v8, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_b

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    aput-object v0, v1, v5

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    aput-object v0, v1, v7

    iput-object v1, p0, Lk0/ph;->g:[[I

    .line 6
    new-instance v0, Lk0/ph$a;

    invoke-direct {v0, p0}, Lk0/ph$a;-><init>(Lk0/ph;)V

    iput-object v0, p0, Lk0/ph;->h:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xb
        0x5
    .end array-data

    :array_9
    .array-data 4
        0xc
        0xd
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x8
    .end array-data

    :array_e
    .array-data 4
        0x7
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x19
    .end array-data

    :array_10
    .array-data 4
        0x10
        0x10
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

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

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

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 8
    :sswitch_0
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 9
    :sswitch_1
    iput v2, v0, Lk0/mt;->i:I

    .line 10
    iget-object v0, p0, Lk0/ph;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4501c7 -> :sswitch_1
        0x6801c8 -> :sswitch_0
        0x6901c8 -> :sswitch_0
        0xa101c6 -> :sswitch_1
        0xc901c7 -> :sswitch_0
        0xca01c7 -> :sswitch_0
        0xfb01b7 -> :sswitch_1
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x28

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_29

    const/16 v3, 0x29

    if-eq v2, v3, :cond_28

    const/16 v3, 0x40

    const/16 v10, 0x64

    const/16 v11, 0xf

    const/16 v12, 0xff

    if-eq v2, v3, :cond_27

    const/16 v3, 0x41

    if-eq v2, v3, :cond_26

    const/16 v3, 0x7d

    const/16 v13, 0xb

    if-eq v2, v3, :cond_22

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_21

    const/16 v3, 0x12

    const/16 v10, 0xc

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const/16 v15, 0xa

    new-array v14, v9, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v8

    .line 3
    invoke-static {v15, v14}, Lk0/qt;->y0(I[I)V

    new-array v14, v9, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 4
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    new-array v13, v9, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v9

    aput v14, v13, v8

    .line 5
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x3f

    new-array v13, v9, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/2addr v14, v9

    aput v14, v13, v8

    .line 6
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xd

    new-array v13, v9, [I

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v9

    aput v14, v13, v8

    .line 7
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    new-array v10, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v10, v8

    .line 8
    invoke-static {v11, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 9
    aget-byte v2, v1, v2

    if-eq v2, v9, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    move v4, v8

    move v5, v4

    :goto_0
    move v7, v5

    goto :goto_1

    :cond_0
    move v5, v8

    move v7, v5

    move v4, v9

    goto :goto_1

    :cond_1
    move v5, v8

    move v4, v9

    move v7, v4

    goto :goto_1

    :cond_2
    move v4, v8

    move v5, v4

    move v7, v9

    goto :goto_1

    :cond_3
    move v4, v8

    move v5, v9

    goto :goto_0

    :cond_4
    move v4, v8

    move v7, v4

    move v5, v9

    :goto_1
    new-array v10, v9, [I

    aput v4, v10, v8

    .line 10
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v9, [I

    aput v5, v4, v8

    .line 11
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v9, [I

    aput v7, v4, v8

    .line 12
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v9, [I

    and-int/2addr v2, v12

    aput v2, v4, v8

    .line 13
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 15
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 16
    aget-byte v5, v1, v4

    and-int/2addr v5, v12

    const-string v7, "persist.fyt.reversetemp"

    .line 17
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 18
    aget-byte v3, v1, v4

    and-int/2addr v3, v12

    .line 19
    aget-byte v1, v1, v2

    and-int/lit16 v5, v1, 0xff

    .line 20
    :cond_5
    sget v1, Lk0/nt;->a:I

    const v2, 0x7201c7

    const/4 v4, -0x1

    const/4 v7, -0x3

    const/4 v10, -0x2

    const/16 v11, 0x1c

    const/16 v12, 0x1b

    if-eq v1, v2, :cond_c

    if-eqz v3, :cond_8

    const/16 v1, 0x1e

    if-eq v3, v1, :cond_7

    if-lt v3, v9, :cond_6

    const/16 v1, 0x1d

    if-gt v3, v1, :cond_6

    new-array v1, v9, [I

    aput v3, v1, v8

    .line 21
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v1, v9, [I

    aput v4, v1, v8

    .line 22
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v1, v9, [I

    aput v7, v1, v8

    .line 23
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v1, v9, [I

    aput v10, v1, v8

    .line 24
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    :goto_2
    if-eqz v5, :cond_b

    const/16 v1, 0x1e

    if-eq v5, v1, :cond_a

    if-lt v5, v9, :cond_9

    const/16 v1, 0x1d

    if-gt v5, v1, :cond_9

    new-array v1, v9, [I

    aput v5, v1, v8

    .line 25
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_9
    new-array v1, v9, [I

    aput v4, v1, v8

    .line 26
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_a
    new-array v1, v9, [I

    aput v7, v1, v8

    .line 27
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_b
    new-array v1, v9, [I

    aput v10, v1, v8

    .line 28
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_c
    const/16 v1, 0x11

    if-eq v3, v9, :cond_f

    if-eq v3, v1, :cond_e

    if-lt v3, v6, :cond_d

    const/16 v2, 0x10

    if-gt v3, v2, :cond_d

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 29
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v2, v9, [I

    aput v4, v2, v8

    .line 30
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    new-array v2, v9, [I

    aput v7, v2, v8

    .line 31
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_f
    new-array v2, v9, [I

    aput v10, v2, v8

    .line 32
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    if-eq v5, v9, :cond_12

    if-eq v5, v1, :cond_11

    if-lt v5, v6, :cond_10

    const/16 v1, 0x10

    if-gt v5, v1, :cond_10

    new-array v1, v9, [I

    aput v5, v1, v8

    .line 33
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_10
    new-array v1, v9, [I

    aput v4, v1, v8

    .line 34
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_11
    new-array v1, v9, [I

    aput v7, v1, v8

    .line 35
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_12
    new-array v1, v9, [I

    aput v10, v1, v8

    .line 36
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 37
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    add-int/lit8 v6, p2, 0x3

    .line 38
    aget-byte v7, v1, v6

    and-int/2addr v7, v12

    add-int/lit8 v10, p2, 0x4

    .line 39
    aget-byte v11, v1, v10

    and-int/2addr v11, v12

    add-int/lit8 v4, p2, 0x5

    .line 40
    aget-byte v13, v1, v4

    and-int/2addr v13, v12

    if-nez v3, :cond_13

    if-nez v7, :cond_13

    if-nez v11, :cond_13

    if-nez v13, :cond_13

    .line 41
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 42
    :cond_13
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_14

    sget v8, Ll0/c0;->h:I

    if-ne v8, v7, :cond_14

    sget v8, Ll0/c0;->i:I

    if-ne v8, v11, :cond_14

    sget v8, Ll0/c0;->j:I

    if-eq v8, v13, :cond_15

    .line 43
    :cond_14
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_15

    .line 44
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 45
    sput v5, Ll0/c0;->k:I

    .line 46
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 47
    :cond_15
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 48
    sput v7, Ll0/c0;->h:I

    .line 49
    sput v11, Ll0/c0;->i:I

    .line 50
    sput v13, Ll0/c0;->j:I

    .line 51
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->F0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 52
    aget-byte v2, v1, v6

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->F0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 53
    aget-byte v2, v1, v10

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->F0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 54
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->F0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->F0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 56
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->F0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->F0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 58
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->F0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_b

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 60
    aget-byte v1, v1, v3

    and-int/2addr v2, v12

    .line 61
    iput v2, v0, Lk0/ph;->f:I

    move v2, v8

    .line 62
    :goto_5
    iget-object v3, v0, Lk0/ph;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_17

    .line 63
    iget v4, v0, Lk0/ph;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_16

    if-eqz v4, :cond_17

    .line 64
    iput v2, v0, Lk0/ph;->e:I

    goto :goto_6

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    :goto_6
    and-int/2addr v1, v12

    if-ne v1, v9, :cond_18

    .line 65
    array-length v1, v3

    if-ge v2, v1, :cond_2b

    .line 66
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_18
    if-nez v1, :cond_2b

    .line 67
    iget v1, v0, Lk0/ph;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_19

    if-eq v1, v12, :cond_19

    .line 68
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 69
    :cond_19
    iput v12, v0, Lk0/ph;->e:I

    goto/16 :goto_b

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v2, v1, v2

    add-int/lit8 v6, p2, 0x3

    .line 71
    aget-byte v1, v1, v6

    and-int/2addr v2, v12

    .line 72
    iput v2, v0, Lk0/ph;->c:I

    move v2, v8

    .line 73
    :goto_7
    iget-object v6, v0, Lk0/ph;->d:[[I

    array-length v11, v6

    if-ge v2, v11, :cond_1b

    .line 74
    iget v11, v0, Lk0/ph;->c:I

    aget-object v13, v6, v2

    aget v13, v13, v8

    if-ne v11, v13, :cond_1a

    if-eqz v11, :cond_1b

    .line 75
    iput v2, v0, Lk0/ph;->b:I

    goto :goto_8

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 76
    :cond_1b
    :goto_8
    iget v11, v0, Lk0/ph;->c:I

    const/4 v13, 0x6

    if-eq v11, v13, :cond_1e

    and-int/2addr v1, v12

    if-ne v1, v9, :cond_1c

    .line 77
    array-length v1, v6

    if-ge v2, v1, :cond_2b

    .line 78
    aget-object v1, v6, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_1c
    if-nez v1, :cond_2b

    .line 79
    iget v1, v0, Lk0/ph;->b:I

    array-length v2, v6

    if-ge v1, v2, :cond_1d

    if-eq v1, v12, :cond_1d

    .line 80
    aget-object v1, v6, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 81
    :cond_1d
    iput v12, v0, Lk0/ph;->b:I

    goto/16 :goto_b

    :cond_1e
    and-int/2addr v1, v12

    if-ne v1, v9, :cond_2b

    .line 82
    sget v1, Lh0/c;->E:I

    if-eq v1, v7, :cond_20

    if-eq v1, v5, :cond_1f

    if-eq v1, v4, :cond_20

    .line 83
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    .line 84
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 85
    :cond_1f
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    .line 86
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_20
    const/16 v1, 0x1a

    .line 87
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 88
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 89
    :cond_21
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    const/16 v3, 0x419

    const/4 v4, 0x0

    if-eq v2, v9, :cond_24

    if-eq v2, v7, :cond_23

    goto/16 :goto_b

    :cond_23
    add-int/lit8 v2, p2, 0x4

    .line 91
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v5, 0xff00

    and-int/2addr v2, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v12

    or-int/2addr v1, v2

    div-int/2addr v1, v10

    const/16 v2, 0x407

    new-array v5, v9, [I

    aput v1, v5, v8

    .line 92
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 93
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v5, v6, [I

    aput v9, v5, v8

    aput v1, v5, v9

    invoke-static {v2, v3, v5, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_24
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 94
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_25

    add-int/lit8 v2, p2, 0x3

    .line 95
    aget-byte v10, v1, v2

    shr-int/2addr v10, v7

    and-int/2addr v10, v9

    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v9

    invoke-static {v10, v2, v8}, Ll0/c0;->b(III)V

    goto :goto_9

    :cond_25
    add-int/lit8 v2, p2, 0x3

    .line 96
    aget-byte v10, v1, v2

    shr-int/2addr v10, v7

    and-int/2addr v10, v9

    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v9

    invoke-static {v10, v2, v8}, Ll0/c0;->a(III)V

    .line 97
    :goto_9
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v5, v6, [I

    aput v13, v5, v8

    add-int/lit8 v6, p2, 0x3

    aget-byte v1, v1, v6

    and-int/2addr v1, v12

    aput v1, v5, v9

    invoke-static {v2, v3, v5, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_26
    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 98
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 99
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_27
    const/16 v2, 0x62

    new-array v3, v9, [I

    add-int/lit8 v13, p2, 0x2

    .line 100
    aget-byte v13, v1, v13

    and-int/2addr v13, v12

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v13, p2, 0x3

    .line 101
    aget-byte v13, v1, v13

    and-int/2addr v13, v12

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x4

    .line 102
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    aput v3, v2, v8

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x5

    .line 103
    aget-byte v10, v1, v10

    and-int/2addr v10, v12

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x6

    .line 104
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    .line 105
    aget-byte v12, v1, v10

    shr-int/lit8 v4, v12, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    .line 106
    aget-byte v4, v1, v10

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    .line 107
    aget-byte v4, v1, v10

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    .line 108
    aget-byte v4, v1, v10

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 109
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x4

    and-int/2addr v5, v11

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    .line 110
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v11

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_28
    add-int/lit8 v2, p2, 0x2

    .line 111
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 112
    aget-byte v1, v1, v3

    const/16 v3, 0x15c2

    .line 113
    invoke-static {v1, v2, v8, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_b

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 115
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 116
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 117
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_2a
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 118
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 119
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_a
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 120
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 121
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 122
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :cond_2b
    :goto_b
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ph;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6f

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

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/16 v0, 0xe3

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
    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0xca

    aput p3, p1, v4

    aput v3, p1, v3

    .line 1
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p4, [I

    aput v0, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v4, p1, v3

    .line 2
    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0x8a

    aput p3, p1, v4

    aput v3, p1, v3

    .line 3
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0xc8

    aput p3, p1, v4

    aput v3, p1, v3

    .line 4
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
