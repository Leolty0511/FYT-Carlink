.class public Lk0/jd;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/jd;->e:I

    const/16 v0, 0x8

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    iput-object v1, p0, Lk0/jd;->f:[[I

    const/16 v1, 0x18

    new-array v1, v1, [[I

    new-array v3, v2, [I

    .line 4
    fill-array-data v3, :array_8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_19

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1a

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1b

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1c

    const/16 v3, 0x14

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1d

    const/16 v3, 0x15

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1e

    const/16 v3, 0x16

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1f

    const/16 v2, 0x17

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/jd;->g:[[I

    .line 5
    iput v4, p0, Lk0/jd;->h:I

    .line 6
    iput v4, p0, Lk0/jd;->i:I

    .line 7
    new-instance v0, Lk0/jd$a;

    invoke-direct {v0, p0}, Lk0/jd$a;-><init>(Lk0/jd;)V

    iput-object v0, p0, Lk0/jd;->j:Ljava/lang/Runnable;

    .line 8
    iput v4, p0, Lk0/jd;->k:I

    .line 9
    new-instance v0, Lk0/jd$b;

    invoke-direct {v0, p0}, Lk0/jd$b;-><init>(Lk0/jd;)V

    iput-object v0, p0, Lk0/jd;->l:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/jd$c;

    invoke-direct {v0, p0}, Lk0/jd$c;-><init>(Lk0/jd;)V

    iput-object v0, p0, Lk0/jd;->m:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x12
        0x3a
    .end array-data

    :array_e
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x17
        0x22
    .end array-data

    :array_10
    .array-data 4
        0x18
        0x23
    .end array-data

    :array_11
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_12
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_13
    .array-data 4
        0x1b
        0x22
    .end array-data

    :array_14
    .array-data 4
        0x1c
        0x21
    .end array-data

    :array_15
    .array-data 4
        0x1d
        0x20
    .end array-data

    :array_16
    .array-data 4
        0x1e
        0x23
    .end array-data

    :array_17
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x2f
        0x5
    .end array-data

    :array_1b
    .array-data 4
        0x33
        0x15
    .end array-data

    :array_1c
    .array-data 4
        0x3e
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_1e
    .array-data 4
        0x46
        0x8
    .end array-data

    :array_1f
    .array-data 4
        0x4c
        0x12
    .end array-data
.end method

.method public static b3()I
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :goto_0
    :pswitch_1
    move v1, v4

    goto :goto_2

    :pswitch_2
    const/16 v1, 0xb

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_2

    :pswitch_4
    const/16 v1, 0xc

    goto :goto_2

    .line 2
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :cond_0
    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_0

    :pswitch_6
    move v1, v2

    goto :goto_2

    .line 3
    :pswitch_7
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v4, v0, v2

    if-nez v4, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    sub-int v4, v0, v2

    if-ne v6, v4, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    sub-int v2, v0, v2

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v5

    if-ne v6, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :pswitch_8
    const/16 v1, 0x9

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v5

    .line 4
    :goto_2
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_7

    const/16 v5, 0x10

    goto :goto_3

    .line 5
    :cond_7
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v5, v1

    :goto_3
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
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


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/jd;->l:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0x14

    if-eq v1, v3, :cond_1

    const/16 v3, 0x22

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 10
    :cond_1
    iput v2, v0, Lk0/mt;->i:I

    .line 11
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/jd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/jd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/jd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :goto_0
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

    if-eq v2, v3, :cond_25

    const/16 v3, 0x1a

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_23

    const/16 v3, 0x12

    const/16 v8, 0x31

    const/16 v9, 0x8

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/16 v12, 0xff

    if-eq v2, v8, :cond_1a

    const/16 v8, 0x41

    if-eq v2, v8, :cond_19

    const/16 v8, 0x11

    if-eq v2, v8, :cond_13

    if-eq v2, v3, :cond_11

    const/16 v3, 0x21

    if-eq v2, v3, :cond_b

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    goto/16 :goto_e

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 4
    aget-byte v1, v1, v3

    if-eq v2, v7, :cond_6

    if-eq v2, v4, :cond_1

    if-eq v2, v11, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v10, :cond_1

    goto/16 :goto_e

    .line 5
    :cond_1
    iget v2, v0, Lk0/jd;->i:I

    if-eq v1, v2, :cond_26

    if-le v1, v2, :cond_3

    move v2, v6

    .line 6
    :goto_0
    iget v3, v0, Lk0/jd;->i:I

    sub-int v3, v1, v3

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_2

    .line 7
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge v1, v2, :cond_5

    move v2, v6

    .line 9
    :goto_1
    iget v3, v0, Lk0/jd;->i:I

    sub-int/2addr v3, v1

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_4

    .line 10
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 12
    :cond_5
    :goto_2
    iput v1, v0, Lk0/jd;->i:I

    goto/16 :goto_e

    .line 13
    :cond_6
    iget v2, v0, Lk0/jd;->h:I

    if-eq v1, v2, :cond_26

    if-le v1, v2, :cond_8

    move v2, v6

    .line 14
    :goto_3
    iget v3, v0, Lk0/jd;->h:I

    sub-int v3, v1, v3

    const/4 v4, 0x7

    if-ge v2, v3, :cond_7

    .line 15
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 16
    :cond_7
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge v1, v2, :cond_a

    move v2, v6

    .line 17
    :goto_4
    iget v3, v0, Lk0/jd;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_9

    .line 18
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 19
    :cond_9
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    .line 20
    :cond_a
    :goto_5
    iput v1, v0, Lk0/jd;->h:I

    goto/16 :goto_e

    .line 21
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    iput v2, v0, Lk0/jd;->d:I

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v1, v1, v2

    move v2, v6

    .line 24
    :goto_6
    iget-object v3, v0, Lk0/jd;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 25
    iget v4, v0, Lk0/jd;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 26
    iput v2, v0, Lk0/jd;->e:I

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 27
    :cond_d
    :goto_7
    iget v4, v0, Lk0/jd;->d:I

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_10

    and-int/2addr v1, v12

    if-eqz v1, :cond_e

    .line 28
    array-length v1, v3

    if-ge v2, v1, :cond_26

    .line 29
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 30
    :cond_e
    iget v1, v0, Lk0/jd;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_f

    if-eq v1, v12, :cond_f

    .line 31
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 32
    :cond_f
    iput v12, v0, Lk0/jd;->e:I

    goto/16 :goto_e

    :cond_10
    and-int/2addr v1, v12

    if-ne v1, v7, :cond_26

    const-string v1, "com.syu.carlink"

    .line 33
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 34
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_11
    add-int/lit8 v2, p2, 0x4

    .line 35
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 36
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_12

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 37
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 38
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_12
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 39
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 40
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 41
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 42
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 43
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 44
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 45
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit8 v2, p2, 0x4

    .line 46
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 47
    aget-byte v3, v1, v3

    and-int/2addr v2, v12

    .line 48
    iput v2, v0, Lk0/jd;->c:I

    move v2, v6

    .line 49
    :goto_9
    iget-object v4, v0, Lk0/jd;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_15

    .line 50
    iget v5, v0, Lk0/jd;->c:I

    aget-object v8, v4, v2

    aget v8, v8, v6

    if-ne v5, v8, :cond_14

    if-eqz v5, :cond_15

    .line 51
    iput v2, v0, Lk0/jd;->b:I

    goto :goto_a

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    :goto_a
    and-int/2addr v3, v12

    if-eqz v3, :cond_16

    .line 52
    array-length v3, v4

    if-ge v2, v3, :cond_18

    .line 53
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 54
    :cond_16
    iget v2, v0, Lk0/jd;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_17

    if-eq v2, v12, :cond_17

    .line 55
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 56
    :cond_17
    iput v12, v0, Lk0/jd;->b:I

    :cond_18
    :goto_b
    add-int/lit8 v2, p2, 0x9

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 58
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->A1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->A1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->A1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 61
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->A1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 62
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 63
    aget-byte v4, v1, v4

    add-int/lit8 v13, p2, 0x4

    .line 64
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x6

    .line 65
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x7

    .line 66
    aget-byte v15, v1, v15

    const/16 v9, 0xa

    new-array v3, v7, [I

    const/4 v8, 0x6

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 67
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v4, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/16 v3, 0xb

    .line 68
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v2, v6

    const/16 v4, 0xc

    .line 69
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v9, v7, [I

    shr-int/lit8 v16, v13, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v6

    .line 70
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    new-array v9, v7, [I

    shr-int/lit8 v5, v13, 0x4

    and-int/2addr v5, v7

    aput v5, v9, v6

    .line 71
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v14, 0xff

    if-eq v2, v7, :cond_20

    if-eq v2, v11, :cond_1f

    if-eq v2, v10, :cond_1e

    if-eq v2, v8, :cond_1d

    if-eq v2, v3, :cond_1c

    if-eq v2, v4, :cond_1b

    move v2, v6

    move v3, v2

    move v4, v3

    :goto_c
    move v5, v4

    goto :goto_d

    :cond_1b
    move v2, v6

    move v4, v2

    move v3, v7

    move v5, v3

    goto :goto_d

    :cond_1c
    move v2, v6

    move v4, v2

    move v5, v4

    move v3, v7

    goto :goto_d

    :cond_1d
    move v2, v6

    move v3, v2

    move v5, v3

    move v4, v7

    goto :goto_d

    :cond_1e
    move v2, v6

    move v3, v2

    move v4, v7

    goto :goto_c

    :cond_1f
    move v2, v6

    move v3, v2

    move v4, v3

    move v5, v7

    goto :goto_d

    :cond_20
    move v3, v6

    move v4, v3

    move v5, v4

    move v2, v7

    :goto_d
    new-array v8, v7, [I

    aput v2, v8, v6

    const/16 v2, 0x31

    .line 72
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v3, v2, v6

    const/16 v3, 0x12

    .line 73
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v5, v3, v6

    .line 75
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    and-int/lit16 v4, v15, 0xff

    aput v4, v3, v6

    .line 76
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8

    add-int/lit8 v2, p2, 0x8

    .line 77
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    const/16 v4, 0xfe

    const/16 v5, 0x1b

    if-ne v3, v4, :cond_21

    new-array v1, v7, [I

    const/4 v2, -0x2

    aput v2, v1, v6

    .line 78
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    .line 79
    :cond_21
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    if-ne v3, v12, :cond_22

    new-array v1, v7, [I

    const/4 v2, -0x3

    aput v2, v1, v6

    .line 80
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_22
    new-array v3, v7, [I

    .line 81
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    aput v1, v3, v6

    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_23
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 82
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_24

    add-int/lit8 v2, p2, 0x4

    .line 83
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    aget-byte v5, v1, v2

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    invoke-static {v3, v5, v1}, Ll0/c0;->b(III)V

    goto :goto_e

    :cond_24
    add-int/lit8 v2, p2, 0x4

    .line 84
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    aget-byte v5, v1, v2

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    invoke-static {v3, v5, v1}, Ll0/c0;->a(III)V

    goto :goto_e

    .line 85
    :cond_25
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_26
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/jd;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/jd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/jd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/jd;->j:Ljava/lang/Runnable;

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
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    invoke-static {p2, p1}, Lk0/qt;->l0([II)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x5

    new-array p3, p3, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p3, v0

    const/4 p4, 0x1

    aput p1, p3, p4

    const/16 v1, 0x3d

    aput v1, p3, p1

    const/4 p1, 0x3

    .line 2
    aget v0, p2, v0

    aput v0, p3, p1

    const/4 p1, 0x4

    aget p2, p2, p4

    aput p2, p3, p1

    invoke-static {p3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a3()V
    .locals 17

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v3, 0x91

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    invoke-static {}, Lk0/jd;->b3()I

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->f:I

    if-ne v3, v5, :cond_a

    .line 4
    sget v3, Lu0/b;->D:I

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x6

    const/16 v12, 0xa

    const/16 v13, 0x30

    if-eq v3, v5, :cond_5

    const/16 v5, 0xb

    const/16 v6, 0x3a

    const/16 v14, 0x3e7

    const/4 v15, 0x5

    const/16 v16, 0x39

    if-eq v3, v10, :cond_3

    if-eq v3, v9, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    sget v3, Lu0/b;->r3:I

    if-gt v3, v14, :cond_2

    .line 6
    div-int/lit8 v14, v3, 0x64

    div-int/lit8 v14, v3, 0x64

    add-int/2addr v14, v13

    aput v14, v1, v10

    .line 7
    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    add-int/2addr v10, v13

    aput v10, v1, v15

    .line 8
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v11

    goto :goto_1

    :cond_2
    aput v16, v1, v10

    aput v16, v1, v15

    aput v16, v1, v11

    :goto_1
    aput v4, v1, v8

    .line 9
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 10
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v7

    aput v6, v1, v12

    .line 11
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v5

    const/16 v4, 0xc

    .line 12
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v4

    goto/16 :goto_5

    .line 13
    :cond_3
    sget v3, Lo0/e;->B:I

    if-gt v3, v14, :cond_4

    .line 14
    div-int/lit8 v14, v3, 0x64

    div-int/lit8 v14, v3, 0x64

    add-int/2addr v14, v13

    aput v14, v1, v10

    .line 15
    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    add-int/2addr v10, v13

    aput v10, v1, v15

    .line 16
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v11

    goto :goto_2

    :cond_4
    aput v16, v1, v10

    aput v16, v1, v15

    aput v16, v1, v11

    :goto_2
    aput v4, v1, v8

    .line 17
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 18
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v7

    aput v6, v1, v12

    .line 19
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v5

    const/16 v4, 0xc

    .line 20
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v4

    goto/16 :goto_5

    :cond_5
    const/4 v3, 0x3

    aput v13, v1, v3

    .line 21
    sget v3, Lw0/d;->j:I

    and-int/lit16 v3, v3, 0xff

    rem-int/2addr v3, v11

    add-int/2addr v3, v5

    add-int/2addr v3, v13

    aput v3, v1, v10

    .line 22
    sget v3, Lw0/d;->h:I

    const/high16 v10, 0x10000

    sub-int v14, v3, v10

    if-eqz v14, :cond_8

    sub-int v14, v3, v10

    if-eq v5, v14, :cond_8

    sub-int/2addr v3, v10

    if-ne v6, v3, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    sget v3, Lw0/d;->i:I

    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    if-ne v4, v5, :cond_7

    .line 24
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v13

    aput v4, v1, v11

    .line 25
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 26
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 27
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v7

    goto :goto_5

    :cond_7
    aput v13, v1, v11

    .line 28
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 29
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 30
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v7

    goto :goto_5

    .line 31
    :cond_8
    :goto_3
    sget v3, Lw0/d;->i:I

    div-int/lit16 v5, v3, 0x2710

    if-nez v5, :cond_9

    div-int/lit16 v5, v3, 0x2710

    add-int/2addr v5, v4

    goto :goto_4

    :cond_9
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v5, v4, 0x30

    :goto_4
    aput v5, v1, v11

    .line 32
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 33
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v9

    const/16 v4, 0x2e

    aput v4, v1, v7

    .line 34
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v12

    :cond_a
    :goto_5
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_6
    if-ge v2, v0, :cond_b

    add-int/lit8 v4, v2, 0x1

    .line 35
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_6

    .line 36
    :cond_b
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
