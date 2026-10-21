.class public Lk0/jf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/jf;->c:I

    const/4 v1, 0x5

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

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/jf;->d:[[I

    .line 4
    new-instance v0, Lk0/jf$a;

    invoke-direct {v0, p0}, Lk0/jf$a;-><init>(Lk0/jf;)V

    iput-object v0, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/jf$b;

    invoke-direct {v0, p0}, Lk0/jf$b;-><init>(Lk0/jf;)V

    iput-object v0, p0, Lk0/jf;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/jf$c;

    invoke-direct {v0, p0}, Lk0/jf$c;-><init>(Lk0/jf;)V

    iput-object v0, p0, Lk0/jf;->g:Ljava/lang/Runnable;

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
        0xc
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

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/jf;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/jf;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/jf;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x24

    const/4 v5, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v4, :cond_1a

    const/16 v4, 0x29

    if-eq v2, v4, :cond_19

    const/16 v4, 0x30

    if-eq v2, v4, :cond_18

    const/16 v4, 0x32

    const/16 v11, 0xf

    if-eq v2, v4, :cond_17

    const/16 v4, 0x41

    const/16 v12, 0x10

    if-eq v2, v4, :cond_14

    const/16 v4, 0xd2

    if-eq v2, v4, :cond_13

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 7
    aget-byte v4, v1, v4

    add-int/lit8 v13, p2, 0x4

    .line 8
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x5

    .line 9
    aget-byte v15, v1, v14

    add-int/lit8 v16, p2, 0x6

    .line 10
    aget-byte v17, v1, v16

    const/16 v5, 0xb

    new-array v6, v10, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v6, v9

    .line 11
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xc

    new-array v6, v10, [I

    shr-int/lit8 v18, v2, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v6, v9

    .line 12
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v6, v10, [I

    shr-int/lit8 v18, v2, 0x3

    and-int/lit8 v18, v18, 0x1

    aput v18, v6, v9

    .line 13
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe

    new-array v6, v10, [I

    shr-int/lit8 v18, v2, 0x2

    and-int/lit8 v18, v18, 0x1

    aput v18, v6, v9

    .line 14
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 15
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 16
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v4, 0xff

    if-eq v2, v10, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v8, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    move v2, v9

    move v4, v2

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_0
    move v4, v9

    move v5, v4

    move v2, v10

    goto :goto_1

    :cond_1
    move v4, v9

    move v2, v10

    move v5, v2

    goto :goto_1

    :cond_2
    move v2, v9

    move v4, v2

    move v5, v10

    goto :goto_1

    :cond_3
    move v2, v9

    move v4, v10

    goto :goto_0

    :cond_4
    move v2, v9

    move v5, v2

    move v4, v10

    :goto_1
    const/16 v6, 0x12

    new-array v7, v10, [I

    aput v2, v7, v9

    .line 17
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v10, [I

    aput v4, v6, v9

    .line 18
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v10, [I

    aput v5, v4, v9

    .line 19
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v10, [I

    and-int/lit16 v5, v13, 0xff

    aput v5, v4, v9

    .line 20
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 21
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    aget-byte v15, v1, v16

    .line 23
    aget-byte v17, v1, v14

    :cond_5
    move/from16 v2, v17

    and-int/lit16 v4, v15, 0xff

    const/4 v5, -0x3

    const/4 v6, -0x2

    const/16 v7, 0x1b

    if-nez v4, :cond_6

    new-array v4, v10, [I

    aput v6, v4, v9

    .line 24
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    if-ne v4, v3, :cond_7

    new-array v4, v10, [I

    aput v5, v4, v9

    .line 25
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v8, v10, [I

    aput v4, v8, v9

    .line 26
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/2addr v2, v3

    const/16 v4, 0x1c

    if-nez v2, :cond_8

    new-array v2, v10, [I

    aput v6, v2, v9

    .line 27
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    if-ne v2, v3, :cond_9

    new-array v2, v10, [I

    aput v5, v2, v9

    .line 28
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v3, v10, [I

    aput v2, v3, v9

    .line 29
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x1d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 30
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v10, [I

    .line 31
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v11

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 32
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 33
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 34
    iput v2, v0, Lk0/jf;->c:I

    move v2, v9

    .line 35
    :goto_4
    iget-object v4, v0, Lk0/jf;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_b

    .line 36
    iget v5, v0, Lk0/jf;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_a

    if-eqz v5, :cond_b

    .line 37
    iput v2, v0, Lk0/jf;->b:I

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 38
    :cond_b
    :goto_5
    iget v5, v0, Lk0/jf;->c:I

    if-eq v5, v8, :cond_10

    const/4 v6, 0x4

    if-eq v5, v6, :cond_e

    and-int/2addr v1, v3

    if-ne v1, v10, :cond_c

    .line 39
    array-length v1, v4

    if-ge v2, v1, :cond_1c

    .line 40
    aget-object v1, v4, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_c
    if-nez v1, :cond_1c

    .line 41
    iget v1, v0, Lk0/jf;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_d

    if-eq v1, v3, :cond_d

    .line 42
    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 43
    :cond_d
    iput v3, v0, Lk0/jf;->b:I

    goto/16 :goto_a

    :cond_e
    and-int/2addr v1, v3

    if-ne v1, v10, :cond_1c

    .line 44
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    .line 45
    sget-object v1, Lh0/c;->b:Lh0/f;

    invoke-interface {v1}, Lh0/f;->n()V

    goto/16 :goto_a

    .line 46
    :cond_f
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 47
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_10
    const/4 v2, 0x4

    and-int/2addr v1, v3

    if-ne v1, v10, :cond_1c

    .line 48
    sget v1, Lh0/c;->E:I

    if-eq v1, v2, :cond_12

    const/4 v2, 0x5

    if-eq v1, v2, :cond_12

    if-ne v1, v8, :cond_11

    goto :goto_6

    .line 49
    :cond_11
    invoke-static {v8, v9}, Ll0/b0;->l0(II)V

    .line 50
    invoke-static {v8, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    .line 51
    :cond_12
    :goto_6
    sget-object v1, Lh0/c;->b:Lh0/f;

    invoke-interface {v1}, Lh0/f;->e()V

    goto/16 :goto_a

    :cond_13
    const/16 v2, 0x6e

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 52
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 53
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 54
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x5

    .line 55
    aget-byte v5, v1, v5

    and-int/2addr v3, v5

    aput v3, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 56
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    .line 57
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    .line 58
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    .line 59
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v2, v1, v2

    and-int/lit8 v4, v2, 0x7f

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_15

    move v2, v10

    goto :goto_7

    :cond_15
    move v2, v9

    :goto_7
    if-ne v2, v10, :cond_16

    mul-int/lit8 v4, v4, 0xa

    rsub-int v2, v4, 0x3e8

    goto :goto_8

    :cond_16
    mul-int/lit8 v4, v4, 0xa

    add-int/lit16 v2, v4, 0x3e8

    .line 61
    :goto_8
    invoke-static {v2}, Lu0/d;->A3(I)V

    const/16 v2, 0x76

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 62
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 63
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 64
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v6

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 65
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    const/high16 v7, 0xff0000

    and-int/2addr v5, v7

    add-int/lit8 v7, p2, 0x9

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xa

    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    or-int/2addr v1, v5

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_17
    const/16 v2, 0x63

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 66
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v10, [I

    .line 67
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v10, [I

    .line 68
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 69
    aget-byte v5, v1, v5

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 70
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v4, v10, [I

    .line 71
    aget-byte v6, v1, v5

    const/4 v11, 0x5

    shr-int/2addr v6, v11

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v10, [I

    .line 72
    aget-byte v6, v1, v5

    const/4 v11, 0x4

    shr-int/2addr v6, v11

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v10, [I

    .line 73
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v10, [I

    .line 74
    aget-byte v5, v1, v5

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x5

    .line 75
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 76
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 77
    :cond_18
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_a

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 78
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1200

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_a

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 80
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1b

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 81
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 82
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1b
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 83
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 84
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_9
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x4

    .line 85
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 86
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 87
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    aput v1, v2, v9

    const/4 v1, 0x5

    .line 88
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :cond_1c
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
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
    iget-object v0, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/jf;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/jf;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/jf;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/jf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7a

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0xc6

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public a3()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lk0/jf;->b3()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/16 v3, 0xe3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_6

    const/16 v11, 0xc3

    const/16 v12, 0x9

    if-eq v0, v5, :cond_3

    if-eq v0, v6, :cond_d

    if-eq v0, v7, :cond_1

    if-eq v0, v12, :cond_1

    new-array v0, v7, [I

    .line 3
    fill-array-data v0, :array_0

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_0
    if-ge v10, v7, :cond_0

    add-int/lit8 v2, v10, 0x1

    .line 4
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_1
    new-array v0, v7, [I

    aput v11, v0, v10

    aput v6, v0, v9

    .line 6
    sget v9, Lu0/b;->s3:I

    and-int/lit16 v11, v9, 0xff

    aput v11, v0, v8

    shr-int/lit8 v8, v9, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v0, v4

    .line 7
    sget v4, Lu0/b;->r3:I

    and-int/lit16 v8, v4, 0xff

    aput v8, v0, v5

    shr-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v2

    .line 8
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v0, v6

    .line 9
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v1

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_1
    if-ge v10, v7, :cond_2

    add-int/lit8 v2, v10, 0x1

    .line 10
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_3
    new-array v0, v7, [I

    aput v11, v0, v10

    aput v6, v0, v9

    .line 12
    sget v9, Ln0/j4;->b:I

    if-ne v9, v7, :cond_4

    .line 13
    sget v9, Lo0/e;->C:I

    aput v9, v0, v4

    .line 14
    sget v4, Lo0/e;->B:I

    aput v4, v0, v8

    goto :goto_2

    .line 15
    :cond_4
    sget v9, Lo0/e;->C:I

    aput v9, v0, v8

    .line 16
    sget v8, Lo0/e;->B:I

    aput v8, v0, v4

    :goto_2
    aput v10, v0, v5

    aput v10, v0, v2

    .line 17
    sget v2, Lo0/e;->r:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v0, v6

    .line 18
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v1

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_3
    if-ge v10, v7, :cond_5

    add-int/lit8 v2, v10, 0x1

    .line 19
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_3

    .line 20
    :cond_5
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_6

    :cond_6
    new-array v0, v6, [I

    const/16 v11, 0xc2

    aput v11, v0, v10

    aput v5, v0, v9

    .line 21
    sget v11, Lw0/d;->i:I

    .line 22
    sget v12, Lw0/d;->j:I

    and-int/lit16 v12, v12, 0xff

    .line 23
    sget v13, Lw0/d;->h:I

    const/high16 v14, 0x10000

    if-ne v13, v14, :cond_7

    aput v9, v0, v8

    goto :goto_4

    :cond_7
    const v14, 0x10001

    if-ne v13, v14, :cond_8

    aput v8, v0, v8

    goto :goto_4

    :cond_8
    const v14, 0x10002

    if-ne v13, v14, :cond_9

    aput v4, v0, v8

    goto :goto_4

    :cond_9
    if-nez v13, :cond_a

    const/16 v13, 0x11

    aput v13, v0, v8

    goto :goto_4

    :cond_a
    if-ne v13, v9, :cond_b

    const/16 v13, 0x12

    aput v13, v0, v8

    :cond_b
    :goto_4
    and-int/lit16 v8, v11, 0xff

    aput v8, v0, v4

    shr-int/lit8 v4, v11, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v5

    .line 24
    rem-int/2addr v12, v6

    add-int/2addr v12, v9

    aput v12, v0, v2

    new-array v1, v1, [I

    aput v3, v1, v10

    :goto_5
    if-ge v10, v6, :cond_c

    add-int/lit8 v2, v10, 0x1

    .line 25
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_5

    .line 26
    :cond_c
    invoke-static {v1}, Lz/k;->s([I)V

    :cond_d
    :goto_6
    return-void

    :array_0
    .array-data 4
        0xc3
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public b3()V
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x5

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x30

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v2, 0xc

    goto :goto_2

    :pswitch_1
    const/16 v7, 0x13

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x6

    const/16 v7, 0x12

    goto :goto_2

    :pswitch_3
    move v2, v3

    goto :goto_2

    :pswitch_4
    const/4 v2, 0x7

    goto :goto_2

    .line 2
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v4

    .line 3
    :goto_0
    sget v7, Ln0/j4;->b:I

    if-ne v7, v2, :cond_3

    const/16 v7, 0x21

    goto :goto_1

    :cond_3
    const/16 v7, 0x10

    :goto_1
    move v2, v0

    goto :goto_2

    :pswitch_6
    const/16 v2, 0xb

    goto :goto_2

    :pswitch_7
    const/16 v7, 0x40

    move v2, v1

    goto :goto_2

    :pswitch_8
    move v2, v6

    move v7, v2

    goto :goto_2

    :pswitch_9
    move v2, v4

    :goto_2
    new-array v0, v1, [I

    const/16 v1, 0xe3

    aput v1, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v6

    aput v5, v0, v5

    aput v2, v0, v3

    const/4 v1, 0x4

    aput v7, v0, v1

    .line 4
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    .line 3
    :cond_0
    aget v2, v1, v5

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v5

    .line 4
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x1e

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 5
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
