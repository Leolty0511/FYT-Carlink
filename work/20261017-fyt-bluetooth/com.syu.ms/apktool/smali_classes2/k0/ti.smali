.class public Lk0/ti;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ti;->c:I

    const/16 v1, 0xb

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

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ti;->d:[[I

    .line 4
    iput v4, p0, Lk0/ti;->e:I

    .line 5
    iput v0, p0, Lk0/ti;->f:I

    .line 6
    iput v0, p0, Lk0/ti;->g:I

    .line 7
    iput v0, p0, Lk0/ti;->h:I

    .line 8
    iput v0, p0, Lk0/ti;->i:I

    .line 9
    iput v0, p0, Lk0/ti;->j:I

    .line 10
    iput v0, p0, Lk0/ti;->k:I

    .line 11
    iput v0, p0, Lk0/ti;->l:I

    .line 12
    iput v0, p0, Lk0/ti;->m:I

    .line 13
    new-instance v0, Lk0/ti$a;

    invoke-direct {v0, p0}, Lk0/ti$a;-><init>(Lk0/ti;)V

    iput-object v0, p0, Lk0/ti;->n:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/ti$b;

    invoke-direct {v0, p0}, Lk0/ti$b;-><init>(Lk0/ti;)V

    iput-object v0, p0, Lk0/ti;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/ti$c;

    invoke-direct {v0, p0}, Lk0/ti$c;-><init>(Lk0/ti;)V

    iput-object v0, p0, Lk0/ti;->p:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lk0/ti;->q:I

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
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
        0x15
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x87
        0x0
    .end array-data
.end method

.method public static synthetic c3(Lk0/ti;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/ti;->b3()V

    return-void
.end method

.method public static synthetic d3(Lk0/ti;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ti;->p:Ljava/lang/Runnable;

    return-object p0
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

    iget-object v1, p0, Lk0/ti;->o:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x85

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk0/ti;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    iput v1, v0, Lk0/mt;->b:I

    .line 10
    iput v1, v0, Lk0/mt;->c:I

    .line 11
    iput v1, v0, Lk0/mt;->d:I

    .line 12
    iput v2, v0, Lk0/mt;->o:I

    .line 13
    iput v1, v0, Lk0/mt;->h:I

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x85

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v6, :cond_1b

    const/16 v12, 0x20

    const/16 v13, 0xff

    if-eq v2, v12, :cond_16

    const/16 v12, 0x29

    const/16 v14, 0x80

    const v16, 0xff00

    if-eq v2, v12, :cond_12

    const/16 v12, 0x30

    if-eq v2, v12, :cond_11

    const/16 v12, 0x52

    if-eq v2, v12, :cond_10

    const/16 v12, 0x55

    const/16 v15, 0xb

    const/16 v4, 0xf

    if-eq v2, v12, :cond_5

    const/16 v12, 0x68

    if-eq v2, v12, :cond_4

    const/16 v12, 0x1d

    if-eq v2, v12, :cond_3

    const/16 v12, 0x1e

    if-eq v2, v12, :cond_2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/16 v2, 0x84

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v11

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 3
    aget-byte v1, v1, v5

    shr-int/2addr v1, v11

    and-int/2addr v1, v11

    aput v1, v2, v10

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    const/16 v2, 0x7e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 4
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v11

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v11, [I

    .line 5
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v11

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 6
    aget-byte v3, v1, v4

    shr-int/2addr v3, v9

    and-int/2addr v3, v11

    aput v3, v2, v10

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v11, [I

    .line 7
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v11

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v11, [I

    .line 8
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/2addr v6, v11

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v11, [I

    .line 9
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_2
    const/16 v2, 0x79

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 10
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 11
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 14
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 15
    :pswitch_3
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x33

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    const/16 v2, 0x3f5

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 16
    aget-byte v5, v1, v4

    and-int/2addr v5, v13

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 17
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    if-eqz v1, :cond_1

    .line 18
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    .line 19
    :cond_1
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    :pswitch_4
    const/16 v2, 0x70

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x3

    .line 20
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, v1, v6

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 21
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x7

    .line 22
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x9

    .line 23
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0xa

    .line 24
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v4

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v11, [I

    .line 25
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v4

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0xb

    .line 26
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v4

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v11, [I

    .line 27
    aget-byte v1, v1, v5

    shr-int/2addr v1, v7

    and-int/2addr v1, v4

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_5
    const/16 v2, 0x69

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 28
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v11, [I

    .line 29
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v11, [I

    .line 30
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v11, [I

    .line 31
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 32
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 33
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_6
    const/16 v2, 0x66

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 34
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 35
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x4

    .line 36
    aget-byte v1, v1, v3

    and-int/2addr v1, v13

    aput v1, v2, v10

    const/16 v1, 0x68

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_7
    const/16 v2, 0x63

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 37
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 38
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 39
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x8

    aget-byte v1, v1, v5

    and-int/2addr v1, v13

    or-int/2addr v1, v4

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_8
    const/16 v2, 0x87

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 40
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x2

    aget-byte v1, v1, v5

    and-int/2addr v1, v13

    or-int/2addr v1, v4

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    invoke-static {v3}, Ll0/c0;->v1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 42
    aget-byte v4, v1, v3

    and-int/2addr v4, v13

    invoke-static {v4}, Ll0/c0;->v1(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->S2(I)V

    add-int/lit8 v4, p2, 0x4

    .line 43
    aget-byte v10, v1, v4

    and-int/2addr v10, v13

    invoke-static {v10}, Ll0/c0;->v1(I)I

    move-result v10

    invoke-static {v10}, Lu0/d;->T2(I)V

    add-int/lit8 v5, p2, 0x5

    .line 44
    aget-byte v10, v1, v5

    and-int/2addr v10, v13

    invoke-static {v10}, Ll0/c0;->v1(I)I

    move-result v10

    invoke-static {v10}, Lu0/d;->U2(I)V

    .line 45
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->w1(I)I

    move-result v2

    and-int/2addr v2, v8

    .line 46
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    invoke-static {v3}, Ll0/c0;->w1(I)I

    move-result v3

    and-int/2addr v3, v8

    .line 47
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    invoke-static {v4}, Ll0/c0;->w1(I)I

    move-result v4

    and-int/2addr v4, v8

    .line 48
    aget-byte v1, v1, v5

    and-int/2addr v1, v13

    invoke-static {v1}, Ll0/c0;->w1(I)I

    move-result v1

    and-int/2addr v1, v8

    shl-int/2addr v3, v9

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x4

    or-int/2addr v2, v3

    shl-int/2addr v1, v6

    or-int/2addr v1, v2

    .line 49
    iput v1, v0, Lk0/ti;->j:I

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    invoke-static {v3}, Ll0/c0;->v1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 51
    aget-byte v4, v1, v3

    and-int/2addr v4, v13

    invoke-static {v4}, Ll0/c0;->v1(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->E2(I)V

    add-int/lit8 v4, p2, 0x4

    .line 52
    aget-byte v10, v1, v4

    and-int/2addr v10, v13

    invoke-static {v10}, Ll0/c0;->v1(I)I

    move-result v10

    invoke-static {v10}, Lu0/d;->F2(I)V

    add-int/lit8 v5, p2, 0x5

    .line 53
    aget-byte v10, v1, v5

    and-int/2addr v10, v13

    invoke-static {v10}, Ll0/c0;->v1(I)I

    move-result v10

    invoke-static {v10}, Lu0/d;->G2(I)V

    .line 54
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->w1(I)I

    move-result v2

    and-int/2addr v2, v8

    .line 55
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    invoke-static {v3}, Ll0/c0;->w1(I)I

    move-result v3

    and-int/2addr v3, v8

    .line 56
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    invoke-static {v4}, Ll0/c0;->w1(I)I

    move-result v4

    and-int/2addr v4, v8

    .line 57
    aget-byte v1, v1, v5

    and-int/2addr v1, v13

    invoke-static {v1}, Ll0/c0;->w1(I)I

    move-result v1

    and-int/2addr v1, v8

    shl-int/2addr v3, v9

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x4

    or-int/2addr v2, v3

    shl-int/2addr v1, v6

    or-int/2addr v1, v2

    .line 58
    iput v1, v0, Lk0/ti;->i:I

    goto/16 :goto_8

    :cond_4
    const/16 v2, 0x408

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 59
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0x2

    aget-byte v7, v1, v6

    and-int/2addr v7, v13

    or-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v11, [I

    .line 60
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    aget-byte v1, v1, v6

    and-int/2addr v1, v13

    or-int/2addr v1, v4

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    add-int/lit8 v5, p2, 0x3

    .line 62
    aget-byte v12, v1, v5

    and-int/2addr v12, v13

    add-int/lit8 v14, p2, 0x4

    .line 63
    aget-byte v14, v1, v14

    and-int/2addr v14, v13

    add-int/lit8 v16, p2, 0x5

    .line 64
    aget-byte v16, v1, v16

    add-int/lit8 v16, p2, 0x6

    .line 65
    aget-byte v15, v1, v16

    and-int/2addr v15, v13

    add-int/lit8 v16, p2, 0x7

    .line 66
    aget-byte v16, v1, v16

    add-int/lit8 v16, p2, 0x8

    .line 67
    aget-byte v6, v1, v16

    and-int/2addr v6, v13

    const-string v8, "persist.fyt.reversetemp"

    .line 68
    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 69
    aget-byte v3, v1, v5

    and-int/2addr v3, v13

    .line 70
    aget-byte v1, v1, v2

    and-int/lit16 v12, v1, 0xff

    :cond_6
    const/16 v1, 0x1b

    const/16 v2, 0x10

    if-eq v3, v2, :cond_8

    const/16 v2, 0x50

    if-eq v3, v2, :cond_7

    new-array v2, v11, [I

    aput v3, v2, v10

    .line 71
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    new-array v2, v11, [I

    const/4 v3, -0x3

    aput v3, v2, v10

    .line 72
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_8
    new-array v2, v11, [I

    const/4 v3, -0x2

    aput v3, v2, v10

    .line 73
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v1, 0x1c

    const/16 v2, 0x10

    if-eq v12, v2, :cond_a

    const/16 v2, 0x50

    if-eq v12, v2, :cond_9

    new-array v2, v11, [I

    aput v12, v2, v10

    .line 74
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v2, v11, [I

    const/4 v3, -0x3

    aput v3, v2, v10

    .line 75
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array v2, v11, [I

    const/4 v3, -0x2

    aput v3, v2, v10

    .line 76
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0x15

    new-array v2, v11, [I

    shr-int/lit8 v3, v14, 0x0

    and-int/2addr v3, v4

    aput v3, v2, v10

    .line 77
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v14, 0x4

    and-int/2addr v1, v4

    if-eq v1, v11, :cond_f

    if-eq v1, v9, :cond_e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    if-eq v1, v7, :cond_c

    const/4 v2, 0x6

    if-eq v1, v2, :cond_b

    move v2, v10

    move v3, v2

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_b
    move v3, v10

    move v5, v3

    move v2, v11

    goto :goto_3

    :cond_c
    move v3, v10

    move v2, v11

    move v5, v2

    goto :goto_3

    :cond_d
    move v2, v10

    move v3, v2

    move v5, v11

    goto :goto_3

    :cond_e
    move v2, v10

    move v3, v11

    goto :goto_2

    :cond_f
    move v2, v10

    move v5, v2

    move v3, v11

    :goto_3
    const/16 v7, 0x12

    new-array v8, v11, [I

    aput v2, v8, v10

    .line 78
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v11, [I

    aput v3, v7, v10

    .line 79
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v5, v2, v10

    const/16 v3, 0x14

    .line 80
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v11, [I

    aput v1, v3, v10

    .line 81
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v11, [I

    shr-int/lit8 v3, v15, 0x0

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 82
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    shr-int/lit8 v2, v15, 0x1

    and-int/2addr v2, v11

    aput v2, v1, v10

    const/16 v2, 0xb

    .line 83
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v11, [I

    shr-int/lit8 v3, v15, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 84
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v11, [I

    shr-int/lit8 v3, v15, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 85
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v11, [I

    shr-int/lit8 v3, v15, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 86
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    shr-int/lit8 v2, v15, 0x6

    and-int/2addr v2, v11

    aput v2, v1, v10

    const/16 v2, 0x10

    .line 87
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    shr-int/lit8 v2, v15, 0x7

    and-int/2addr v2, v11

    aput v2, v1, v10

    .line 88
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x26

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x0

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 89
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x1

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 90
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 91
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v11

    .line 92
    aget-byte v1, v1, v2

    const/4 v2, 0x6

    shr-int/2addr v1, v2

    and-int/2addr v1, v11

    shl-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v9

    or-int/2addr v1, v2

    const/4 v2, 0x3

    and-int/2addr v1, v2

    .line 93
    iput v1, v0, Lk0/ti;->f:I

    goto/16 :goto_8

    .line 94
    :cond_11
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 95
    aget-byte v3, v1, v2

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 96
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x8

    and-int v5, v5, v16

    and-int/2addr v3, v13

    or-int/2addr v3, v5

    const v5, 0x8000

    and-int v6, v3, v5

    if-ne v6, v5, :cond_14

    const/high16 v5, 0x10000

    sub-int/2addr v5, v3

    .line 97
    div-int/lit16 v3, v5, 0x11c

    const/16 v5, 0x14

    if-le v3, v5, :cond_13

    move v3, v5

    :cond_13
    rsub-int/lit8 v15, v3, 0x14

    goto :goto_4

    :cond_14
    const/16 v5, 0x14

    .line 98
    div-int/lit16 v3, v3, 0x11c

    if-le v3, v5, :cond_15

    move v3, v5

    :cond_15
    add-int/lit8 v15, v3, 0x14

    .line 99
    :goto_4
    aget-byte v2, v1, v2

    aget-byte v1, v1, v4

    const/16 v3, 0x1640

    invoke-static {v2, v1, v11, v3}, Lk0/qt;->i(IIZI)V

    mul-int/2addr v15, v14

    .line 100
    div-int/2addr v15, v5

    iput v15, v0, Lk0/ti;->h:I

    if-le v15, v13, :cond_1e

    .line 101
    iput v13, v0, Lk0/ti;->h:I

    goto/16 :goto_8

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 102
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 103
    aget-byte v1, v1, v3

    and-int/2addr v2, v13

    .line 104
    iput v2, v0, Lk0/ti;->c:I

    move v2, v10

    .line 105
    :goto_5
    iget-object v3, v0, Lk0/ti;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_18

    .line 106
    iget v4, v0, Lk0/ti;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v10

    if-ne v4, v5, :cond_17

    if-eqz v4, :cond_18

    .line 107
    iput v2, v0, Lk0/ti;->b:I

    goto :goto_6

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    :goto_6
    and-int/2addr v1, v13

    if-eqz v1, :cond_19

    .line 108
    array-length v1, v3

    if-ge v2, v1, :cond_1e

    .line 109
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 110
    :cond_19
    iget v1, v0, Lk0/ti;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1a

    if-eq v1, v13, :cond_1a

    .line 111
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 112
    :cond_1a
    iput v13, v0, Lk0/ti;->b:I

    goto/16 :goto_8

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 113
    aget-byte v2, v1, v2

    const-string v4, "persist.syu.reversefrontdoor"

    .line 114
    invoke-static {v4, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1c

    new-array v4, v11, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v11

    aput v6, v4, v10

    .line 115
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v11

    aput v6, v4, v10

    .line 116
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1c
    new-array v4, v11, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v11

    aput v6, v4, v10

    .line 117
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v11

    aput v6, v4, v10

    .line 118
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    :goto_7
    new-array v4, v11, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v11

    aput v6, v4, v10

    .line 119
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v11

    aput v8, v4, v10

    const/4 v12, 0x3

    .line 120
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v11

    aput v12, v4, v10

    .line 121
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v11

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v11

    shl-int/2addr v2, v11

    or-int/2addr v2, v4

    shl-int/lit8 v4, v8, 0x2

    or-int/2addr v2, v4

    const/4 v4, 0x3

    shl-int/lit8 v5, v6, 0x3

    or-int/2addr v2, v5

    shl-int/lit8 v5, v12, 0x4

    or-int/2addr v2, v5

    .line 122
    iput v2, v0, Lk0/ti;->k:I

    .line 123
    sget v2, Lk0/nt;->c:I

    if-ne v2, v3, :cond_1e

    .line 124
    iget v2, v0, Lk0/ti;->m:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    shr-int/2addr v4, v11

    and-int/2addr v4, v11

    if-eq v2, v4, :cond_1e

    .line 125
    aget-byte v1, v1, v3

    shr-int/2addr v1, v11

    and-int/2addr v1, v11

    iput v1, v0, Lk0/ti;->m:I

    if-ne v1, v11, :cond_1d

    .line 126
    invoke-static {v11}, Lk0/qt;->a(I)V

    .line 127
    iget v1, v0, Lk0/ti;->e:I

    const/16 v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lk0/ti;->e:I

    goto :goto_8

    .line 128
    :cond_1d
    invoke-static {v10}, Lk0/qt;->a(I)V

    .line 129
    iget v1, v0, Lk0/ti;->e:I

    and-int/lit16 v1, v1, 0xef

    iput v1, v0, Lk0/ti;->e:I

    :cond_1e
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
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

    iget-object v1, p0, Lk0/ti;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ti;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

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
    .locals 5

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    const/4 p4, 0x3

    const/4 v0, 0x2

    const/16 v1, 0xe3

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/16 v4, 0x3eb

    if-eq p1, v4, :cond_1

    const/16 v4, 0x3ed

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v2, [I

    aput v1, p1, p3

    const/16 v1, -0x39

    aput v1, p1, v3

    aput v3, p1, v0

    .line 1
    aget p2, p2, p3

    add-int/2addr p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 3
    array-length p1, p2

    if-lez p1, :cond_4

    new-array p1, v2, [I

    aput v1, p1, p3

    .line 4
    aget p3, p2, p3

    int-to-byte p3, p3

    aput p3, p1, v3

    aput v3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 5
    array-length p1, p2

    if-lez p1, :cond_4

    .line 6
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/ti;->a3(I)V

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data
.end method

.method public final a3(I)V
    .locals 6

    .line 1
    iget v0, p0, Lk0/ti;->q:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    iput v0, p0, Lk0/ti;->q:I

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

.method public final b3()V
    .locals 12

    .line 1
    iget v0, p0, Lk0/ti;->e:I

    add-int/lit8 v1, v0, 0xb

    iget v2, p0, Lk0/ti;->f:I

    add-int/2addr v1, v2

    iget v3, p0, Lk0/ti;->g:I

    add-int/2addr v1, v3

    iget v4, p0, Lk0/ti;->h:I

    add-int/2addr v1, v4

    iget v5, p0, Lk0/ti;->i:I

    add-int/2addr v1, v5

    iget v6, p0, Lk0/ti;->j:I

    add-int/2addr v1, v6

    iget v7, p0, Lk0/ti;->k:I

    add-int/2addr v1, v7

    iget v8, p0, Lk0/ti;->l:I

    add-int/2addr v1, v8

    xor-int/lit16 v1, v1, 0xff

    const/16 v9, 0xd

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0x12

    aput v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x2e

    aput v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x3

    aput v11, v9, v10

    const/16 v10, 0x8

    aput v10, v9, v11

    const/4 v11, 0x4

    aput v0, v9, v11

    const/4 v0, 0x5

    aput v2, v9, v0

    const/4 v0, 0x6

    aput v3, v9, v0

    const/4 v0, 0x7

    aput v4, v9, v0

    aput v5, v9, v10

    const/16 v0, 0x9

    aput v6, v9, v0

    const/16 v0, 0xa

    aput v7, v9, v0

    const/16 v0, 0xb

    aput v8, v9, v0

    const/16 v0, 0xc

    aput v1, v9, v0

    .line 2
    invoke-static {v9}, Lz/k;->s([I)V

    return-void
.end method
