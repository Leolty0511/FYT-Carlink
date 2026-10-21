.class public Lk0/ln;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ln;->c:I

    const/16 v1, 0xa

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

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/ln;->d:[[I

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
        0xd
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x3e
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

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->h:I

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x21

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_14

    const/16 v3, 0x23

    const/16 v12, 0x10

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/4 v15, 0x2

    if-eq v2, v3, :cond_c

    const/16 v3, 0x26

    if-eq v2, v3, :cond_b

    const/16 v3, 0x40

    const/16 v4, 0x64

    const v16, 0xff00

    if-eq v2, v3, :cond_8

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_4

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1

    const/16 v3, 0x29

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v2, p2, 0x3

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v9

    const/16 v3, 0x1e40

    const/16 v4, 0x1649

    invoke-static {v2, v1, v3, v10, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 4
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 5
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 6
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 7
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 8
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 9
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 10
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v11

    aput v1, v2, v10

    .line 11
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 12
    :cond_3
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 13
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    const/16 v3, 0x419

    const/4 v5, 0x0

    if-eq v2, v11, :cond_6

    if-eq v2, v8, :cond_5

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v2, p2, 0x4

    .line 14
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int v2, v2, v16

    add-int/lit8 v6, p2, 0x3

    aget-byte v1, v1, v6

    and-int/2addr v1, v9

    or-int/2addr v1, v2

    div-int/2addr v1, v4

    const/16 v2, 0x407

    new-array v4, v11, [I

    aput v1, v4, v10

    .line 15
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 16
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v15, [I

    aput v11, v4, v10

    aput v1, v4, v11

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 17
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v2, p2, 0x3

    .line 18
    aget-byte v4, v1, v2

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aget-byte v2, v1, v2

    shr-int/2addr v2, v7

    and-int/2addr v2, v11

    invoke-static {v4, v2, v10}, Ll0/c0;->b(III)V

    goto :goto_1

    :cond_7
    add-int/lit8 v2, p2, 0x3

    .line 19
    aget-byte v4, v1, v2

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aget-byte v2, v1, v2

    shr-int/2addr v2, v7

    and-int/2addr v2, v11

    invoke-static {v4, v2, v10}, Ll0/c0;->a(III)V

    .line 20
    :goto_1
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v15, [I

    aput v13, v4, v10

    add-int/lit8 v6, p2, 0x3

    aget-byte v1, v1, v6

    and-int/2addr v1, v9

    aput v1, v4, v11

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    const/16 v2, 0x63

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 21
    aget-byte v7, v1, v5

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 22
    aget-byte v3, v1, v5

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    aput v3, v2, v10

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    and-int/lit16 v3, v2, 0x80

    if-lez v3, :cond_9

    rsub-int v2, v2, 0xff

    move v3, v11

    goto :goto_2

    :cond_9
    move v3, v10

    :goto_2
    if-ne v3, v11, :cond_a

    mul-int/2addr v2, v14

    rsub-int v2, v2, 0x3e8

    goto :goto_3

    :cond_a
    mul-int/2addr v2, v14

    add-int/lit16 v2, v2, 0x3e8

    .line 24
    :goto_3
    invoke-static {v2}, Lu0/d;->A3(I)V

    const/16 v2, 0x66

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 25
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 26
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 27
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 28
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 29
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    or-int/2addr v4, v5

    const/16 v5, 0xc

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    and-int/2addr v1, v9

    or-int/2addr v1, v4

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :cond_c
    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x2

    .line 34
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v11

    aput v4, v2, v10

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 35
    aget-byte v4, v1, v3

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v2, v10

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 36
    aget-byte v4, v1, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v2, v10

    const/16 v4, 0xc

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x44

    new-array v4, v11, [I

    .line 37
    aget-byte v13, v1, v3

    shr-int/2addr v13, v7

    and-int/2addr v13, v11

    aput v13, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v4, v11, [I

    .line 38
    aget-byte v13, v1, v3

    shr-int/2addr v13, v8

    and-int/2addr v13, v11

    aput v13, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x48

    new-array v4, v11, [I

    .line 39
    aget-byte v13, v1, v3

    shr-int/2addr v13, v15

    and-int/2addr v13, v11

    aput v13, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 40
    aget-byte v4, v1, v3

    shr-int/2addr v4, v11

    and-int/2addr v4, v11

    aput v4, v2, v10

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v11, [I

    .line 41
    aget-byte v3, v1, v3

    shr-int/2addr v3, v10

    and-int/2addr v3, v11

    aput v3, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 42
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    if-eq v2, v11, :cond_11

    if-eq v2, v15, :cond_10

    if-eq v2, v8, :cond_f

    if-eq v2, v7, :cond_e

    if-eq v2, v5, :cond_d

    move v2, v10

    move v3, v2

    :goto_4
    move v4, v3

    goto :goto_5

    :cond_d
    move v3, v10

    move v4, v3

    move v2, v11

    goto :goto_5

    :cond_e
    move v3, v10

    move v2, v11

    move v4, v2

    goto :goto_5

    :cond_f
    move v2, v10

    move v3, v2

    move v4, v11

    goto :goto_5

    :cond_10
    move v2, v10

    move v3, v11

    goto :goto_4

    :cond_11
    move v2, v10

    move v4, v2

    move v3, v11

    :goto_5
    const/16 v5, 0x12

    new-array v7, v11, [I

    aput v2, v7, v10

    .line 43
    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v11, [I

    aput v3, v5, v10

    .line 44
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v4, v3, v10

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 46
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 47
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    const/16 v4, 0x1c

    const/16 v5, 0x1b

    if-nez v3, :cond_12

    new-array v1, v11, [I

    const/4 v2, -0x2

    aput v2, v1, v10

    .line 48
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    aput v2, v1, v10

    .line 49
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 50
    :cond_12
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    const/16 v6, 0x1e

    if-ne v3, v6, :cond_13

    new-array v1, v11, [I

    const/4 v2, -0x3

    aput v2, v1, v10

    .line 51
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    aput v2, v1, v10

    .line 52
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_13
    new-array v3, v11, [I

    .line 53
    aget-byte v6, v1, v2

    and-int/2addr v6, v9

    aput v6, v3, v10

    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    .line 54
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    aput v1, v3, v10

    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 56
    aget-byte v1, v1, v3

    and-int/2addr v2, v9

    .line 57
    iput v2, v0, Lk0/ln;->c:I

    move v2, v10

    .line 58
    :goto_6
    iget-object v3, v0, Lk0/ln;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_16

    .line 59
    iget v4, v0, Lk0/ln;->c:I

    aget-object v12, v3, v2

    aget v12, v12, v10

    if-ne v4, v12, :cond_15

    if-eqz v4, :cond_16

    .line 60
    iput v2, v0, Lk0/ln;->b:I

    goto :goto_7

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 61
    :cond_16
    :goto_7
    iget v4, v0, Lk0/ln;->c:I

    if-eq v4, v6, :cond_19

    and-int/2addr v1, v9

    if-ne v1, v11, :cond_17

    .line 62
    array-length v1, v3

    if-ge v2, v1, :cond_1b

    .line 63
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_17
    if-nez v1, :cond_1b

    .line 64
    iget v1, v0, Lk0/ln;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_18

    if-eq v1, v9, :cond_18

    .line 65
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 66
    :cond_18
    iput v9, v0, Lk0/ln;->b:I

    goto :goto_8

    :cond_19
    and-int/2addr v1, v9

    if-ne v1, v11, :cond_1b

    .line 67
    sget v1, Lh0/c;->E:I

    if-eq v1, v8, :cond_1a

    if-eq v1, v7, :cond_1a

    if-eq v1, v5, :cond_1a

    const/16 v1, 0xc

    .line 68
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 69
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_1a
    const/16 v1, 0x1a

    .line 70
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 71
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

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

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6b

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

    const/16 p3, 0x8a

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
