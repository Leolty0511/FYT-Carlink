.class public Lk0/mm;
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

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/mm;->c:I

    const/16 v1, 0x16

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

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/mm;->d:[[I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 4
    iput-object v1, p0, Lk0/mm;->e:[B

    .line 5
    iput v0, p0, Lk0/mm;->f:I

    .line 6
    iput v0, p0, Lk0/mm;->g:I

    .line 7
    iput v0, p0, Lk0/mm;->h:I

    .line 8
    new-instance v0, Lk0/mm$a;

    invoke-direct {v0, p0}, Lk0/mm$a;-><init>(Lk0/mm;)V

    iput-object v0, p0, Lk0/mm;->i:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1e
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1f
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x20
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x21
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x18
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x5
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x37
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

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->h:I

    .line 7
    iget-object v0, p0, Lk0/mm;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x5f

    const/4 v4, 0x2

    const/16 v5, 0xa

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_1a

    const/16 v3, -0x5e

    const/16 v9, 0x1c

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eq v2, v3, :cond_19

    const/16 v3, 0x9

    const/16 v15, 0x8

    if-eq v2, v14, :cond_16

    const/16 v10, 0xb

    const/4 v11, 0x6

    if-eq v2, v13, :cond_15

    if-eq v2, v11, :cond_c

    const/4 v11, 0x7

    if-eq v2, v11, :cond_b

    if-eq v2, v15, :cond_9

    if-eq v2, v9, :cond_5

    const/16 v3, 0x24

    if-eq v2, v3, :cond_3

    const/16 v3, 0x71

    if-eq v2, v3, :cond_2

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-eq v2, v8, :cond_1

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v3, v1, v2

    shr-int/2addr v3, v14

    and-int/2addr v3, v8

    aget-byte v5, v1, v2

    shr-int/2addr v5, v13

    and-int/2addr v5, v8

    invoke-static {v3, v5, v7}, Ll0/c0;->a(III)V

    .line 4
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x419

    new-array v4, v4, [I

    aput v10, v4, v7

    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    aput v1, v4, v8

    const/4 v1, 0x0

    invoke-static {v3, v5, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x4

    aget-byte v4, v1, v3

    div-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v3, v1, v3

    rem-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p2, 0x5

    aget-byte v6, v1, v4

    div-int/2addr v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v4, v1, v4

    rem-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x6

    aget-byte v4, v1, v3

    div-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v3, v1, v3

    rem-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x8

    invoke-direct {v3, v1, v4, v14}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 7
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    const/16 v4, 0x32

    const/16 v5, 0x80

    if-lt v3, v5, :cond_4

    .line 8
    aget-byte v1, v1, v2

    invoke-static {v1, v7, v5, v8, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_8

    .line 9
    :cond_4
    aget-byte v1, v1, v2

    invoke-static {v1, v7, v7, v4}, Lk0/qt;->j(IIII)V

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v2, v1, v2

    rsub-int/lit8 v2, v2, 0xa

    and-int/2addr v2, v6

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 11
    aget-byte v2, v1, v2

    rsub-int/lit8 v2, v2, 0xa

    and-int/2addr v2, v6

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 12
    aget-byte v2, v1, v2

    rsub-int/lit8 v2, v2, 0xa

    and-int/2addr v2, v6

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 13
    aget-byte v2, v1, v2

    rsub-int/lit8 v2, v2, 0xa

    and-int/2addr v2, v6

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 14
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    add-int/lit8 v9, p2, 0x7

    .line 15
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    add-int/lit8 v11, p2, 0x8

    .line 16
    aget-byte v12, v1, v11

    and-int/2addr v12, v6

    add-int/lit8 v3, p2, 0x9

    .line 17
    aget-byte v14, v1, v3

    and-int/2addr v14, v6

    if-nez v4, :cond_6

    if-nez v10, :cond_6

    if-nez v12, :cond_6

    if-nez v14, :cond_6

    .line 18
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 19
    :cond_6
    sget v7, Ll0/c0;->g:I

    if-ne v7, v4, :cond_7

    sget v7, Ll0/c0;->h:I

    if-ne v7, v10, :cond_7

    sget v7, Ll0/c0;->i:I

    if-ne v7, v12, :cond_7

    sget v7, Ll0/c0;->j:I

    if-eq v7, v14, :cond_8

    .line 20
    :cond_7
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_8

    .line 21
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 22
    sput v13, Ll0/c0;->k:I

    .line 23
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 24
    :cond_8
    :goto_0
    sput v4, Ll0/c0;->g:I

    .line 25
    sput v10, Ll0/c0;->h:I

    .line 26
    sput v12, Ll0/c0;->i:I

    .line 27
    sput v14, Ll0/c0;->j:I

    .line 28
    aget-byte v2, v1, v2

    rsub-int/lit8 v2, v2, 0xa

    and-int/2addr v2, v6

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 29
    aget-byte v2, v1, v9

    rsub-int/lit8 v2, v2, 0xa

    and-int/2addr v2, v6

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 30
    aget-byte v2, v1, v11

    rsub-int/lit8 v2, v2, 0xa

    and-int/2addr v2, v6

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 31
    aget-byte v1, v1, v3

    sub-int/2addr v5, v1

    and-int/lit16 v1, v5, 0xff

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 32
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 33
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 34
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 35
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
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

    .line 37
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 38
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 39
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v14

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 40
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_b
    const/16 v2, 0x10

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 41
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v3, v8, [I

    .line 42
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 43
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 44
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 45
    aget-byte v1, v1, v4

    and-int/2addr v2, v6

    .line 46
    iput v2, v0, Lk0/mm;->c:I

    move v2, v7

    .line 47
    :goto_2
    iget-object v4, v0, Lk0/mm;->d:[[I

    array-length v9, v4

    if-ge v2, v9, :cond_e

    .line 48
    iget v9, v0, Lk0/mm;->c:I

    aget-object v10, v4, v2

    aget v10, v10, v7

    if-ne v9, v10, :cond_d

    if-eqz v9, :cond_e

    .line 49
    iput v2, v0, Lk0/mm;->b:I

    goto :goto_3

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 50
    :cond_e
    :goto_3
    iget v9, v0, Lk0/mm;->c:I

    if-eq v9, v3, :cond_13

    if-eq v9, v5, :cond_11

    and-int/2addr v1, v6

    if-ne v1, v8, :cond_f

    .line 51
    array-length v1, v4

    if-ge v2, v1, :cond_1b

    .line 52
    aget-object v1, v4, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_f
    if-nez v1, :cond_1b

    .line 53
    iget v1, v0, Lk0/mm;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_10

    if-eq v1, v6, :cond_10

    .line 54
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 55
    :cond_10
    iput v6, v0, Lk0/mm;->b:I

    goto/16 :goto_8

    :cond_11
    move v2, v7

    :goto_4
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_12

    const/16 v3, 0x1f

    .line 56
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/16 v3, 0x1f

    .line 57
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_13
    move v2, v7

    :goto_5
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    const/16 v3, 0x1e

    .line 58
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    const/16 v3, 0x1e

    .line 59
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_15
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 60
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    aput v3, v2, v7

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 61
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 62
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 63
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x6

    .line 64
    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    aput v1, v2, v7

    const/16 v1, 0xf

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    shl-int/2addr v2, v15

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v2, v9

    const v9, 0x8000

    and-int/2addr v9, v2

    if-eqz v9, :cond_17

    const/high16 v9, 0x10000

    sub-int v2, v9, v2

    move v9, v8

    goto :goto_6

    :cond_17
    move v9, v7

    :goto_6
    if-ne v9, v8, :cond_18

    mul-int/2addr v2, v12

    rsub-int v2, v2, 0x3e8

    goto :goto_7

    :cond_18
    mul-int/2addr v2, v12

    add-int/lit16 v2, v2, 0x3e8

    .line 66
    :goto_7
    invoke-static {v2}, Lu0/d;->A3(I)V

    new-array v2, v8, [I

    add-int/lit8 v9, p2, 0x4

    .line 67
    aget-byte v9, v1, v9

    shl-int/2addr v9, v15

    and-int/2addr v9, v4

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    aput v9, v2, v7

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v9, p2, 0x6

    .line 68
    aget-byte v9, v1, v9

    shl-int/2addr v9, v15

    and-int/2addr v9, v4

    add-int/lit8 v10, p2, 0x7

    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    aput v9, v2, v7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v8, p2, 0x8

    .line 69
    aget-byte v8, v1, v8

    shl-int/2addr v8, v15

    and-int/2addr v4, v8

    add-int/lit8 v3, p2, 0x9

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_19
    const/16 v2, 0x21

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 70
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v8, [I

    .line 71
    aget-byte v6, v1, v5

    shr-int/2addr v6, v13

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 72
    aget-byte v3, v1, v5

    shr-int/2addr v3, v14

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0x1f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 73
    aget-byte v3, v1, v5

    shr-int/2addr v3, v4

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    .line 74
    aget-byte v4, v1, v5

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 75
    aget-byte v1, v1, v5

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v2, v7

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1a
    const/16 v2, 0x14

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x2

    .line 76
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 77
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x4

    .line 78
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x9

    .line 79
    aget-byte v9, v1, v9

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xa

    .line 80
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v3, v8, [I

    .line 81
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v8, [I

    .line 82
    aget-byte v1, v1, v5

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1b
    :goto_8
    return-void
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
    iget-object v0, p0, Lk0/mm;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x22

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

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput p3, p1, v2

    const/16 p3, 0x31

    aput p3, p1, v4

    aput v3, p1, v3

    .line 1
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v2

    const/16 p3, 0x82

    aput p3, p1, v4

    aput v1, p1, v3

    .line 2
    aget p3, p2, v2

    aput p3, p1, v0

    aget p3, p2, v4

    aput p3, p1, p4

    aget p3, p2, v3

    aput p3, p1, v1

    const/4 p3, 0x6

    aget v0, p2, v0

    aput v0, p1, p3

    const/4 p3, 0x7

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    aput p3, p1, v2

    const/16 p3, 0x85

    aput p3, p1, v4

    aput v3, p1, v3

    .line 3
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
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
    iget v1, p0, Lk0/mm;->f:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/mm;->f:I

    .line 5
    iput v0, p0, Lk0/mm;->g:I

    .line 6
    iput v0, p0, Lk0/mm;->h:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/mm;->e:[B

    iget v2, p0, Lk0/mm;->f:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/mm;->f:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/mm;->f:I

    .line 9
    iget p1, p0, Lk0/mm;->h:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/mm;->e:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/mm;->h:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/mm;->e:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/mm;->e:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/mm;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/mm;->h:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/mm;->g:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/mm;->g:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/mm;->h:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/mm;->f:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/mm;->g:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/mm;->e:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/mm;->h:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/mm;->h:I

    .line 23
    iget v6, p0, Lk0/mm;->f:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/mm;->h:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/mm;->h:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/mm;->e:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/mm;->e:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/mm;->g:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/mm;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/mm;->h:I

    iput v1, p0, Lk0/mm;->g:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/mm;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/mm;->g:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/mm;->h:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/mm;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/mm;->g:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/mm;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/mm;->f:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/mm;->e:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/mm;->g:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method
