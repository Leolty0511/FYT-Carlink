.class public Lk0/pl;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/pl;->b:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/pl;->c:I

    return-void

    nop

    :array_0
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 2

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

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_1a

    const/16 v6, 0x24

    const/4 v8, 0x2

    if-eq v0, v6, :cond_18

    const/16 v9, 0x29

    if-eq v0, v9, :cond_17

    const/16 v9, 0x55

    const/4 v10, 0x6

    if-eq v0, v9, :cond_3

    const/16 v1, 0x57

    if-eq v0, v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v0, ""

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v2, p1, v1

    const-string v3, "Null"

    const-string v4, "_"

    if-ne v2, v8, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Toyota_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    add-int/lit8 v2, p2, 0x3

    .line 5
    aget-byte v2, p1, v2

    if-ne v2, v10, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Tundra_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, p2, 0x4

    .line 8
    aget-byte v1, p1, v1

    add-int/lit16 v1, v1, 0x7d0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "V"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3
    const-string v0, "persist.fyt.reversetemp"

    .line 14
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v9, -0x1

    const/4 v11, -0x3

    const/4 v12, -0x2

    const/16 v13, 0x40

    const/16 v14, 0xa

    const/16 v15, 0x1c

    const/16 v7, 0x1b

    if-eqz v0, :cond_a

    add-int/lit8 v0, p2, 0x2

    .line 15
    aget-byte v10, p1, v0

    and-int/2addr v10, v3

    if-ne v10, v6, :cond_4

    new-array v0, v5, [I

    aput v12, v0, v4

    .line 16
    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 17
    :cond_4
    aget-byte v10, p1, v0

    and-int/2addr v10, v3

    if-ne v10, v13, :cond_5

    new-array v0, v5, [I

    aput v11, v0, v4

    .line 18
    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 19
    :cond_5
    aget-byte v10, p1, v0

    and-int/2addr v10, v3

    if-ge v10, v14, :cond_6

    new-array v0, v5, [I

    aput v9, v0, v4

    .line 20
    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v10, v5, [I

    .line 21
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, v10, v4

    invoke-static {v15, v10}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v0, p2, 0x3

    .line 22
    aget-byte v10, p1, v0

    and-int/2addr v10, v3

    if-ne v10, v6, :cond_7

    new-array v0, v5, [I

    aput v12, v0, v4

    .line 23
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 24
    :cond_7
    aget-byte v6, p1, v0

    and-int/2addr v6, v3

    if-ne v6, v13, :cond_8

    new-array v0, v5, [I

    aput v11, v0, v4

    .line 25
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 26
    :cond_8
    aget-byte v6, p1, v0

    and-int/2addr v6, v3

    if-ge v6, v14, :cond_9

    new-array v0, v5, [I

    aput v9, v0, v4

    .line 27
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_9
    new-array v6, v5, [I

    .line 28
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, v6, v4

    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    add-int/lit8 v0, p2, 0x2

    .line 29
    aget-byte v10, p1, v0

    and-int/2addr v10, v3

    if-ne v10, v6, :cond_b

    new-array v0, v5, [I

    aput v12, v0, v4

    .line 30
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 31
    :cond_b
    aget-byte v10, p1, v0

    and-int/2addr v10, v3

    if-ne v10, v13, :cond_c

    new-array v0, v5, [I

    aput v11, v0, v4

    .line 32
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 33
    :cond_c
    aget-byte v10, p1, v0

    and-int/2addr v10, v3

    if-ge v10, v14, :cond_d

    new-array v0, v5, [I

    aput v9, v0, v4

    .line 34
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v10, v5, [I

    .line 35
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, v10, v4

    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v0, p2, 0x3

    .line 36
    aget-byte v7, p1, v0

    and-int/2addr v7, v3

    if-ne v7, v6, :cond_e

    new-array v0, v5, [I

    aput v12, v0, v4

    .line 37
    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 38
    :cond_e
    aget-byte v6, p1, v0

    and-int/2addr v6, v3

    if-ne v6, v13, :cond_f

    new-array v0, v5, [I

    aput v11, v0, v4

    .line 39
    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 40
    :cond_f
    aget-byte v6, p1, v0

    and-int/2addr v6, v3

    if-ge v6, v14, :cond_10

    new-array v0, v5, [I

    aput v9, v0, v4

    .line 41
    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v6, v5, [I

    .line 42
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, v6, v4

    invoke-static {v15, v6}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v0, 0x15

    new-array v6, v5, [I

    add-int/lit8 v7, p2, 0x4

    .line 43
    aget-byte v9, p1, v7

    shr-int/2addr v9, v4

    and-int/lit8 v9, v9, 0xf

    aput v9, v6, v4

    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    .line 44
    aget-byte v0, p1, v7

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0xf

    if-eq v0, v5, :cond_15

    if-eq v0, v8, :cond_14

    if-eq v0, v2, :cond_13

    if-eq v0, v1, :cond_12

    const/4 v6, 0x6

    if-eq v0, v6, :cond_11

    move v0, v4

    move v6, v0

    :goto_5
    move v7, v6

    goto :goto_6

    :cond_11
    move v6, v4

    move v7, v6

    move v0, v5

    goto :goto_6

    :cond_12
    move v6, v4

    move v0, v5

    move v7, v0

    goto :goto_6

    :cond_13
    move v0, v4

    move v6, v0

    move v7, v5

    goto :goto_6

    :cond_14
    move v0, v4

    move v6, v5

    goto :goto_5

    :cond_15
    move v0, v4

    move v7, v0

    move v6, v5

    :goto_6
    const/16 v9, 0x12

    new-array v10, v5, [I

    aput v0, v10, v4

    .line 45
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v9, v5, [I

    aput v6, v9, v4

    .line 46
    invoke-static {v0, v9}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v6, v5, [I

    aput v7, v6, v4

    .line 47
    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1d

    new-array v6, v5, [I

    add-int/lit8 v7, p2, 0x5

    .line 48
    aget-byte v9, p1, v7

    shr-int/2addr v9, v4

    and-int/2addr v9, v2

    aput v9, v6, v4

    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1e

    new-array v6, v5, [I

    .line 49
    aget-byte v9, p1, v7

    shr-int/lit8 v1, v9, 0x4

    and-int/2addr v1, v2

    aput v1, v6, v4

    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1f

    new-array v1, v5, [I

    .line 50
    aget-byte v6, p1, v7

    shr-int/2addr v6, v8

    and-int/2addr v6, v2

    aput v6, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x20

    new-array v1, v5, [I

    .line 51
    aget-byte v6, p1, v7

    const/4 v7, 0x6

    shr-int/2addr v6, v7

    and-int/2addr v6, v2

    aput v6, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v1, v5, [I

    add-int/lit8 v6, p2, 0x6

    .line 52
    aget-byte v7, p1, v6

    shr-int/2addr v7, v4

    and-int/2addr v7, v5

    aput v7, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v1, v5, [I

    .line 53
    aget-byte v7, p1, v6

    shr-int/2addr v7, v5

    and-int/2addr v7, v5

    aput v7, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v1, v5, [I

    .line 54
    aget-byte v7, p1, v6

    shr-int/2addr v7, v8

    and-int/2addr v7, v5

    aput v7, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x41

    new-array v1, v5, [I

    .line 55
    aget-byte v7, p1, v6

    const/4 v8, 0x5

    shr-int/2addr v7, v8

    and-int/2addr v7, v5

    aput v7, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x10

    new-array v1, v5, [I

    .line 56
    aget-byte v6, p1, v6

    const/4 v7, 0x6

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v1, v5, [I

    add-int/lit8 v5, p2, 0x7

    .line 57
    aget-byte v5, p1, v5

    shr-int/2addr v5, v4

    and-int/2addr v2, v5

    aput v2, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x9

    .line 58
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_16

    .line 59
    invoke-static {v4}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    :cond_16
    mul-int/2addr v0, v14

    add-int/lit16 v0, v0, 0x258

    .line 60
    invoke-static {v0}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    :cond_17
    add-int/lit8 v0, p2, 0x2

    .line 61
    aget-byte v0, p1, v0

    add-int/lit8 v3, p2, 0x3

    .line 62
    aget-byte v3, p1, v3

    const/16 v6, 0x17c

    .line 63
    invoke-static {v0, v3, v4, v6}, Lk0/qt;->k(IIZI)V

    :cond_18
    add-int/lit8 v0, p2, 0x2

    .line 64
    aget-byte v0, p1, v0

    const-string v3, "persist.syu.reversefrontdoor"

    .line 65
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_19

    new-array v3, v5, [I

    shr-int/lit8 v6, v0, 0x0

    and-int/2addr v6, v5

    aput v6, v3, v4

    .line 66
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v6, v0, 0x1

    and-int/2addr v6, v5

    aput v6, v3, v4

    .line 67
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_19
    new-array v3, v5, [I

    shr-int/lit8 v6, v0, 0x1

    and-int/2addr v6, v5

    aput v6, v3, v4

    .line 68
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v6, v0, 0x0

    and-int/2addr v6, v5

    aput v6, v3, v4

    .line 69
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    new-array v3, v5, [I

    shr-int/lit8 v6, v0, 0x3

    and-int/2addr v6, v5

    aput v6, v3, v4

    .line 70
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v3, v0, 0x2

    and-int/2addr v3, v5

    aput v3, v1, v4

    .line 71
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v5

    aput v2, v1, v4

    const/4 v2, 0x5

    .line 72
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/2addr v0, v2

    and-int/2addr v0, v5

    aput v0, v1, v4

    .line 73
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1a
    add-int/lit8 v0, p2, 0x2

    .line 74
    aget-byte v2, p1, v0

    and-int/2addr v2, v3

    add-int/lit8 v6, p2, 0x3

    .line 75
    aget-byte v7, p1, v6

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0x4

    .line 76
    aget-byte v9, p1, v8

    and-int/2addr v9, v3

    add-int/lit8 v10, p2, 0x5

    .line 77
    aget-byte v11, p1, v10

    and-int/2addr v11, v3

    if-nez v2, :cond_1b

    if-nez v7, :cond_1b

    if-nez v9, :cond_1b

    if-nez v11, :cond_1b

    .line 78
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_8

    .line 79
    :cond_1b
    sget v4, Ll0/c0;->g:I

    if-ne v4, v2, :cond_1c

    sget v4, Ll0/c0;->h:I

    if-ne v4, v7, :cond_1c

    sget v4, Ll0/c0;->i:I

    if-ne v4, v9, :cond_1c

    sget v4, Ll0/c0;->j:I

    if-eq v4, v11, :cond_1d

    .line 80
    :cond_1c
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_1d

    .line 81
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 82
    sput v1, Ll0/c0;->k:I

    .line 83
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 84
    :cond_1d
    :goto_8
    sput v2, Ll0/c0;->g:I

    .line 85
    sput v7, Ll0/c0;->h:I

    .line 86
    sput v9, Ll0/c0;->i:I

    .line 87
    sput v11, Ll0/c0;->j:I

    .line 88
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->T0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    .line 89
    aget-byte v0, p1, v6

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->T0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    .line 90
    aget-byte v0, p1, v8

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->T0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->F2(I)V

    .line 91
    aget-byte v0, p1, v10

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->T0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    add-int/lit8 v0, p2, 0x6

    .line 92
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->T0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x7

    .line 93
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->T0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x8

    .line 94
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->T0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/lit8 v0, p2, 0x9

    .line 95
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->T0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    :goto_9
    return-void
.end method

.method public W2()V
    .locals 0

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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v1, :cond_3

    .line 1
    array-length v2, v1

    if-lez v2, :cond_3

    .line 2
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xd5

    const/16 v4, 0xaa

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/16 v7, 0x25

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/16 v10, 0x33

    const/16 v11, 0xe3

    const/16 v12, 0x8

    const/4 v13, 0x1

    const/4 v14, 0x5

    const/4 v15, 0x0

    const/16 v16, 0x2

    if-ne v2, v3, :cond_1

    new-array v2, v12, [I

    aput v11, v2, v15

    aput v10, v2, v13

    aput v14, v2, v16

    .line 3
    aget v3, v1, v15

    aput v3, v2, v9

    iget-object v3, v0, Lk0/pl;->b:[I

    iget v9, v0, Lk0/pl;->c:I

    rem-int/lit8 v9, v9, 0x2

    aget v3, v3, v9

    aput v3, v2, v8

    aput v7, v2, v14

    aput v13, v2, v6

    aput v4, v2, v5

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v12, [I

    aput v11, v2, v15

    aput v10, v2, v13

    aput v14, v2, v16

    .line 4
    aget v3, v1, v15

    const/4 v9, 0x3

    aput v3, v2, v9

    iget-object v3, v0, Lk0/pl;->b:[I

    iget v9, v0, Lk0/pl;->c:I

    rem-int/lit8 v9, v9, 0x2

    aget v3, v3, v9

    aput v3, v2, v8

    aput v7, v2, v14

    aput v13, v2, v6

    aput v4, v2, v5

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v12, [I

    aput v11, v2, v15

    aput v10, v2, v13

    aput v14, v2, v16

    .line 5
    aget v1, v1, v15

    const/4 v3, 0x3

    aput v1, v2, v3

    iget-object v1, v0, Lk0/pl;->b:[I

    iget v3, v0, Lk0/pl;->c:I

    rem-int/lit8 v3, v3, 0x2

    aget v1, v1, v3

    aput v1, v2, v8

    aput v7, v2, v14

    aput v13, v2, v6

    aput v4, v2, v5

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0xd6

    if-ne v2, v3, :cond_2

    new-array v2, v12, [I

    aput v11, v2, v15

    aput v10, v2, v13

    aput v14, v2, v16

    .line 6
    aget v3, v1, v15

    const/4 v9, 0x3

    aput v3, v2, v9

    iget-object v3, v0, Lk0/pl;->b:[I

    iget v9, v0, Lk0/pl;->c:I

    rem-int/lit8 v9, v9, 0x2

    aget v3, v3, v9

    aput v3, v2, v8

    aput v7, v2, v14

    aput v16, v2, v6

    aput v4, v2, v5

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v12, [I

    aput v11, v2, v15

    aput v10, v2, v13

    aput v14, v2, v16

    .line 7
    aget v3, v1, v15

    const/4 v9, 0x3

    aput v3, v2, v9

    iget-object v3, v0, Lk0/pl;->b:[I

    iget v9, v0, Lk0/pl;->c:I

    rem-int/lit8 v9, v9, 0x2

    aget v3, v3, v9

    aput v3, v2, v8

    aput v7, v2, v14

    aput v16, v2, v6

    aput v4, v2, v5

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v12, [I

    aput v11, v2, v15

    aput v10, v2, v13

    aput v14, v2, v16

    .line 8
    aget v1, v1, v15

    const/4 v3, 0x3

    aput v1, v2, v3

    iget-object v1, v0, Lk0/pl;->b:[I

    iget v3, v0, Lk0/pl;->c:I

    rem-int/lit8 v3, v3, 0x2

    aget v1, v1, v3

    aput v1, v2, v8

    aput v7, v2, v14

    aput v16, v2, v6

    aput v4, v2, v5

    invoke-static {v2}, Lz/k;->s([I)V

    .line 9
    :cond_2
    :goto_0
    iget v1, v0, Lk0/pl;->c:I

    add-int/2addr v1, v13

    iput v1, v0, Lk0/pl;->c:I

    .line 10
    rem-int/lit8 v1, v1, 0x2

    iput v1, v0, Lk0/pl;->c:I

    :cond_3
    :goto_1
    return-void
.end method
