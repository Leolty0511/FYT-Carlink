.class public Lk0/zl;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public final e:[B

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/zl;->c:I

    const/16 v1, 0x8

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

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/zl;->d:[[I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 4
    iput-object v1, p0, Lk0/zl;->e:[B

    .line 5
    iput v0, p0, Lk0/zl;->f:I

    .line 6
    iput v0, p0, Lk0/zl;->g:I

    .line 7
    iput v0, p0, Lk0/zl;->h:I

    .line 8
    iput v0, p0, Lk0/zl;->i:I

    .line 9
    new-instance v0, Lk0/zl$a;

    invoke-direct {v0, p0}, Lk0/zl$a;-><init>(Lk0/zl;)V

    iput-object v0, p0, Lk0/zl;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/zl$b;

    invoke-direct {v0, p0}, Lk0/zl$b;-><init>(Lk0/zl;)V

    iput-object v0, p0, Lk0/zl;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/zl$c;

    invoke-direct {v0, p0}, Lk0/zl$c;-><init>(Lk0/zl;)V

    iput-object v0, p0, Lk0/zl;->l:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lk0/zl;->m:I

    return-void

    :array_0
    .array-data 4
        0x2
        0xd
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xc
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
        0xa
        0x1d
    .end array-data
.end method

.method public static b3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 3
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    .line 5
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v2, v0, Lk0/mt;->l:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->q:I

    .line 8
    iput v2, v0, Lk0/mt;->o:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/zl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/zl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/zl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/zl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/zl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/zl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_14

    const/16 v9, 0x1e

    if-eq v2, v9, :cond_13

    const/16 v10, 0x23

    const/4 v11, 0x3

    if-eq v2, v10, :cond_d

    const/16 v10, 0x24

    if-eq v2, v10, :cond_b

    const/16 v4, 0x29

    if-eq v2, v4, :cond_a

    const/16 v4, 0x30

    if-eq v2, v4, :cond_9

    const/16 v4, 0x55

    if-eq v2, v4, :cond_0

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    add-int/lit8 v10, p2, 0x3

    .line 3
    aget-byte v13, v1, v10

    and-int/2addr v13, v6

    const-string v14, "persist.fyt.reversetemp"

    .line 4
    invoke-static {v14, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5
    aget-byte v4, v1, v10

    and-int/2addr v4, v6

    .line 6
    aget-byte v2, v1, v2

    and-int/lit16 v13, v2, 0xff

    :cond_1
    const/4 v2, -0x1

    const/4 v10, -0x3

    const/4 v14, -0x2

    const/16 v15, 0x1b

    const/16 v6, 0x50

    const/16 v12, 0x10

    if-ne v4, v12, :cond_2

    new-array v4, v8, [I

    aput v14, v4, v7

    .line 7
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ne v4, v6, :cond_3

    new-array v4, v8, [I

    aput v10, v4, v7

    .line 8
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    if-le v4, v12, :cond_4

    if-ge v4, v6, :cond_4

    new-array v9, v8, [I

    aput v4, v9, v7

    .line 9
    invoke-static {v15, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v4, v8, [I

    aput v2, v4, v7

    .line 10
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v4, 0x1c

    if-ne v13, v12, :cond_5

    new-array v2, v8, [I

    aput v14, v2, v7

    .line 11
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    if-ne v13, v6, :cond_6

    new-array v2, v8, [I

    aput v10, v2, v7

    .line 12
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    if-le v13, v12, :cond_7

    if-ge v13, v6, :cond_7

    new-array v2, v8, [I

    aput v13, v2, v7

    .line 13
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v6, v8, [I

    aput v2, v6, v7

    .line 14
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x15

    new-array v4, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 15
    aget-byte v9, v1, v6

    shr-int/2addr v9, v7

    const/16 v10, 0xf

    and-int/2addr v9, v10

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 16
    aget-byte v2, v1, v6

    shr-int/2addr v2, v5

    and-int/2addr v2, v10

    packed-switch v2, :pswitch_data_0

    move v2, v7

    :goto_2
    move v4, v2

    :goto_3
    move v6, v4

    goto :goto_4

    :pswitch_0
    move v2, v8

    goto :goto_2

    :pswitch_1
    move v4, v7

    move v6, v4

    move v2, v8

    goto :goto_4

    :pswitch_2
    move v6, v7

    move v2, v8

    move v4, v2

    goto :goto_4

    :pswitch_3
    move v4, v7

    move v2, v8

    move v6, v2

    goto :goto_4

    :pswitch_4
    move v2, v7

    move v4, v2

    move v6, v8

    goto :goto_4

    :pswitch_5
    move v2, v7

    move v4, v8

    goto :goto_3

    :pswitch_6
    move v2, v7

    move v6, v2

    move v4, v8

    :goto_4
    const/16 v9, 0x12

    new-array v13, v8, [I

    aput v2, v13, v7

    .line 17
    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v8, [I

    aput v4, v9, v7

    .line 18
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v8, [I

    aput v6, v4, v7

    .line 19
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 20
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/2addr v6, v11

    aput v6, v2, v7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 21
    aget-byte v3, v1, v4

    shr-int/2addr v3, v5

    and-int/2addr v3, v11

    aput v3, v2, v7

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 22
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v3, v8, [I

    .line 23
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v8, [I

    .line 24
    aget-byte v6, v1, v4

    const/4 v9, 0x2

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 25
    aget-byte v3, v1, v4

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 26
    aget-byte v3, v1, v4

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v8, [I

    .line 27
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 28
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 29
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 30
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    :cond_8
    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x258

    .line 31
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    .line 32
    :cond_9
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x300c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :cond_b
    const/4 v2, 0x2

    add-int/lit8 v3, p2, 0x2

    .line 34
    aget-byte v1, v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 35
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 36
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/4 v3, 0x2

    .line 37
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 38
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/4 v3, 0x2

    .line 39
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 40
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 41
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 42
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 43
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 44
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 45
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 46
    iput v2, v0, Lk0/zl;->c:I

    move v2, v7

    .line 47
    :goto_6
    iget-object v3, v0, Lk0/zl;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_f

    .line 48
    iget v4, v0, Lk0/zl;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_e

    if-eqz v4, :cond_f

    .line 49
    iput v2, v0, Lk0/zl;->b:I

    goto :goto_7

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v8, :cond_10

    .line 50
    array-length v1, v3

    if-ge v2, v1, :cond_18

    .line 51
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_10
    if-nez v1, :cond_18

    .line 52
    iget v1, v0, Lk0/zl;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_11

    const/16 v2, 0xff

    if-eq v1, v2, :cond_12

    .line 53
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_11
    const/16 v2, 0xff

    .line 54
    :cond_12
    :goto_8
    iput v2, v0, Lk0/zl;->b:I

    goto/16 :goto_a

    :cond_13
    move v2, v6

    add-int/lit8 v3, p2, 0x2

    .line 55
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->K1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 56
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->K1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    add-int/lit8 v3, p2, 0x4

    .line 57
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->K1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    add-int/lit8 v3, p2, 0x5

    .line 58
    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    invoke-static {v1}, Ll0/c0;->K1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :cond_14
    move v2, v6

    add-int/lit8 v3, p2, 0x2

    .line 59
    aget-byte v6, v1, v3

    and-int/2addr v6, v2

    add-int/lit8 v9, p2, 0x3

    .line 60
    aget-byte v10, v1, v9

    and-int/2addr v10, v2

    add-int/lit8 v11, p2, 0x4

    .line 61
    aget-byte v12, v1, v11

    and-int/2addr v12, v2

    add-int/lit8 v4, p2, 0x5

    .line 62
    aget-byte v13, v1, v4

    and-int/2addr v13, v2

    if-nez v6, :cond_15

    if-nez v10, :cond_15

    if-nez v12, :cond_15

    if-nez v13, :cond_15

    .line 63
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_9

    .line 64
    :cond_15
    sget v2, Ll0/c0;->g:I

    if-ne v2, v6, :cond_16

    sget v2, Ll0/c0;->h:I

    if-ne v2, v10, :cond_16

    sget v2, Ll0/c0;->i:I

    if-ne v2, v12, :cond_16

    sget v2, Ll0/c0;->j:I

    if-eq v2, v13, :cond_17

    .line 65
    :cond_16
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_17

    .line 66
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 67
    sput v5, Ll0/c0;->k:I

    .line 68
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 69
    :cond_17
    :goto_9
    sput v6, Ll0/c0;->g:I

    .line 70
    sput v10, Ll0/c0;->h:I

    .line 71
    sput v12, Ll0/c0;->i:I

    .line 72
    sput v13, Ll0/c0;->j:I

    .line 73
    aget-byte v2, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 74
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 75
    aget-byte v2, v1, v11

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 76
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->K1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_18
    :goto_a
    return-void

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

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/zl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/zl;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/zl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/zl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/zl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/zl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/zl;->l:Ljava/lang/Runnable;

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
    .locals 1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 v0, 0xe3

    aput v0, p1, p3

    const/16 v0, 0x90

    aput v0, p1, p4

    const/4 v0, 0x2

    aput p4, p1, v0

    const/4 p4, 0x3

    .line 1
    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 2
    :cond_1
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/zl;->a3(I)V

    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lk0/zl;->m:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    iput v1, v0, Lk0/zl;->m:I

    const/16 v4, 0x8

    new-array v5, v4, [I

    const/4 v6, 0x0

    const/16 v7, 0xe3

    aput v7, v5, v6

    const/16 v8, 0x33

    aput v8, v5, v2

    const/4 v9, 0x5

    aput v9, v5, v3

    move/from16 v10, p1

    int-to-byte v10, v10

    const/4 v11, 0x3

    aput v10, v5, v11

    if-nez v1, :cond_0

    const/16 v1, 0x22

    goto :goto_0

    :cond_0
    const/16 v1, 0xcc

    :goto_0
    const/4 v14, 0x4

    aput v1, v5, v14

    const/16 v1, 0x25

    aput v1, v5, v9

    const/4 v15, 0x6

    aput v6, v5, v15

    const/16 v16, 0x7

    const/16 v17, 0xaa

    aput v17, v5, v16

    .line 2
    invoke-static {v5}, Lz/k;->s([I)V

    new-array v5, v4, [I

    aput v7, v5, v6

    aput v8, v5, v2

    aput v9, v5, v3

    aput v10, v5, v11

    .line 3
    iget v12, v0, Lk0/zl;->m:I

    if-nez v12, :cond_1

    const/16 v12, 0x22

    goto :goto_1

    :cond_1
    const/16 v12, 0xcc

    :goto_1
    aput v12, v5, v14

    aput v1, v5, v9

    aput v6, v5, v15

    aput v17, v5, v16

    invoke-static {v5}, Lz/k;->s([I)V

    new-array v5, v4, [I

    aput v7, v5, v6

    aput v8, v5, v2

    aput v9, v5, v3

    aput v10, v5, v11

    .line 4
    iget v7, v0, Lk0/zl;->m:I

    if-nez v7, :cond_2

    const/16 v7, 0x22

    goto :goto_2

    :cond_2
    const/16 v7, 0xcc

    :goto_2
    aput v7, v5, v14

    aput v1, v5, v9

    aput v6, v5, v15

    aput v17, v5, v16

    invoke-static {v5}, Lz/k;->s([I)V

    const/16 v5, 0x9

    new-array v7, v5, [B

    const/16 v12, 0x2e

    aput-byte v12, v7, v6

    aput-byte v8, v7, v2

    aput-byte v9, v7, v3

    aput-byte v10, v7, v11

    .line 5
    iget v13, v0, Lk0/zl;->m:I

    if-nez v13, :cond_3

    const/16 v13, 0x22

    goto :goto_3

    :cond_3
    const/16 v13, 0xcc

    :goto_3
    int-to-byte v13, v13

    aput-byte v13, v7, v14

    aput-byte v1, v7, v9

    aput-byte v6, v7, v15

    const/16 v13, -0x56

    aput-byte v13, v7, v16

    aput-byte v6, v7, v4

    invoke-static {v7}, Lk0/zl;->b3([B)V

    new-array v7, v5, [B

    aput-byte v12, v7, v6

    aput-byte v8, v7, v2

    aput-byte v9, v7, v3

    aput-byte v10, v7, v11

    .line 6
    iget v11, v0, Lk0/zl;->m:I

    if-nez v11, :cond_4

    const/16 v11, 0x22

    goto :goto_4

    :cond_4
    const/16 v11, 0xcc

    :goto_4
    int-to-byte v11, v11

    aput-byte v11, v7, v14

    aput-byte v1, v7, v9

    aput-byte v6, v7, v15

    aput-byte v13, v7, v16

    aput-byte v6, v7, v4

    invoke-static {v7}, Lk0/zl;->b3([B)V

    new-array v5, v5, [B

    aput-byte v12, v5, v6

    aput-byte v8, v5, v2

    aput-byte v9, v5, v3

    const/4 v2, 0x3

    aput-byte v10, v5, v2

    .line 7
    iget v2, v0, Lk0/zl;->m:I

    if-nez v2, :cond_5

    const/16 v12, 0x22

    goto :goto_5

    :cond_5
    const/16 v12, 0xcc

    :goto_5
    int-to-byte v2, v12

    aput-byte v2, v5, v14

    aput-byte v1, v5, v9

    aput-byte v6, v5, v15

    aput-byte v13, v5, v16

    aput-byte v6, v5, v4

    invoke-static {v5}, Lk0/zl;->b3([B)V

    return-void
.end method

.method public b([B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_e

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    iget v1, p0, Lk0/zl;->f:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/zl;->f:I

    .line 5
    iput v0, p0, Lk0/zl;->g:I

    .line 6
    iput v0, p0, Lk0/zl;->h:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/zl;->e:[B

    iget v2, p0, Lk0/zl;->f:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/zl;->f:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/zl;->f:I

    .line 9
    iget p1, p0, Lk0/zl;->h:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/zl;->e:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/zl;->h:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/zl;->e:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/zl;->e:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/zl;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/zl;->h:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/zl;->g:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/zl;->g:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/zl;->h:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/zl;->f:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/zl;->g:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/zl;->e:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/zl;->h:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/zl;->h:I

    .line 23
    iget v6, p0, Lk0/zl;->f:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/zl;->h:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/zl;->h:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/zl;->e:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/zl;->e:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/zl;->g:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/zl;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/zl;->h:I

    iput v1, p0, Lk0/zl;->g:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/zl;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/zl;->g:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/zl;->h:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/zl;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/zl;->g:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/zl;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/zl;->f:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/zl;->e:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/zl;->g:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method
