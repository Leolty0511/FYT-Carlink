.class public Lk0/dm;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/dm;->c:I

    const/16 v1, 0x16

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

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/dm;->d:[[I

    .line 4
    iput v0, p0, Lk0/dm;->e:I

    .line 5
    new-instance v1, Lk0/dm$a;

    invoke-direct {v1, p0}, Lk0/dm$a;-><init>(Lk0/dm;)V

    iput-object v1, p0, Lk0/dm;->f:Ljava/lang/Runnable;

    .line 6
    iput v0, p0, Lk0/dm;->g:I

    .line 7
    new-instance v0, Lk0/dm$b;

    invoke-direct {v0, p0}, Lk0/dm$b;-><init>(Lk0/dm;)V

    iput-object v0, p0, Lk0/dm;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/dm$c;

    invoke-direct {v0, p0}, Lk0/dm$c;-><init>(Lk0/dm;)V

    iput-object v0, p0, Lk0/dm;->i:Ljava/lang/Runnable;

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
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_9
    .array-data 4
        0x12
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x13
        0x15
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x20
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x21
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x22
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x23
        0x8
    .end array-data

    :array_10
    .array-data 4
        0x24
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x25
        0x2
    .end array-data

    :array_12
    .array-data 4
        0x26
        0x35
    .end array-data

    :array_13
    .array-data 4
        0x27
        0xb
    .end array-data

    :array_14
    .array-data 4
        0x28
        0xc
    .end array-data

    :array_15
    .array-data 4
        0x29
        0x36
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

    iget-object v1, p0, Lk0/dm;->h:Ljava/lang/Runnable;

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

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->h:I

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 10
    :goto_0
    iget-object v0, p0, Lk0/dm;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v4, :cond_18

    const/16 v8, 0x10

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    if-eq v2, v3, :cond_e

    if-eq v2, v13, :cond_d

    if-eq v2, v12, :cond_9

    if-eq v2, v11, :cond_7

    if-eq v2, v10, :cond_5

    const/16 v3, 0x38

    const/16 v10, 0x7f

    if-eq v2, v3, :cond_4

    if-eq v2, v10, :cond_3

    const/16 v3, 0x35

    const v4, 0xff00

    if-eq v2, v3, :cond_1

    const/16 v3, 0x36

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v2, 0x71

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x2

    .line 2
    aget-byte v10, v1, v10

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x3

    .line 3
    aget-byte v10, v1, v10

    and-int/2addr v10, v5

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x4

    .line 4
    aget-byte v10, v1, v10

    shl-int/lit8 v8, v10, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v8, v10

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v4

    or-int/2addr v8, v10

    add-int/lit8 v10, p2, 0x6

    aget-byte v10, v1, v10

    and-int/2addr v10, v5

    or-int/2addr v8, v10

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x7

    .line 5
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v4

    add-int/lit8 v10, p2, 0x8

    aget-byte v10, v1, v10

    and-int/2addr v10, v5

    or-int/2addr v8, v10

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x9

    .line 6
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 7
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x3

    .line 8
    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x4

    .line 9
    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v4

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    and-int/2addr v10, v5

    or-int/2addr v9, v10

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x6

    .line 10
    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v4

    add-int/lit8 v10, p2, 0x7

    aget-byte v10, v1, v10

    and-int/2addr v10, v5

    or-int/2addr v9, v10

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x9

    .line 11
    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x18

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    add-int/lit8 v10, p2, 0xa

    aget-byte v10, v1, v10

    shl-int/lit8 v8, v10, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v8, v10

    or-int/2addr v8, v9

    add-int/lit8 v9, p2, 0xb

    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v4, v9

    or-int/2addr v4, v8

    add-int/lit8 v8, p2, 0xc

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 12
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    .line 13
    iget v2, v0, Lk0/dm;->e:I

    if-ne v2, v7, :cond_2

    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    mul-int/2addr v1, v12

    add-int/lit16 v1, v1, 0x258

    .line 14
    :goto_0
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_9

    .line 15
    :cond_3
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_4
    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 16
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 17
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 18
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 19
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 20
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 21
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 22
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 23
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 24
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 25
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 26
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 27
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 28
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xf

    .line 29
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x10

    .line 30
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x11

    .line 31
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x12

    .line 32
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x13

    .line 33
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x14

    .line 34
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    aput v3, v2, v6

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x15

    .line 35
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x16

    .line 36
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_5
    add-int/lit8 v2, p2, 0x3

    .line 37
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    if-ne v1, v7, :cond_6

    goto :goto_1

    :cond_6
    move v6, v7

    :goto_1
    const/16 v1, 0x1080

    invoke-static {v2, v3, v6, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_9

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 38
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 39
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 40
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 41
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 42
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 43
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 44
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 45
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 46
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 47
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 48
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 49
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 50
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x5

    .line 51
    aget-byte v12, v1, v11

    and-int/2addr v12, v5

    if-nez v3, :cond_a

    if-nez v8, :cond_a

    if-nez v10, :cond_a

    if-nez v12, :cond_a

    .line 52
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 53
    :cond_a
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_b

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_b

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_b

    sget v6, Ll0/c0;->j:I

    if-eq v6, v12, :cond_c

    .line 54
    :cond_b
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_c

    .line 55
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 56
    sput v13, Ll0/c0;->k:I

    .line 57
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 58
    :cond_c
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 59
    sput v8, Ll0/c0;->h:I

    .line 60
    sput v10, Ll0/c0;->i:I

    .line 61
    sput v12, Ll0/c0;->j:I

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 63
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 64
    aget-byte v2, v1, v9

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 65
    aget-byte v1, v1, v11

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->v1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 69
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->v1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_e
    new-array v2, v7, [I

    add-int/lit8 v14, p2, 0x2

    .line 70
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v7

    aput v15, v2, v6

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 71
    aget-byte v10, v1, v14

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v2, v6

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 72
    aget-byte v9, v1, v14

    shr-int/2addr v9, v12

    and-int/2addr v9, v7

    aput v9, v2, v6

    const/16 v9, 0xc

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v9, v7, [I

    .line 73
    aget-byte v10, v1, v14

    shr-int/2addr v10, v3

    and-int/2addr v10, v7

    aput v10, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v9, v7, [I

    .line 74
    aget-byte v10, v1, v14

    shr-int/2addr v10, v4

    and-int/2addr v10, v7

    aput v10, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v9, v7, [I

    add-int/lit8 v10, p2, 0x3

    .line 75
    aget-byte v14, v1, v10

    shr-int/2addr v14, v13

    and-int/2addr v14, v7

    aput v14, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v7, [I

    .line 76
    aget-byte v14, v1, v10

    shr-int/2addr v14, v11

    and-int/2addr v14, v7

    aput v14, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v9, v7, [I

    .line 77
    aget-byte v10, v1, v10

    shr-int/2addr v10, v12

    and-int/2addr v10, v7

    aput v10, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v9, v7, [I

    add-int/lit8 v10, p2, 0x6

    .line 78
    aget-byte v14, v1, v10

    shr-int/lit8 v14, v14, 0x7

    and-int/2addr v14, v7

    aput v14, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 79
    aget-byte v9, v1, v10

    shr-int/2addr v9, v11

    and-int/2addr v9, v7

    aput v9, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 80
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v8, -0x3

    const/4 v9, -0x2

    const/16 v14, 0x1f

    const/16 v15, 0x1c

    const/16 v11, 0x1b

    if-eqz v2, :cond_13

    add-int/lit8 v2, p2, 0x4

    .line 81
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-nez v3, :cond_f

    new-array v2, v7, [I

    aput v9, v2, v6

    .line 82
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 83
    :cond_f
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-ne v3, v14, :cond_10

    new-array v2, v7, [I

    aput v8, v2, v6

    .line 84
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v3, v7, [I

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    aput v2, v3, v6

    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0x5

    .line 86
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-nez v3, :cond_11

    new-array v2, v7, [I

    aput v9, v2, v6

    .line 87
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    .line 88
    :cond_11
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-ne v3, v14, :cond_12

    new-array v2, v7, [I

    aput v8, v2, v6

    .line 89
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    new-array v3, v7, [I

    .line 90
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    aput v2, v3, v6

    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    add-int/lit8 v2, p2, 0x4

    .line 91
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-nez v3, :cond_14

    new-array v2, v7, [I

    aput v9, v2, v6

    .line 92
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 93
    :cond_14
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-ne v3, v14, :cond_15

    new-array v2, v7, [I

    aput v8, v2, v6

    .line 94
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_15
    new-array v3, v7, [I

    .line 95
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    aput v2, v3, v6

    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 v2, p2, 0x5

    .line 96
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-nez v3, :cond_16

    new-array v2, v7, [I

    aput v9, v2, v6

    .line 97
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    .line 98
    :cond_16
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-ne v3, v14, :cond_17

    new-array v2, v7, [I

    aput v8, v2, v6

    .line 99
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_17
    new-array v3, v7, [I

    .line 100
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    aput v2, v3, v6

    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v2, 0x11

    new-array v3, v7, [I

    .line 101
    aget-byte v8, v1, v10

    shr-int/2addr v8, v12

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v7, [I

    .line 102
    aget-byte v8, v1, v10

    shr-int/2addr v8, v13

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v7, [I

    .line 103
    aget-byte v8, v1, v10

    shr-int/2addr v8, v6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 104
    aget-byte v2, v1, v10

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    iput v2, v0, Lk0/dm;->e:I

    const/16 v2, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x7

    .line 105
    aget-byte v9, v1, v8

    shr-int/lit8 v4, v9, 0x2

    const/4 v9, 0x3

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    .line 106
    aget-byte v4, v1, v8

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v7, [I

    .line 107
    aget-byte v4, v1, v8

    shr-int/2addr v4, v13

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 108
    aget-byte v3, v1, v8

    const/4 v4, 0x6

    shr-int/2addr v3, v4

    and-int/2addr v3, v9

    aput v3, v2, v6

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 109
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 110
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 111
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 112
    iput v2, v0, Lk0/dm;->c:I

    move v2, v6

    .line 113
    :goto_7
    iget-object v3, v0, Lk0/dm;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1a

    .line 114
    iget v4, v0, Lk0/dm;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_19

    if-eqz v4, :cond_1a

    .line 115
    iput v2, v0, Lk0/dm;->b:I

    goto :goto_8

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    :goto_8
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_1b

    .line 116
    array-length v1, v3

    if-ge v2, v1, :cond_1d

    .line 117
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_1b
    if-nez v1, :cond_1d

    .line 118
    iget v1, v0, Lk0/dm;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1c

    if-eq v1, v5, :cond_1c

    .line 119
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 120
    :cond_1c
    iput v5, v0, Lk0/dm;->b:I

    :cond_1d
    :goto_9
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/dm;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/dm;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/dm;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x82

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

    const/4 p3, 0x4

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x87

    aput p4, p1, v4

    aput v3, p1, v3

    .line 1
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    new-array p1, p1, [I

    aput p4, p1, v2

    const/16 p4, 0xc6

    aput p4, p1, v4

    aput v1, p1, v3

    .line 2
    aget p4, p2, v2

    aput p4, p1, v1

    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x86

    aput p4, p1, v4

    aput v3, p1, v3

    .line 3
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
