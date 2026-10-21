.class public Lk0/oj;
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

.field public i:J

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/oj;->c:I

    const/16 v1, 0xe

    new-array v1, v1, [[I

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

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v14, 0xb

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v14, 0xc

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v14, 0xd

    aput-object v3, v1, v14

    iput-object v1, p0, Lk0/oj;->d:[[I

    .line 4
    iput v0, p0, Lk0/oj;->f:I

    new-array v0, v13, [[I

    new-array v1, v2, [I

    .line 5
    fill-array-data v1, :array_e

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v7

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v8

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v9

    new-array v1, v2, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v10

    new-array v1, v2, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v11

    new-array v1, v2, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v12

    iput-object v0, p0, Lk0/oj;->g:[[I

    .line 6
    new-instance v0, Lk0/oj$a;

    invoke-direct {v0, p0}, Lk0/oj$a;-><init>(Lk0/oj;)V

    iput-object v0, p0, Lk0/oj;->h:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lk0/oj;->i:J

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lk0/oj;->j:I

    .line 9
    new-instance v0, Lk0/oj$b;

    invoke-direct {v0, p0}, Lk0/oj$b;-><init>(Lk0/oj;)V

    iput-object v0, p0, Lk0/oj;->k:Ljava/lang/Runnable;

    .line 10
    iput v4, p0, Lk0/oj;->l:I

    .line 11
    new-instance v0, Lk0/oj$c;

    invoke-direct {v0, p0}, Lk0/oj$c;-><init>(Lk0/oj;)V

    iput-object v0, p0, Lk0/oj;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/oj$d;

    invoke-direct {v0, p0}, Lk0/oj$d;-><init>(Lk0/oj;)V

    iput-object v0, p0, Lk0/oj;->n:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/oj$e;

    invoke-direct {v0, p0}, Lk0/oj$e;-><init>(Lk0/oj;)V

    iput-object v0, p0, Lk0/oj;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/oj$f;

    invoke-direct {v0, p0}, Lk0/oj$f;-><init>(Lk0/oj;)V

    iput-object v0, p0, Lk0/oj;->p:Ljava/lang/Runnable;

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
        0xd
        0x22
    .end array-data

    :array_9
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_a
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x18
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x22
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x4
        0x1d
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_14
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_15
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_17
    .array-data 4
        0x46
        0x8
    .end array-data
.end method

.method public static a3()V
    .locals 15

    const/16 v0, 0x22

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
    aput v4, v1, v2

    const/16 v3, 0x91

    const/4 v5, 0x1

    aput v3, v1, v5

    const/4 v3, 0x2

    aput v5, v1, v3

    const/4 v6, 0x3

    .line 2
    invoke-static {}, Lk0/oj;->b3()I

    move-result v7

    aput v7, v1, v6

    .line 3
    sget v6, Lu0/b;->D:I

    const/16 v7, 0x44

    const/16 v8, 0x49

    const/16 v9, 0x45

    const/16 v10, 0x48

    const/16 v11, 0x54

    const/16 v12, 0x41

    const/16 v13, 0x4d

    const/4 v14, 0x4

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_7

    .line 4
    :pswitch_0
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_1

    goto/16 :goto_7

    :cond_1
    int-to-byte v3, v5

    aput v13, v1, v14

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 5
    aput v9, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 6
    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 7
    aput v8, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 8
    aput v12, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 9
    aput v4, v1, v3

    .line 10
    sget v3, Lu0/b;->r3:I

    rem-int/lit16 v3, v3, 0x2710

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    add-int/2addr v5, v14

    .line 11
    div-int/lit16 v7, v3, 0x3e8

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    int-to-byte v5, v5

    add-int/2addr v6, v14

    .line 12
    rem-int/lit16 v7, v3, 0x3e8

    div-int/lit8 v7, v7, 0x64

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v6

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    add-int/2addr v5, v14

    .line 13
    rem-int/lit8 v7, v3, 0x64

    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    int-to-byte v5, v5

    add-int/2addr v6, v14

    .line 14
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v6

    .line 15
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v6, v3, 0x3c

    .line 16
    rem-int/lit8 v6, v6, 0x3c

    add-int/lit8 v7, v5, 0x1

    int-to-byte v7, v7

    add-int/2addr v5, v14

    .line 17
    aput v4, v1, v5

    add-int/lit8 v4, v7, 0x1

    int-to-byte v4, v4

    add-int/2addr v7, v14

    .line 18
    div-int/lit8 v5, v6, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v7

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    add-int/2addr v4, v14

    .line 19
    rem-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v4

    add-int/lit8 v4, v5, 0x1

    int-to-byte v4, v4

    add-int/2addr v5, v14

    const/16 v6, 0x3a

    .line 20
    aput v6, v1, v5

    .line 21
    rem-int/lit8 v3, v3, 0x3c

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    add-int/2addr v4, v14

    .line 22
    div-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v4

    add-int/2addr v5, v14

    .line 23
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v5

    goto/16 :goto_7

    :pswitch_1
    int-to-byte v3, v5

    aput v4, v1, v14

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 24
    aput v8, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    const/16 v6, 0x50

    .line 25
    aput v6, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    const/16 v6, 0x4f

    .line 26
    aput v6, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 27
    aput v7, v1, v5

    add-int/2addr v3, v14

    .line 28
    aput v4, v1, v3

    goto/16 :goto_7

    .line 29
    :pswitch_2
    sget v3, Ld1/d;->c:I

    if-ne v3, v5, :cond_d

    int-to-byte v3, v5

    aput v11, v1, v14

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    const/16 v7, 0x56

    .line 30
    aput v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    .line 31
    aput v4, v1, v6

    .line 32
    sget v4, Ld1/d;->e:I

    div-int/lit8 v6, v4, 0xa

    if-lez v6, :cond_2

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/lit8 v3, v3, 0x4

    .line 33
    div-int/lit8 v7, v4, 0xa

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v3

    move v3, v6

    :cond_2
    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    .line 34
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    const/16 v4, 0x2d

    .line 35
    aput v4, v1, v6

    .line 36
    sget v4, Ld1/d;->d:I

    div-int/lit8 v4, v4, 0x64

    .line 37
    div-int/lit16 v6, v4, 0x2710

    if-lez v6, :cond_3

    add-int/lit8 v7, v3, 0x1

    int-to-byte v7, v7

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v6, v6, 0x30

    .line 38
    aput v6, v1, v3

    move v3, v7

    :cond_3
    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    .line 39
    rem-int/lit16 v7, v4, 0x2710

    div-int/lit16 v7, v7, 0x3e8

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    .line 40
    rem-int/lit16 v7, v4, 0x3e8

    div-int/lit8 v7, v7, 0x64

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v6

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    const/16 v7, 0x2e

    .line 41
    aput v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    .line 42
    rem-int/lit8 v7, v4, 0x64

    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v6

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    .line 43
    rem-int/lit8 v4, v4, 0xa

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    .line 44
    aput v13, v1, v6

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    add-int/2addr v3, v14

    const/16 v5, 0x68

    .line 45
    aput v5, v1, v3

    add-int/2addr v4, v14

    const/16 v3, 0x7a

    .line 46
    aput v3, v1, v4

    goto/16 :goto_7

    :pswitch_3
    int-to-byte v3, v5

    aput v4, v1, v14

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 47
    aput v12, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    const/16 v6, 0x55

    .line 48
    aput v6, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    const/16 v6, 0x58

    .line 49
    aput v6, v1, v3

    add-int/2addr v5, v14

    .line 50
    aput v4, v1, v5

    goto/16 :goto_7

    .line 51
    :pswitch_4
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_4

    goto/16 :goto_7

    :cond_4
    int-to-byte v3, v5

    aput v13, v1, v14

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 52
    aput v9, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 53
    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 54
    aput v8, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 55
    aput v12, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 56
    aput v4, v1, v3

    .line 57
    sget v3, Lo0/e;->B:I

    rem-int/lit16 v3, v3, 0x2710

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    add-int/2addr v5, v14

    .line 58
    div-int/lit16 v7, v3, 0x3e8

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    int-to-byte v5, v5

    add-int/2addr v6, v14

    .line 59
    rem-int/lit16 v7, v3, 0x3e8

    div-int/lit8 v7, v7, 0x64

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v6

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    add-int/2addr v5, v14

    .line 60
    rem-int/lit8 v7, v3, 0x64

    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    int-to-byte v5, v5

    add-int/2addr v6, v14

    .line 61
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v6

    .line 62
    sget v3, Lo0/e;->r:I

    div-int/lit8 v6, v3, 0x3c

    .line 63
    rem-int/lit8 v6, v6, 0x3c

    add-int/lit8 v7, v5, 0x1

    int-to-byte v7, v7

    add-int/2addr v5, v14

    .line 64
    aput v4, v1, v5

    add-int/lit8 v4, v7, 0x1

    int-to-byte v4, v4

    add-int/2addr v7, v14

    .line 65
    div-int/lit8 v5, v6, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v7

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    add-int/2addr v4, v14

    .line 66
    rem-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v4

    add-int/lit8 v4, v5, 0x1

    int-to-byte v4, v4

    add-int/2addr v5, v14

    const/16 v6, 0x3a

    .line 67
    aput v6, v1, v5

    .line 68
    rem-int/lit8 v3, v3, 0x3c

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    add-int/2addr v4, v14

    .line 69
    div-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v4

    add-int/2addr v5, v14

    .line 70
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v5

    goto/16 :goto_7

    :pswitch_5
    int-to-byte v3, v5

    aput v4, v1, v14

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    const/16 v6, 0x42

    .line 71
    aput v6, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 72
    aput v11, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 73
    aput v4, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 74
    aput v12, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    const/16 v6, 0x56

    .line 75
    aput v6, v1, v3

    add-int/2addr v5, v14

    .line 76
    aput v4, v1, v5

    goto/16 :goto_7

    :pswitch_6
    int-to-byte v3, v5

    aput v4, v1, v14

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    const/16 v6, 0x42

    .line 77
    aput v6, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 78
    aput v11, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 79
    aput v4, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    const/16 v6, 0x50

    .line 80
    aput v6, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 81
    aput v10, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    const/16 v6, 0x4f

    .line 82
    aput v6, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    const/16 v6, 0x4e

    .line 83
    aput v6, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 84
    aput v9, v1, v5

    add-int/2addr v3, v14

    .line 85
    aput v4, v1, v3

    goto/16 :goto_7

    .line 86
    :pswitch_7
    sget v6, Lw0/d;->h:I

    const/high16 v7, 0x10000

    sub-int v8, v6, v7

    const/16 v9, 0x32

    if-eqz v8, :cond_9

    sub-int v8, v6, v7

    if-eq v5, v8, :cond_9

    sub-int v8, v6, v7

    if-ne v3, v8, :cond_5

    goto/16 :goto_4

    :cond_5
    sub-int/2addr v6, v2

    if-nez v6, :cond_6

    int-to-byte v3, v5

    aput v12, v1, v14

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    .line 87
    aput v13, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    const/16 v7, 0x31

    .line 88
    aput v7, v1, v6

    goto :goto_1

    :cond_6
    int-to-byte v3, v5

    aput v12, v1, v14

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    .line 89
    aput v13, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    .line 90
    aput v9, v1, v6

    :goto_1
    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    .line 91
    aput v4, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    .line 92
    sget v7, Lw0/d;->j:I

    and-int/lit16 v7, v7, 0xff

    rem-int/lit8 v7, v7, 0x6

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v6

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 93
    aput v4, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 94
    sget v6, Lw0/d;->i:I

    div-int/lit16 v7, v6, 0x2710

    if-nez v7, :cond_7

    div-int/lit16 v7, v6, 0x2710

    add-int/2addr v7, v4

    goto :goto_2

    :cond_7
    div-int/lit16 v7, v6, 0x2710

    add-int/lit8 v7, v7, 0x30

    :goto_2
    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 95
    rem-int/lit16 v7, v6, 0x2710

    div-int/lit16 v7, v7, 0x3e8

    if-nez v7, :cond_8

    rem-int/lit16 v7, v6, 0x2710

    div-int/lit16 v7, v7, 0x3e8

    add-int/2addr v7, v4

    goto :goto_3

    :cond_8
    rem-int/lit16 v7, v6, 0x2710

    div-int/lit16 v7, v7, 0x3e8

    add-int/lit8 v7, v7, 0x30

    :goto_3
    aput v7, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 96
    rem-int/lit16 v7, v6, 0x3e8

    div-int/lit8 v7, v7, 0x64

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 97
    rem-int/lit8 v7, v6, 0x64

    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 98
    rem-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 99
    aput v4, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    const/16 v4, 0x4b

    .line 100
    aput v4, v1, v5

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    add-int/2addr v3, v14

    .line 101
    aput v10, v1, v3

    add-int/2addr v4, v14

    const/16 v3, 0x5a

    .line 102
    aput v3, v1, v4

    goto/16 :goto_7

    :cond_9
    :goto_4
    sub-int v3, v6, v7

    const/16 v8, 0x46

    if-nez v3, :cond_a

    int-to-byte v3, v5

    aput v8, v1, v14

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    .line 103
    aput v13, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    const/16 v7, 0x31

    .line 104
    aput v7, v1, v6

    goto :goto_5

    :cond_a
    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_b

    int-to-byte v3, v5

    aput v8, v1, v14

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    .line 105
    aput v13, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    .line 106
    aput v9, v1, v6

    goto :goto_5

    :cond_b
    int-to-byte v3, v5

    aput v8, v1, v14

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    .line 107
    aput v13, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    .line 108
    aput v9, v1, v6

    :goto_5
    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    add-int/2addr v3, v14

    .line 109
    aput v4, v1, v3

    add-int/lit8 v3, v6, 0x1

    int-to-byte v3, v3

    add-int/2addr v6, v14

    .line 110
    sget v7, Lw0/d;->j:I

    and-int/lit16 v7, v7, 0xff

    rem-int/lit8 v7, v7, 0x6

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v6

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 111
    aput v4, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 112
    sget v6, Lw0/d;->i:I

    div-int/lit16 v7, v6, 0x2710

    if-nez v7, :cond_c

    div-int/lit16 v7, v6, 0x2710

    add-int/2addr v7, v4

    goto :goto_6

    :cond_c
    div-int/lit16 v7, v6, 0x2710

    add-int/lit8 v7, v7, 0x30

    :goto_6
    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 113
    rem-int/lit16 v7, v6, 0x2710

    div-int/lit16 v7, v7, 0x3e8

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 114
    rem-int/lit16 v7, v6, 0x3e8

    div-int/lit8 v7, v7, 0x64

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    const/16 v7, 0x2e

    .line 115
    aput v7, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 116
    rem-int/lit8 v7, v6, 0x64

    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    add-int/2addr v3, v14

    .line 117
    rem-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v3

    add-int/lit8 v3, v5, 0x1

    int-to-byte v3, v3

    add-int/2addr v5, v14

    .line 118
    aput v4, v1, v5

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    add-int/2addr v3, v14

    .line 119
    aput v13, v1, v3

    add-int/lit8 v3, v4, 0x1

    int-to-byte v3, v3

    add-int/2addr v4, v14

    .line 120
    aput v10, v1, v4

    add-int/2addr v3, v14

    const/16 v4, 0x5a

    .line 121
    aput v4, v1, v3

    :cond_d
    :goto_7
    const/16 v3, 0x23

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_8
    if-ge v2, v0, :cond_e

    add-int/lit8 v4, v2, 0x1

    .line 122
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_8

    .line 123
    :cond_e
    invoke-static {v3}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b3()I
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :cond_0
    :pswitch_1
    move v1, v2

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_4
    const/16 v1, 0xc

    goto :goto_1

    .line 2
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_6
    move v1, v3

    goto :goto_1

    .line 3
    :pswitch_7
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v3, v0, v2

    if-nez v3, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    sub-int v3, v0, v2

    if-ne v5, v3, :cond_2

    goto :goto_1

    :cond_2
    sub-int v2, v0, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v4

    if-ne v5, v0, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :pswitch_8
    const/16 v1, 0x9

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v4

    .line 4
    :goto_1
    sget v0, Lu0/b;->o:I

    if-ne v0, v5, :cond_6

    const/16 v1, 0x10

    :cond_6
    return v1

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

.method public static c3(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    :goto_0
    return p0

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

.method public static synthetic d3(Lk0/oj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/oj;->i:J

    return-wide v0
.end method

.method public static synthetic e3(Lk0/oj;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/oj;->i:J

    return-wide p1
.end method

.method public static synthetic f3(Lk0/oj;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/oj;->j:I

    return p0
.end method

.method public static synthetic g3(Lk0/oj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/oj;->j:I

    return p1
.end method

.method public static synthetic h3(Lk0/oj;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/oj;->i3(Ljava/lang/String;)V

    return-void
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
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xda

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v3, v0, Lk0/mt;->e:I

    .line 4
    iput v3, v0, Lk0/mt;->f:I

    .line 5
    iput v3, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    iput v3, v0, Lk0/mt;->e:I

    .line 9
    iput v3, v0, Lk0/mt;->f:I

    .line 10
    iput v3, v0, Lk0/mt;->g:I

    .line 11
    iput v2, v0, Lk0/mt;->o:I

    .line 12
    :goto_0
    iget-object v0, p0, Lk0/oj;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/oj;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/oj;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/oj;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v1, p0, Lk0/oj;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lh0/d;->g:Lo1/y;

    iget-object v1, p0, Lk0/oj;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/oj;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v0, v2

    const/16 v3, -0x65

    const/4 v4, 0x4

    if-eq v2, v3, :cond_20

    const/16 v3, -0x20

    const/16 v5, 0x21

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_1d

    const/16 v3, -0x10

    if-eq v2, v3, :cond_1c

    const/4 v3, 0x3

    const/16 v9, 0xff

    if-eq v2, v5, :cond_17

    const/16 v5, 0x31

    const/16 v10, 0x12

    const/16 v11, 0x41

    const/4 v12, 0x5

    const/4 v13, 0x6

    if-eq v2, v5, :cond_c

    if-eq v2, v11, :cond_9

    const/16 v5, 0x61

    if-eq v2, v5, :cond_8

    const/16 v5, 0x11

    if-eq v2, v5, :cond_2

    if-eq v2, v10, :cond_0

    goto/16 :goto_d

    :cond_0
    add-int/lit8 v2, p2, 0x4

    .line 2
    aget-byte v0, v0, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v8, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v8

    aput v5, v2, v7

    .line 4
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v8

    aput v5, v2, v7

    .line 5
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v8, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v8

    aput v5, v2, v7

    .line 6
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v8

    aput v5, v2, v7

    .line 7
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v5, v0, 0x5

    and-int/2addr v5, v8

    aput v5, v2, v7

    .line 8
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v5, v0, 0x4

    and-int/2addr v5, v8

    aput v5, v2, v7

    .line 9
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v0, v3

    and-int/2addr v0, v8

    aput v0, v2, v7

    .line 10
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_2
    add-int/lit8 v2, p2, 0x4

    .line 11
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    .line 12
    iput v2, v1, Lk0/oj;->c:I

    move v2, v7

    .line 13
    :goto_1
    iget-object v4, v1, Lk0/oj;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 14
    iget v5, v1, Lk0/oj;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v7

    if-ne v5, v6, :cond_3

    if-eqz v5, :cond_4

    .line 15
    iput v2, v1, Lk0/oj;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_4
    :goto_2
    iget v5, v1, Lk0/oj;->c:I

    if-eqz v5, :cond_5

    .line 17
    array-length v5, v4

    if-ge v2, v5, :cond_7

    .line 18
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 19
    :cond_5
    iget v2, v1, Lk0/oj;->b:I

    array-length v5, v4

    if-ge v2, v5, :cond_6

    if-eq v2, v9, :cond_6

    .line 20
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 21
    :cond_6
    iput v9, v1, Lk0/oj;->b:I

    :cond_7
    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 22
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    add-int/lit8 v4, p2, 0x8

    aget-byte v5, v0, v4

    and-int/2addr v5, v9

    const/16 v6, 0x21c

    invoke-static {v2, v5, v8, v6}, Lk0/qt;->i(IIZI)V

    const/16 v2, 0x68

    new-array v5, v8, [I

    add-int/lit8 v6, p2, 0x2

    .line 23
    aget-byte v6, v0, v6

    shr-int/2addr v6, v3

    and-int/2addr v6, v8

    aput v6, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v5, v8, [I

    add-int/lit8 v6, p2, 0x7

    .line 24
    aget-byte v6, v0, v6

    and-int/2addr v6, v9

    aput v6, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v5, v8, [I

    .line 25
    aget-byte v4, v0, v4

    shr-int/2addr v4, v13

    and-int/2addr v3, v4

    aput v3, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 26
    aget-byte v5, v0, v4

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 27
    aget-byte v2, v0, v4

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    aget-byte v0, v0, v4

    shr-int/2addr v0, v7

    and-int/2addr v0, v8

    invoke-static {v2, v0, v7}, Ll0/c0;->N1(III)V

    goto/16 :goto_d

    :cond_8
    const/16 v2, 0x7c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 28
    aget-byte v6, v0, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    .line 29
    aget-byte v6, v0, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    .line 30
    aget-byte v5, v0, v5

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 31
    aget-byte v6, v0, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    .line 32
    aget-byte v5, v0, v5

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 33
    aget-byte v5, v0, v5

    shr-int/2addr v5, v4

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 34
    aget-byte v6, v0, v5

    shr-int/2addr v6, v4

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    .line 35
    aget-byte v5, v0, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 36
    aget-byte v6, v0, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    .line 37
    aget-byte v5, v0, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x7

    .line 38
    aget-byte v6, v0, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    .line 39
    aget-byte v5, v0, v5

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 40
    aget-byte v6, v0, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    .line 41
    aget-byte v5, v0, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x9

    .line 42
    aget-byte v0, v0, v5

    shr-int/2addr v0, v4

    and-int/2addr v0, v8

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 43
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/oj;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 44
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/oj;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 45
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/oj;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 46
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/oj;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 47
    aget-byte v3, v0, v2

    and-int/2addr v3, v9

    add-int/lit8 v5, p2, 0x7

    .line 48
    aget-byte v6, v0, v5

    and-int/2addr v6, v9

    add-int/lit8 v7, p2, 0x8

    .line 49
    aget-byte v10, v0, v7

    and-int/2addr v10, v9

    add-int/lit8 v11, p2, 0x9

    .line 50
    aget-byte v12, v0, v11

    and-int/2addr v12, v9

    .line 51
    sget v13, Ll0/c0;->g:I

    if-ne v13, v3, :cond_a

    sget v13, Ll0/c0;->h:I

    if-ne v13, v6, :cond_a

    sget v13, Ll0/c0;->i:I

    if-ne v13, v10, :cond_a

    sget v13, Ll0/c0;->j:I

    if-eq v13, v12, :cond_b

    .line 52
    :cond_a
    sput v3, Ll0/c0;->g:I

    .line 53
    sput v6, Ll0/c0;->h:I

    .line 54
    sput v10, Ll0/c0;->i:I

    .line 55
    sput v12, Ll0/c0;->j:I

    .line 56
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_b

    .line 57
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 58
    sput v4, Ll0/c0;->k:I

    .line 59
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 60
    :cond_b
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/oj;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 61
    aget-byte v2, v0, v5

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/oj;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 62
    aget-byte v2, v0, v7

    and-int/2addr v2, v9

    invoke-static {v2}, Lk0/oj;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 63
    aget-byte v0, v0, v11

    and-int/2addr v0, v9

    invoke-static {v0}, Lk0/oj;->c3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_d

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 64
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    add-int/lit8 v5, p2, 0x3

    .line 65
    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    add-int/lit8 v6, p2, 0x4

    .line 66
    aget-byte v6, v0, v6

    and-int/2addr v6, v9

    add-int/lit8 v14, p2, 0x6

    .line 67
    aget-byte v14, v0, v14

    and-int/2addr v14, v9

    add-int/lit8 v15, p2, 0x7

    .line 68
    aget-byte v15, v0, v15

    and-int/2addr v15, v9

    add-int/lit8 v16, p2, 0x8

    .line 69
    aget-byte v10, v0, v16

    and-int/2addr v10, v9

    add-int/lit8 v17, p2, 0x9

    .line 70
    aget-byte v13, v0, v17

    and-int/2addr v13, v9

    add-int/lit8 v18, p2, 0xb

    .line 71
    aget-byte v12, v0, v18

    and-int/2addr v12, v9

    add-int/lit8 v18, p2, 0xc

    .line 72
    aget-byte v11, v0, v18

    and-int/2addr v11, v9

    add-int/lit8 v18, p2, 0xd

    .line 73
    aget-byte v4, v0, v18

    and-int/2addr v4, v9

    const/16 v9, 0xa

    new-array v3, v8, [I

    shr-int/lit8 v19, v2, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v7

    .line 74
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2a

    new-array v9, v8, [I

    shr-int/lit8 v19, v2, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v9, v7

    .line 75
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v9, v8, [I

    shr-int/lit8 v19, v2, 0x3

    and-int/lit8 v19, v19, 0x1

    aput v19, v9, v7

    .line 76
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v9, v8, [I

    shr-int/lit8 v19, v2, 0x2

    and-int/lit8 v19, v19, 0x1

    aput v19, v9, v7

    .line 77
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/2addr v2, v7

    const/4 v9, 0x3

    and-int/2addr v2, v9

    aput v2, v3, v7

    const/16 v2, 0xb

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v8, [I

    const/4 v9, 0x4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 79
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v8, [I

    shr-int/lit8 v5, v6, 0x5

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 80
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    const/4 v3, 0x4

    shr-int/lit8 v3, v6, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0x41

    .line 81
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v14, 0xff

    const/4 v3, 0x3

    if-eq v2, v3, :cond_f

    const/4 v3, 0x5

    if-eq v2, v3, :cond_e

    const/4 v3, 0x6

    if-eq v2, v3, :cond_d

    packed-switch v2, :pswitch_data_0

    move v2, v7

    :goto_4
    move v3, v2

    :goto_5
    move v5, v3

    goto :goto_6

    :pswitch_0
    move v2, v8

    goto :goto_4

    :pswitch_1
    move v3, v7

    move v2, v8

    move v5, v2

    goto :goto_6

    :pswitch_2
    move v2, v7

    move v3, v8

    goto :goto_5

    :pswitch_3
    move v2, v7

    move v3, v2

    move v5, v8

    goto :goto_6

    :cond_d
    move v3, v7

    move v5, v3

    move v2, v8

    goto :goto_6

    :cond_e
    move v5, v7

    move v2, v8

    move v3, v2

    goto :goto_6

    :cond_f
    move v2, v7

    move v5, v2

    move v3, v8

    :goto_6
    const/16 v6, 0x4d

    new-array v9, v8, [I

    aput v14, v9, v7

    .line 82
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x13

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 83
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v8, [I

    aput v3, v6, v7

    .line 84
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    aput v5, v2, v7

    const/16 v3, 0x12

    .line 85
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    const/16 v5, 0xff

    and-int/lit16 v6, v15, 0xff

    aput v6, v3, v7

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 87
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 88
    aget-byte v10, v0, v17

    .line 89
    aget-byte v13, v0, v16

    :cond_10
    and-int/lit16 v0, v10, 0xff

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v6, 0x1b

    const/16 v9, 0xfe

    if-eq v0, v9, :cond_12

    if-eq v0, v5, :cond_11

    new-array v5, v8, [I

    aput v0, v5, v7

    .line 90
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_11
    new-array v0, v8, [I

    aput v2, v0, v7

    .line 91
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_12
    new-array v0, v8, [I

    aput v3, v0, v7

    .line 92
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v0, 0xff

    and-int/lit16 v5, v13, 0xff

    const/16 v6, 0x1c

    if-eq v5, v9, :cond_14

    if-eq v5, v0, :cond_13

    new-array v0, v8, [I

    aput v5, v0, v7

    .line 93
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_13
    new-array v0, v8, [I

    aput v2, v0, v7

    .line 94
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_14
    new-array v0, v8, [I

    aput v3, v0, v7

    .line 95
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v0, 0x2c

    new-array v5, v8, [I

    const/16 v6, 0xff

    and-int/lit16 v10, v12, 0xff

    aput v10, v5, v7

    .line 96
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v0, v11, 0xff

    const/16 v5, 0x28

    if-eq v0, v9, :cond_16

    if-eq v0, v6, :cond_15

    new-array v2, v8, [I

    aput v0, v2, v7

    .line 97
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_15
    new-array v0, v8, [I

    aput v2, v0, v7

    .line 98
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_16
    new-array v0, v8, [I

    aput v3, v0, v7

    .line 99
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    :goto_9
    const/4 v0, 0x5

    mul-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x258

    .line 100
    invoke-static {v4}, Lu0/d;->A3(I)V

    goto/16 :goto_d

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 101
    aget-byte v2, v0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v1, Lk0/oj;->f:I

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 102
    aget-byte v0, v0, v2

    move v2, v7

    .line 103
    :goto_a
    iget-object v3, v1, Lk0/oj;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 104
    iget v4, v1, Lk0/oj;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_18

    if-eqz v4, :cond_19

    .line 105
    iput v2, v1, Lk0/oj;->e:I

    goto :goto_b

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    :goto_b
    const/16 v4, 0xff

    and-int/2addr v0, v4

    if-eqz v0, :cond_1a

    .line 106
    array-length v0, v3

    if-ge v2, v0, :cond_21

    .line 107
    aget-object v0, v3, v2

    aget v0, v0, v8

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto :goto_d

    .line 108
    :cond_1a
    iget v0, v1, Lk0/oj;->e:I

    array-length v2, v3

    if-ge v0, v2, :cond_1b

    .line 109
    aget-object v0, v3, v0

    aget v0, v0, v8

    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    :cond_1b
    const/16 v0, 0xff

    .line 110
    iput v0, v1, Lk0/oj;->e:I

    goto :goto_d

    .line 111
    :cond_1c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_d

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 112
    aget-byte v0, v0, v2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1f

    if-eq v0, v5, :cond_1e

    goto :goto_d

    :cond_1e
    const/16 v0, 0x4a

    .line 113
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 114
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_1f
    const/16 v0, 0x4b

    .line 115
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 116
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto :goto_d

    .line 117
    :cond_20
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    const/16 v4, 0x30

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v2, ""

    :goto_c
    const/16 v0, 0x7d

    .line 119
    invoke-static {v0, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    :cond_21
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/oj;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/oj;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/oj;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/oj;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lk0/oj;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lh0/d;->g:Lo1/y;

    iget-object v1, p0, Lk0/oj;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/oj;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/oj;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7e

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

    const/4 p3, 0x5

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    aput v0, p1, v4

    aput v1, p1, v3

    const/16 p3, -0x66

    aput p3, p1, v1

    .line 1
    aget p3, p2, v4

    int-to-byte p3, p3

    aput p3, p1, p4

    aget p2, p2, v3

    int-to-byte p2, p2

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput v0, p1, v4

    aput v2, p1, v3

    const/16 v0, 0x6f

    aput v0, p1, v1

    .line 2
    aget v0, p2, v4

    int-to-byte v0, v0

    aput v0, p1, p4

    aget p2, p2, v3

    int-to-byte p2, p2

    aput p2, p1, v2

    aput v4, p1, p3

    const/4 p2, 0x6

    aput v4, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final i3(Ljava/lang/String;)V
    .locals 17

    const/16 v0, 0x18

    new-array v1, v0, [B

    const/16 v2, -0x33

    const/16 v3, 0x1b

    const/16 v4, -0x1d

    const/16 v5, 0x1e

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x0

    if-nez p1, :cond_5

    new-array v1, v5, [I

    aput v4, v1, v12

    aput v3, v1, v10

    aput v2, v1, v9

    .line 1
    sget v2, Lh0/c;->E:I

    if-eq v2, v9, :cond_3

    if-eq v2, v11, :cond_2

    if-eq v2, v8, :cond_1

    if-eq v2, v7, :cond_0

    aput v6, v1, v11

    goto :goto_0

    :cond_0
    aput v8, v1, v11

    goto :goto_0

    :cond_1
    aput v10, v1, v11

    goto :goto_0

    :cond_2
    aput v9, v1, v11

    goto :goto_0

    :cond_3
    aput v12, v1, v11

    :goto_0
    aput v12, v1, v8

    aput v12, v1, v7

    move v2, v12

    :goto_1
    if-ge v2, v0, :cond_4

    add-int v3, v6, v2

    .line 2
    aput v12, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3
    :cond_4
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_7

    .line 4
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 5
    array-length v14, v13

    if-le v14, v0, :cond_6

    move v14, v0

    goto :goto_2

    :cond_6
    array-length v14, v13

    :goto_2
    move v15, v12

    :goto_3
    if-ge v15, v14, :cond_7

    .line 6
    aget-byte v16, v13, v15

    aput-byte v16, v1, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-ge v14, v0, :cond_8

    .line 7
    aput-byte v12, v1, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_8
    new-array v5, v5, [I

    aput v4, v5, v12

    aput v3, v5, v10

    aput v2, v5, v9

    .line 8
    sget v2, Lh0/c;->E:I

    if-eq v2, v9, :cond_c

    if-eq v2, v11, :cond_b

    if-eq v2, v8, :cond_a

    if-eq v2, v7, :cond_9

    aput v6, v5, v11

    goto :goto_5

    :cond_9
    aput v8, v5, v11

    goto :goto_5

    :cond_a
    aput v10, v5, v11

    goto :goto_5

    :cond_b
    aput v9, v5, v11

    goto :goto_5

    :cond_c
    aput v12, v5, v11

    :goto_5
    aput v12, v5, v8

    aput v12, v5, v7

    :goto_6
    if-ge v12, v0, :cond_d

    add-int v2, v6, v12

    .line 9
    aget-byte v3, v1, v12

    aput v3, v5, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 10
    :cond_d
    invoke-static {v5}, Lz/k;->s([I)V

    :goto_7
    return-void
.end method
