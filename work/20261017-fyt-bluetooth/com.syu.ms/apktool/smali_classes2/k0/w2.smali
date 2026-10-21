.class public Lk0/w2;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static o:I = 0x0

.field public static p:I = 0xff

.field public static q:Ljava/lang/Runnable;

.field public static r:I

.field public static s:I


# instance fields
.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[I

.field public final f:[I

.field public final g:[I

.field public final h:[I

.field public i:Lo1/g0;

.field public final j:I

.field public final k:I

.field public l:I

.field public m:I

.field public n:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk0/w2$a;

    invoke-direct {v0}, Lk0/w2$a;-><init>()V

    sput-object v0, Lk0/w2;->q:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 2
    sput v0, Lk0/w2;->r:I

    .line 3
    sput v0, Lk0/w2;->s:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lk0/w2;->b:[I

    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 3
    iput-object v2, p0, Lk0/w2;->c:[I

    new-array v2, v0, [I

    .line 4
    iput-object v2, p0, Lk0/w2;->d:[I

    const/16 v2, 0x1e

    new-array v3, v2, [I

    .line 5
    iput-object v3, p0, Lk0/w2;->e:[I

    new-array v3, v2, [I

    .line 6
    iput-object v3, p0, Lk0/w2;->f:[I

    new-array v3, v2, [I

    .line 7
    iput-object v3, p0, Lk0/w2;->g:[I

    new-array v2, v2, [I

    .line 8
    iput-object v2, p0, Lk0/w2;->h:[I

    .line 9
    new-instance v2, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-direct {v2, v3, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lk0/w2;->i:Lo1/g0;

    const/4 v2, 0x1

    .line 10
    iput v2, p0, Lk0/w2;->j:I

    .line 11
    iput v2, p0, Lk0/w2;->k:I

    const/16 v3, 0xff

    .line 12
    iput v3, p0, Lk0/w2;->m:I

    const/16 v3, 0xd

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 13
    fill-array-data v5, :array_1

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v3, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    const/4 v5, 0x3

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    const/4 v5, 0x4

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    const/4 v5, 0x5

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v3, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    const/4 v2, 0x7

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_9

    const/16 v2, 0x8

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_a

    const/16 v2, 0x9

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_b

    const/16 v2, 0xa

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_c

    const/16 v2, 0xb

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_d

    aput-object v1, v3, v0

    iput-object v3, p0, Lk0/w2;->n:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x258
        0x64
        0x78
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_7
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_a
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_c
    .array-data 4
        0xc
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x39
        -0x1
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

    const/4 v5, 0x2

    .line 2
    invoke-static {}, Lk0/w2;->b3()B

    move-result v7

    aput v7, v1, v5

    .line 3
    sget v5, Lu0/b;->D:I

    const/16 v7, 0x7a

    const/16 v8, 0x68

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x6

    const/4 v0, 0x4

    const/16 v16, 0xa

    if-eq v5, v6, :cond_a

    if-eq v5, v0, :cond_7

    if-eq v5, v15, :cond_4

    if-eq v5, v14, :cond_1

    if-eq v5, v13, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    sget v5, Lu0/b;->s3:I

    if-nez v5, :cond_2

    goto/16 :goto_7

    :cond_2
    const/16 v5, 0x54

    aput v5, v1, v0

    .line 5
    sget v0, Lu0/b;->r3:I

    rem-int/lit16 v0, v0, 0x2710

    .line 6
    div-int/lit16 v5, v0, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v12

    .line 7
    rem-int/lit8 v5, v0, 0x64

    div-int/lit8 v5, v5, 0xa

    rem-int/lit16 v6, v0, 0x3e8

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    div-int/lit8 v6, v6, 0xa

    :goto_1
    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v11

    .line 8
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 9
    sget v0, Lu0/b;->t3:I

    div-int/lit8 v5, v0, 0x3c

    .line 10
    rem-int/lit8 v5, v5, 0x3c

    aput v4, v1, v13

    .line 11
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v16

    .line 12
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v10

    aput v4, v1, v9

    .line 13
    rem-int/lit8 v0, v0, 0x3c

    .line 14
    div-int/lit8 v4, v0, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v3

    const/16 v3, 0xe

    .line 15
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v3

    goto/16 :goto_7

    .line 16
    :cond_4
    sget v4, Ld1/d;->c:I

    if-ne v4, v6, :cond_10

    .line 17
    sget v4, Ld1/d;->e:I

    div-int/lit8 v5, v4, 0xa

    if-lez v5, :cond_5

    const/4 v5, 0x3

    .line 18
    div-int/lit8 v17, v4, 0xa

    add-int/lit8 v17, v17, 0x30

    aput v17, v1, v5

    .line 19
    :cond_5
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v0

    const/16 v0, 0x2d

    aput v0, v1, v12

    .line 20
    sget v0, Ld1/d;->d:I

    div-int/lit8 v0, v0, 0x64

    .line 21
    div-int/lit16 v4, v0, 0x2710

    if-lez v4, :cond_6

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v15

    .line 22
    :cond_6
    rem-int/lit16 v4, v0, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 23
    rem-int/lit16 v4, v0, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    const/16 v4, 0x2e

    aput v4, v1, v13

    .line 24
    rem-int/lit8 v4, v0, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v16

    .line 25
    rem-int/lit8 v0, v0, 0xa

    div-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v10

    const/16 v0, 0x4d

    aput v0, v1, v9

    aput v8, v1, v3

    const/16 v0, 0xe

    aput v7, v1, v0

    goto/16 :goto_7

    .line 26
    :cond_7
    sget v5, Lo0/e;->C:I

    if-nez v5, :cond_8

    goto/16 :goto_7

    :cond_8
    const/4 v5, 0x3

    const/16 v6, 0x54

    aput v6, v1, v5

    .line 27
    sget v5, Lo0/e;->B:I

    rem-int/lit16 v5, v5, 0x2710

    .line 28
    div-int/lit16 v6, v5, 0x3e8

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v0

    .line 29
    rem-int/lit8 v0, v5, 0x64

    div-int/lit8 v0, v0, 0xa

    rem-int/lit16 v6, v5, 0x3e8

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    div-int/lit8 v6, v6, 0xa

    :goto_2
    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v12

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v15

    .line 30
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v11

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

    .line 36
    div-int/lit8 v4, v0, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 37
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v3

    goto/16 :goto_7

    .line 38
    :cond_a
    sget v3, Lw0/d;->h:I

    const/high16 v5, 0x10000

    sub-int v17, v3, v5

    if-eqz v17, :cond_e

    sub-int v2, v3, v5

    if-eq v6, v2, :cond_e

    const/4 v2, 0x2

    sub-int/2addr v3, v5

    if-ne v2, v3, :cond_b

    goto :goto_5

    .line 39
    :cond_b
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x2710

    if-nez v3, :cond_c

    div-int/lit16 v3, v2, 0x2710

    add-int/2addr v3, v4

    goto :goto_3

    :cond_c
    div-int/lit16 v3, v2, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_3
    aput v3, v1, v0

    .line 40
    rem-int/lit16 v0, v2, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_d

    rem-int/lit16 v0, v2, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v4

    goto :goto_4

    :cond_d
    rem-int/lit16 v0, v2, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x30

    :goto_4
    aput v0, v1, v12

    .line 41
    rem-int/lit16 v0, v2, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v15

    .line 42
    rem-int/lit8 v0, v2, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v11

    .line 43
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v14

    const/16 v0, 0x4b

    aput v0, v1, v13

    aput v8, v1, v16

    aput v7, v1, v10

    goto :goto_7

    .line 44
    :cond_e
    :goto_5
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x2710

    if-nez v3, :cond_f

    div-int/lit16 v3, v2, 0x2710

    add-int/2addr v3, v4

    goto :goto_6

    :cond_f
    div-int/lit16 v3, v2, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_6
    aput v3, v1, v0

    .line 45
    rem-int/lit16 v0, v2, 0x2710

    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    .line 46
    rem-int/lit16 v0, v2, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v15

    const/16 v0, 0x2e

    aput v0, v1, v11

    .line 47
    rem-int/lit8 v0, v2, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v14

    .line 48
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v13

    const/16 v0, 0x4d

    aput v0, v1, v16

    aput v8, v1, v10

    aput v7, v1, v9

    :cond_10
    :goto_7
    const/16 v0, 0x11

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    move v2, v3

    const/16 v3, 0xf

    :goto_8
    if-ge v2, v3, :cond_11

    add-int/lit8 v4, v2, 0x1

    .line 49
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_8

    .line 50
    :cond_11
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()B
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    const/16 v1, 0x15

    goto/16 :goto_4

    :pswitch_2
    const/16 v1, -0x7b

    goto :goto_4

    .line 2
    :pswitch_3
    sget v0, Lk0/w2;->p:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_4

    :goto_1
    :pswitch_4
    move v1, v4

    goto :goto_4

    :pswitch_5
    const/16 v1, 0xb

    goto :goto_4

    :pswitch_6
    const/16 v1, 0x8

    goto :goto_4

    :pswitch_7
    const/16 v1, 0xc

    goto :goto_4

    .line 3
    :pswitch_8
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_1

    const/4 v1, 0x6

    goto :goto_4

    :cond_1
    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_7

    goto :goto_1

    :pswitch_9
    const/16 v1, 0x13

    goto :goto_4

    :pswitch_a
    const/16 v1, 0xa

    goto :goto_4

    .line 4
    :pswitch_b
    sget v0, Lw0/d;->h:I

    const/high16 v4, 0x10000

    sub-int v7, v0, v4

    if-nez v7, :cond_3

    :goto_2
    move v1, v6

    goto :goto_4

    :cond_3
    sub-int v7, v0, v4

    if-ne v6, v7, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    sub-int v4, v0, v4

    if-ne v3, v4, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    sub-int/2addr v0, v5

    if-ne v6, v0, :cond_7

    const/4 v1, 0x5

    goto :goto_4

    :pswitch_c
    const/16 v1, 0x9

    goto :goto_4

    :cond_7
    :goto_3
    move v1, v5

    .line 5
    :goto_4
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_8

    const/16 v1, 0x10

    :cond_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p0, :cond_4

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
    move v0, v2

    :cond_4
    :goto_0
    return v0
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

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->h:I

    .line 5
    iput v1, v0, Lk0/mt;->j:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/w2;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 8
    iget-object v0, p0, Lk0/w2;->i:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/w2;->e3(I)V

    .line 9
    iget-object v0, p0, Lk0/w2;->i:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/w2;->d3(I)V

    .line 10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lk0/w2;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 12

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x7c

    const/16 v2, 0xa

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v1, -0x7b

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v0, v1, :cond_19

    const/16 v1, -0x18

    if-eq v0, v1, :cond_16

    const/16 v1, -0x10

    if-eq v0, v1, :cond_15

    const/16 p3, 0x41

    if-eq v0, p3, :cond_14

    const/16 p3, 0x11

    const/4 v1, 0x5

    const/4 v11, 0x4

    if-eq v0, p3, :cond_a

    const/16 p3, 0x12

    if-eq v0, p3, :cond_8

    const/16 p3, 0x16

    if-eq v0, p3, :cond_5

    const/16 p3, 0x17

    if-eq v0, p3, :cond_4

    const/16 p3, 0x1e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    const/16 v0, 0x8a

    new-array v1, v6, [I

    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    aput v2, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    move v0, v4

    :goto_0
    if-ge v0, p3, :cond_20

    add-int/lit8 v1, p2, 0x3

    add-int/2addr v1, v0

    .line 3
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    .line 4
    iget-object v2, p0, Lk0/w2;->g:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_0

    .line 5
    aput v1, v2, v0

    .line 6
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x86

    new-array v7, v10, [I

    aput v0, v7, v4

    aput v1, v7, v6

    invoke-static {v2, v3, v7, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    move v0, v4

    :goto_1
    if-ge v0, p3, :cond_20

    add-int/lit8 v1, p2, 0x3

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 7
    aget-byte v1, p1, v1

    add-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v2

    aget-byte v2, p1, v3

    invoke-static {v1, v2}, Lo1/p0;->c(BB)I

    move-result v1

    .line 8
    iget-object v2, p0, Lk0/w2;->e:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_1

    .line 9
    aput v1, v2, v0

    .line 10
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x85

    new-array v5, v10, [I

    aput v0, v5, v4

    aput v1, v5, v6

    invoke-static {v2, v3, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x2

    .line 11
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    move p3, v4

    :goto_2
    if-ge p3, v7, :cond_20

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 12
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    .line 13
    iget-object v1, p0, Lk0/w2;->h:[I

    aget v2, v1, p3

    if-eq v2, v0, :cond_2

    .line 14
    aput v0, v1, p3

    .line 15
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x84

    new-array v3, v10, [I

    aput p3, v3, v4

    aput v0, v3, v6

    invoke-static {v1, v2, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :pswitch_3
    move v0, v4

    :goto_3
    if-ge v0, p3, :cond_20

    add-int/lit8 v1, p2, 0x3

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 16
    aget-byte v1, p1, v1

    add-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v2

    aget-byte v2, p1, v3

    invoke-static {v1, v2}, Lo1/p0;->c(BB)I

    move-result v1

    .line 17
    iget-object v2, p0, Lk0/w2;->f:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_3

    .line 18
    aput v1, v2, v0

    .line 19
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x83

    new-array v5, v10, [I

    aput v0, v5, v4

    mul-int/lit8 v1, v1, 0xa

    aput v1, v5, v6

    invoke-static {v2, v3, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    const/16 v0, 0x6e

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 21
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    const/16 v0, 0x6f

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 23
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x7

    .line 24
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    const/16 v0, 0x70

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 25
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xa

    .line 26
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0xb

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    const/16 v0, 0x71

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 27
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xc

    .line 28
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v0, p2, 0xd

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0xe

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    const/16 v0, 0x72

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 29
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xf

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 p2, p2, 0x10

    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    or-int/2addr p1, p3

    const/16 p2, 0x73

    new-array p3, v6, [I

    aput p1, p3, v4

    .line 31
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    const/16 v0, 0x62

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 33
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 34
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    const/16 v0, 0x63

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 35
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 36
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    const/16 v0, 0x64

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 37
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x7

    .line 38
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    const/16 v0, 0x65

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 39
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x9

    .line 40
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v0, p2, 0xa

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0xb

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    const/16 v0, 0x66

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 41
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xc

    .line 42
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0xd

    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    or-int/2addr p3, v0

    const/16 v0, 0x67

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 43
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xe

    .line 44
    aget-byte p3, p1, p3

    and-int/lit8 v0, p3, 0x3

    and-int/2addr v0, v5

    const/16 v1, 0x68

    new-array v3, v6, [I

    aput v0, v3, v4

    .line 45
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v0, p3, 0x2

    and-int/2addr v0, v9

    and-int/2addr v0, v5

    const/16 v1, 0x69

    new-array v3, v6, [I

    aput v0, v3, v4

    .line 46
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v0, p3, 0x4

    and-int/2addr v0, v9

    and-int/2addr v0, v5

    const/16 v1, 0x6a

    new-array v3, v6, [I

    aput v0, v3, v4

    .line 47
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v0, p3, 0x6

    and-int/2addr v0, v6

    and-int/2addr v0, v5

    const/16 v1, 0x6b

    new-array v3, v6, [I

    aput v0, v3, v4

    .line 48
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v6

    and-int/2addr p3, v5

    const/16 v0, 0x6c

    new-array v1, v6, [I

    aput p3, v1, v4

    .line 49
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0xf

    .line 50
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    if-gez p1, :cond_6

    move v2, v4

    goto :goto_4

    :cond_6
    if-le p1, v2, :cond_7

    goto :goto_4

    :cond_7
    move v2, p1

    :goto_4
    const/16 p1, 0x6d

    new-array p2, v6, [I

    .line 51
    iget-object p3, p0, Lk0/w2;->b:[I

    aget p3, p3, v2

    aput p3, p2, v4

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_8
    add-int/2addr p2, v11

    .line 52
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 53
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_9

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 54
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 55
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_9
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 56
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 57
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 58
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 59
    invoke-static {v11, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v6

    aput p3, p2, v4

    .line 60
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v10

    and-int/2addr p1, v6

    aput p1, p2, v4

    .line 61
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_a
    add-int/lit8 p3, p2, 0x4

    .line 62
    aget-byte v0, p1, p3

    if-ne v0, v7, :cond_c

    .line 63
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64
    invoke-static {}, Lo1/u;->k()V

    goto :goto_6

    .line 65
    :cond_b
    invoke-static {}, Lo1/u;->v()I

    .line 66
    :cond_c
    :goto_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 67
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 68
    aget-byte v0, p1, v0

    and-int/2addr p3, v5

    .line 69
    iput p3, p0, Lk0/w2;->m:I

    move p3, v4

    .line 70
    :goto_7
    iget-object v2, p0, Lk0/w2;->n:[[I

    array-length v7, v2

    if-ge p3, v7, :cond_e

    .line 71
    iget v7, p0, Lk0/w2;->m:I

    aget-object v8, v2, p3

    aget v8, v8, v4

    if-ne v7, v8, :cond_d

    if-eqz v7, :cond_e

    .line 72
    iput p3, p0, Lk0/w2;->l:I

    goto :goto_8

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    and-int/2addr v0, v5

    if-eqz v0, :cond_11

    .line 73
    array-length v0, v2

    if-ge p3, v0, :cond_13

    .line 74
    sget v0, Lh0/c;->E:I

    if-eq v0, v11, :cond_f

    if-eq v0, v9, :cond_f

    if-ne v0, v1, :cond_10

    :cond_f
    aget-object v0, v2, p3

    aget v0, v0, v4

    if-ne v0, v3, :cond_10

    const/16 p3, 0x1a

    .line 75
    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    goto :goto_9

    .line 76
    :cond_10
    aget-object p3, v2, p3

    aget p3, p3, v6

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    goto :goto_9

    .line 77
    :cond_11
    iget p3, p0, Lk0/w2;->l:I

    array-length v0, v2

    if-ge p3, v0, :cond_12

    if-eq p3, v5, :cond_12

    .line 78
    aget-object p3, v2, p3

    aget p3, p3, v6

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    .line 79
    :cond_12
    iput v5, p0, Lk0/w2;->l:I

    :cond_13
    :goto_9
    add-int/lit8 p3, p2, 0x9

    .line 80
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    const/16 p2, 0x1388

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_d

    .line 81
    :cond_14
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_20

    add-int/lit8 p3, p2, 0x2

    .line 82
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Lk0/w2;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 83
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Lk0/w2;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 84
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Lk0/w2;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 85
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Lk0/w2;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 86
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Lk0/w2;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 87
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Lk0/w2;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 88
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Lk0/w2;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 89
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    invoke-static {p1}, Lk0/w2;->c3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_d

    .line 90
    :cond_15
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v10

    sub-int/2addr p3, v10

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_16
    const/16 p3, 0x3f5

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 91
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    sub-int/2addr v1, v6

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v10

    .line 92
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    .line 93
    sget p2, Lu0/b;->o:I

    if-eqz p2, :cond_17

    goto/16 :goto_d

    :cond_17
    if-eqz p1, :cond_18

    .line 94
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 95
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_d

    .line 96
    :cond_18
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 97
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_d

    :cond_19
    add-int/lit8 p3, p2, 0x2

    .line 98
    aget-byte p3, p1, p3

    if-eq p3, v6, :cond_1c

    if-eq p3, v10, :cond_1a

    goto/16 :goto_d

    :cond_1a
    move p3, v4

    :goto_a
    if-ge p3, v7, :cond_20

    add-int/lit8 v0, p2, 0x4

    mul-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    .line 99
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    add-int/2addr v2, v1

    aget-byte v1, p1, v2

    invoke-static {v0, v1}, Lo1/p0;->c(BB)I

    move-result v0

    .line 100
    iget-object v1, p0, Lk0/w2;->d:[I

    aget v2, v1, p3

    if-eq v2, v0, :cond_1b

    .line 101
    aput v0, v1, p3

    .line 102
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x82

    new-array v3, v10, [I

    aput p3, v3, v4

    mul-int/lit8 v0, v0, 0xa

    aput v0, v3, v6

    invoke-static {v1, v2, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_1b
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_1c
    move p3, v4

    :goto_b
    if-ge p3, v3, :cond_20

    add-int/lit8 v0, p2, 0x4

    mul-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    .line 103
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    add-int/2addr v2, v1

    aget-byte v1, p1, v2

    invoke-static {v0, v1}, Lo1/p0;->c(BB)I

    move-result v0

    .line 104
    iget-object v1, p0, Lk0/w2;->c:[I

    aget v2, v1, p3

    if-eq v2, v0, :cond_1d

    .line 105
    aput v0, v1, p3

    .line 106
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x81

    new-array v5, v10, [I

    aput p3, v5, v4

    aput v0, v5, v6

    invoke-static {v1, v2, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_1d
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_1e
    add-int/lit8 p3, p2, 0x2

    .line 107
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    add-int/lit8 v0, p2, 0x3

    .line 108
    aget-byte v0, p1, v0

    and-int/2addr v0, v5

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    if-nez p3, :cond_1f

    goto :goto_c

    :cond_1f
    move v2, v6

    :goto_c
    mul-int/2addr v0, v2

    const/16 v1, 0x80

    new-array v2, v6, [I

    aput p3, v2, v4

    .line 109
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x87

    new-array v1, v6, [I

    aput v0, v1, v4

    .line 110
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8c

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x5

    .line 111
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x89

    new-array v0, v6, [I

    add-int/2addr p2, v3

    .line 112
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_20
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x79
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/w2;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lk0/w2;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8d

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
    .locals 4

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_4

    const/16 v0, 0x64

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3ed

    const/4 v3, 0x2

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 p1, 0x8

    .line 1
    aget p2, p2, p4

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lk0/w2;->f3(II)V

    goto/16 :goto_2

    :pswitch_1
    const/4 p1, 0x7

    .line 2
    aget p2, p2, p4

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lk0/w2;->f3(II)V

    goto/16 :goto_2

    .line 3
    :pswitch_2
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v1, p1}, Lk0/w2;->f3(II)V

    goto :goto_2

    :pswitch_3
    const/4 p1, 0x4

    .line 4
    aget p2, p2, p4

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lk0/w2;->f3(II)V

    goto :goto_2

    .line 5
    :pswitch_4
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v3, p1}, Lk0/w2;->f3(II)V

    goto :goto_2

    .line 6
    :pswitch_5
    aget p1, p2, p4

    invoke-virtual {p0, p3, p1}, Lk0/w2;->f3(II)V

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_7

    .line 7
    array-length p1, p2

    if-lez p1, :cond_7

    .line 8
    aget p1, p2, p4

    add-int/2addr p1, p3

    aput p1, p2, p4

    .line 9
    aget p1, p2, p4

    if-ge p1, v3, :cond_1

    .line 10
    aput v3, p2, p4

    goto :goto_0

    .line 11
    :cond_1
    aget p1, p2, p4

    if-le p1, v2, :cond_2

    .line 12
    aput v2, p2, p4

    .line 13
    :cond_2
    :goto_0
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/w2;->e3(I)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_7

    .line 14
    array-length p1, p2

    if-lez p1, :cond_7

    .line 15
    aget p1, p2, p4

    if-ne p1, v2, :cond_7

    new-array p1, v1, [I

    .line 16
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_7

    .line 17
    array-length p1, p2

    if-lez p1, :cond_7

    .line 18
    aget p1, p2, p4

    if-gez p1, :cond_5

    .line 19
    aput p4, p2, p4

    goto :goto_1

    .line 20
    :cond_5
    aget p1, p2, p4

    if-le p1, p3, :cond_6

    .line 21
    aput p3, p2, p4

    .line 22
    :cond_6
    :goto_1
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/w2;->d3(I)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        -0xe
        0x4
        -0x1
    .end array-data
.end method

.method public final d3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/w2;->s:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x2

    const/16 v4, -0xe

    aput v4, v1, v0

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput p1, v1, v0

    const/4 p1, 0x4

    const/4 v0, -0x1

    aput v0, v1, p1

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p1, v2, [I

    .line 3
    sget v0, Lk0/w2;->s:I

    aput v0, p1, v3

    const/16 v0, 0x75

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/w2;->i:Lo1/g0;

    invoke-virtual {p1, v2, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/w2;->s:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/w2;->i:Lo1/g0;

    invoke-virtual {p1, v2, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final e3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/w2;->r:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, -0xe

    aput v4, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x3

    aput p1, v0, v3

    const/4 p1, 0x4

    const/4 v3, -0x1

    aput v3, v0, p1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/w2;->i:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/w2;->r:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/w2;->i:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final f3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, -0xf

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
