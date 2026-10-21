.class public Lk0/q3;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/q3;->e:I

    const/16 v0, 0x1b

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

    const/4 v5, 0x6

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v5, 0x7

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v5, 0x8

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v5, 0x9

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v5, 0xa

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v5, 0xb

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v5, 0xc

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v5, 0xd

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v5, 0xe

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v5, 0xf

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v5, 0x10

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v5, 0x11

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v5, 0x12

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v5, 0x13

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v5, 0x14

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v5, 0x15

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v5, 0x16

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v5, 0x17

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v5, 0x18

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const/16 v5, 0x19

    aput-object v2, v0, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_1a

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/q3;->f:[[I

    .line 4
    iput v3, p0, Lk0/q3;->g:I

    .line 5
    iput v3, p0, Lk0/q3;->h:I

    .line 6
    iput v4, p0, Lk0/q3;->i:I

    .line 7
    new-instance v0, Lk0/q3$a;

    invoke-direct {v0, p0}, Lk0/q3$a;-><init>(Lk0/q3;)V

    iput-object v0, p0, Lk0/q3;->j:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/q3$b;

    invoke-direct {v0, p0}, Lk0/q3$b;-><init>(Lk0/q3;)V

    iput-object v0, p0, Lk0/q3;->k:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
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
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x81
        0x19
    .end array-data

    :array_f
    .array-data 4
        0x82
        0x44
    .end array-data

    :array_10
    .array-data 4
        0x83
        0x43
    .end array-data

    :array_11
    .array-data 4
        0xac
        0x2
    .end array-data

    :array_12
    .array-data 4
        0xbf
        0x5
    .end array-data

    :array_13
    .array-data 4
        0xc3
        0xc
    .end array-data

    :array_14
    .array-data 4
        0xc5
        0x7
    .end array-data

    :array_15
    .array-data 4
        0xc6
        0x8
    .end array-data

    :array_16
    .array-data 4
        0xc7
        0x12
    .end array-data

    :array_17
    .array-data 4
        0xc8
        0x1a
    .end array-data

    :array_18
    .array-data 4
        0xc9
        0x15
    .end array-data

    :array_19
    .array-data 4
        0xca
        0x37
    .end array-data

    :array_1a
    .array-data 4
        0xcb
        0x1
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b3(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v2, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public static c3(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d3(I)V
    .locals 3

    const/16 v0, 0xff

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_2

    .line 1
    div-int/lit8 v0, p0, 0x2

    .line 2
    rem-int/lit8 v1, p0, 0x2

    const/16 v2, 0x28

    if-ge p0, v2, :cond_1

    if-lez v1, :cond_0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v0

    :goto_0
    mul-int/lit8 v2, v2, 0xa

    rsub-int p0, v2, 0x3e8

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr p0, v1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v1, v1, 0x5

    add-int p0, v0, v1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const/16 v0, 0x258

    if-le p0, v0, :cond_3

    .line 3
    invoke-static {p0}, Lu0/d;->A3(I)V

    :cond_3
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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/q3;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

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

    const/4 v4, 0x2

    if-eq v2, v3, :cond_21

    const/16 v3, 0x31

    const/16 v5, 0x12

    const/16 v6, 0x41

    const/4 v7, 0x5

    const/16 v8, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v2, v3, :cond_18

    if-eq v2, v6, :cond_15

    const/16 v3, 0x11

    if-eq v2, v3, :cond_d

    if-eq v2, v5, :cond_b

    const/16 v3, 0x21

    if-eq v2, v3, :cond_6

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    goto/16 :goto_10

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 4
    aget-byte v1, v1, v3

    if-eq v2, v13, :cond_1

    goto/16 :goto_10

    .line 5
    :cond_1
    iget v2, v0, Lk0/q3;->g:I

    if-eq v1, v2, :cond_22

    if-le v1, v2, :cond_3

    move v2, v12

    .line 6
    :goto_0
    iget v3, v0, Lk0/q3;->g:I

    sub-int v3, v1, v3

    const/4 v4, 0x7

    if-ge v2, v3, :cond_2

    .line 7
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v4, v13}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge v1, v2, :cond_5

    move v2, v12

    .line 9
    :goto_1
    iget v3, v0, Lk0/q3;->g:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    .line 10
    invoke-static {v8, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v8, v13}, Ll0/b0;->l0(II)V

    .line 12
    :cond_5
    :goto_2
    iput v1, v0, Lk0/q3;->g:I

    goto/16 :goto_10

    .line 13
    :cond_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x3

    .line 14
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    .line 15
    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lk0/q3;->d:I

    move v1, v12

    .line 16
    :goto_3
    iget-object v3, v0, Lk0/q3;->f:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 17
    iget v4, v0, Lk0/q3;->d:I

    aget-object v5, v3, v1

    aget v5, v5, v12

    if-ne v4, v5, :cond_7

    if-eqz v4, :cond_8

    .line 18
    iput v1, v0, Lk0/q3;->e:I

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    and-int/2addr v2, v11

    if-eqz v2, :cond_9

    .line 19
    array-length v2, v3

    if-ge v1, v2, :cond_22

    .line 20
    aget-object v1, v3, v1

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 21
    :cond_9
    iget v1, v0, Lk0/q3;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_a

    if-eq v1, v11, :cond_a

    .line 22
    aget-object v1, v3, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    .line 23
    :cond_a
    iput v11, v0, Lk0/q3;->b:I

    goto/16 :goto_10

    :cond_b
    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 25
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 26
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 27
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 28
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 29
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 30
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 31
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v13

    aput v1, v2, v12

    .line 32
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_d
    add-int/lit8 v2, p2, 0x4

    .line 33
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x5

    .line 34
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    const/16 v6, 0x39

    if-ne v3, v6, :cond_f

    if-ne v5, v13, :cond_f

    .line 35
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_f

    .line 36
    sget-object v3, La/b;->O:Ljava/lang/String;

    invoke-static {v3}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 37
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_6

    .line 38
    :cond_e
    sget-object v3, La/b;->O:Ljava/lang/String;

    invoke-static {v3}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 39
    invoke-static {}, Lk0/qt;->f()V

    .line 40
    :cond_f
    :goto_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 41
    aget-byte v2, v1, v2

    .line 42
    aget-byte v3, v1, v4

    and-int/2addr v2, v11

    .line 43
    iput v2, v0, Lk0/q3;->c:I

    move v2, v12

    .line 44
    :goto_7
    iget-object v4, v0, Lk0/q3;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_11

    .line 45
    iget v5, v0, Lk0/q3;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v12

    if-ne v5, v6, :cond_10

    if-eqz v5, :cond_11

    .line 46
    iput v2, v0, Lk0/q3;->b:I

    goto :goto_8

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    and-int/2addr v3, v11

    if-eqz v3, :cond_12

    .line 47
    array-length v3, v4

    if-ge v2, v3, :cond_14

    .line 48
    aget-object v2, v4, v2

    aget v2, v2, v13

    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    goto :goto_9

    .line 49
    :cond_12
    iget v2, v0, Lk0/q3;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_13

    if-eq v2, v11, :cond_13

    .line 50
    aget-object v2, v4, v2

    aget v2, v2, v13

    invoke-static {v2, v13}, Ll0/b0;->l0(II)V

    .line 51
    :cond_13
    iput v11, v0, Lk0/q3;->b:I

    :cond_14
    :goto_9
    add-int/lit8 v2, p2, 0x9

    .line 52
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v13, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_10

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 53
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/q3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 54
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/q3;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/q3;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 56
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/q3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 57
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    invoke-static {v3}, Lk0/q3;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    add-int/lit8 v3, p2, 0x7

    .line 58
    aget-byte v4, v1, v3

    and-int/2addr v4, v11

    invoke-static {v4}, Lk0/q3;->b3(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->E2(I)V

    add-int/lit8 v4, p2, 0x8

    .line 59
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    invoke-static {v5}, Lk0/q3;->b3(I)I

    move-result v5

    invoke-static {v5}, Lu0/d;->F2(I)V

    add-int/lit8 v5, p2, 0x9

    .line 60
    aget-byte v6, v1, v5

    and-int/2addr v6, v11

    invoke-static {v6}, Lk0/q3;->a3(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->G2(I)V

    .line 61
    aget-byte v2, v1, v2

    if-nez v2, :cond_17

    aget-byte v2, v1, v3

    if-nez v2, :cond_17

    aget-byte v2, v1, v4

    if-nez v2, :cond_17

    aget-byte v1, v1, v5

    if-eqz v1, :cond_16

    goto :goto_a

    .line 62
    :cond_16
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto/16 :goto_10

    .line 63
    :cond_17
    :goto_a
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_22

    .line 64
    invoke-static {v13}, Lu0/d;->C2(I)V

    .line 65
    sput v10, Ll0/c0;->k:I

    .line 66
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_10

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v2, v1, v2

    const/16 v3, 0xa

    new-array v14, v13, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v13

    aput v15, v14, v12

    .line 68
    invoke-static {v3, v14}, Lk0/qt;->y0(I[I)V

    new-array v3, v13, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v13

    aput v2, v3, v12

    const/16 v2, 0xd

    .line 69
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x3

    .line 70
    aget-byte v3, v1, v3

    const/16 v14, 0xb

    new-array v15, v13, [I

    shr-int/lit8 v16, v3, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v12

    .line 71
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    new-array v14, v13, [I

    shr-int/lit8 v15, v3, 0x4

    and-int/2addr v15, v13

    if-nez v15, :cond_19

    move v15, v13

    goto :goto_b

    :cond_19
    move v15, v12

    :goto_b
    aput v15, v14, v12

    const/16 v15, 0xc

    .line 72
    invoke-static {v15, v14}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xe

    new-array v2, v13, [I

    shr-int/2addr v3, v4

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 73
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 74
    aget-byte v2, v1, v2

    const/16 v3, 0x10

    new-array v4, v13, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v13

    aput v14, v4, v12

    .line 75
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v13, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v13

    aput v2, v3, v12

    .line 76
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 77
    aget-byte v2, v1, v2

    if-eq v2, v9, :cond_1d

    if-eq v2, v15, :cond_1c

    if-eq v2, v7, :cond_1b

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1a

    move v2, v12

    move v3, v2

    :goto_c
    move v4, v3

    goto :goto_d

    :cond_1a
    move v2, v12

    move v4, v2

    move v3, v13

    goto :goto_d

    :cond_1b
    move v2, v12

    move v3, v13

    goto :goto_c

    :cond_1c
    move v3, v12

    move v2, v13

    move v4, v2

    goto :goto_d

    :cond_1d
    move v2, v12

    move v3, v2

    move v4, v13

    :goto_d
    new-array v6, v13, [I

    aput v2, v6, v12

    .line 78
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v13, [I

    aput v3, v5, v12

    .line 79
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v13, [I

    aput v4, v3, v12

    .line 80
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 81
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-le v2, v8, :cond_1e

    goto :goto_e

    :cond_1e
    move v8, v2

    :goto_e
    const/16 v2, 0x15

    new-array v3, v13, [I

    aput v8, v3, v12

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 83
    aget-byte v2, v1, v2

    const/16 v3, 0x1c

    const/16 v4, 0x1b

    const/4 v5, -0x2

    if-eq v2, v5, :cond_20

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1f

    new-array v5, v13, [I

    and-int/2addr v2, v11

    aput v2, v5, v12

    .line 84
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    aput v2, v4, v12

    .line 85
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_1f
    new-array v2, v13, [I

    const/4 v5, -0x3

    aput v5, v2, v12

    .line 86
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    aput v5, v2, v12

    .line 87
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_20
    new-array v2, v13, [I

    aput v5, v2, v12

    .line 88
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    aput v5, v2, v12

    .line 89
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    .line 90
    :goto_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    const/16 v2, 0xd

    add-int/lit8 v2, p2, 0xd

    .line 91
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    .line 92
    invoke-static {v1}, Lk0/q3;->d3(I)V

    goto :goto_10

    .line 93
    :cond_21
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_22
    :goto_10
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/q3;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/q3;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
