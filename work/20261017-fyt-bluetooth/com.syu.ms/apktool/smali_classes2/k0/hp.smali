.class public Lk0/hp;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hp;->c:I

    const/16 v1, 0x9

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v10, 0x8

    aput-object v3, v1, v10

    iput-object v1, p0, Lk0/hp;->d:[[I

    .line 4
    iput v0, p0, Lk0/hp;->f:I

    new-array v1, v10, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_9

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v8

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    aput-object v2, v1, v9

    iput-object v1, p0, Lk0/hp;->g:[[I

    .line 6
    new-instance v1, Lk0/hp$a;

    invoke-direct {v1, p0}, Lk0/hp$a;-><init>(Lk0/hp;)V

    iput-object v1, p0, Lk0/hp;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/hp$b;

    invoke-direct {v1, p0}, Lk0/hp$b;-><init>(Lk0/hp;)V

    iput-object v1, p0, Lk0/hp;->i:Ljava/lang/Runnable;

    .line 8
    iput v0, p0, Lk0/hp;->j:I

    .line 9
    new-instance v0, Lk0/hp$c;

    invoke-direct {v0, p0}, Lk0/hp$c;-><init>(Lk0/hp;)V

    iput-object v0, p0, Lk0/hp;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/hp$d;

    invoke-direct {v0, p0}, Lk0/hp$d;-><init>(Lk0/hp;)V

    iput-object v0, p0, Lk0/hp;->l:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x28
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x29
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x2a
    .end array-data

    :array_c
    .array-data 4
        0x4
        0x2b
    .end array-data

    :array_d
    .array-data 4
        0x5
        0x2c
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x2d
    .end array-data

    :array_f
    .array-data 4
        0x7
        0x43
    .end array-data

    :array_10
    .array-data 4
        0x8
        0x44
    .end array-data
.end method

.method public static a3()V
    .locals 23

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 3
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xe3

    const/16 v3, 0xc0

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x8

    const/16 v11, 0xa

    if-eq v0, v9, :cond_4

    if-eq v0, v10, :cond_1

    if-eq v0, v11, :cond_1

    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_1
    new-array v0, v5, [I

    move v10, v8

    :goto_0
    if-ge v10, v5, :cond_2

    .line 5
    aput v8, v0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    aput v3, v0, v8

    aput v6, v0, v9

    aput v4, v0, v4

    .line 6
    sget v3, Lu0/b;->r3:I

    shr-int/lit8 v4, v3, 0x8

    aput v4, v0, v6

    aput v3, v0, v1

    new-array v1, v7, [I

    aput v2, v1, v8

    :goto_1
    if-ge v8, v5, :cond_3

    add-int/lit8 v2, v8, 0x1

    .line 7
    aget v3, v0, v8

    aput v3, v1, v2

    move v8, v2

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_4
    const/16 v0, 0x12

    new-array v12, v0, [I

    move v13, v8

    :goto_2
    if-ge v13, v0, :cond_5

    .line 9
    aput v8, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    aput v3, v12, v8

    const/16 v3, 0x10

    aput v3, v12, v9

    aput v9, v12, v4

    .line 10
    sget v13, Lw0/d;->j:I

    aput v13, v12, v6

    .line 11
    sget v13, Lw0/d;->h:I

    if-eqz v13, :cond_6

    if-ne v13, v9, :cond_7

    .line 12
    :cond_6
    aget v14, v12, v6

    or-int/lit16 v14, v14, 0x80

    aput v14, v12, v6

    :cond_7
    const/high16 v14, 0x10000

    if-lt v13, v14, :cond_8

    const v14, 0x10002

    if-gt v13, v14, :cond_8

    .line 13
    sget v13, Lw0/d;->i:I

    div-int/lit8 v14, v13, 0xa

    shr-int/2addr v14, v10

    and-int/lit16 v14, v14, 0xff

    aput v14, v12, v1

    .line 14
    div-int/2addr v13, v11

    and-int/lit16 v13, v13, 0xff

    aput v13, v12, v5

    goto :goto_3

    .line 15
    :cond_8
    sget v13, Lw0/d;->i:I

    shr-int/lit8 v14, v13, 0x8

    and-int/lit16 v14, v14, 0xff

    aput v14, v12, v1

    and-int/lit16 v13, v13, 0xff

    aput v13, v12, v5

    .line 16
    :goto_3
    sget v13, Lw0/d;->h:I

    const/high16 v14, 0x10000

    const/16 v15, 0x11

    const/16 v16, 0xf

    const/16 v17, 0xe

    const/16 v18, 0xd

    const/16 v19, 0xc

    const/16 v20, 0xb

    const/16 v21, 0x9

    const/16 v22, 0x7

    if-ne v13, v14, :cond_9

    .line 17
    sget-object v13, Lw0/d;->e:[I

    aget v14, v13, v8

    div-int/2addr v14, v11

    shr-int/2addr v14, v10

    and-int/lit16 v14, v14, 0xff

    aput v14, v12, v7

    .line 18
    aget v7, v13, v8

    div-int/2addr v7, v11

    and-int/lit16 v7, v7, 0xff

    aput v7, v12, v22

    .line 19
    aget v7, v13, v9

    div-int/2addr v7, v11

    shr-int/2addr v7, v10

    and-int/lit16 v7, v7, 0xff

    aput v7, v12, v10

    .line 20
    aget v7, v13, v9

    div-int/2addr v7, v11

    and-int/lit16 v7, v7, 0xff

    aput v7, v12, v21

    .line 21
    aget v7, v13, v4

    div-int/2addr v7, v11

    shr-int/2addr v7, v10

    and-int/lit16 v7, v7, 0xff

    aput v7, v12, v11

    .line 22
    aget v4, v13, v4

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v20

    .line 23
    aget v4, v13, v6

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v19

    .line 24
    aget v4, v13, v6

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v18

    .line 25
    aget v4, v13, v1

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v17

    .line 26
    aget v1, v13, v1

    div-int/2addr v1, v11

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v16

    .line 27
    aget v1, v13, v5

    div-int/2addr v1, v11

    shr-int/2addr v1, v10

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v3

    .line 28
    aget v1, v13, v5

    div-int/2addr v1, v11

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v15

    goto/16 :goto_4

    :cond_9
    const v14, 0x10001

    if-ne v13, v14, :cond_a

    .line 29
    sget-object v1, Lw0/d;->e:[I

    aget v4, v1, v7

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v7

    .line 30
    aget v4, v1, v7

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v22

    .line 31
    aget v4, v1, v22

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v10

    .line 32
    aget v4, v1, v22

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v21

    .line 33
    aget v4, v1, v10

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v11

    .line 34
    aget v4, v1, v10

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v20

    .line 35
    aget v4, v1, v21

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v19

    .line 36
    aget v4, v1, v21

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v18

    .line 37
    aget v4, v1, v11

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v17

    .line 38
    aget v4, v1, v11

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v16

    .line 39
    aget v4, v1, v20

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v3

    .line 40
    aget v1, v1, v20

    div-int/2addr v1, v11

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v15

    goto/16 :goto_4

    :cond_a
    const v14, 0x10002

    if-ne v13, v14, :cond_b

    .line 41
    sget-object v1, Lw0/d;->e:[I

    aget v4, v1, v19

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v7

    .line 42
    aget v4, v1, v19

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v22

    .line 43
    aget v4, v1, v18

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v10

    .line 44
    aget v4, v1, v18

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v21

    .line 45
    aget v4, v1, v17

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v11

    .line 46
    aget v4, v1, v17

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v20

    .line 47
    aget v4, v1, v16

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v19

    .line 48
    aget v4, v1, v16

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v18

    .line 49
    aget v4, v1, v3

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v17

    .line 50
    aget v4, v1, v3

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v16

    .line 51
    aget v4, v1, v15

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v3

    .line 52
    aget v1, v1, v15

    div-int/2addr v1, v11

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v15

    goto/16 :goto_4

    :cond_b
    if-nez v13, :cond_c

    .line 53
    sget-object v13, Lw0/d;->d:[I

    aget v14, v13, v8

    div-int/2addr v14, v11

    shr-int/2addr v14, v10

    and-int/lit16 v14, v14, 0xff

    aput v14, v12, v7

    .line 54
    aget v7, v13, v8

    div-int/2addr v7, v11

    and-int/lit16 v7, v7, 0xff

    aput v7, v12, v22

    .line 55
    aget v7, v13, v9

    div-int/2addr v7, v11

    shr-int/2addr v7, v10

    and-int/lit16 v7, v7, 0xff

    aput v7, v12, v10

    .line 56
    aget v7, v13, v9

    div-int/2addr v7, v11

    and-int/lit16 v7, v7, 0xff

    aput v7, v12, v21

    .line 57
    aget v7, v13, v4

    div-int/2addr v7, v11

    shr-int/2addr v7, v10

    and-int/lit16 v7, v7, 0xff

    aput v7, v12, v11

    .line 58
    aget v4, v13, v4

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v20

    .line 59
    aget v4, v13, v6

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v19

    .line 60
    aget v4, v13, v6

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v18

    .line 61
    aget v4, v13, v1

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v17

    .line 62
    aget v1, v13, v1

    div-int/2addr v1, v11

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v16

    .line 63
    aget v1, v13, v5

    div-int/2addr v1, v11

    shr-int/2addr v1, v10

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v3

    .line 64
    aget v1, v13, v5

    div-int/2addr v1, v11

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v15

    goto :goto_4

    :cond_c
    if-ne v13, v9, :cond_d

    .line 65
    sget-object v1, Lw0/d;->d:[I

    aget v4, v1, v7

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v7

    .line 66
    aget v4, v1, v7

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v22

    .line 67
    aget v4, v1, v22

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v10

    .line 68
    aget v4, v1, v22

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v21

    .line 69
    aget v4, v1, v10

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v11

    .line 70
    aget v4, v1, v10

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v20

    .line 71
    aget v4, v1, v21

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v19

    .line 72
    aget v4, v1, v21

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v18

    .line 73
    aget v4, v1, v11

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v17

    .line 74
    aget v4, v1, v11

    div-int/2addr v4, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v16

    .line 75
    aget v4, v1, v9

    div-int/2addr v4, v11

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v12, v3

    .line 76
    aget v1, v1, v20

    div-int/2addr v1, v11

    and-int/lit16 v1, v1, 0xff

    aput v1, v12, v15

    :cond_d
    :goto_4
    const/16 v1, 0x13

    new-array v1, v1, [I

    aput v2, v1, v8

    :goto_5
    if-ge v8, v0, :cond_e

    add-int/lit8 v2, v8, 0x1

    .line 77
    aget v3, v12, v8

    aput v3, v1, v2

    move v8, v2

    goto :goto_5

    .line 78
    :cond_e
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc0
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc0
        0x1
        0x3
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

    iget-object v1, p0, Lk0/hp;->k:Ljava/lang/Runnable;

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

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    .line 9
    iput v1, v0, Lk0/mt;->l:I

    .line 10
    iget-object v0, p0, Lk0/hp;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0xf1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->l:I

    .line 13
    :goto_0
    sget-object v0, Lw0/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/hp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/hp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/hp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/hp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/hp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x20

    const/4 v9, 0x3

    if-eq v2, v3, :cond_15

    const/16 v10, 0x24

    const/4 v11, 0x2

    if-eq v2, v10, :cond_13

    const/16 v10, 0x30

    if-eq v2, v10, :cond_12

    const/16 v10, 0x28

    const/16 v12, 0xb

    if-eq v2, v10, :cond_6

    const/16 v3, 0x29

    if-eq v2, v3, :cond_5

    const/16 v3, 0x35

    if-eq v2, v3, :cond_3

    const/16 v3, 0x36

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    .line 3
    iput v1, v0, Lk0/hp;->f:I

    move v1, v7

    .line 4
    :goto_0
    iget-object v2, v0, Lk0/hp;->g:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 5
    iget v3, v0, Lk0/hp;->f:I

    aget-object v4, v2, v1

    aget v4, v4, v7

    if-ne v3, v4, :cond_1

    if-eqz v3, :cond_2

    .line 6
    iput v1, v0, Lk0/hp;->e:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget v3, v0, Lk0/hp;->f:I

    if-eqz v3, :cond_1f

    .line 8
    aget-object v2, v2, v1

    iget v3, v0, Lk0/hp;->e:I

    aget v2, v2, v3

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 9
    iget-object v2, v0, Lk0/hp;->g:[[I

    aget-object v1, v2, v1

    iget v2, v0, Lk0/hp;->e:I

    aget v1, v1, v2

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_3
    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 10
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    const v9, 0xff00

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xa

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 11
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v2, p2, 0xb

    .line 12
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    invoke-static {v3, v1, v7}, Ll0/c0;->b(III)V

    goto/16 :goto_8

    :cond_4
    add-int/lit8 v2, p2, 0xb

    .line 13
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    invoke-static {v3, v1, v7}, Ll0/c0;->a(III)V

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v2, p2, 0x3

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    const/16 v3, 0x1200

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_6
    new-array v2, v8, [I

    add-int/lit8 v10, p2, 0x2

    .line 15
    aget-byte v11, v1, v10

    shr-int/lit8 v11, v11, 0x6

    and-int/2addr v11, v8

    aput v11, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4f

    new-array v11, v8, [I

    .line 16
    aget-byte v12, v1, v10

    shr-int/lit8 v4, v12, 0x4

    and-int/2addr v4, v8

    aput v4, v11, v7

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v4, v8, [I

    .line 17
    aget-byte v10, v1, v10

    shr-int/lit8 v9, v10, 0x3

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 18
    aget-byte v10, v1, v9

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v8

    aput v10, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v8, [I

    .line 19
    aget-byte v10, v1, v9

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v8

    aput v10, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v8, [I

    .line 20
    aget-byte v10, v1, v9

    shr-int/2addr v10, v5

    and-int/2addr v10, v8

    aput v10, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v8, [I

    .line 21
    aget-byte v9, v1, v9

    and-int/lit8 v9, v9, 0xf

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 22
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    add-int/lit8 v9, p2, 0x5

    .line 23
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    const-string v11, "persist.fyt.reversetemp"

    .line 24
    invoke-static {v11, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 25
    aget-byte v4, v1, v9

    and-int/2addr v4, v6

    .line 26
    aget-byte v2, v1, v2

    and-int/lit16 v10, v2, 0xff

    :cond_7
    const/16 v2, 0x22

    const/4 v9, -0x3

    const/4 v11, -0x2

    const/4 v12, -0x1

    const/16 v13, 0x1f

    const/16 v14, 0x1b

    if-eqz v4, :cond_c

    if-eq v4, v13, :cond_b

    if-eq v4, v6, :cond_a

    if-lt v4, v8, :cond_8

    if-gt v4, v13, :cond_8

    new-array v15, v8, [I

    mul-int/2addr v4, v5

    add-int/lit16 v4, v4, 0xaf

    aput v4, v15, v7

    .line 27
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    if-lt v4, v3, :cond_9

    if-gt v4, v2, :cond_9

    new-array v15, v8, [I

    sub-int/2addr v4, v3

    mul-int/2addr v4, v5

    add-int/lit16 v4, v4, 0xa0

    aput v4, v15, v7

    .line 28
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v4, v8, [I

    aput v12, v4, v7

    .line 29
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v4, v8, [I

    aput v12, v4, v7

    .line 30
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array v4, v8, [I

    aput v9, v4, v7

    .line 31
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array v4, v8, [I

    aput v11, v4, v7

    .line 32
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v4, 0x1c

    if-eqz v10, :cond_11

    if-eq v10, v13, :cond_10

    if-eq v10, v6, :cond_f

    if-lt v10, v8, :cond_d

    if-gt v10, v13, :cond_d

    new-array v2, v8, [I

    mul-int/2addr v10, v5

    add-int/lit16 v10, v10, 0xaf

    aput v10, v2, v7

    .line 33
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    if-lt v10, v3, :cond_e

    if-gt v10, v2, :cond_e

    new-array v2, v8, [I

    sub-int/2addr v10, v3

    mul-int/2addr v10, v5

    add-int/lit16 v10, v10, 0xa0

    aput v10, v2, v7

    .line 34
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    new-array v2, v8, [I

    aput v12, v2, v7

    .line 35
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_f
    new-array v2, v8, [I

    aput v12, v2, v7

    .line 36
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_10
    new-array v2, v8, [I

    aput v9, v2, v7

    .line 37
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_11
    new-array v2, v8, [I

    aput v11, v2, v7

    .line 38
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x25

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 39
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 40
    :cond_12
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 42
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_14

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 43
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 44
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_14
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 45
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 46
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 47
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 48
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 49
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 51
    aget-byte v1, v1, v3

    and-int/2addr v2, v6

    .line 52
    iput v2, v0, Lk0/hp;->c:I

    move v2, v7

    .line 53
    :goto_5
    iget-object v3, v0, Lk0/hp;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_17

    .line 54
    iget v4, v0, Lk0/hp;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_16

    if-eqz v4, :cond_17

    .line 55
    iput v2, v0, Lk0/hp;->b:I

    goto :goto_6

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    :goto_6
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_18

    .line 56
    array-length v1, v3

    if-ge v2, v1, :cond_1f

    .line 57
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_18
    if-nez v1, :cond_1f

    .line 58
    iget v1, v0, Lk0/hp;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_19

    if-eq v1, v6, :cond_19

    .line 59
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 60
    :cond_19
    iput v6, v0, Lk0/hp;->b:I

    goto/16 :goto_8

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 64
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_8

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v9, p2, 0x3

    .line 66
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    add-int/lit8 v11, p2, 0x4

    .line 67
    aget-byte v12, v1, v11

    and-int/2addr v12, v6

    add-int/lit8 v5, p2, 0x5

    .line 68
    aget-byte v13, v1, v5

    and-int/2addr v13, v6

    if-nez v3, :cond_1c

    if-nez v10, :cond_1c

    if-nez v12, :cond_1c

    if-nez v13, :cond_1c

    .line 69
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_7

    .line 70
    :cond_1c
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_1d

    sget v7, Ll0/c0;->h:I

    if-ne v7, v10, :cond_1d

    sget v7, Ll0/c0;->i:I

    if-ne v7, v12, :cond_1d

    sget v7, Ll0/c0;->j:I

    if-eq v7, v13, :cond_1e

    .line 71
    :cond_1d
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_1e

    .line 72
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 73
    sput v4, Ll0/c0;->k:I

    .line 74
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 75
    :cond_1e
    :goto_7
    sput v3, Ll0/c0;->g:I

    .line 76
    sput v10, Ll0/c0;->h:I

    .line 77
    sput v12, Ll0/c0;->i:I

    .line 78
    sput v13, Ll0/c0;->j:I

    .line 79
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 80
    aget-byte v2, v1, v9

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 81
    aget-byte v2, v1, v11

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 82
    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_1f
    :goto_8
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/hp;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/hp;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/hp;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/hp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/hp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/hp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/hp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    const/4 v4, 0x5

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, v2

    if-ne p1, v3, :cond_1

    .line 2
    sget-object p1, Ly0/f;->b:Ly0/e;

    invoke-virtual {p1, v4}, Ly0/e;->a(I)V

    goto :goto_0

    .line 3
    :cond_1
    aget p1, p2, v2

    if-nez p1, :cond_4

    .line 4
    sget-object p1, Ly0/f;->b:Ly0/e;

    sget p2, Lu0/b;->D:I

    invoke-virtual {p1, p2}, Ly0/e;->a(I)V

    goto :goto_0

    :cond_2
    new-array p1, v4, [I

    aput p4, p1, v2

    const/16 p4, 0x90

    aput p4, p1, v3

    aput v1, p1, v1

    .line 5
    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0xc2

    aput p4, p1, v3

    aput v3, p1, v1

    .line 6
    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method
