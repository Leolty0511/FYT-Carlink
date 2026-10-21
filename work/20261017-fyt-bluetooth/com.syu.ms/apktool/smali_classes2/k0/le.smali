.class public Lk0/le;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static l:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:Lo1/o;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/le;->f:I

    const/16 v0, 0x14

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

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_13

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/le;->g:[[I

    .line 4
    iput v3, p0, Lk0/le;->h:I

    .line 5
    iput v3, p0, Lk0/le;->i:I

    .line 6
    new-instance v0, Lk0/le$a;

    invoke-direct {v0, p0}, Lk0/le$a;-><init>(Lk0/le;)V

    iput-object v0, p0, Lk0/le;->k:Ljava/lang/Runnable;

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
        0xa
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x86
        0x6
    .end array-data

    :array_a
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x96
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x97
        0x22
    .end array-data

    :array_d
    .array-data 4
        0x98
        0x23
    .end array-data

    :array_e
    .array-data 4
        0x99
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x9a
        0x21
    .end array-data

    :array_10
    .array-data 4
        0xa0
        0x1
    .end array-data

    :array_11
    .array-data 4
        0xab
        0x5
    .end array-data

    :array_12
    .array-data 4
        0xad
        0x36
    .end array-data

    :array_13
    .array-data 4
        0xd4
        0x2
    .end array-data
.end method

.method public static a3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

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

.method public static b3(I)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    const/4 v3, 0x0

    if-eq p0, v0, :cond_4

    const/16 v0, 0x20

    const/16 v1, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x24

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :cond_0
    :pswitch_0
    sget p0, Lk0/le;->l:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 2
    invoke-static {v2, v3}, Lk0/le;->c3(II)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 3
    invoke-static {p0, v3}, Lk0/le;->c3(II)V

    goto :goto_0

    .line 4
    :cond_2
    :pswitch_1
    sget p0, Lk0/le;->l:I

    if-ne p0, v2, :cond_6

    .line 5
    invoke-static {v1, v3}, Lk0/le;->c3(II)V

    goto :goto_0

    .line 6
    :cond_3
    :pswitch_2
    sget p0, Lk0/le;->l:I

    if-ne p0, v2, :cond_6

    .line 7
    invoke-static {v1, v2}, Lk0/le;->c3(II)V

    goto :goto_0

    .line 8
    :cond_4
    sget p0, Lk0/le;->l:I

    if-ne p0, v2, :cond_6

    .line 9
    invoke-static {v1, v3}, Lk0/le;->c3(II)V

    goto :goto_0

    .line 10
    :cond_5
    sget p0, Lk0/le;->l:I

    if-ne p0, v2, :cond_6

    .line 11
    invoke-static {v1, v2}, Lk0/le;->c3(II)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static c3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xf2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput p0, v0, v1

    const/4 p0, 0x4

    aput p1, v0, p0

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static synthetic d3(Lk0/le;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/le;->f3()V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/le;->k:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    iput v3, v0, Lk0/mt;->e:I

    .line 4
    iput v3, v0, Lk0/mt;->f:I

    .line 5
    iput v3, v0, Lk0/mt;->g:I

    .line 6
    iput v3, v0, Lk0/mt;->i:I

    .line 7
    iput v3, v0, Lk0/mt;->o:I

    .line 8
    sget v4, Lk0/nt;->c:I

    if-eq v4, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    iput v2, v0, Lk0/mt;->e:I

    .line 11
    iput v3, v0, Lk0/mt;->f:I

    .line 12
    iput v3, v0, Lk0/mt;->g:I

    .line 13
    iput v3, v0, Lk0/mt;->i:I

    .line 14
    :goto_0
    sget-object v0, Lo1/u;->b:Lo1/o;

    iput-object v0, p0, Lk0/le;->j:Lo1/o;

    .line 15
    new-instance v0, Lk0/le$b;

    invoke-direct {v0, p0}, Lk0/le$b;-><init>(Lk0/le;)V

    sput-object v0, Lo1/u;->b:Lo1/o;

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v0, v2

    const/16 v3, -0x5b

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_20

    const/16 v3, -0x52

    const/4 v8, 0x7

    const/16 v9, 0xff

    const/16 v10, 0x8

    if-eq v2, v3, :cond_1f

    const/16 v3, -0x10

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x41

    if-eq v2, v3, :cond_1d

    const/16 v11, 0x78

    const/4 v12, 0x3

    if-eq v2, v11, :cond_1c

    const/16 v3, 0x11

    const/16 v11, 0x1d

    const/16 v13, 0xd

    const/16 v14, 0x21

    const/4 v15, 0x4

    if-eq v2, v3, :cond_14

    const/16 v3, 0x12

    if-eq v2, v3, :cond_12

    if-eq v2, v14, :cond_b

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    goto/16 :goto_c

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v0, v0, v3

    if-eq v2, v7, :cond_6

    if-eq v2, v5, :cond_1

    goto/16 :goto_c

    .line 4
    :cond_1
    iget v2, v1, Lk0/le;->i:I

    if-eq v0, v2, :cond_21

    if-le v0, v2, :cond_3

    move v2, v6

    .line 5
    :goto_0
    iget v3, v1, Lk0/le;->i:I

    sub-int v3, v0, v3

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_2

    .line 6
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge v0, v2, :cond_5

    move v2, v6

    .line 8
    :goto_1
    iget v3, v1, Lk0/le;->i:I

    sub-int/2addr v3, v0

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_4

    .line 9
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 11
    :cond_5
    :goto_2
    iput v0, v1, Lk0/le;->i:I

    goto/16 :goto_c

    .line 12
    :cond_6
    iget v2, v1, Lk0/le;->h:I

    if-eq v0, v2, :cond_21

    if-le v0, v2, :cond_8

    move v2, v6

    .line 13
    :goto_3
    iget v3, v1, Lk0/le;->h:I

    sub-int v3, v0, v3

    if-ge v2, v3, :cond_7

    .line 14
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 15
    :cond_7
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge v0, v2, :cond_a

    move v2, v6

    .line 16
    :goto_4
    iget v3, v1, Lk0/le;->h:I

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_9

    .line 17
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 18
    :cond_9
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    .line 19
    :cond_a
    :goto_5
    iput v0, v1, Lk0/le;->h:I

    goto/16 :goto_c

    .line 20
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v2, p2, 0x2

    .line 21
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lk0/le;->d:I

    move v2, v6

    .line 22
    :goto_6
    iget-object v3, v1, Lk0/le;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 23
    iget v4, v1, Lk0/le;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 24
    iput v2, v1, Lk0/le;->e:I

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    add-int/lit8 v4, p2, 0x3

    .line 25
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    if-eqz v0, :cond_10

    .line 26
    array-length v0, v3

    if-ge v2, v0, :cond_21

    .line 27
    aget-object v0, v3, v2

    aget v0, v0, v7

    if-eq v0, v12, :cond_e

    aget-object v0, v3, v2

    aget v0, v0, v7

    if-eq v0, v15, :cond_e

    aget-object v0, v3, v2

    aget v0, v0, v7

    if-eq v0, v11, :cond_e

    aget-object v0, v3, v2

    aget v0, v0, v7

    const/16 v4, 0x20

    if-eq v0, v4, :cond_e

    aget-object v0, v3, v2

    aget v0, v0, v7

    if-ne v0, v14, :cond_f

    :cond_e
    sget v0, Lu0/b;->D:I

    if-ne v0, v13, :cond_f

    .line 28
    aget-object v0, v3, v2

    aget v0, v0, v7

    invoke-static {v0}, Lk0/le;->b3(I)V

    goto/16 :goto_c

    .line 29
    :cond_f
    aget-object v0, v3, v2

    aget v0, v0, v7

    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 30
    :cond_10
    iget v0, v1, Lk0/le;->e:I

    array-length v2, v3

    if-ge v0, v2, :cond_11

    if-eq v0, v9, :cond_11

    .line 31
    aget-object v0, v3, v0

    aget v0, v0, v7

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 32
    :cond_11
    iput v9, v1, Lk0/le;->e:I

    goto/16 :goto_c

    :cond_12
    add-int/lit8 v2, p2, 0x4

    .line 33
    aget-byte v0, v0, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 34
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_13

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 35
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 36
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_13
    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 37
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 38
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 39
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 40
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 41
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v0, v5

    and-int/2addr v0, v7

    aput v0, v2, v6

    .line 42
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 43
    :cond_14
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v2, p2, 0x4

    .line 44
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    iput v2, v1, Lk0/le;->c:I

    move v2, v6

    .line 45
    :goto_9
    iget-object v3, v1, Lk0/le;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_16

    .line 46
    iget v4, v1, Lk0/le;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_15

    if-eqz v4, :cond_16

    .line 47
    iput v2, v1, Lk0/le;->b:I

    goto :goto_a

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    :goto_a
    add-int/lit8 v4, p2, 0x5

    .line 48
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    if-eqz v4, :cond_19

    .line 49
    array-length v4, v3

    if-ge v2, v4, :cond_1b

    .line 50
    aget-object v4, v3, v2

    aget v4, v4, v7

    if-eq v4, v12, :cond_17

    aget-object v4, v3, v2

    aget v4, v4, v7

    if-eq v4, v15, :cond_17

    aget-object v4, v3, v2

    aget v4, v4, v7

    if-eq v4, v11, :cond_17

    aget-object v4, v3, v2

    aget v4, v4, v7

    const/16 v5, 0x20

    if-eq v4, v5, :cond_17

    aget-object v4, v3, v2

    aget v4, v4, v7

    if-ne v4, v14, :cond_18

    :cond_17
    sget v4, Lu0/b;->D:I

    if-ne v4, v13, :cond_18

    .line 51
    aget-object v2, v3, v2

    aget v2, v2, v7

    invoke-static {v2}, Lk0/le;->b3(I)V

    goto :goto_b

    .line 52
    :cond_18
    aget-object v2, v3, v2

    aget v2, v2, v7

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 53
    :cond_19
    iget v2, v1, Lk0/le;->b:I

    array-length v4, v3

    if-ge v2, v4, :cond_1a

    if-eq v2, v9, :cond_1a

    .line 54
    aget-object v2, v3, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 55
    :cond_1a
    iput v9, v1, Lk0/le;->b:I

    :cond_1b
    :goto_b
    add-int/lit8 v2, p2, 0x9

    .line 56
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v0, v0, v3

    const/16 v3, 0x21c

    invoke-static {v2, v0, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_c

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 57
    aget-byte v2, v0, v2

    add-int/lit8 v2, p2, 0x3

    .line 58
    aget-byte v2, v0, v2

    add-int/lit8 v2, p2, 0x4

    .line 59
    aget-byte v2, v0, v2

    add-int/lit8 v4, p2, 0x5

    .line 60
    aget-byte v4, v0, v4

    add-int/lit8 v5, p2, 0x9

    .line 61
    aget-byte v5, v0, v5

    add-int/lit8 v9, p2, 0xa

    .line 62
    aget-byte v9, v0, v9

    add-int/lit8 v11, p2, 0xb

    .line 63
    aget-byte v0, v0, v11

    const/16 v11, 0x3b

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v7

    shl-int/2addr v14, v10

    shr-int/lit8 v15, v5, 0x5

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    aput v14, v13, v6

    .line 64
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x3c

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v7

    shl-int/2addr v14, v10

    shr-int/lit8 v15, v5, 0x3

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    aput v14, v13, v6

    .line 65
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x3d

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v7

    shl-int/2addr v14, v10

    shr-int/lit8 v15, v5, 0x2

    and-int/2addr v15, v7

    or-int/2addr v14, v15

    aput v14, v13, v6

    .line 66
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x3e

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/2addr v14, v7

    shl-int/2addr v14, v10

    and-int/2addr v5, v12

    or-int/2addr v5, v14

    aput v5, v13, v6

    .line 67
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x3f

    new-array v11, v7, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v7

    shl-int/2addr v13, v10

    shr-int/lit8 v14, v9, 0x6

    and-int/2addr v14, v12

    or-int/2addr v13, v14

    aput v13, v11, v6

    .line 68
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x40

    new-array v11, v7, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v7

    shl-int/2addr v13, v10

    shr-int/lit8 v14, v9, 0x5

    and-int/2addr v14, v7

    or-int/2addr v13, v14

    aput v13, v11, v6

    .line 69
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v7

    shl-int/2addr v11, v10

    shr-int/lit8 v13, v9, 0x4

    and-int/2addr v13, v7

    or-int/2addr v11, v13

    aput v11, v5, v6

    .line 70
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x42

    new-array v5, v7, [I

    and-int/2addr v2, v7

    shl-int/2addr v2, v10

    shr-int/lit8 v11, v9, 0x3

    and-int/2addr v11, v7

    or-int/2addr v2, v11

    aput v2, v5, v6

    .line 71
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v7, [I

    shr-int/lit8 v5, v4, 0x7

    and-int/2addr v5, v7

    shl-int/2addr v5, v10

    shr-int/lit8 v11, v9, 0x2

    and-int/2addr v11, v7

    or-int/2addr v5, v11

    aput v5, v3, v6

    .line 72
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x44

    new-array v3, v7, [I

    shr-int/lit8 v5, v4, 0x6

    and-int/2addr v5, v7

    shl-int/2addr v5, v10

    and-int/2addr v9, v12

    or-int/2addr v5, v9

    aput v5, v3, v6

    .line 73
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x45

    new-array v3, v7, [I

    shr-int/lit8 v5, v4, 0x5

    and-int/2addr v5, v7

    shl-int/2addr v5, v10

    shr-int/lit8 v9, v0, 0x5

    and-int/2addr v9, v8

    or-int/2addr v5, v9

    aput v5, v3, v6

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x46

    new-array v3, v7, [I

    shr-int/lit8 v5, v4, 0x4

    and-int/2addr v5, v7

    shl-int/2addr v5, v10

    shr-int/lit8 v9, v0, 0x2

    and-int/2addr v8, v9

    or-int/2addr v5, v8

    aput v5, v3, v6

    .line 75
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x47

    new-array v3, v7, [I

    shr-int/2addr v4, v12

    and-int/2addr v4, v7

    shl-int/2addr v4, v10

    shr-int/2addr v0, v7

    and-int/2addr v0, v7

    or-int/2addr v0, v4

    aput v0, v3, v6

    .line 76
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 77
    :cond_1d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v2, p2, 0xc

    .line 78
    aget-byte v2, v0, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Lu0/d;->C2(I)V

    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/le;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 80
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/le;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 81
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/le;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 82
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/le;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 83
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/le;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 84
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/le;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 85
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/le;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 86
    aget-byte v0, v0, v2

    and-int/2addr v0, v9

    invoke-static {v0}, Lk0/le;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    .line 87
    :cond_1e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1f
    add-int/lit8 v2, p2, 0x5

    .line 88
    aget-byte v2, v0, v2

    sput v2, Lk0/le;->l:I

    add-int/lit8 v3, p2, 0x7

    .line 89
    aget-byte v3, v0, v3

    shl-int/2addr v3, v10

    const v11, 0xff00

    and-int/2addr v3, v11

    add-int/lit8 v12, p2, 0x8

    aget-byte v12, v0, v12

    and-int/2addr v12, v9

    or-int/2addr v3, v12

    add-int/lit8 v12, p2, 0x9

    .line 90
    aget-byte v12, v0, v12

    shl-int/2addr v12, v10

    and-int/2addr v12, v11

    add-int/lit8 v13, p2, 0xa

    aget-byte v13, v0, v13

    and-int/2addr v13, v9

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0xb

    .line 91
    aget-byte v13, v0, v13

    shl-int/2addr v13, v10

    and-int/2addr v13, v11

    add-int/lit8 v14, p2, 0xc

    aget-byte v14, v0, v14

    and-int/2addr v14, v9

    or-int/2addr v13, v14

    add-int/lit8 v14, p2, 0xd

    .line 92
    aget-byte v14, v0, v14

    shl-int/2addr v14, v10

    and-int/2addr v14, v11

    add-int/lit8 v15, p2, 0xe

    aget-byte v15, v0, v15

    and-int/2addr v15, v9

    or-int/2addr v14, v15

    add-int/lit8 v15, p2, 0xf

    .line 93
    aget-byte v15, v0, v15

    shl-int/lit8 v10, v15, 0x8

    and-int/2addr v10, v11

    add-int/lit8 v11, p2, 0x10

    aget-byte v11, v0, v11

    and-int/2addr v9, v11

    or-int/2addr v9, v10

    const/16 v10, 0x33

    new-array v11, v7, [I

    aput v2, v11, v6

    .line 94
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v10, v7, [I

    add-int/lit8 v11, p2, 0x6

    .line 95
    aget-byte v15, v0, v11

    shr-int/lit8 v4, v15, 0x5

    and-int/2addr v4, v8

    aput v4, v10, v6

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v4, v7, [I

    .line 96
    aget-byte v0, v0, v11

    shr-int/2addr v0, v5

    and-int/2addr v0, v8

    aput v0, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x36

    new-array v2, v7, [I

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v12

    aput v3, v2, v6

    .line 97
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x38

    new-array v2, v7, [I

    shl-int/lit8 v3, v13, 0x10

    or-int/2addr v3, v14

    aput v3, v2, v6

    .line 98
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x37

    new-array v2, v7, [I

    aput v9, v2, v6

    .line 99
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    .line 100
    :cond_20
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x5

    add-int/lit8 v4, p3, -0x5

    const-string v8, "GB2312"

    invoke-direct {v2, v0, v3, v4, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v3, 0x39

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 101
    aget-byte v0, v0, v5

    aput v0, v4, v6

    invoke-static {v3, v4, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_21
    :goto_c
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/le;->j:Lo1/o;

    sput-object v0, Lo1/u;->b:Lo1/o;

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/le;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x48

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

    const/4 p3, 0x3

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lt p1, v3, :cond_2

    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p4, p1, v2

    aput v1, p1, v4

    const/16 p4, 0x7e

    aput p4, p1, v3

    const/16 p4, 0xa

    aput p4, p1, p3

    aput v2, p1, v1

    .line 2
    aget p3, p2, v2

    aput p3, p1, v0

    const/4 p3, 0x6

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lt p1, v3, :cond_2

    new-array p1, v0, [I

    aput p4, p1, v2

    aput v3, p1, v4

    const/16 p4, 0xf2

    aput p4, p1, v3

    .line 4
    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e3()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk0/le;->e3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.wc.axela.ActivityAxelaCD"

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
