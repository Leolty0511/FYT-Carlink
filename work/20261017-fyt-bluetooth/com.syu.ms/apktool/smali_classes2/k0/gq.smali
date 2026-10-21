.class public Lk0/gq;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gq;->c:I

    const/16 v1, 0xf

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

    new-array v2, v2, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/gq;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/gq;->e:Z

    .line 5
    new-instance v1, Lk0/gq$a;

    invoke-direct {v1, p0}, Lk0/gq$a;-><init>(Lk0/gq;)V

    iput-object v1, p0, Lk0/gq;->f:Ljava/lang/Runnable;

    .line 6
    iput v0, p0, Lk0/gq;->g:I

    .line 7
    new-instance v0, Lk0/gq$b;

    invoke-direct {v0, p0}, Lk0/gq$b;-><init>(Lk0/gq;)V

    iput-object v0, p0, Lk0/gq;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/gq$c;

    invoke-direct {v0, p0}, Lk0/gq$c;-><init>(Lk0/gq;)V

    iput-object v0, p0, Lk0/gq;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/gq$d;

    invoke-direct {v0, p0}, Lk0/gq$d;-><init>(Lk0/gq;)V

    iput-object v0, p0, Lk0/gq;->j:Ljava/lang/Runnable;

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
        0xd
    .end array-data

    :array_5
    .array-data 4
        0xb
        0x6
    .end array-data

    :array_6
    .array-data 4
        0xc
        0x37
    .end array-data

    :array_7
    .array-data 4
        0x16
        0x3e
    .end array-data

    :array_8
    .array-data 4
        0x30
        0x36
    .end array-data

    :array_9
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x34
        0x18
    .end array-data

    :array_b
    .array-data 4
        0x37
        0x9
    .end array-data

    :array_c
    .array-data 4
        0x39
        0x12
    .end array-data

    :array_d
    .array-data 4
        0x5a
        0xc
    .end array-data

    :array_e
    .array-data 4
        0x80
        0x0
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

    iget-object v1, p0, Lk0/gq;->h:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/gq;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/gq;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    iput v1, v0, Lk0/mt;->h:I

    .line 13
    iput v1, v0, Lk0/mt;->p:I

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x29

    const/16 v4, 0x21c

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v2, v3, :cond_19

    const/16 v3, 0x30

    const/4 v7, 0x2

    if-eq v2, v3, :cond_18

    const/16 v3, 0x40

    const/16 v8, 0x64

    const/16 v9, 0x7d

    const/16 v11, 0xff

    const/4 v12, 0x0

    if-eq v2, v3, :cond_13

    const/16 v3, 0x62

    const/16 v13, 0x8

    if-eq v2, v3, :cond_12

    if-eq v2, v9, :cond_d

    const/4 v3, 0x6

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const-string v4, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v4, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    new-array v4, v6, [I

    shr-int/lit8 v8, v2, 0x7

    and-int/2addr v8, v6

    aput v8, v4, v12

    .line 4
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v6, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v6

    aput v2, v4, v12

    .line 5
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v12

    .line 6
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v6

    aput v2, v3, v12

    .line 7
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    add-int/lit8 v2, p2, 0x3

    .line 8
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1

    .line 9
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto/16 :goto_5

    .line 10
    :cond_1
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 13
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 14
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->i1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_5

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 17
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->i1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 18
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->i1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_5

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    add-int/lit8 v4, p2, 0x3

    .line 20
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    add-int/lit8 v7, p2, 0x4

    .line 21
    aget-byte v8, v1, v7

    and-int/2addr v8, v11

    add-int/lit8 v9, p2, 0x5

    .line 22
    aget-byte v13, v1, v9

    and-int/2addr v13, v11

    add-int/lit8 v15, p2, 0x6

    .line 23
    aget-byte v15, v1, v15

    and-int/2addr v15, v11

    add-int/lit8 v16, p2, 0x7

    .line 24
    aget-byte v3, v1, v16

    and-int/2addr v3, v11

    const/16 v10, 0xa

    new-array v14, v6, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v12

    .line 25
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xb

    new-array v14, v6, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v12

    .line 26
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xc

    new-array v14, v6, [I

    shr-int/lit8 v17, v2, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v12

    .line 27
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xd

    new-array v14, v6, [I

    shr-int/lit8 v17, v2, 0x3

    and-int/lit8 v5, v17, 0x3

    aput v5, v14, v12

    .line 28
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x3e

    new-array v10, v6, [I

    shr-int/lit8 v14, v2, 0x2

    and-int/2addr v14, v6

    aput v14, v10, v12

    .line 29
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x41

    new-array v10, v6, [I

    shr-int/lit8 v14, v2, 0x1

    and-int/2addr v14, v6

    aput v14, v10, v12

    .line 30
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x10

    new-array v10, v6, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v6

    aput v2, v10, v12

    .line 31
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v5, v6, [I

    shr-int/lit8 v10, v4, 0x7

    and-int/2addr v10, v6

    aput v10, v5, v12

    .line 32
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v6, [I

    shr-int/lit8 v10, v4, 0x6

    and-int/2addr v10, v6

    aput v10, v5, v12

    .line 33
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v6, [I

    shr-int/lit8 v10, v4, 0x5

    and-int/2addr v10, v6

    aput v10, v5, v12

    .line 34
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v5, v6, [I

    shr-int/2addr v4, v12

    and-int/lit8 v4, v4, 0xf

    aput v4, v5, v12

    .line 35
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 36
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    aget-byte v2, v1, v9

    and-int/lit16 v8, v2, 0xff

    .line 38
    aget-byte v1, v1, v7

    and-int/lit16 v13, v1, 0xff

    :cond_2
    and-int/lit16 v1, v8, 0xff

    const/4 v2, -0x3

    const/4 v4, -0x2

    const/16 v5, 0x1b

    if-nez v1, :cond_3

    new-array v1, v6, [I

    aput v4, v1, v12

    .line 39
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    const/16 v7, 0x7f

    if-ne v1, v7, :cond_4

    new-array v1, v6, [I

    aput v2, v1, v12

    .line 40
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v7, v6, [I

    aput v1, v7, v12

    .line 41
    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit16 v1, v13, 0xff

    const/16 v5, 0x1c

    if-nez v1, :cond_5

    new-array v1, v6, [I

    aput v4, v1, v12

    .line 42
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    const/16 v4, 0x7f

    if-ne v1, v4, :cond_6

    new-array v1, v6, [I

    aput v2, v1, v12

    .line 43
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v2, v6, [I

    aput v1, v2, v12

    .line 44
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v1, 0x1d

    new-array v2, v6, [I

    shr-int/lit8 v4, v15, 0x0

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v12

    .line 45
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v6, [I

    const/4 v4, 0x4

    shr-int/lit8 v4, v15, 0x4

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v12

    .line 46
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x55

    new-array v2, v6, [I

    shr-int/lit8 v4, v3, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v12

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x3f

    new-array v2, v6, [I

    const/4 v4, 0x6

    shr-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v2, v12

    .line 48
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 49
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 50
    aget-byte v1, v1, v3

    and-int/2addr v2, v11

    .line 51
    iput v2, v0, Lk0/gq;->c:I

    move v2, v12

    .line 52
    :goto_3
    iget-object v3, v0, Lk0/gq;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 53
    iget v4, v0, Lk0/gq;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_7

    if-eqz v4, :cond_8

    .line 54
    iput v2, v0, Lk0/gq;->b:I

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 55
    :cond_8
    :goto_4
    iget v4, v0, Lk0/gq;->c:I

    const/16 v5, 0x16

    if-eq v4, v5, :cond_b

    and-int/2addr v1, v11

    if-ne v1, v6, :cond_9

    .line 56
    array-length v1, v3

    if-ge v2, v1, :cond_1a

    .line 57
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_9
    if-nez v1, :cond_1a

    .line 58
    iget v1, v0, Lk0/gq;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_a

    if-eq v1, v11, :cond_a

    .line 59
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 60
    :cond_a
    iput v11, v0, Lk0/gq;->b:I

    goto/16 :goto_5

    :cond_b
    and-int/2addr v1, v11

    if-ne v1, v6, :cond_1a

    .line 61
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.air.ActivityNewAir"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 62
    invoke-virtual/range {p0 .. p0}, Lk0/gq;->a3()V

    goto/16 :goto_5

    :cond_c
    const/4 v1, 0x6

    .line 63
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 64
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-eq v2, v6, :cond_10

    if-eq v2, v5, :cond_f

    if-eq v2, v13, :cond_e

    goto/16 :goto_5

    :cond_e
    add-int/lit8 v2, p2, 0x3

    .line 66
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 67
    aget-byte v1, v1, v3

    .line 68
    invoke-static {v2, v1, v6, v4}, Lk0/qt;->i(IIZI)V

    .line 69
    iput-boolean v6, v0, Lk0/gq;->e:Z

    goto/16 :goto_5

    :cond_f
    add-int/lit8 v2, p2, 0x4

    .line 70
    aget-byte v2, v1, v2

    shl-int/2addr v2, v13

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    or-int/2addr v1, v2

    div-int/2addr v1, v8

    const/16 v2, 0x407

    new-array v3, v6, [I

    aput v1, v3, v12

    .line 71
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 72
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v7, [I

    aput v6, v4, v12

    aput v1, v4, v6

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 73
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    add-int/lit8 v2, p2, 0x3

    .line 74
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    and-int/2addr v1, v6

    invoke-static {v3, v1, v12}, Ll0/c0;->b(III)V

    goto/16 :goto_5

    :cond_11
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x3

    .line 75
    aget-byte v4, v1, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v6

    aget-byte v1, v1, v3

    shr-int/2addr v1, v2

    and-int/2addr v1, v6

    invoke-static {v4, v1, v12}, Ll0/c0;->a(III)V

    goto/16 :goto_5

    :cond_12
    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 76
    aget-byte v3, v1, v3

    and-int/2addr v3, v11

    aput v3, v2, v12

    const/16 v3, 0x7f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 77
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 78
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 79
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 80
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 81
    aget-byte v5, v1, v4

    const/4 v7, 0x4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v6, [I

    .line 82
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 83
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-eq v2, v6, :cond_17

    if-eq v2, v7, :cond_16

    if-eq v2, v5, :cond_15

    const/4 v3, 0x4

    if-eq v2, v3, :cond_14

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_5

    :pswitch_5
    const/16 v2, 0x7e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 85
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_6
    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 86
    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    aput v1, v2, v12

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_7
    const/16 v2, 0x7c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 87
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_8
    const/16 v2, 0x7b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 88
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_9
    const/16 v2, 0x7a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 89
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_a
    const/16 v2, 0x79

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 90
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_b
    const/16 v2, 0x78

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 91
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_c
    const/16 v2, 0x77

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 92
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v6, [I

    const/4 v4, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 93
    aget-byte v7, v1, v5

    shr-int/lit8 v4, v7, 0x4

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v6, [I

    .line 94
    aget-byte v1, v1, v5

    shr-int/2addr v1, v12

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_d
    const/16 v2, 0x76

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 95
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_e
    const/16 v2, 0x75

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 96
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_f
    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 97
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_10
    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 98
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_11
    const/16 v2, 0x72

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 99
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_12
    const/16 v2, 0x71

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 100
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_13
    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 101
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_14
    const/16 v2, 0x6f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 102
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_15
    const/16 v2, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 103
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_16
    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 104
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_17
    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 105
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_18
    const/16 v2, 0x6b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 106
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_19
    const/16 v2, 0x6a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 107
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_1a
    const/16 v2, 0x69

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 108
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_1b
    const/16 v2, 0x68

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 109
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :pswitch_1c
    const/16 v2, 0x67

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 110
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_14
    const/16 v2, 0x66

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 111
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_15
    const/16 v2, 0x65

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 112
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_16
    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 113
    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    aput v1, v2, v12

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_17
    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 114
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 115
    :cond_18
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_5

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 116
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 117
    aget-byte v1, v1, v3

    .line 118
    iget-boolean v3, v0, Lk0/gq;->e:Z

    if-nez v3, :cond_1a

    .line 119
    invoke-static {v1, v2, v6, v4}, Lk0/qt;->i(IIZI)V

    :cond_1a
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gq;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/gq;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/gq;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/gq;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x89

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
    .locals 6

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    const/4 v5, 0x6

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-lez p1, :cond_4

    const/16 p1, 0xa

    new-array p1, p1, [I

    aput p3, p1, v2

    const/16 p3, -0x39

    aput p3, p1, v4

    const/4 p3, 0x7

    aput p3, p1, v3

    .line 2
    aget v2, p2, v2

    aput v2, p1, v1

    aget v2, p2, v4

    aput v2, p1, p4

    aget v2, p2, v3

    aput v2, p1, v0

    aget v1, p2, v1

    aput v1, p1, v5

    aget p4, p2, p4

    aput p4, p1, p3

    const/16 p3, 0x8

    aget p4, p2, v0

    aput p4, p1, p3

    const/16 p3, 0x9

    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 3
    array-length p1, p2

    if-lez p1, :cond_4

    new-array p1, v5, [I

    aput p3, p1, v2

    const/16 p3, -0x37

    aput p3, p1, v4

    aput v1, p1, v3

    .line 4
    aget p3, p2, v2

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 5
    array-length p1, p2

    if-lez p1, :cond_4

    new-array p1, v0, [I

    aput p3, p1, v2

    const/16 p3, -0x70

    aput p3, p1, v4

    aput v3, p1, v3

    .line 6
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 7
    array-length p1, p2

    if-lez p1, :cond_4

    new-array p1, v0, [I

    aput p3, p1, v2

    const/16 p3, -0x3a

    aput p3, p1, v4

    aput v3, p1, v3

    .line 8
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.air.ActivityNewAir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
