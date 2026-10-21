.class public Lk0/u9;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/u9;->c:I

    const/16 v1, 0x10

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

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/u9;->d:[[I

    .line 4
    new-instance v1, Lk0/u9$a;

    invoke-direct {v1, p0}, Lk0/u9$a;-><init>(Lk0/u9;)V

    iput-object v1, p0, Lk0/u9;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lk0/u9$b;

    invoke-direct {v1, p0}, Lk0/u9$b;-><init>(Lk0/u9;)V

    iput-object v1, p0, Lk0/u9;->f:Ljava/lang/Runnable;

    const/16 v1, 0xff

    .line 6
    iput v1, p0, Lk0/u9;->g:I

    .line 7
    iput v1, p0, Lk0/u9;->h:I

    .line 8
    iput v0, p0, Lk0/u9;->i:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x15
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x9
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x40
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x26
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xb
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_e
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x31
        0x1a
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget v3, Lk0/nt;->a:I

    const v4, 0x20123

    const v5, 0x30123

    const-string v6, "com.syu.canbus"

    const v7, 0x10123

    if-eq v3, v7, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_2

    .line 7
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    iput v1, v0, Lk0/mt;->g:I

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    :cond_2
    :goto_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    sget v0, Lk0/nt;->a:I

    if-eq v0, v7, :cond_3

    if-eq v0, v4, :cond_3

    if-ne v0, v5, :cond_4

    .line 12
    :cond_3
    iget-object v0, p0, Lk0/u9;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/u9;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/u9;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/u9;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_4
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    if-eq v2, v3, :cond_16

    const/16 v3, 0x29

    const/16 v4, 0xff

    const/4 v5, 0x0

    if-eq v2, v3, :cond_15

    const/16 v3, 0x32

    if-eq v2, v3, :cond_14

    const/16 v3, 0x33

    const/4 v6, 0x1

    if-eq v2, v3, :cond_e

    const/16 v9, 0x13

    const/16 v10, 0x14

    const/16 v11, 0x10

    const/16 v12, 0x41

    const/16 v13, 0xc

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v3, 0x1b

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v16, p2, 0x4

    .line 3
    aget-byte v7, v1, v16

    add-int/lit8 v16, p2, 0x5

    .line 4
    aget-byte v16, v1, v16

    and-int/lit8 v16, v16, 0xf

    and-int/lit16 v8, v7, 0x80

    if-nez v8, :cond_3

    if-eq v2, v15, :cond_2

    if-eq v2, v14, :cond_1

    if-eqz v2, :cond_0

    new-array v8, v6, [I

    and-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0xa

    add-int v2, v2, v16

    aput v2, v8, v5

    .line 5
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v6, [I

    aput v15, v2, v5

    .line 6
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v6, [I

    const/4 v4, -0x3

    aput v4, v2, v5

    .line 7
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v2, v6, [I

    aput v14, v2, v5

    .line 8
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :cond_3
    :goto_0
    add-int/lit8 v2, p2, 0x3

    .line 9
    aget-byte v2, v1, v2

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 10
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 11
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 12
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 13
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 14
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x2

    and-int/2addr v4, v6

    aput v4, v3, v5

    const/16 v4, 0xd

    .line 15
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v6

    aput v4, v3, v5

    const/16 v4, 0x34

    .line 16
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v3, v5

    const/16 v2, 0xb

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    and-int/lit8 v4, v7, 0xf

    aput v4, v3, v5

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 19
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v2, p2, 0x7

    .line 20
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/f0;->g(B)V

    goto/16 :goto_6

    .line 21
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    .line 23
    iput v1, v0, Lk0/u9;->c:I

    move v2, v5

    .line 24
    :goto_1
    iget-object v3, v0, Lk0/u9;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_5

    .line 25
    iget v7, v0, Lk0/u9;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_4

    if-eqz v7, :cond_5

    .line 26
    iput v2, v0, Lk0/u9;->b:I

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 27
    array-length v1, v3

    if-ge v2, v1, :cond_17

    .line 28
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 29
    :cond_6
    iget v1, v0, Lk0/u9;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_7

    if-eq v1, v4, :cond_7

    .line 30
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 31
    :cond_7
    iput v4, v0, Lk0/u9;->b:I

    goto/16 :goto_6

    .line 32
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/u9;->a3(I)V

    goto/16 :goto_6

    .line 34
    :pswitch_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    invoke-static {v2, v7, v8}, Ll0/f0;->b(BBB)V

    .line 36
    :cond_8
    sget v2, Lk0/nt;->a:I

    const v7, 0x20123

    if-eq v2, v7, :cond_9

    goto/16 :goto_6

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 37
    aget-byte v2, v1, v2

    add-int/lit8 v7, p2, 0x4

    .line 38
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x5

    .line 39
    aget-byte v8, v1, v8

    and-int/lit8 v8, v8, 0xf

    and-int/lit16 v9, v7, 0x80

    if-nez v9, :cond_d

    if-eq v2, v15, :cond_c

    if-eq v2, v14, :cond_b

    if-eqz v2, :cond_a

    new-array v9, v6, [I

    and-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v8

    aput v2, v9, v5

    .line 40
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v2, v6, [I

    aput v15, v2, v5

    .line 41
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v2, v6, [I

    const/4 v4, -0x3

    aput v4, v2, v5

    .line 42
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v2, v6, [I

    aput v14, v2, v5

    .line 43
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :cond_d
    :goto_3
    add-int/lit8 v2, p2, 0x3

    .line 44
    aget-byte v1, v1, v2

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 45
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 46
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 47
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 48
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/16 v3, 0x13

    .line 49
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/16 v3, 0xd

    .line 50
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/16 v3, 0x34

    .line 51
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v2, v5

    const/16 v1, 0xb

    .line 52
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v6, [I

    and-int/lit8 v3, v7, 0xf

    aput v3, v2, v5

    .line 53
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    .line 55
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0x4

    .line 56
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    add-int/lit8 v9, p2, 0x5

    .line 57
    aget-byte v10, v1, v9

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0x6

    .line 58
    aget-byte v12, v1, v11

    and-int/2addr v12, v4

    add-int/lit8 v13, p2, 0x7

    .line 59
    aget-byte v14, v1, v13

    and-int/2addr v14, v4

    .line 60
    sget v15, Ll0/c0;->g:I

    if-ne v15, v8, :cond_f

    sget v15, Ll0/c0;->h:I

    if-ne v15, v8, :cond_f

    sget v15, Ll0/c0;->i:I

    if-ne v15, v10, :cond_f

    sget v15, Ll0/c0;->j:I

    if-eq v15, v14, :cond_13

    .line 61
    :cond_f
    sget v15, Lu0/b;->o:I

    if-nez v15, :cond_13

    if-nez v2, :cond_10

    if-lt v8, v3, :cond_11

    if-lt v10, v3, :cond_11

    if-lt v12, v3, :cond_11

    if-lt v14, v3, :cond_11

    goto :goto_4

    :cond_10
    if-lt v8, v4, :cond_11

    if-lt v10, v4, :cond_11

    if-lt v12, v4, :cond_11

    if-lt v14, v4, :cond_11

    :goto_4
    move v5, v6

    :cond_11
    if-eqz v5, :cond_12

    .line 62
    sget v5, Lu0/b;->p:I

    if-ne v5, v6, :cond_13

    .line 63
    sput v6, Ll0/c0;->k:I

    .line 64
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 65
    :cond_12
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 66
    :cond_13
    :goto_5
    sput v8, Ll0/c0;->g:I

    .line 67
    sput v10, Ll0/c0;->h:I

    .line 68
    sput v12, Ll0/c0;->i:I

    .line 69
    sput v14, Ll0/c0;->j:I

    .line 70
    aget-byte v5, v1, v7

    and-int/2addr v2, v4

    and-int/2addr v3, v4

    invoke-static {v5, v2, v3}, Ll0/e0;->o(III)I

    move-result v4

    invoke-static {v4}, Lu0/d;->D2(I)V

    .line 71
    aget-byte v4, v1, v9

    invoke-static {v4, v2, v3}, Ll0/e0;->o(III)I

    move-result v4

    invoke-static {v4}, Lu0/d;->E2(I)V

    .line 72
    aget-byte v4, v1, v11

    invoke-static {v4, v2, v3}, Ll0/e0;->o(III)I

    move-result v4

    invoke-static {v4}, Lu0/d;->F2(I)V

    .line 73
    aget-byte v1, v1, v13

    invoke-static {v1, v2, v3}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto :goto_6

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 74
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 75
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 76
    aget-byte v5, v1, v5

    and-int/2addr v2, v4

    and-int/2addr v3, v4

    invoke-static {v5, v2, v3}, Ll0/e0;->o(III)I

    move-result v4

    invoke-static {v4}, Lu0/d;->R2(I)V

    add-int/lit8 v4, p2, 0x5

    .line 77
    aget-byte v4, v1, v4

    invoke-static {v4, v2, v3}, Ll0/e0;->o(III)I

    move-result v4

    invoke-static {v4}, Lu0/d;->S2(I)V

    add-int/lit8 v4, p2, 0x6

    .line 78
    aget-byte v4, v1, v4

    invoke-static {v4, v2, v3}, Ll0/e0;->o(III)I

    move-result v4

    invoke-static {v4}, Lu0/d;->T2(I)V

    add-int/lit8 v4, p2, 0x7

    .line 79
    aget-byte v1, v1, v4

    invoke-static {v1, v2, v3}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_6

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    const/16 v3, 0x1e40

    const/16 v4, 0x1630

    invoke-static {v2, v1, v3, v5, v4}, Lk0/qt;->m(IIIZI)V

    goto :goto_6

    .line 81
    :cond_16
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_17
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/u9;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/u9;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/u9;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/u9;->e:Ljava/lang/Runnable;

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

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, p3

    invoke-virtual {p0, p4, p1}, Lk0/u9;->b3(II)V

    goto :goto_0

    .line 2
    :cond_1
    aget p1, p2, p3

    invoke-virtual {p0, p4, p1}, Lk0/u9;->b3(II)V

    goto :goto_0

    .line 3
    :cond_2
    aget p1, p2, p3

    invoke-virtual {p0, p3, p1}, Lk0/u9;->b3(II)V

    :goto_0
    return-void
.end method

.method public a3(I)V
    .locals 4

    .line 1
    iput p1, p0, Lk0/u9;->g:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    iget v3, p0, Lk0/u9;->h:I

    if-eq v3, p1, :cond_2

    const/16 p1, 0x3f7

    if-eqz v2, :cond_1

    new-array v2, v1, [I

    aput v1, v2, v0

    .line 3
    invoke-static {p1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_1
    new-array v1, v1, [I

    aput v0, v1, v0

    .line 4
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 5
    :cond_2
    :goto_1
    iget p1, p0, Lk0/u9;->g:I

    iput p1, p0, Lk0/u9;->h:I

    return-void
.end method

.method public final b3(II)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 1
    iget p1, p0, Lk0/u9;->i:I

    and-int/lit8 p1, p1, 0x1f

    iput p1, p0, Lk0/u9;->i:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Lk0/u9;->i:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lk0/u9;->i:I

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 3
    iget p1, p0, Lk0/u9;->i:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lk0/u9;->i:I

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 4
    iget p1, p0, Lk0/u9;->i:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lk0/u9;->i:I

    :cond_3
    :goto_0
    const/4 p1, 0x5

    new-array p2, p1, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, p2, v3

    aput p1, p2, v1

    const/4 p1, 0x6

    aput p1, p2, v0

    const/4 p1, 0x3

    aput v3, p2, p1

    const/4 p1, 0x4

    .line 5
    iget v0, p0, Lk0/u9;->i:I

    int-to-byte v0, v0

    aput v0, p2, p1

    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method
