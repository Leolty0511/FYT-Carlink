.class public Lk0/vl;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static l:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Lo1/g0;

.field public final g:I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/vl;->c:I

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/vl;->d:[[I

    .line 4
    iput v0, p0, Lk0/vl;->e:I

    .line 5
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/vl;->f:Lo1/g0;

    .line 6
    iput v4, p0, Lk0/vl;->g:I

    .line 7
    iput v0, p0, Lk0/vl;->h:I

    .line 8
    new-instance v0, Lk0/vl$a;

    invoke-direct {v0, p0}, Lk0/vl$a;-><init>(Lk0/vl;)V

    iput-object v0, p0, Lk0/vl;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/vl$b;

    invoke-direct {v0, p0}, Lk0/vl$b;-><init>(Lk0/vl;)V

    iput-object v0, p0, Lk0/vl;->j:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lk0/vl;->k:I

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
.end method

.method public static synthetic b3(Lk0/vl;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/vl;->f:Lo1/g0;

    return-object p0
.end method

.method public static synthetic c3(Lk0/vl;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vl;->d3(I)V

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
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lk0/vl;->e:I

    .line 2
    iget-object v0, p0, Lk0/vl;->f:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 3
    iget-object v0, p0, Lk0/vl;->f:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/vl;->d3(I)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v1, v0, Lk0/mt;->e:I

    .line 6
    iput v1, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iput v2, v0, Lk0/mt;->l:I

    .line 9
    iput v1, v0, Lk0/mt;->g:I

    .line 10
    iput v2, v0, Lk0/mt;->o:I

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/vl;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_21

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_20

    const/16 v3, 0x20

    const/4 v9, 0x3

    if-eq v2, v3, :cond_1b

    const/16 v10, 0x24

    const/4 v11, 0x2

    if-eq v2, v10, :cond_19

    const/16 v10, 0x29

    const/16 v12, 0xf

    if-eq v2, v10, :cond_17

    const/16 v10, 0x31

    if-eq v2, v10, :cond_16

    const/16 v10, 0x55

    const/16 v13, 0x40

    const/4 v14, 0x6

    if-eq v2, v10, :cond_8

    const/16 v3, 0x60

    if-eq v2, v3, :cond_2

    if-eq v2, v13, :cond_1

    const/16 v3, 0x41

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v2, 0x72

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 6
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 7
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 8
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 9
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 10
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 11
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xd

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xf

    .line 15
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1
    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 16
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-eq v2, v8, :cond_7

    if-eq v2, v11, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    goto/16 :goto_9

    :cond_3
    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 18
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 19
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 20
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_4
    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 21
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 22
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 23
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_5
    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 24
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 25
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 26
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_6
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 27
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 28
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 29
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_7
    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 30
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 31
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 32
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    add-int/lit8 v10, p2, 0x3

    .line 34
    aget-byte v15, v1, v10

    and-int/2addr v15, v6

    const-string v14, "persist.fyt.reversetemp"

    .line 35
    invoke-static {v14, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 36
    aget-byte v2, v1, v2

    and-int/lit16 v4, v2, 0xff

    .line 37
    aget-byte v2, v1, v10

    and-int/lit16 v15, v2, 0xff

    :cond_9
    const/4 v2, -0x2

    const/16 v6, 0x50

    const/16 v10, 0x10

    const/16 v14, 0x1b

    if-eq v4, v10, :cond_c

    if-eq v4, v6, :cond_b

    if-lt v4, v3, :cond_a

    if-gt v4, v13, :cond_a

    new-array v9, v8, [I

    aput v4, v9, v7

    .line 38
    invoke-static {v14, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_a
    new-array v4, v8, [I

    const/4 v9, -0x1

    aput v9, v4, v7

    .line 39
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_b
    new-array v4, v8, [I

    const/4 v9, -0x3

    aput v9, v4, v7

    .line 40
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_c
    new-array v4, v8, [I

    aput v2, v4, v7

    .line 41
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v4, 0x1c

    if-eq v15, v10, :cond_f

    if-eq v15, v6, :cond_e

    if-lt v15, v3, :cond_d

    if-gt v15, v13, :cond_d

    new-array v2, v8, [I

    aput v15, v2, v7

    .line 42
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_d
    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v7

    .line 43
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_e
    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 44
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_f
    new-array v3, v8, [I

    aput v2, v3, v7

    .line 45
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x15

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 46
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 47
    aget-byte v2, v1, v4

    shr-int/2addr v2, v5

    and-int/2addr v2, v12

    if-eq v2, v8, :cond_14

    if-eq v2, v11, :cond_13

    const/4 v3, 0x3

    if-eq v2, v3, :cond_12

    if-eq v2, v5, :cond_11

    const/4 v3, 0x6

    if-eq v2, v3, :cond_10

    move v2, v7

    move v3, v2

    :goto_2
    move v4, v3

    goto :goto_3

    :cond_10
    move v3, v7

    move v4, v3

    move v2, v8

    goto :goto_3

    :cond_11
    move v3, v7

    move v2, v8

    move v4, v2

    goto :goto_3

    :cond_12
    move v2, v7

    move v3, v2

    move v4, v8

    goto :goto_3

    :cond_13
    move v2, v7

    move v3, v8

    goto :goto_2

    :cond_14
    move v2, v7

    move v4, v2

    move v3, v8

    :goto_3
    const/16 v5, 0x12

    new-array v6, v8, [I

    aput v2, v6, v7

    .line 48
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 49
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    aput v4, v3, v7

    .line 50
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 51
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    const/4 v3, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 52
    aget-byte v3, v1, v4

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0xd

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 53
    aget-byte v3, v1, v4

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v3, v8, [I

    .line 54
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 55
    aget-byte v2, v1, v4

    const/4 v3, 0x3

    shr-int/2addr v2, v3

    and-int/2addr v2, v8

    const/16 v3, 0xc

    if-ne v2, v8, :cond_15

    new-array v2, v8, [I

    aput v8, v2, v7

    .line 56
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_15
    new-array v2, v8, [I

    aput v7, v2, v7

    .line 57
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v8, [I

    .line 58
    aget-byte v3, v1, v4

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 59
    aget-byte v1, v1, v4

    const/4 v3, 0x6

    shr-int/2addr v1, v3

    and-int/2addr v1, v8

    aput v1, v2, v7

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 60
    :cond_16
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_17
    add-int/lit8 v2, p2, 0x3

    .line 61
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x168

    if-eqz v3, :cond_18

    add-int/lit8 v3, p2, 0x2

    .line 62
    aget-byte v3, v1, v3

    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-static {v3, v1, v7, v4}, Lk0/qt;->j(IIII)V

    goto/16 :goto_9

    .line 63
    :cond_18
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xf00

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    or-int/2addr v1, v2

    rsub-int v1, v1, 0x1000

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v12

    .line 64
    invoke-static {v2, v1, v8, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 66
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1a

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 67
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 68
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_1a
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 69
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 70
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/4 v3, 0x3

    .line 71
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v6, v1, 0x5

    and-int/2addr v6, v8

    aput v6, v2, v7

    .line 72
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 73
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1b
    move v3, v9

    add-int/lit8 v2, p2, 0x2

    .line 74
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 75
    aget-byte v1, v1, v3

    and-int/2addr v2, v6

    .line 76
    iput v2, v0, Lk0/vl;->c:I

    move v2, v7

    .line 77
    :goto_6
    iget-object v3, v0, Lk0/vl;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1d

    .line 78
    iget v4, v0, Lk0/vl;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_1c

    if-eqz v4, :cond_1d

    .line 79
    iput v2, v0, Lk0/vl;->b:I

    goto :goto_7

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1d
    :goto_7
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_1e

    .line 80
    array-length v1, v3

    if-ge v2, v1, :cond_25

    .line 81
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_1e
    if-nez v1, :cond_25

    .line 82
    iget v1, v0, Lk0/vl;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1f

    if-eq v1, v6, :cond_1f

    .line 83
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 84
    :cond_1f
    iput v6, v0, Lk0/vl;->b:I

    goto/16 :goto_9

    .line 85
    :cond_20
    iget v2, v0, Lk0/vl;->e:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 89
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 91
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 92
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 93
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->k1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_21
    add-int/lit8 v2, p2, 0x2

    .line 94
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v9, p2, 0x3

    .line 95
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    add-int/lit8 v11, p2, 0x4

    .line 96
    aget-byte v12, v1, v11

    and-int/2addr v12, v6

    add-int/lit8 v4, p2, 0x5

    .line 97
    aget-byte v13, v1, v4

    and-int/2addr v13, v6

    if-nez v3, :cond_22

    if-nez v10, :cond_22

    if-nez v12, :cond_22

    if-nez v13, :cond_22

    .line 98
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_8

    .line 99
    :cond_22
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_23

    sget v7, Ll0/c0;->h:I

    if-ne v7, v10, :cond_23

    sget v7, Ll0/c0;->i:I

    if-ne v7, v12, :cond_23

    sget v7, Ll0/c0;->j:I

    if-eq v7, v13, :cond_24

    .line 100
    :cond_23
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_24

    .line 101
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 102
    sput v5, Ll0/c0;->k:I

    .line 103
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 104
    :cond_24
    :goto_8
    sput v3, Ll0/c0;->g:I

    .line 105
    sput v10, Ll0/c0;->h:I

    .line 106
    sput v12, Ll0/c0;->i:I

    .line 107
    sput v13, Ll0/c0;->j:I

    .line 108
    iget v3, v0, Lk0/vl;->e:I

    packed-switch v3, :pswitch_data_1

    .line 109
    :pswitch_2
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 110
    aget-byte v2, v1, v9

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 111
    aget-byte v2, v1, v11

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 112
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto :goto_9

    .line 113
    :pswitch_3
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 114
    aget-byte v2, v1, v9

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 115
    aget-byte v2, v1, v11

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 116
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->k1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_25
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x93
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x93
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/vl;->f:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vl;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/vl;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x81

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
    .locals 6

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, p3

    const/16 v5, 0xff

    if-ne p1, v5, :cond_1

    .line 2
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/vl;->d3(I)V

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    aput v1, p1, p3

    const/16 v1, 0x84

    aput v1, p1, v4

    aput v3, p1, v3

    .line 3
    aget p3, p2, p3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    aput v1, p1, p3

    const/16 v1, 0x90

    aput v1, p1, v4

    aput v3, p1, v3

    .line 4
    aget p3, p2, p3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_3
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/vl;->a3(I)V

    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 6

    .line 1
    iget v0, p0, Lk0/vl;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    iput v0, p0, Lk0/vl;->k:I

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x33

    aput v4, v3, v1

    const/4 v1, 0x4

    aput v1, v3, v2

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput p1, v3, v2

    if-nez v0, :cond_0

    const/16 p1, 0x22

    goto :goto_0

    :cond_0
    const/16 p1, 0xcc

    :goto_0
    aput p1, v3, v1

    const/4 p1, 0x5

    aput v5, v3, p1

    const/4 p1, 0x6

    aput v5, v3, p1

    .line 2
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/vl;->l:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x80

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xee

    aput v3, v1, v0

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v3, 0x3

    aput p1, v1, v3

    const/4 p1, 0x4

    aput v2, v1, p1

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/vl;->f:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/vl;->l:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/vl;->f:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
