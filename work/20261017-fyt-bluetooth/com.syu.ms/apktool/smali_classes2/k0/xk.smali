.class public Lk0/xk;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/xk;->c:I

    const/16 v0, 0x9

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

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/xk;->d:[[I

    .line 4
    new-instance v0, Lk0/xk$a;

    invoke-direct {v0, p0}, Lk0/xk$a;-><init>(Lk0/xk;)V

    iput-object v0, p0, Lk0/xk;->e:Ljava/lang/Runnable;

    .line 5
    iput v3, p0, Lk0/xk;->f:I

    .line 6
    new-instance v0, Lk0/xk$b;

    invoke-direct {v0, p0}, Lk0/xk$b;-><init>(Lk0/xk;)V

    iput-object v0, p0, Lk0/xk;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/xk$c;

    invoke-direct {v0, p0}, Lk0/xk$c;-><init>(Lk0/xk;)V

    iput-object v0, p0, Lk0/xk;->h:Ljava/lang/Runnable;

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
        0xc
        0x2
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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->q:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/xk;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v0, p0, Lk0/xk;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    if-eq v2, v3, :cond_19

    const/16 v3, 0x11

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_12

    const/16 v3, 0x31

    const/16 v7, 0xf

    const/16 v8, 0xb

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-eq v2, v3, :cond_7

    const/16 v3, 0x41

    if-eq v2, v3, :cond_3

    const/16 v3, 0x48

    if-eq v2, v3, :cond_2

    const/16 v3, 0x61

    const/16 v8, 0x62

    if-eq v2, v3, :cond_1

    if-eq v2, v8, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v2, 0x81

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v8, v1, v4

    shr-int/2addr v8, v11

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v6, [I

    .line 3
    aget-byte v8, v1, v4

    shr-int/2addr v8, v5

    and-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v6, [I

    .line 4
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v6, [I

    .line 5
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v12

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 6
    aget-byte v7, v1, v4

    shr-int/2addr v7, v10

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v6, [I

    .line 7
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v6, [I

    .line 8
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v6, [I

    .line 9
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x2

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v6, [I

    .line 10
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v12

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1
    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 11
    aget-byte v7, v1, v3

    shr-int/lit8 v7, v7, 0x2

    and-int/2addr v7, v12

    aput v7, v2, v5

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v7, v6, [I

    .line 12
    aget-byte v8, v1, v3

    shr-int/2addr v8, v6

    and-int/2addr v8, v6

    aput v8, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v7, v6, [I

    .line 13
    aget-byte v8, v1, v3

    shr-int/2addr v8, v5

    and-int/2addr v8, v6

    aput v8, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 14
    aget-byte v13, v1, v8

    shr-int/2addr v13, v11

    and-int/2addr v13, v6

    aput v13, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v7, v6, [I

    .line 15
    aget-byte v13, v1, v8

    shr-int/2addr v13, v12

    and-int/2addr v13, v6

    aput v13, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v7, v6, [I

    .line 16
    aget-byte v13, v1, v8

    shr-int/lit8 v13, v13, 0x2

    and-int/2addr v13, v6

    aput v13, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v7, v6, [I

    .line 17
    aget-byte v13, v1, v8

    shr-int/2addr v13, v6

    and-int/2addr v13, v6

    aput v13, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v7, v6, [I

    .line 18
    aget-byte v13, v1, v8

    shr-int/2addr v13, v5

    and-int/2addr v13, v6

    aput v13, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v7, v6, [I

    add-int/lit8 v13, p2, 0x4

    .line 19
    aget-byte v13, v1, v13

    shr-int/2addr v13, v5

    and-int/2addr v13, v4

    aput v13, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v7, v6, [I

    add-int/lit8 v13, p2, 0x5

    .line 20
    aget-byte v13, v1, v13

    shl-int/lit8 v13, v13, 0x8

    const v14, 0xff00

    and-int/2addr v13, v14

    add-int/lit8 v15, p2, 0x6

    aget-byte v15, v1, v15

    and-int/2addr v15, v4

    or-int/2addr v13, v15

    aput v13, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v7, v6, [I

    add-int/lit8 v13, p2, 0x7

    .line 21
    aget-byte v13, v1, v13

    shl-int/lit8 v13, v13, 0x8

    and-int/2addr v13, v14

    add-int/lit8 v14, p2, 0x8

    aget-byte v14, v1, v14

    and-int/2addr v4, v14

    or-int/2addr v4, v13

    aput v4, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v6, [I

    .line 22
    aget-byte v7, v1, v3

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v6, [I

    .line 23
    aget-byte v3, v1, v3

    shr-int/2addr v3, v11

    and-int/lit8 v3, v3, 0x7

    aput v3, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v6, [I

    .line 24
    aget-byte v4, v1, v8

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v6, [I

    .line 25
    aget-byte v4, v1, v8

    shr-int/2addr v4, v10

    and-int/2addr v4, v12

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 26
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v6, [I

    .line 27
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v6, [I

    .line 28
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v12

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v6, [I

    .line 29
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v6, [I

    .line 30
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x2

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v6, [I

    .line 31
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v6, [I

    .line 32
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_2
    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 33
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 34
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 35
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 36
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 37
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x9

    .line 38
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xa

    .line 39
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0xb

    .line 40
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 42
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 43
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 44
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 45
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0x7

    .line 46
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    add-int/lit8 v9, p2, 0x8

    .line 47
    aget-byte v10, v1, v9

    and-int/2addr v10, v4

    add-int/lit8 v12, p2, 0x9

    .line 48
    aget-byte v13, v1, v12

    and-int/2addr v13, v4

    if-ne v3, v4, :cond_4

    if-ne v8, v4, :cond_4

    if-ne v10, v4, :cond_4

    if-ne v13, v4, :cond_4

    .line 49
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 50
    :cond_4
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_5

    sget v5, Ll0/c0;->h:I

    if-ne v5, v8, :cond_5

    sget v5, Ll0/c0;->i:I

    if-ne v5, v10, :cond_5

    sget v5, Ll0/c0;->j:I

    if-eq v5, v13, :cond_6

    .line 51
    :cond_5
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_6

    .line 52
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 53
    sput v11, Ll0/c0;->k:I

    .line 54
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 55
    :cond_6
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 56
    sput v8, Ll0/c0;->h:I

    .line 57
    sput v10, Ll0/c0;->i:I

    .line 58
    sput v13, Ll0/c0;->j:I

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 60
    aget-byte v2, v1, v7

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 61
    aget-byte v2, v1, v9

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 62
    aget-byte v1, v1, v12

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    .line 64
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    add-int/lit8 v13, p2, 0x4

    .line 65
    aget-byte v13, v1, v13

    and-int/2addr v13, v4

    add-int/lit8 v14, p2, 0x5

    .line 66
    aget-byte v14, v1, v14

    and-int/2addr v14, v4

    add-int/lit8 v15, p2, 0x6

    .line 67
    aget-byte v15, v1, v15

    and-int/2addr v15, v4

    add-int/lit8 v16, p2, 0x7

    .line 68
    aget-byte v10, v1, v16

    and-int/2addr v10, v4

    new-array v4, v6, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v4, v5

    const/16 v9, 0xa

    .line 69
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v9, v6, [I

    shr-int/lit8 v18, v2, 0x3

    and-int/lit8 v18, v18, 0x1

    aput v18, v9, v5

    .line 70
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x3e

    new-array v9, v6, [I

    shr-int/lit8 v2, v2, 0x2

    and-int/2addr v2, v6

    aput v2, v9, v5

    .line 71
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v4, v6, [I

    shr-int/lit8 v9, v3, 0x7

    and-int/2addr v9, v6

    aput v9, v4, v5

    .line 72
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v3, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 73
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x23

    new-array v4, v6, [I

    shr-int/lit8 v9, v3, 0x5

    and-int/2addr v9, v6

    aput v9, v4, v5

    .line 74
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v3, v11

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/16 v3, 0xc

    .line 75
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v13, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 76
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v6, [I

    shr-int/lit8 v7, v13, 0x5

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 77
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v4, v6, [I

    shr-int/lit8 v7, v13, 0x0

    and-int/2addr v7, v12

    aput v7, v4, v5

    .line 78
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v4, v6, [I

    shr-int/lit8 v7, v13, 0x2

    and-int/2addr v7, v12

    aput v7, v4, v5

    .line 79
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v4, v6, [I

    shr-int/lit8 v7, v14, 0x4

    and-int/2addr v7, v12

    aput v7, v4, v5

    .line 80
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v4, v6, [I

    const/4 v7, 0x6

    shr-int/lit8 v9, v14, 0x6

    and-int/2addr v9, v12

    aput v9, v4, v5

    .line 81
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    if-eq v15, v12, :cond_c

    const/4 v2, 0x5

    if-eq v15, v2, :cond_b

    if-eq v15, v7, :cond_a

    if-eq v15, v8, :cond_9

    if-eq v15, v3, :cond_8

    move v2, v5

    move v3, v2

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_8
    move v3, v5

    move v2, v6

    move v4, v2

    goto :goto_2

    :cond_9
    move v3, v5

    move v4, v3

    move v2, v6

    goto :goto_2

    :cond_a
    move v2, v5

    move v4, v2

    move v3, v6

    goto :goto_2

    :cond_b
    move v2, v5

    move v3, v6

    goto :goto_1

    :cond_c
    move v2, v5

    move v3, v2

    move v4, v6

    :goto_2
    const/16 v7, 0x12

    new-array v8, v6, [I

    aput v2, v8, v5

    .line 82
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v6, [I

    aput v3, v7, v5

    .line 83
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    aput v4, v3, v5

    .line 84
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    const/16 v4, 0xff

    and-int/lit16 v7, v10, 0xff

    aput v7, v3, v5

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 86
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0x9

    .line 87
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    const-string v9, "persist.fyt.reversetemp"

    .line 88
    invoke-static {v9, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 89
    aget-byte v3, v1, v7

    and-int/2addr v3, v4

    .line 90
    aget-byte v1, v1, v2

    and-int/lit16 v8, v1, 0xff

    :cond_d
    const/4 v1, -0x3

    const/4 v2, -0x2

    const/16 v4, 0xfe

    const/16 v7, 0x1b

    if-ne v3, v4, :cond_e

    new-array v3, v6, [I

    aput v2, v3, v5

    .line 91
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    const/16 v9, 0xff

    if-ne v3, v9, :cond_f

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 92
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_f
    new-array v9, v6, [I

    const/4 v10, 0x5

    mul-int/2addr v3, v10

    aput v3, v9, v5

    .line 93
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v3, 0x1c

    if-ne v8, v4, :cond_10

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 94
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_10
    const/16 v2, 0xff

    if-ne v8, v2, :cond_11

    new-array v2, v6, [I

    aput v1, v2, v5

    .line 95
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_11
    new-array v1, v6, [I

    const/4 v2, 0x5

    mul-int/2addr v8, v2

    aput v8, v1, v5

    .line 96
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_12
    add-int/lit8 v2, p2, 0x4

    .line 97
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 98
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 99
    iput v2, v0, Lk0/xk;->c:I

    move v2, v5

    .line 100
    :goto_4
    iget-object v4, v0, Lk0/xk;->d:[[I

    array-length v7, v4

    if-ge v2, v7, :cond_14

    .line 101
    iget v7, v0, Lk0/xk;->c:I

    aget-object v8, v4, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_13

    if-eqz v7, :cond_14

    .line 102
    iput v2, v0, Lk0/xk;->b:I

    goto :goto_5

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    :goto_5
    const/16 v7, 0xff

    and-int/2addr v3, v7

    if-ne v3, v6, :cond_15

    .line 103
    array-length v3, v4

    if-ge v2, v3, :cond_18

    .line 104
    aget-object v2, v4, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_15
    if-nez v3, :cond_18

    .line 105
    iget v2, v0, Lk0/xk;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_16

    const/16 v3, 0xff

    if-eq v2, v3, :cond_17

    .line 106
    aget-object v2, v4, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_16
    const/16 v3, 0xff

    .line 107
    :cond_17
    :goto_6
    iput v3, v0, Lk0/xk;->b:I

    goto :goto_8

    :cond_18
    :goto_7
    const/16 v3, 0xff

    :goto_8
    add-int/lit8 v2, p2, 0x9

    .line 108
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_9

    .line 109
    :cond_19
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_9
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/xk;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/xk;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/xk;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x89

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

    const/4 p3, 0x6

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput p4, p1, v3

    aput v4, p1, v5

    const/16 p3, 0x9a

    aput p3, p1, v4

    .line 1
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p4, p1, v3

    aput v4, p1, v5

    const/16 p3, 0x3d

    aput p3, p1, v4

    .line 2
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [I

    aput p4, p1, v3

    aput v2, p1, v5

    const/16 p3, 0x6a

    aput p3, p1, v4

    aput v0, p1, v2

    aput v5, p1, v1

    .line 3
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p4, p1, v3

    aput v1, p1, v5

    const/16 p4, 0x6f

    aput p4, p1, v4

    .line 4
    aget p4, p2, v3

    aput p4, p1, v2

    aget p4, p2, v5

    aput p4, p1, v1

    aget p4, p2, v4

    aput p4, p1, v0

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
