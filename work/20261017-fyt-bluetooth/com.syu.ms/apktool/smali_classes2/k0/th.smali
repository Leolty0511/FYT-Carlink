.class public Lk0/th;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/th;->c:I

    const/16 v1, 0x9

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

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/th;->d:[[I

    .line 4
    new-instance v0, Lk0/th$a;

    invoke-direct {v0, p0}, Lk0/th$a;-><init>(Lk0/th;)V

    iput-object v0, p0, Lk0/th;->e:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x2
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
        0xb
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x12
        0xd
    .end array-data
.end method

.method public static a3()V
    .locals 18

    const/16 v0, 0xe

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
    const/16 v3, 0xc0

    aput v3, v1, v2

    const/16 v3, 0xc

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    sget v3, Lu0/b;->D:I

    const/16 v6, 0x41

    const/4 v7, 0x5

    const/16 v8, 0x9

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/16 v11, 0x4d

    const/16 v12, 0x8

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v0, 0xa

    if-eq v3, v5, :cond_6

    const/16 v5, 0x42

    const/16 v16, 0x54

    if-eq v3, v15, :cond_5

    if-eq v3, v14, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v12, :cond_2

    if-eq v3, v0, :cond_2

    const/16 v0, 0xd

    if-eq v3, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0x43

    aput v0, v1, v15

    const/16 v0, 0x44

    aput v0, v1, v14

    goto/16 :goto_2

    :cond_2
    aput v11, v1, v15

    const/16 v3, 0x50

    aput v3, v1, v14

    const/16 v3, 0x33

    aput v3, v1, v13

    aput v4, v1, v7

    .line 3
    sget v3, Lu0/b;->r3:I

    div-int/lit16 v4, v3, 0x3e8

    add-int/lit8 v4, v4, 0x54

    aput v4, v1, v10

    .line 4
    div-int/lit16 v4, v3, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 5
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 6
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v8

    .line 7
    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v0

    goto/16 :goto_2

    :cond_3
    aput v6, v1, v15

    const/16 v0, 0x55

    aput v0, v1, v14

    const/16 v0, 0x58

    aput v0, v1, v13

    goto/16 :goto_2

    :cond_4
    aput v5, v1, v15

    aput v16, v1, v14

    aput v4, v1, v13

    aput v11, v1, v7

    const/16 v0, 0x75

    aput v0, v1, v10

    const/16 v0, 0x73

    aput v0, v1, v9

    const/16 v0, 0x69

    aput v0, v1, v12

    const/16 v0, 0x63

    aput v0, v1, v8

    goto/16 :goto_2

    :cond_5
    aput v5, v1, v15

    aput v16, v1, v14

    aput v4, v1, v13

    const/16 v0, 0x50

    aput v0, v1, v7

    const/16 v0, 0x68

    aput v0, v1, v10

    const/16 v0, 0x6f

    aput v0, v1, v9

    const/16 v0, 0x6e

    aput v0, v1, v12

    const/16 v0, 0x65

    aput v0, v1, v8

    goto/16 :goto_2

    .line 8
    :cond_6
    sget v3, Lw0/d;->h:I

    const/high16 v2, 0x10000

    const/16 v17, 0x46

    if-ne v3, v2, :cond_7

    aput v17, v1, v15

    aput v11, v1, v14

    const/16 v5, 0x31

    aput v5, v1, v13

    goto :goto_1

    :cond_7
    const v8, 0x10001

    if-ne v3, v8, :cond_8

    aput v17, v1, v15

    aput v11, v1, v14

    const/16 v5, 0x32

    aput v5, v1, v13

    goto :goto_1

    :cond_8
    const v8, 0x10002

    if-ne v3, v8, :cond_9

    aput v17, v1, v15

    aput v11, v1, v14

    const/16 v5, 0x33

    aput v5, v1, v13

    goto :goto_1

    :cond_9
    if-nez v3, :cond_a

    aput v6, v1, v15

    aput v11, v1, v14

    const/16 v5, 0x31

    aput v5, v1, v13

    goto :goto_1

    :cond_a
    if-ne v3, v5, :cond_b

    aput v6, v1, v15

    aput v11, v1, v14

    const/16 v5, 0x32

    aput v5, v1, v13

    :cond_b
    :goto_1
    aput v4, v1, v7

    if-lt v3, v2, :cond_d

    const v2, 0x10002

    if-gt v3, v2, :cond_d

    .line 9
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x2710

    if-nez v3, :cond_c

    .line 10
    div-int/lit16 v3, v2, 0x3e8

    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 11
    div-int/lit8 v3, v2, 0x64

    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    const/16 v3, 0x2e

    aput v3, v1, v12

    .line 12
    div-int/lit8 v3, v2, 0xa

    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    const/16 v4, 0x9

    aput v3, v1, v4

    .line 13
    rem-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v0

    goto :goto_2

    .line 14
    :cond_c
    div-int/lit16 v3, v2, 0x2710

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 15
    div-int/lit16 v3, v2, 0x3e8

    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 16
    div-int/lit8 v3, v2, 0x64

    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    const/16 v3, 0x2e

    const/16 v4, 0x9

    aput v3, v1, v4

    .line 17
    div-int/lit8 v3, v2, 0xa

    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v0

    const/16 v3, 0xb

    .line 18
    rem-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v3

    goto :goto_2

    .line 19
    :cond_d
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x3e8

    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 20
    div-int/lit8 v3, v2, 0x64

    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 21
    div-int/lit8 v3, v2, 0xa

    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    .line 22
    rem-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x30

    const/16 v0, 0x9

    aput v2, v1, v0

    :goto_2
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    move v2, v3

    const/16 v3, 0xe

    :goto_3
    if-ge v2, v3, :cond_e

    add-int/lit8 v4, v2, 0x1

    .line 23
    aget v2, v1, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_3

    .line 24
    :cond_e
    invoke-static {v0}, Lz/k;->s([I)V

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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/th;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v3, -0x40

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_18

    const/16 v3, 0x11

    const/16 v8, 0xb

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/16 v12, 0xff

    if-eq v2, v3, :cond_d

    const/16 v3, 0x21

    if-eq v2, v3, :cond_8

    const/16 v3, 0x28

    if-eq v2, v3, :cond_6

    const/16 v3, 0x30

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_1

    const/16 v3, 0x39

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v0, v0, v4

    and-int/2addr v0, v12

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_1
    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 6
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 7
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 8
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 9
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 10
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 11
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 12
    aget-byte v4, v0, v4

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 13
    aget-byte v0, v0, v4

    and-int/2addr v0, v12

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 14
    :cond_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    if-eq v2, v7, :cond_4

    goto/16 :goto_7

    :cond_4
    add-int/lit8 v2, p2, 0x3

    .line 16
    aget-byte v3, v0, v2

    shr-int/2addr v3, v11

    and-int/2addr v3, v7

    aget-byte v4, v0, v2

    shr-int/2addr v4, v10

    and-int/2addr v4, v7

    invoke-static {v3, v4, v6}, Ll0/c0;->a(III)V

    .line 17
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v5, [I

    aput v8, v5, v6

    aget-byte v0, v0, v2

    and-int/2addr v0, v12

    aput v0, v5, v7

    const/4 v0, 0x0

    invoke-static {v3, v4, v5, v0, v0}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    add-int/lit8 v2, p2, 0x3

    .line 18
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v0, v0, v3

    const/16 v3, 0x2ee0

    invoke-static {v2, v0, v6, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_7

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v0, v0, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 20
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 21
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 22
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 23
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 24
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 25
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 26
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v0, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 27
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v0, v5

    and-int/2addr v0, v7

    aput v0, v2, v6

    .line 28
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 30
    aget-byte v0, v0, v3

    and-int/2addr v2, v12

    .line 31
    iput v2, v1, Lk0/th;->c:I

    move v2, v6

    .line 32
    :goto_1
    iget-object v3, v1, Lk0/th;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_a

    .line 33
    iget v4, v1, Lk0/th;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_9

    if-eqz v4, :cond_a

    .line 34
    iput v2, v1, Lk0/th;->b:I

    goto :goto_2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    and-int/2addr v0, v12

    if-eqz v0, :cond_b

    .line 35
    array-length v0, v3

    if-ge v2, v0, :cond_19

    .line 36
    aget-object v0, v3, v2

    aget v0, v0, v7

    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 37
    :cond_b
    iget v0, v1, Lk0/th;->b:I

    array-length v2, v3

    if-ge v0, v2, :cond_c

    if-eq v0, v12, :cond_c

    .line 38
    aget-object v0, v3, v0

    aget v0, v0, v7

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 39
    :cond_c
    iput v12, v1, Lk0/th;->b:I

    goto/16 :goto_7

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v0, v2

    and-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x3

    .line 41
    aget-byte v3, v0, v3

    and-int/2addr v3, v12

    add-int/lit8 v13, p2, 0x4

    .line 42
    aget-byte v13, v0, v13

    and-int/2addr v13, v12

    add-int/lit8 v14, p2, 0x5

    .line 43
    aget-byte v15, v0, v14

    and-int/2addr v15, v12

    add-int/lit8 v16, p2, 0x6

    .line 44
    aget-byte v9, v0, v16

    and-int/2addr v9, v12

    new-array v12, v7, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v12, v6

    .line 45
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/lit8 v12, v2, 0x4

    and-int/2addr v12, v11

    aput v12, v8, v6

    .line 46
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v8, v7, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v7

    aput v12, v8, v6

    .line 47
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v8, v7, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v8, v6

    .line 48
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    if-eq v3, v7, :cond_12

    if-eq v3, v5, :cond_11

    if-eq v3, v11, :cond_10

    if-eq v3, v10, :cond_f

    const/4 v2, 0x5

    if-eq v3, v2, :cond_e

    move v2, v6

    move v3, v2

    move v4, v3

    goto :goto_3

    :cond_e
    move v2, v6

    move v3, v2

    move v4, v7

    goto :goto_3

    :cond_f
    move v3, v6

    move v2, v7

    move v4, v2

    goto :goto_3

    :cond_10
    move v3, v6

    move v4, v3

    move v2, v7

    goto :goto_3

    :cond_11
    move v4, v6

    move v2, v7

    move v3, v2

    goto :goto_3

    :cond_12
    move v2, v6

    move v4, v2

    move v3, v7

    :goto_3
    const/16 v5, 0x14

    new-array v8, v7, [I

    aput v2, v8, v6

    .line 49
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 50
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 51
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    aput v13, v3, v6

    .line 52
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 53
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 54
    aget-byte v2, v0, v16

    const/16 v3, 0xff

    and-int/lit16 v15, v2, 0xff

    .line 55
    aget-byte v0, v0, v14

    and-int/lit16 v9, v0, 0xff

    goto :goto_4

    :cond_13
    const/16 v3, 0xff

    :goto_4
    and-int/lit16 v0, v15, 0xff

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v4, 0x1e

    const/16 v5, 0x1b

    if-eqz v0, :cond_15

    if-eq v0, v4, :cond_14

    new-array v8, v7, [I

    aput v0, v8, v6

    .line 56
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_14
    new-array v0, v7, [I

    aput v2, v0, v6

    .line 57
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_15
    new-array v0, v7, [I

    aput v3, v0, v6

    .line 58
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v0, 0xff

    and-int/2addr v0, v9

    const/16 v5, 0x1c

    if-eqz v0, :cond_17

    if-eq v0, v4, :cond_16

    new-array v2, v7, [I

    aput v0, v2, v6

    .line 59
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_16
    new-array v0, v7, [I

    aput v2, v0, v6

    .line 60
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_17
    new-array v0, v7, [I

    aput v3, v0, v6

    .line 61
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 62
    :cond_18
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const-string v5, "GB2312"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v2, ""

    :goto_6
    const/16 v0, 0x6e

    new-array v3, v7, [I

    aput v7, v3, v6

    .line 64
    invoke-static {v0, v3, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    :cond_19
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/th;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6f

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

    return-void
.end method
