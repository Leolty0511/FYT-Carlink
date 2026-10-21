.class public Lk0/yi;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:[I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/yi;->c:I

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

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    iput-object v1, p0, Lk0/yi;->d:[[I

    .line 4
    iput v0, p0, Lk0/yi;->e:I

    .line 5
    new-instance v1, Lk0/yi$a;

    invoke-direct {v1, p0}, Lk0/yi$a;-><init>(Lk0/yi;)V

    iput-object v1, p0, Lk0/yi;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/yi$b;

    invoke-direct {v1, p0}, Lk0/yi$b;-><init>(Lk0/yi;)V

    iput-object v1, p0, Lk0/yi;->g:Ljava/lang/Runnable;

    new-array v1, v2, [I

    .line 7
    fill-array-data v1, :array_8

    iput-object v1, p0, Lk0/yi;->h:[I

    .line 8
    iput v0, p0, Lk0/yi;->i:I

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
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
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/yi;->f:Ljava/lang/Runnable;

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
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->h:I

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1e

    const/16 v5, 0x50

    const/4 v6, 0x5

    const/16 v7, 0xff

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x20

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_18

    const/16 v3, 0x24

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eq v2, v3, :cond_16

    const/16 v3, 0x29

    const/16 v6, 0xf

    if-eq v2, v3, :cond_14

    const/16 v3, 0x30

    if-eq v2, v3, :cond_13

    const/16 v3, 0x41

    if-eq v2, v3, :cond_12

    const/16 v3, 0x55

    const/4 v13, 0x6

    if-eq v2, v3, :cond_5

    const/16 v3, 0x60

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-eq v2, v10, :cond_4

    if-eq v2, v12, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v11, :cond_1

    goto/16 :goto_8

    :cond_1
    const/16 v2, 0x6b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 5
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_2
    const/16 v2, 0x68

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 6
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 7
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 8
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_3
    const/16 v2, 0x65

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 9
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 10
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 11
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_4
    const/16 v2, 0x62

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 14
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v14, p2, 0x3

    .line 16
    aget-byte v15, v1, v14

    and-int/2addr v15, v7

    add-int/lit8 v16, p2, 0x4

    .line 17
    aget-byte v4, v1, v16

    and-int/2addr v4, v7

    add-int/lit8 v16, p2, 0x6

    .line 18
    aget-byte v13, v1, v16

    and-int/2addr v13, v7

    const-string v8, "persist.fyt.reversetemp"

    .line 19
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 20
    aget-byte v3, v1, v14

    and-int/2addr v3, v7

    .line 21
    aget-byte v1, v1, v2

    and-int/lit16 v15, v1, 0xff

    :cond_6
    const/4 v1, -0x2

    const/16 v2, 0x10

    const/16 v8, 0x1b

    if-ne v3, v2, :cond_7

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 22
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    if-ne v3, v5, :cond_8

    new-array v3, v10, [I

    const/4 v14, -0x3

    aput v14, v3, v9

    .line 23
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_8
    if-ne v3, v7, :cond_9

    new-array v3, v10, [I

    const/4 v14, -0x1

    aput v14, v3, v9

    .line 24
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_9
    new-array v14, v10, [I

    and-int/2addr v3, v7

    aput v3, v14, v9

    .line 25
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v3, 0x1c

    if-ne v15, v2, :cond_a

    new-array v5, v10, [I

    aput v1, v5, v9

    .line 26
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    if-ne v15, v5, :cond_b

    new-array v1, v10, [I

    const/4 v5, -0x3

    aput v5, v1, v9

    .line 27
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_b
    if-ne v15, v7, :cond_c

    new-array v1, v10, [I

    const/4 v5, -0x1

    aput v5, v1, v9

    .line 28
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_c
    new-array v1, v10, [I

    and-int/lit16 v5, v15, 0xff

    aput v5, v1, v9

    .line 29
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0x15

    new-array v3, v10, [I

    and-int/lit8 v5, v4, 0xf

    aput v5, v3, v9

    .line 30
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v4, 0x4

    and-int/2addr v1, v6

    if-eq v1, v10, :cond_11

    if-eq v1, v12, :cond_10

    const/4 v3, 0x3

    if-eq v1, v3, :cond_f

    if-eq v1, v11, :cond_e

    const/4 v3, 0x6

    if-eq v1, v3, :cond_d

    move v3, v9

    move v4, v3

    :goto_2
    move v5, v4

    goto :goto_3

    :cond_d
    move v4, v9

    move v5, v4

    move v3, v10

    goto :goto_3

    :cond_e
    move v4, v9

    move v3, v10

    move v5, v3

    goto :goto_3

    :cond_f
    move v3, v9

    move v4, v3

    move v5, v10

    goto :goto_3

    :cond_10
    move v3, v9

    move v4, v10

    goto :goto_2

    :cond_11
    move v3, v9

    move v5, v3

    move v4, v10

    :goto_3
    const/16 v7, 0x12

    new-array v8, v10, [I

    aput v3, v8, v9

    .line 31
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v7, v10, [I

    aput v4, v7, v9

    .line 32
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v10, [I

    aput v5, v4, v9

    .line 33
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    aput v1, v3, v9

    const/16 v1, 0x4d

    .line 34
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v3, v13, 0x7

    and-int/2addr v3, v10

    aput v3, v1, v9

    .line 35
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v3, v13, 0x6

    and-int/2addr v3, v10

    aput v3, v1, v9

    .line 36
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v13, 0x3

    and-int/2addr v2, v10

    aput v2, v1, v9

    const/16 v2, 0xc

    .line 37
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v13, 0x2

    and-int/2addr v2, v10

    aput v2, v1, v9

    const/16 v2, 0xe

    .line 38
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v13, 0x1

    and-int/2addr v2, v10

    aput v2, v1, v9

    const/16 v2, 0xb

    .line 39
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v13, 0x0

    and-int/2addr v2, v10

    aput v2, v1, v9

    const/16 v2, 0xd

    .line 40
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_12
    const/16 v2, 0x6f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 41
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 42
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 43
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 44
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 45
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 46
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 47
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 48
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 49
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 50
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 51
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 52
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 53
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 54
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 55
    :cond_13
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    add-int/lit8 v2, p2, 0x3

    .line 56
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x168

    if-eqz v3, :cond_15

    add-int/lit8 v3, p2, 0x2

    .line 57
    aget-byte v3, v1, v3

    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v3, v1, v9, v4}, Lk0/qt;->j(IIII)V

    goto/16 :goto_8

    .line 58
    :cond_15
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xf00

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    or-int/2addr v1, v2

    rsub-int v1, v1, 0x1000

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    .line 59
    invoke-static {v2, v1, v10, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 61
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 62
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 63
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_17
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 64
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 65
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 66
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x3

    .line 67
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 68
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 69
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 71
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 72
    iput v2, v0, Lk0/yi;->c:I

    move v2, v9

    .line 73
    :goto_5
    iget-object v3, v0, Lk0/yi;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1a

    .line 74
    iget v4, v0, Lk0/yi;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_19

    if-eqz v4, :cond_1a

    .line 75
    iput v2, v0, Lk0/yi;->b:I

    goto :goto_6

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1a
    :goto_6
    and-int/2addr v1, v7

    if-ne v1, v10, :cond_1b

    .line 76
    array-length v1, v3

    if-ge v2, v1, :cond_21

    .line 77
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_1b
    if-nez v1, :cond_21

    .line 78
    iget v1, v0, Lk0/yi;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1c

    if-eq v1, v7, :cond_1c

    .line 79
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 80
    :cond_1c
    iput v7, v0, Lk0/yi;->b:I

    goto/16 :goto_8

    .line 81
    :cond_1d
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_20

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_20

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_20

    if-ne v2, v5, :cond_1e

    goto :goto_7

    :cond_1e
    const/16 v3, 0x4e

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x51

    if-ne v2, v3, :cond_21

    :cond_1f
    add-int/lit8 v2, p2, 0x2

    .line 82
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 83
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 85
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->Q0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_8

    :cond_20
    :goto_7
    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 89
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->k1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    :cond_21
    :goto_8
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/yi;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/yi;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7d

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

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0x84

    aput p3, p1, v3

    aput v2, p1, v2

    .line 2
    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x7

    new-array p1, p1, [I

    aput v0, p1, v4

    const/16 v0, 0x33

    aput v0, p1, v3

    aput v1, p1, v2

    .line 4
    aget p2, p2, v4

    aput p2, p1, p4

    iget-object p2, p0, Lk0/yi;->h:[I

    iget p4, p0, Lk0/yi;->i:I

    rem-int/2addr p4, v2

    aget p2, p2, p4

    aput p2, p1, v1

    aput v4, p1, p3

    const/4 p2, 0x6

    aput v4, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    .line 5
    iget p1, p0, Lk0/yi;->i:I

    add-int/2addr p1, v3

    iput p1, p0, Lk0/yi;->i:I

    .line 6
    rem-int/2addr p1, v2

    iput p1, p0, Lk0/yi;->i:I

    :cond_2
    :goto_0
    return-void
.end method
