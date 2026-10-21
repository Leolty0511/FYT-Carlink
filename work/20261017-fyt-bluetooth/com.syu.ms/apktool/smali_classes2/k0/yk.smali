.class public Lk0/yk;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/yk;->c:I

    const/16 v0, 0xe

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/yk;->d:[[I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lk0/yk;->e:I

    .line 5
    iput v0, p0, Lk0/yk;->f:I

    .line 6
    new-instance v0, Lk0/yk$a;

    invoke-direct {v0, p0}, Lk0/yk$a;-><init>(Lk0/yk;)V

    iput-object v0, p0, Lk0/yk;->g:Ljava/lang/Runnable;

    .line 7
    iput v3, p0, Lk0/yk;->h:I

    .line 8
    iput v3, p0, Lk0/yk;->i:I

    .line 9
    iput v3, p0, Lk0/yk;->j:I

    .line 10
    new-instance v0, Lk0/yk$b;

    invoke-direct {v0, p0}, Lk0/yk$b;-><init>(Lk0/yk;)V

    iput-object v0, p0, Lk0/yk;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/yk$c;

    invoke-direct {v0, p0}, Lk0/yk$c;-><init>(Lk0/yk;)V

    iput-object v0, p0, Lk0/yk;->l:Ljava/lang/Runnable;

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
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data
.end method

.method public static synthetic a3(Lk0/yk;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/yk;->e:I

    return p0
.end method

.method public static synthetic b3(Lk0/yk;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/yk;->e:I

    return p1
.end method

.method public static synthetic c3(Lk0/yk;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/yk;->f:I

    return p0
.end method

.method public static synthetic d3(Lk0/yk;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/yk;->f:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

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
    iput v1, v0, Lk0/mt;->g:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    .line 7
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_1

    const/16 v4, 0x17

    if-eq v3, v4, :cond_1

    const/16 v4, 0x18

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput v2, v0, Lk0/mt;->g:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 9
    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lk0/yk;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/yk;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_16

    const/16 v3, 0x11

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_f

    const/16 v3, 0x31

    const/16 v4, 0xc

    const/16 v12, 0x10

    if-eq v2, v3, :cond_4

    const/16 v3, 0x41

    if-eq v2, v3, :cond_3

    const/16 v3, 0x48

    if-eq v2, v3, :cond_2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v2, 0x6c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v1, v1, v2

    const/16 v2, 0x6f

    new-array v3, v11, [I

    aput v1, v3, v10

    .line 6
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 7
    iget v2, v0, Lk0/yk;->h:I

    if-eq v2, v1, :cond_17

    .line 8
    iput v1, v0, Lk0/yk;->h:I

    .line 9
    iget v1, v0, Lk0/yk;->i:I

    add-int/2addr v1, v11

    iput v1, v0, Lk0/yk;->i:I

    const/16 v2, 0x70

    new-array v3, v11, [I

    aput v1, v3, v10

    .line 10
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1
    const/16 v2, 0x63

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 11
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    const v6, 0xffff

    and-int/2addr v4, v6

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 12
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v9

    or-int/2addr v4, v7

    and-int/2addr v4, v6

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 13
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    const/high16 v7, 0xff0000

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, v1, v7

    and-int/2addr v7, v9

    or-int/2addr v4, v7

    const v7, 0xffffff

    and-int/2addr v4, v7

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 15
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0xb

    aget-byte v7, v1, v7

    and-int/2addr v7, v9

    or-int/2addr v4, v7

    and-int/2addr v4, v6

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xc

    .line 16
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0xd

    aget-byte v7, v1, v7

    and-int/2addr v7, v9

    or-int/2addr v4, v7

    and-int/2addr v4, v6

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xe

    .line 17
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xf

    .line 18
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x10

    aget-byte v7, v1, v7

    and-int/2addr v7, v9

    or-int/2addr v4, v7

    and-int/2addr v4, v6

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x11

    .line 19
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x12

    aget-byte v1, v1, v5

    and-int/2addr v1, v9

    or-int/2addr v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_2
    const/16 v2, 0x71

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 20
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v11

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v11, [I

    .line 21
    aget-byte v5, v1, v5

    shr-int/2addr v5, v8

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 22
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 23
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x6

    .line 24
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x7

    .line 25
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x9

    .line 26
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0xa

    .line 27
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0xb

    .line 28
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xc

    .line 29
    aget-byte v1, v1, v4

    and-int/2addr v1, v9

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->A1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->A1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->A1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->A1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_4
    new-array v2, v11, [I

    add-int/lit8 v13, p2, 0x2

    .line 34
    aget-byte v14, v1, v13

    shr-int/2addr v14, v8

    and-int/2addr v14, v11

    aput v14, v2, v10

    const/16 v14, 0xa

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 35
    aget-byte v13, v1, v13

    shr-int/2addr v13, v5

    and-int/2addr v13, v11

    aput v13, v2, v10

    const/16 v13, 0xd

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v14, p2, 0x3

    .line 36
    aget-byte v15, v1, v14

    shr-int/2addr v15, v8

    and-int/2addr v15, v11

    aput v15, v2, v10

    const/16 v15, 0xb

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 37
    aget-byte v14, v1, v14

    shr-int/2addr v14, v7

    and-int/2addr v14, v11

    aput v14, v2, v10

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v4, v11, [I

    add-int/lit8 v14, p2, 0x4

    .line 38
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v11

    aput v15, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v4, v11, [I

    .line 39
    aget-byte v15, v1, v14

    shr-int/2addr v15, v8

    and-int/2addr v15, v11

    aput v15, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 40
    aget-byte v4, v1, v14

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v2, v10

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v11, [I

    .line 41
    aget-byte v12, v1, v14

    shr-int/lit8 v7, v12, 0x4

    and-int/2addr v7, v11

    aput v7, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 42
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    if-eq v2, v11, :cond_8

    if-eq v2, v5, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v8, :cond_5

    packed-switch v2, :pswitch_data_0

    move v2, v10

    move v4, v2

    :goto_0
    move v5, v4

    :goto_1
    move v7, v5

    goto :goto_2

    :pswitch_0
    move v2, v10

    move v4, v11

    goto :goto_0

    :pswitch_1
    move v2, v10

    move v7, v2

    move v4, v11

    move v5, v4

    goto :goto_2

    :pswitch_2
    move v2, v10

    move v5, v2

    move v4, v11

    move v7, v4

    goto :goto_2

    :pswitch_3
    move v2, v10

    move v5, v2

    move v7, v5

    move v4, v11

    goto :goto_2

    :cond_5
    move v2, v10

    move v4, v2

    move v7, v4

    move v5, v11

    goto :goto_2

    :cond_6
    move v2, v10

    move v4, v2

    move v5, v11

    goto :goto_1

    :cond_7
    move v2, v10

    move v4, v2

    move v5, v4

    move v7, v11

    goto :goto_2

    :cond_8
    move v4, v10

    move v5, v4

    move v7, v5

    move v2, v11

    :goto_2
    new-array v8, v11, [I

    aput v2, v8, v10

    .line 43
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v11, [I

    aput v4, v3, v10

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v11, [I

    aput v5, v3, v10

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v7, v3, v10

    .line 46
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 47
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 48
    aget-byte v3, v1, v2

    add-int/lit8 v4, p2, 0x9

    .line 49
    aget-byte v5, v1, v4

    const-string v7, "persist.fyt.reversetemp"

    .line 50
    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 51
    aget-byte v3, v1, v4

    .line 52
    aget-byte v5, v1, v2

    :cond_9
    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0xfe

    const/16 v4, 0x1b

    if-ne v2, v3, :cond_a

    new-array v2, v11, [I

    const/4 v3, -0x2

    aput v3, v2, v10

    .line 53
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    if-ne v2, v9, :cond_b

    new-array v2, v11, [I

    const/4 v3, -0x3

    aput v3, v2, v10

    .line 54
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v3, v11, [I

    aput v2, v3, v10

    .line 55
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/lit16 v2, v5, 0xff

    const/16 v3, 0xfe

    const/16 v4, 0x1c

    if-ne v2, v3, :cond_c

    new-array v2, v11, [I

    const/4 v3, -0x2

    aput v3, v2, v10

    .line 56
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    if-ne v2, v9, :cond_d

    new-array v2, v11, [I

    const/4 v3, -0x3

    aput v3, v2, v10

    .line 57
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    new-array v3, v11, [I

    aput v2, v3, v10

    .line 58
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0xd

    .line 59
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    if-nez v1, :cond_e

    .line 60
    invoke-static {v10}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    :cond_e
    mul-int/2addr v1, v6

    add-int/lit16 v1, v1, 0x258

    .line 61
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    :cond_f
    add-int/lit8 v2, p2, 0x4

    .line 62
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 63
    aget-byte v3, v1, v3

    and-int/2addr v2, v9

    .line 64
    iput v2, v0, Lk0/yk;->c:I

    move v2, v10

    .line 65
    :goto_5
    iget-object v12, v0, Lk0/yk;->d:[[I

    array-length v13, v12

    if-ge v2, v13, :cond_11

    .line 66
    iget v13, v0, Lk0/yk;->c:I

    aget-object v14, v12, v2

    aget v14, v14, v10

    if-ne v13, v14, :cond_10

    if-eqz v13, :cond_11

    .line 67
    iput v2, v0, Lk0/yk;->b:I

    goto :goto_6

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    :goto_6
    and-int/2addr v3, v9

    if-ne v3, v11, :cond_12

    .line 68
    array-length v3, v12

    if-ge v2, v3, :cond_14

    .line 69
    aget-object v2, v12, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_12
    if-nez v3, :cond_14

    .line 70
    iget v2, v0, Lk0/yk;->b:I

    array-length v3, v12

    if-ge v2, v3, :cond_13

    if-eq v2, v9, :cond_13

    .line 71
    aget-object v2, v12, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 72
    :cond_13
    iput v9, v0, Lk0/yk;->b:I

    :cond_14
    :goto_7
    const-string v2, "persist.syu.reversefrontdoor"

    .line 73
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x6

    .line 74
    aget-byte v12, v1, v3

    shr-int/lit8 v8, v12, 0x6

    and-int/2addr v8, v11

    aput v8, v2, v10

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 75
    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_15
    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x6

    .line 76
    aget-byte v12, v1, v3

    shr-int/lit8 v8, v12, 0x6

    and-int/2addr v8, v11

    aput v8, v2, v10

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 77
    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x6

    .line 78
    aget-byte v8, v1, v3

    shr-int/2addr v8, v7

    and-int/2addr v8, v11

    aput v8, v2, v10

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 79
    aget-byte v8, v1, v3

    shr-int/2addr v8, v6

    and-int/2addr v8, v11

    aput v8, v2, v10

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 80
    aget-byte v7, v1, v3

    shr-int/lit8 v5, v7, 0x3

    and-int/2addr v5, v11

    aput v5, v2, v10

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 81
    aget-byte v3, v1, v3

    shr-int/2addr v3, v4

    and-int/2addr v3, v11

    aput v3, v2, v10

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 82
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v9

    const/16 v3, 0x21c

    invoke-static {v2, v1, v11, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_9

    .line 83
    :cond_16
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_17
    :goto_9
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/yk;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/yk;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/yk;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7b

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
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/4 p3, 0x1

    const/4 v0, 0x3

    aput v0, p1, p3

    const/16 v1, 0x6a

    const/4 v2, 0x2

    aput v1, p1, v2

    .line 1
    aget p4, p2, p4

    int-to-byte p4, p4

    aput p4, p1, v0

    const/4 p4, 0x4

    aget p3, p2, p3

    int-to-byte p3, p3

    aput p3, p1, p4

    const/4 p3, 0x5

    aget p2, p2, v2

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
