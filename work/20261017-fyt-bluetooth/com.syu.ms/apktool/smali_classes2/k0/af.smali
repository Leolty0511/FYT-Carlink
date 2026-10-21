.class public Lk0/af;
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


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/af;->c:I

    const/16 v1, 0xc

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v13, 0xa

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v14, 0xb

    aput-object v4, v2, v14

    iput-object v2, p0, Lk0/af;->d:[[I

    .line 4
    iput v0, p0, Lk0/af;->f:I

    const/16 v2, 0x27

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_c

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    aput-object v0, v2, v5

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    aput-object v0, v2, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    aput-object v0, v2, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    aput-object v0, v2, v9

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    aput-object v0, v2, v10

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    aput-object v0, v2, v11

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    aput-object v0, v2, v12

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    aput-object v0, v2, v13

    new-array v0, v3, [I

    fill-array-data v0, :array_17

    aput-object v0, v2, v14

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_19

    const/16 v1, 0xd

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    const/16 v1, 0xe

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    const/16 v1, 0xf

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    const/16 v1, 0x10

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1d

    const/16 v1, 0x11

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    const/16 v1, 0x12

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1f

    const/16 v1, 0x13

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_20

    const/16 v1, 0x14

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_21

    const/16 v1, 0x15

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_22

    const/16 v1, 0x16

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_23

    const/16 v1, 0x17

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_24

    const/16 v1, 0x18

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_25

    const/16 v1, 0x19

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_26

    const/16 v1, 0x1a

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_27

    const/16 v1, 0x1b

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_28

    const/16 v1, 0x1c

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_29

    const/16 v1, 0x1d

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_2a

    const/16 v1, 0x1e

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_2b

    const/16 v1, 0x1f

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_2c

    const/16 v1, 0x20

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_2d

    const/16 v1, 0x21

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_2e

    const/16 v1, 0x22

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_2f

    const/16 v1, 0x23

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_30

    const/16 v1, 0x24

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_31

    const/16 v1, 0x25

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_32

    const/16 v1, 0x26

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/af;->g:[[I

    .line 6
    new-instance v0, Lk0/af$a;

    invoke-direct {v0, p0}, Lk0/af$a;-><init>(Lk0/af;)V

    iput-object v0, p0, Lk0/af;->h:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x15
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xd
        0xd
    .end array-data

    :array_a
    .array-data 4
        0x10
        0x22
    .end array-data

    :array_b
    .array-data 4
        0x11
        0x23
    .end array-data

    :array_c
    .array-data 4
        0x13
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x14
        0x19
    .end array-data

    :array_e
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_f
    .array-data 4
        0x16
        0x10
    .end array-data

    :array_10
    .array-data 4
        0x1b
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x20
        0x31
    .end array-data

    :array_12
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_13
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_14
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_15
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_16
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_17
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_18
    .array-data 4
        0x27
        0x2e
    .end array-data

    :array_19
    .array-data 4
        0x28
        0x2f
    .end array-data

    :array_1a
    .array-data 4
        0x29
        0x30
    .end array-data

    :array_1b
    .array-data 4
        0x31
        0x5
    .end array-data

    :array_1c
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x33
        0x5
    .end array-data

    :array_1e
    .array-data 4
        0x34
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0x35
        0x3a
    .end array-data

    :array_20
    .array-data 4
        0x36
        0x12
    .end array-data

    :array_21
    .array-data 4
        0x37
        0x3e
    .end array-data

    :array_22
    .array-data 4
        0x38
        0x6
    .end array-data

    :array_23
    .array-data 4
        0x39
        0x18
    .end array-data

    :array_24
    .array-data 4
        0x3a
        0x36
    .end array-data

    :array_25
    .array-data 4
        0x3b
        0x0
    .end array-data

    :array_26
    .array-data 4
        0x3c
        0x43
    .end array-data

    :array_27
    .array-data 4
        0x3d
        0x44
    .end array-data

    :array_28
    .array-data 4
        0x3e
        0x15
    .end array-data

    :array_29
    .array-data 4
        0x3f
        0x19
    .end array-data

    :array_2a
    .array-data 4
        0x40
        0x26
    .end array-data

    :array_2b
    .array-data 4
        0x41
        0x8
    .end array-data

    :array_2c
    .array-data 4
        0x42
        0x7
    .end array-data

    :array_2d
    .array-data 4
        0x43
        0x1e
    .end array-data

    :array_2e
    .array-data 4
        0x44
        0x1f
    .end array-data

    :array_2f
    .array-data 4
        0x45
        0x6
    .end array-data

    :array_30
    .array-data 4
        0x46
        0x5
    .end array-data

    :array_31
    .array-data 4
        0x47
        0x2
    .end array-data

    :array_32
    .array-data 4
        0x48
        0x10
    .end array-data
.end method

.method public static a3()V
    .locals 11

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/16 v2, 0x93

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x6

    aput v4, v1, v2

    .line 1
    invoke-static {}, Lk0/af;->b3()B

    move-result v5

    const/4 v6, 0x2

    aput v5, v1, v6

    .line 2
    invoke-static {}, Lk0/af;->c3()B

    move-result v5

    const/4 v7, 0x3

    aput v5, v1, v7

    .line 3
    sget v5, Lu0/b;->D:I

    const/16 v7, 0x9

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-ne v5, v9, :cond_0

    .line 4
    sget v5, Lo0/e;->B:I

    rem-int/lit16 v5, v5, 0xff

    aput v5, v1, v9

    .line 5
    sget v5, Lo0/e;->A:I

    aput v5, v1, v8

    goto :goto_1

    :cond_0
    if-eq v5, v0, :cond_2

    if-ne v5, v7, :cond_1

    goto :goto_0

    :cond_1
    aput v3, v1, v9

    aput v3, v1, v8

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    sget v5, Lu0/b;->r3:I

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v9

    .line 7
    sget v5, Lu0/b;->m3:I

    if-nez v5, :cond_3

    aput v6, v1, v8

    goto :goto_1

    :cond_3
    aput v3, v1, v8

    .line 8
    :goto_1
    sget v5, Lu0/b;->D:I

    const/4 v8, 0x7

    if-ne v5, v2, :cond_6

    .line 9
    sget v5, Lw0/d;->h:I

    const/high16 v9, 0x10000

    sub-int v10, v5, v9

    if-eqz v10, :cond_5

    sub-int v10, v5, v9

    if-eq v2, v10, :cond_5

    sub-int/2addr v5, v9

    if-ne v6, v5, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    sget v2, Lw0/d;->i:I

    shr-int/lit8 v5, v2, 0x8

    aput v5, v1, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    goto :goto_3

    .line 11
    :cond_5
    :goto_2
    sget v2, Lw0/d;->i:I

    div-int/lit8 v5, v2, 0xa

    shr-int/2addr v5, v0

    aput v5, v1, v4

    .line 12
    div-int/lit8 v2, v2, 0xa

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    goto :goto_3

    :cond_6
    aput v3, v1, v4

    aput v3, v1, v8

    :goto_3
    new-array v2, v7, [I

    new-array v4, v7, [B

    const/16 v5, 0xe3

    aput v5, v2, v3

    :goto_4
    if-ge v3, v0, :cond_7

    add-int/lit8 v5, v3, 0x1

    .line 13
    aget v6, v1, v3

    aput v6, v2, v5

    .line 14
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    move v3, v5

    goto :goto_4

    .line 15
    :cond_7
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()B
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    goto :goto_2

    :cond_0
    :goto_0
    move v1, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_2

    .line 2
    :cond_3
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_4

    goto :goto_2

    :cond_4
    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_7

    goto :goto_0

    :cond_6
    move v1, v6

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    return v1
.end method

.method public static c3()B
    .locals 7

    .line 1
    sget v0, Lw0/d;->h:I

    const/high16 v1, 0x10000

    sub-int v2, v0, v1

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_1

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    sub-int v2, v0, v1

    if-ne v5, v2, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    sub-int v1, v0, v1

    if-ne v4, v1, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v6

    if-ne v5, v0, :cond_0

    :goto_0
    return v3
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
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iget-object v0, p0, Lk0/af;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/af;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/af;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x12

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x2

    if-eq v0, v1, :cond_10

    const/16 v1, 0x14

    const/4 v9, 0x5

    if-eq v0, v1, :cond_e

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v6, 0x71

    if-eq v0, v6, :cond_4

    const/16 p3, 0x16

    if-eq v0, p3, :cond_1

    const/16 p3, 0x17

    if-eq v0, p3, :cond_0

    goto/16 :goto_8

    :cond_0
    const/16 p3, 0xa

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    add-int/2addr v1, p1

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/2addr p2, v2

    .line 4
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    add-int/lit8 p3, p3, -0x4f

    mul-int/2addr p3, v9

    add-int/lit16 p3, p3, 0x3e8

    if-nez p1, :cond_2

    const/high16 p2, 0x40000000    # 2.0f

    or-int/2addr p3, p2

    :cond_2
    if-ne p1, v5, :cond_3

    mul-int/lit8 p3, p3, 0x9

    .line 5
    div-int/2addr p3, v9

    add-int/2addr p3, v1

    const p1, 0x8000

    or-int/2addr p3, p1

    .line 6
    :cond_3
    invoke-static {p3}, Lu0/d;->A3(I)V

    goto/16 :goto_8

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 8
    :cond_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_16

    add-int/lit8 p3, p2, 0x2

    .line 9
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 10
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 11
    iput p2, p0, Lk0/af;->f:I

    move p2, v4

    .line 12
    :goto_0
    iget-object p3, p0, Lk0/af;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_7

    .line 13
    iget v0, p0, Lk0/af;->f:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_6

    if-eqz v0, :cond_7

    .line 14
    iput p2, p0, Lk0/af;->e:I

    goto :goto_1

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 15
    :cond_7
    :goto_1
    iget v0, p0, Lk0/af;->f:I

    packed-switch v0, :pswitch_data_0

    and-int/2addr p1, v3

    if-ne p1, v5, :cond_c

    .line 16
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 17
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_0
    move p2, v4

    :goto_2
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_8

    .line 18
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 19
    :cond_8
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_1
    move p2, v4

    :goto_3
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1e

    if-ge p2, p3, :cond_9

    .line 20
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 21
    :cond_9
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_2
    move p2, v4

    :goto_4
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_a

    .line 22
    invoke-static {v7, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 23
    :cond_a
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_3
    move p2, v4

    :goto_5
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_b

    .line 24
    invoke-static {v6, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 25
    :cond_b
    invoke-static {v6, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_c
    if-nez p1, :cond_16

    .line 26
    iget p1, p0, Lk0/af;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_d

    if-eq p1, v3, :cond_d

    .line 27
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 28
    :cond_d
    iput v3, p0, Lk0/af;->e:I

    goto/16 :goto_8

    :cond_e
    add-int/2addr p2, v8

    .line 29
    aget-byte p1, p1, p2

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 30
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x4

    .line 31
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 32
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    const-string p2, "persist.syu.reversefrontdoor"

    .line 33
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_f

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 34
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 35
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_f
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 36
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 37
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_10
    add-int/2addr p2, v8

    .line 38
    aget-byte p1, p1, p2

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 39
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 40
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    and-int/2addr p1, v2

    aput p1, p2, v4

    const/16 p1, 0x9

    .line 41
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 42
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 43
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 44
    iput p2, p0, Lk0/af;->c:I

    move p2, v4

    .line 45
    :goto_6
    iget-object p3, p0, Lk0/af;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_13

    .line 46
    iget v0, p0, Lk0/af;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_12

    if-eqz v0, :cond_13

    .line 47
    iput p2, p0, Lk0/af;->b:I

    goto :goto_7

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_13
    :goto_7
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_14

    .line 48
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 49
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_14
    if-nez p1, :cond_16

    .line 50
    iget p1, p0, Lk0/af;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_15

    if-eq p1, v3, :cond_15

    .line 51
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 52
    :cond_15
    iput v3, p0, Lk0/af;->b:I

    :cond_16
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/af;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/af;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/af;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xc

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

    const/4 p4, 0x2

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v4, 0x7

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, -0x36

    aput v0, p1, v2

    aput v2, p1, p4

    .line 1
    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x92

    aput v0, p1, v2

    aput v2, p1, p4

    .line 2
    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
