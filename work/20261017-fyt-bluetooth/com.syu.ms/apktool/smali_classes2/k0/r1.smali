.class public Lk0/r1;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static j:I = 0x0

.field public static k:I = 0xff

.field public static l:I = 0xff

.field public static m:I = 0xff

.field public static n:I = 0xff

.field public static o:Ljava/lang/Runnable;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk0/r1$a;

    invoke-direct {v0}, Lk0/r1$a;-><init>()V

    sput-object v0, Lk0/r1;->o:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/r1;->d:I

    const/16 v0, 0xb

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/r1;->e:[[I

    .line 4
    new-instance v0, Lk0/r1$b;

    invoke-direct {v0, p0}, Lk0/r1$b;-><init>(Lk0/r1;)V

    iput-object v0, p0, Lk0/r1;->f:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/r1$c;

    invoke-direct {v0, p0}, Lk0/r1$c;-><init>(Lk0/r1;)V

    iput-object v0, p0, Lk0/r1;->g:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/r1$d;

    invoke-direct {v0, p0}, Lk0/r1$d;-><init>(Lk0/r1;)V

    iput-object v0, p0, Lk0/r1;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/r1$e;

    invoke-direct {v0, p0}, Lk0/r1$e;-><init>(Lk0/r1;)V

    iput-object v0, p0, Lk0/r1;->i:Ljava/lang/Runnable;

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
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x4
        -0x1
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
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xb
        0xd
    .end array-data
.end method

.method public static a3()V
    .locals 18

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

    const/16 v5, 0xe1

    const/4 v6, 0x1

    aput v5, v1, v6

    .line 2
    invoke-static {}, Lk0/r1;->b3()B

    move-result v5

    const/4 v7, 0x2

    aput v5, v1, v7

    .line 3
    sget v5, Lu0/b;->D:I

    const/16 v8, 0x2e

    const/4 v9, 0x3

    const/16 v10, 0xb

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x4

    const/4 v0, 0x6

    const/16 v16, 0xa

    const/16 v17, 0x30

    if-eq v5, v6, :cond_a

    if-eq v5, v15, :cond_7

    if-eq v5, v0, :cond_4

    if-eq v5, v14, :cond_1

    if-eq v5, v13, :cond_1

    goto/16 :goto_8

    .line 4
    :cond_1
    sget v5, Lu0/b;->s3:I

    if-nez v5, :cond_2

    goto/16 :goto_8

    .line 5
    :cond_2
    sget v5, Lu0/b;->r3:I

    rem-int/lit16 v5, v5, 0x2710

    .line 6
    div-int/lit16 v6, v5, 0x3e8

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v15

    .line 7
    rem-int/lit8 v6, v5, 0x64

    div-int/lit8 v6, v6, 0xa

    rem-int/lit16 v7, v5, 0x3e8

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    div-int/lit8 v7, v7, 0xa

    :goto_1
    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v11

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v0

    .line 8
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v12

    .line 9
    sget v0, Lu0/b;->t3:I

    div-int/lit8 v5, v0, 0x3c

    .line 10
    rem-int/lit8 v5, v5, 0x3c

    aput v4, v1, v14

    .line 11
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v13

    .line 12
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    aput v4, v1, v10

    .line 13
    rem-int/lit8 v0, v0, 0x3c

    const/16 v4, 0xc

    .line 14
    div-int/lit8 v5, v0, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v4

    .line 15
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v3

    goto/16 :goto_8

    .line 16
    :cond_4
    sget v3, Ld1/d;->c:I

    if-ne v3, v6, :cond_11

    .line 17
    sget v3, Ld1/d;->e:I

    div-int/lit8 v4, v3, 0xa

    if-lez v4, :cond_5

    .line 18
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 19
    :cond_5
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    const/16 v3, 0x2d

    aput v3, v1, v11

    .line 20
    sget v3, Ld1/d;->d:I

    div-int/lit8 v3, v3, 0x64

    .line 21
    div-int/lit16 v4, v3, 0x2710

    if-lez v4, :cond_6

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v0

    .line 22
    :cond_6
    rem-int/lit16 v0, v3, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    .line 23
    rem-int/lit16 v0, v3, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    aput v8, v1, v13

    .line 24
    rem-int/lit8 v0, v3, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v16

    .line 25
    rem-int/lit8 v3, v3, 0xa

    div-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    goto/16 :goto_8

    .line 26
    :cond_7
    sget v5, Lo0/e;->C:I

    if-nez v5, :cond_8

    goto/16 :goto_8

    :cond_8
    const/16 v5, 0x54

    aput v5, v1, v9

    .line 27
    sget v5, Lo0/e;->B:I

    rem-int/lit16 v5, v5, 0x2710

    .line 28
    div-int/lit16 v6, v5, 0x3e8

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v15

    .line 29
    rem-int/lit8 v6, v5, 0x64

    div-int/lit8 v6, v6, 0xa

    rem-int/lit16 v7, v5, 0x3e8

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    div-int/lit8 v7, v7, 0xa

    :goto_2
    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v11

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v0

    .line 30
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v12

    .line 31
    sget v0, Lo0/e;->r:I

    div-int/lit8 v5, v0, 0x3c

    .line 32
    rem-int/lit8 v5, v5, 0x3c

    aput v4, v1, v14

    .line 33
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v13

    .line 34
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    aput v4, v1, v10

    .line 35
    rem-int/lit8 v0, v0, 0x3c

    const/16 v4, 0xc

    .line 36
    div-int/lit8 v5, v0, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v4

    .line 37
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v3

    goto/16 :goto_8

    :cond_a
    aput v17, v1, v9

    .line 38
    sget v3, Lw0/d;->j:I

    rem-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_b

    if-eqz v3, :cond_b

    const/16 v3, 0x36

    aput v3, v1, v15

    goto :goto_3

    :cond_b
    and-int/lit16 v3, v3, 0xff

    .line 39
    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    :goto_3
    aput v4, v1, v11

    .line 40
    sget v3, Lw0/d;->h:I

    const/high16 v5, 0x10000

    sub-int v9, v3, v5

    if-eqz v9, :cond_f

    sub-int v9, v3, v5

    if-eq v6, v9, :cond_f

    sub-int/2addr v3, v5

    if-ne v7, v3, :cond_c

    goto :goto_6

    .line 41
    :cond_c
    sget v3, Lw0/d;->i:I

    div-int/lit16 v5, v3, 0x2710

    if-nez v5, :cond_d

    div-int/lit16 v5, v3, 0x2710

    add-int/2addr v5, v4

    goto :goto_4

    :cond_d
    div-int/lit16 v5, v3, 0x2710

    add-int/lit8 v5, v5, 0x30

    :goto_4
    aput v5, v1, v0

    .line 42
    rem-int/lit16 v0, v3, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_e

    rem-int/lit16 v0, v3, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v4

    goto :goto_5

    :cond_e
    rem-int/lit16 v0, v3, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x30

    :goto_5
    aput v0, v1, v12

    .line 43
    rem-int/lit16 v0, v3, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 44
    rem-int/lit8 v0, v3, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v13

    .line 45
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v16

    goto :goto_8

    .line 46
    :cond_f
    :goto_6
    sget v3, Lw0/d;->i:I

    div-int/lit16 v5, v3, 0x2710

    if-nez v5, :cond_10

    div-int/lit16 v5, v3, 0x2710

    add-int/2addr v5, v4

    goto :goto_7

    :cond_10
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v5, v4, 0x30

    :goto_7
    aput v5, v1, v0

    .line 47
    rem-int/lit16 v0, v3, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    .line 48
    rem-int/lit16 v0, v3, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    aput v8, v1, v13

    .line 49
    rem-int/lit8 v0, v3, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v16

    .line 50
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    :cond_11
    :goto_8
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0xf

    :goto_9
    if-ge v2, v3, :cond_12

    add-int/lit8 v4, v2, 0x1

    .line 51
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_9

    .line 52
    :cond_12
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()B
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/16 v2, 0x15

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :goto_0
    :pswitch_0
    move v1, v2

    goto/16 :goto_4

    :pswitch_1
    const/16 v1, -0x7b

    goto/16 :goto_4

    :goto_1
    :pswitch_2
    move v1, v6

    goto :goto_4

    :goto_2
    :pswitch_3
    move v1, v5

    goto :goto_4

    .line 2
    :pswitch_4
    sget v0, Lk0/r1;->k:I

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_7

    const/16 v1, 0x16

    goto :goto_4

    :pswitch_5
    const/16 v1, 0x8

    goto :goto_4

    :pswitch_6
    const/16 v1, 0xc

    goto :goto_4

    .line 3
    :pswitch_7
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_1

    const/4 v1, 0x6

    goto :goto_4

    :cond_1
    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    if-ne v0, v1, :cond_7

    goto :goto_2

    :pswitch_8
    const/16 v1, 0x13

    goto :goto_4

    :pswitch_9
    const/16 v1, 0xa

    goto :goto_4

    .line 4
    :pswitch_a
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v5, v0, v2

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    sub-int v5, v0, v2

    if-ne v6, v5, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    sub-int v2, v0, v2

    if-ne v3, v2, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_6

    const/4 v1, 0x4

    goto :goto_4

    :cond_6
    sub-int/2addr v0, v4

    if-ne v6, v0, :cond_7

    const/4 v1, 0x5

    goto :goto_4

    :pswitch_b
    const/16 v1, 0x9

    goto :goto_4

    :cond_7
    :goto_3
    move v1, v4

    .line 5
    :goto_4
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_8

    const/16 v1, 0x10

    :cond_8
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c3()V
    .locals 8

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x4

    .line 1
    sput v2, Lk0/r1;->j:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    const/16 v5, 0x20

    .line 2
    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0xd

    aput v4, v1, v3

    const/16 v4, 0xe1

    const/4 v5, 0x1

    aput v4, v1, v5

    const/4 v4, 0x2

    .line 3
    invoke-static {}, Lk0/r1;->b3()B

    move-result v6

    aput v6, v1, v4

    .line 4
    sget v4, Ly0/f;->i:I

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eq v4, v5, :cond_3

    sget v4, Ly0/f;->C0:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x56

    aput v5, v1, v7

    const/16 v5, 0x4f

    aput v5, v1, v2

    const/16 v2, 0x4c

    aput v2, v1, v6

    const/16 v2, 0xa

    if-lt v4, v2, :cond_2

    const/4 v5, 0x7

    .line 5
    div-int/lit8 v6, v4, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    :cond_2
    const/16 v5, 0x8

    .line 6
    rem-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v4, 0x4d

    aput v4, v1, v7

    const/16 v4, 0x55

    aput v4, v1, v2

    const/16 v2, 0x54

    aput v2, v1, v6

    const/4 v2, 0x6

    const/16 v4, 0x45

    aput v4, v1, v2

    :goto_2
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 7
    aget v3, v1, v3

    int-to-byte v3, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static d3(I)V
    .locals 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1d

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {v1}, Lk0/r1;->g3(I)V

    goto :goto_0

    .line 2
    :cond_1
    sget p0, Lk0/r1;->k:I

    if-ne p0, v1, :cond_2

    .line 3
    invoke-static {v1}, Lk0/r1;->g3(I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    .line 4
    invoke-static {p0}, Lk0/r1;->g3(I)V

    goto :goto_0

    :cond_3
    const/16 p0, 0x8

    .line 5
    invoke-static {p0}, Lk0/r1;->g3(I)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x7

    .line 6
    invoke-static {p0}, Lk0/r1;->g3(I)V

    :goto_0
    return-void
.end method

.method public static f3(I)V
    .locals 4

    .line 1
    sput p0, Lk0/r1;->m:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 2
    :goto_1
    sget v3, Lk0/r1;->n:I

    if-eq v3, p0, :cond_3

    const/16 p0, 0x3f7

    if-ne v2, v1, :cond_2

    new-array v2, v1, [I

    aput v1, v2, v0

    .line 3
    invoke-static {p0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_2
    new-array v1, v1, [I

    aput v0, v1, v0

    .line 4
    invoke-static {p0, v1}, Lk0/qt;->y0(I[I)V

    .line 5
    :cond_3
    :goto_2
    sget p0, Lk0/r1;->m:I

    sput p0, Lk0/r1;->n:I

    return-void
.end method

.method public static g3(I)V
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    const/4 v2, 0x2

    .line 2
    aget v3, v1, v2

    aput p0, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-le p0, v5, :cond_0

    aput v5, v1, v2

    aput v4, v1, v7

    goto :goto_0

    :cond_0
    aput v6, v1, v7

    :goto_0
    const/4 p0, 0x5

    new-array p0, p0, [I

    const/16 v5, 0xe3

    aput v5, p0, v6

    aput v2, p0, v4

    const/16 v4, -0x54

    aput v4, p0, v2

    .line 3
    aget v2, v1, v2

    aput v2, p0, v7

    aget v2, v1, v7

    aput v2, p0, v0

    invoke-static {p0}, Lz/k;->s([I)V

    aput v3, v1, v6

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic h3(Lk0/r1;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/r1;->i3(BLjava/lang/String;)V

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
    iget-object v0, p0, Lk0/r1;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/r1;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/r1;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/r1;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lk0/r1;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Lk0/r1;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Lk0/r1;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 9

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x5c

    const/16 v2, 0xd

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_f

    const/16 v1, -0x4f

    const/4 v6, 0x2

    if-eq v0, v1, :cond_e

    const/16 v1, -0x4a

    const/16 v7, 0x12

    if-eq v0, v1, :cond_d

    const/16 v1, -0x20

    if-eq v0, v1, :cond_c

    const/16 v1, -0x10

    if-eq v0, v1, :cond_b

    const/4 p3, 0x4

    const/4 v1, 0x3

    if-eq v0, v7, :cond_9

    const/16 v6, 0x72

    if-eq v0, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    new-array v0, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 2
    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    aput v6, v0, v4

    const/16 v6, 0xa

    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    add-int/lit8 v0, p2, 0x2

    .line 4
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    const/16 v6, 0x20

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_1

    .line 5
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v4}, Lu0/d;->C2(I)V

    :goto_0
    add-int/2addr p2, p3

    .line 7
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    iput p1, p0, Lk0/r1;->c:I

    move p1, v4

    .line 8
    :goto_1
    iget-object p2, p0, Lk0/r1;->e:[[I

    array-length v0, p2

    if-ge p1, v0, :cond_3

    .line 9
    iget v0, p0, Lk0/r1;->c:I

    aget-object v7, p2, p1

    aget v7, v7, v4

    if-ne v0, v7, :cond_2

    if-eqz v0, :cond_3

    .line 10
    iput p1, p0, Lk0/r1;->b:I

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 11
    :cond_3
    :goto_2
    iget v0, p0, Lk0/r1;->c:I

    if-eqz v0, :cond_7

    .line 12
    array-length v0, p2

    if-ge p1, v0, :cond_10

    .line 13
    aget-object v0, p2, p1

    aget v0, v0, v5

    if-eq v0, v1, :cond_4

    aget-object v0, p2, p1

    aget v0, v0, v5

    if-eq v0, p3, :cond_4

    aget-object p3, p2, p1

    aget p3, p3, v5

    const/16 v0, 0x1d

    if-eq p3, v0, :cond_4

    aget-object p3, p2, p1

    aget p3, p3, v5

    if-eq p3, v6, :cond_4

    aget-object p3, p2, p1

    aget p3, p3, v5

    const/16 v0, 0x21

    if-ne p3, v0, :cond_5

    :cond_4
    sget p3, Lu0/b;->D:I

    if-eq p3, v2, :cond_6

    const/4 v0, 0x7

    if-ne p3, v0, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    aget-object p1, p2, p1

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    .line 15
    :cond_6
    :goto_3
    aget-object p1, p2, p1

    aget p1, p1, v5

    invoke-static {p1}, Lk0/r1;->d3(I)V

    goto/16 :goto_5

    :cond_7
    if-nez v0, :cond_10

    .line 16
    iget p1, p0, Lk0/r1;->b:I

    array-length p3, p2

    if-ge p1, p3, :cond_8

    if-eq p1, v3, :cond_8

    .line 17
    aget-object p1, p2, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 18
    :cond_8
    iput v3, p0, Lk0/r1;->b:I

    goto/16 :goto_5

    :cond_9
    add-int/2addr p2, p3

    .line 19
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 20
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_a

    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 21
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 22
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 23
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 24
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 25
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 26
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x5

    .line 27
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 28
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 29
    :cond_b
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    add-int/2addr p2, v6

    .line 30
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lk0/r1;->e3(I)V

    goto/16 :goto_5

    :cond_d
    new-array p3, v5, [I

    add-int/2addr p2, v6

    .line 31
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, p3, v4

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 32
    :cond_e
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_10

    add-int/2addr p2, v6

    .line 33
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Lk0/r1;->f3(I)V

    goto/16 :goto_5

    :cond_f
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 34
    aget-byte v1, p1, v0

    const/16 v6, 0xf

    and-int/2addr v1, v6

    aput v1, p3, v4

    const/16 v1, 0xb

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 35
    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 36
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v7, 0xff00

    and-int/2addr v1, v7

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    or-int/2addr v1, v8

    aput v1, p3, v4

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x8

    .line 37
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v7

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    or-int/2addr v2, v8

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v1, p2, 0x9

    .line 38
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v7

    add-int/lit8 v2, p2, 0xa

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v4

    const/16 v1, 0xc

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v2, v5, [I

    add-int/lit8 v7, p2, 0xb

    .line 39
    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    aput v7, v2, v4

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x11

    new-array v2, v5, [I

    add-int/2addr p2, v1

    .line 40
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    aput v1, v2, v4

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    .line 41
    aget-byte p3, p1, v0

    and-int/2addr p3, v6

    sput p3, Lk0/r1;->l:I

    .line 42
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    sput p1, Lk0/r1;->k:I

    :cond_10
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/r1;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/r1;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/r1;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/r1;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lk0/r1;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Lk0/r1;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Lk0/r1;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x13

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

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x0

    .line 2
    aget p2, p2, p3

    const/4 p3, 0x5

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, p3, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p3, [I

    .line 5
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p3, [I

    .line 6
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0xac
        0x7
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0xac
        0x7
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0xac
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0xac
        0x1
        0x0
    .end array-data
.end method

.method public final e3(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1c

    const/16 v3, 0x20

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {}, Lo1/u;->j()I

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-static {}, Lo1/u;->q()V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-static {}, Lo1/u;->x0()V

    if-ne p1, v3, :cond_0

    new-array p1, v1, [I

    const/16 v1, 0x1b

    aput v1, p1, v0

    .line 5
    invoke-static {v2, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-static {}, Lo1/u;->x0()V

    if-ne p1, v3, :cond_0

    new-array p1, v1, [I

    const/16 v1, 0x1e

    aput v1, p1, v0

    .line 7
    invoke-static {v2, p1}, Lw0/f;->J(I[I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
