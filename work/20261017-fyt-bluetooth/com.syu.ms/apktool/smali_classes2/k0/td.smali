.class public Lk0/td;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[[I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:B

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2
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

    const/4 v5, 0x6

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v5, 0x7

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v5, 0x8

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v5, 0x9

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v5, 0xa

    aput-object v2, v0, v5

    iput-object v0, p0, Lk0/td;->b:[[I

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_b

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lk0/td;->d:[[I

    .line 4
    iput v3, p0, Lk0/td;->e:I

    .line 5
    iput v3, p0, Lk0/td;->f:I

    .line 6
    new-instance v0, Lk0/td$a;

    invoke-direct {v0, p0}, Lk0/td$a;-><init>(Lk0/td;)V

    iput-object v0, p0, Lk0/td;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/td$b;

    invoke-direct {v0, p0}, Lk0/td$b;-><init>(Lk0/td;)V

    iput-object v0, p0, Lk0/td;->h:Ljava/lang/Runnable;

    .line 8
    iput-byte v4, p0, Lk0/td;->i:B

    .line 9
    new-instance v0, Lk0/td$c;

    invoke-direct {v0, p0}, Lk0/td$c;-><init>(Lk0/td;)V

    iput-object v0, p0, Lk0/td;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/td$d;

    invoke-direct {v0, p0}, Lk0/td$d;-><init>(Lk0/td;)V

    iput-object v0, p0, Lk0/td;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/td$e;

    invoke-direct {v0, p0}, Lk0/td$e;-><init>(Lk0/td;)V

    iput-object v0, p0, Lk0/td;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/td$f;

    invoke-direct {v0, p0}, Lk0/td$f;-><init>(Lk0/td;)V

    iput-object v0, p0, Lk0/td;->m:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_7
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_8
    .array-data 4
        0x3f
        0x19
    .end array-data

    :array_9
    .array-data 4
        0x5a
        0xc
    .end array-data

    :array_a
    .array-data 4
        0x18
        0xd
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x8
    .end array-data
.end method

.method public static synthetic d3(Lk0/td;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/td;->c3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/td;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/td;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lk0/td;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/td;->h3(III)V

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

    iput v0, p0, Lk0/td;->f:I

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 7
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v0, [I

    .line 8
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->s([I)V

    const/4 v2, 0x5

    new-array v2, v2, [I

    .line 9
    fill-array-data v2, :array_2

    invoke-static {v2}, Lz/k;->s([I)V

    .line 10
    sget-object v2, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/td;->m:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v2, p0, Lk0/td;->h:Ljava/lang/Runnable;

    invoke-static {v2}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 12
    sget-object v2, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/td;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v2, Lz/c;->e:Lo1/y;

    iget-object v3, p0, Lk0/td;->l:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v2, Lu0/c;->x:Lo1/y;

    iget-object v3, p0, Lk0/td;->g:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget v2, p0, Lk0/td;->f:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x77
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x76
        0x1
        0x5
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x75
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x75
        0x1
        0x1
    .end array-data
.end method

.method public U2([BII)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v3, 0x28

    const/4 v4, 0x2

    if-eq v2, v3, :cond_43

    const/16 v3, 0x66

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v2, v3, :cond_42

    const/16 v3, 0x78

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eq v2, v3, :cond_41

    const/16 v3, 0x79

    const/16 v9, 0xd

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x77

    const/16 v10, 0x1f

    const/4 v13, 0x6

    const/16 v14, 0xc

    const/16 v15, 0xf

    const/4 v12, 0x5

    const/16 v11, 0xff

    packed-switch v2, :pswitch_data_0

    const v3, 0xff00

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_e

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v3, v0, v3

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v0, v4

    add-int/lit8 v5, p2, 0x5

    .line 5
    aget-byte v5, v0, v5

    add-int/lit8 v10, p2, 0x6

    .line 6
    aget-byte v10, v0, v10

    add-int/lit8 v11, p2, 0x7

    .line 7
    aget-byte v11, v0, v11

    add-int/lit8 v12, p2, 0x8

    .line 8
    aget-byte v12, v0, v12

    add-int/lit8 v13, p2, 0x9

    .line 9
    aget-byte v13, v0, v13

    add-int/lit8 v16, p2, 0xa

    .line 10
    aget-byte v16, v0, v16

    add-int/lit8 v17, p2, 0xb

    .line 11
    aget-byte v17, v0, v17

    add-int/lit8 v18, p2, 0xc

    .line 12
    aget-byte v18, v0, v18

    add-int/lit8 v9, p2, 0xd

    .line 13
    aget-byte v0, v0, v9

    new-array v9, v8, [I

    and-int/2addr v3, v15

    shl-int/2addr v3, v7

    or-int/2addr v2, v3

    and-int/lit8 v3, v4, 0xf

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit8 v3, v5, 0xf

    shl-int/2addr v3, v14

    or-int/2addr v2, v3

    and-int/lit8 v3, v10, 0xf

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/lit8 v3, v18, 0xf

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v2, v3

    aput v2, v9, v6

    const/16 v2, 0x83

    .line 14
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    and-int/lit8 v4, v12, 0xf

    shl-int/2addr v4, v7

    or-int/2addr v4, v11

    and-int/lit8 v5, v13, 0xf

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit8 v5, v16, 0xf

    shl-int/2addr v5, v14

    or-int/2addr v4, v5

    and-int/lit8 v5, v17, 0xf

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/2addr v0, v15

    shl-int/lit8 v0, v0, 0x14

    or-int/2addr v0, v4

    aput v0, v3, v6

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 16
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 17
    aget-byte v3, v0, v3

    add-int/lit8 v4, p2, 0x4

    .line 18
    aget-byte v4, v0, v4

    add-int/lit8 v7, p2, 0x5

    .line 19
    aget-byte v0, v0, v7

    const/16 v7, 0x1d

    new-array v9, v8, [I

    and-int/lit8 v11, v2, 0x3

    aput v11, v9, v6

    .line 20
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x1e

    new-array v9, v8, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v5

    aput v11, v9, v6

    .line 21
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    new-array v7, v8, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v5

    aput v9, v7, v6

    .line 22
    invoke-static {v10, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x20

    new-array v9, v8, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v5

    aput v2, v9, v6

    .line 23
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v7, v8, [I

    and-int/2addr v3, v8

    aput v3, v7, v6

    .line 24
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v8, [I

    shr-int/lit8 v7, v4, 0x7

    and-int/2addr v7, v8

    aput v7, v3, v6

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v8, [I

    shr-int/lit8 v7, v4, 0x6

    and-int/2addr v7, v8

    aput v7, v3, v6

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v8, [I

    shr-int/2addr v4, v6

    and-int/2addr v4, v15

    aput v4, v3, v6

    .line 27
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x38

    new-array v3, v8, [I

    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v5

    aput v4, v3, v6

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x28

    new-array v3, v8, [I

    and-int/lit8 v0, v0, 0x3f

    aput v0, v3, v6

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_2
    const/16 v2, 0x71

    new-array v4, v8, [I

    add-int/lit8 v7, p2, 0x2

    .line 30
    aget-byte v9, v0, v7

    and-int/2addr v9, v11

    add-int/lit8 v5, p2, 0x3

    aget-byte v10, v0, v5

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v3

    add-int/2addr v9, v10

    aput v9, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v4, v8, [I

    .line 31
    aget-byte v7, v0, v7

    and-int/2addr v7, v11

    aget-byte v0, v0, v5

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v3

    add-int/2addr v7, v0

    aput v7, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 32
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 33
    aget-byte v0, v0, v3

    const/16 v3, 0x81

    new-array v4, v8, [I

    and-int/2addr v2, v11

    aput v2, v4, v6

    .line 34
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    and-int/2addr v0, v15

    aput v0, v3, v6

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_4
    const/16 v2, 0x72

    new-array v4, v8, [I

    add-int/lit8 v7, p2, 0x2

    .line 36
    aget-byte v9, v0, v7

    and-int/2addr v9, v11

    add-int/lit8 v5, p2, 0x3

    aget-byte v10, v0, v5

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v3

    add-int/2addr v9, v10

    aput v9, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v4, v8, [I

    .line 37
    aget-byte v7, v0, v7

    and-int/2addr v7, v11

    aget-byte v0, v0, v5

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v3

    add-int/2addr v7, v0

    aput v7, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_5
    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 38
    aget-byte v4, v0, v4

    mul-int/lit8 v4, v4, 0x3c

    add-int/lit8 v5, p2, 0x4

    aget-byte v0, v0, v5

    add-int/2addr v4, v0

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v2, v0, v2

    and-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x3c

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v0, v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3c

    add-int/lit8 v3, p2, 0x4

    aget-byte v0, v0, v3

    add-int/2addr v2, v0

    const/16 v0, 0x65

    new-array v3, v8, [I

    aput v2, v3, v6

    .line 40
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 41
    :pswitch_7
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x63

    new-array v7, v5, [I

    add-int/lit8 v9, p2, 0x2

    aget-byte v10, v0, v9

    and-int/2addr v10, v11

    aput v10, v7, v6

    add-int/lit8 v10, p2, 0x4

    aget-byte v12, v0, v10

    and-int/2addr v12, v11

    aput v12, v7, v8

    add-int/lit8 v12, p2, 0x5

    aget-byte v12, v0, v12

    and-int/2addr v12, v11

    aput v12, v7, v4

    invoke-static {v2, v3, v7}, Lo1/x;->B([Lo1/x;I[I)V

    .line 42
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x6

    add-int v7, p2, p3

    sub-int/2addr v7, v8

    :goto_0
    if-ge v3, v7, :cond_0

    add-int/lit8 v12, v3, 0x1

    .line 43
    aget-byte v12, v0, v12

    and-int/2addr v12, v11

    aget-byte v13, v0, v3

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, 0x64

    new-array v7, v5, [I

    .line 44
    aget-byte v9, v0, v9

    and-int/2addr v9, v11

    aput v9, v7, v6

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v0, v5

    and-int/2addr v5, v11

    aput v5, v7, v8

    aget-byte v0, v0, v10

    and-int/2addr v0, v11

    aput v0, v7, v4

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v3, v7, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    :pswitch_8
    new-array v2, v13, [I

    :goto_1
    if-ge v6, v13, :cond_1

    add-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v6

    .line 48
    aget-byte v3, v0, v3

    aput v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 49
    :cond_1
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x69

    invoke-static {v0, v3, v2}, Lo1/x;->B([Lo1/x;I[I)V

    goto/16 :goto_e

    :pswitch_9
    const/16 v2, 0x8b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 50
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v15

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    .line 51
    aget-byte v4, v0, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v15

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 52
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v15

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    .line 53
    aget-byte v4, v0, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v15

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 54
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v15

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v8, [I

    .line 55
    aget-byte v4, v0, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v15

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 56
    aget-byte v4, v0, v4

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 57
    aget-byte v0, v0, v4

    shr-int/2addr v0, v6

    and-int/2addr v0, v8

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 58
    :pswitch_a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_b
    const/16 v2, 0x85

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 59
    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v3

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v0, v7

    and-int/2addr v7, v11

    or-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 60
    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v3

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v0, v7

    and-int/2addr v7, v11

    or-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 61
    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v3

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v0, v7

    and-int/2addr v7, v11

    or-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 62
    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v3, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v0, v0, v5

    and-int/2addr v0, v11

    or-int/2addr v0, v3

    aput v0, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 63
    aget-byte v2, v0, v2

    add-int/lit8 v9, p2, 0x4

    .line 64
    aget-byte v9, v0, v9

    add-int/lit8 v10, p2, 0x5

    .line 65
    aget-byte v10, v0, v10

    add-int/lit8 v11, p2, 0x6

    .line 66
    aget-byte v0, v0, v11

    const-string v11, "persist.syu.reversefrontdoor"

    .line 67
    invoke-static {v11, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    new-array v11, v8, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v8

    aput v13, v11, v6

    .line 68
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v8, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v8

    aput v13, v11, v6

    .line 69
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_2
    new-array v11, v8, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v8

    aput v13, v11, v6

    .line 70
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v8, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v8

    aput v13, v11, v6

    .line 71
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v4, v8, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v8

    aput v11, v4, v6

    .line 72
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v8

    aput v7, v4, v6

    .line 73
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v8

    aput v2, v4, v6

    .line 74
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v9, 0x7

    and-int/2addr v4, v8

    aput v4, v2, v6

    .line 75
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    shr-int/lit8 v4, v9, 0x4

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v6

    .line 76
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    shr-int/lit8 v4, v9, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v6

    .line 77
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    shr-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v6

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    shr-int/lit8 v4, v9, 0x1

    and-int/2addr v4, v8

    aput v4, v3, v6

    .line 79
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    shr-int/lit8 v4, v9, 0x0

    and-int/2addr v4, v8

    aput v4, v3, v6

    .line 80
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    shr-int/lit8 v4, v10, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v6

    .line 81
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    shr-int/lit8 v4, v10, 0x0

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v6

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    shr-int/lit8 v4, v10, 0x3

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v6

    .line 83
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    shr-int/lit8 v4, v0, 0x0

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v6

    .line 84
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v8

    aput v0, v3, v6

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 86
    :pswitch_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_44

    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v3, v0, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x3

    .line 88
    aget-byte v5, v0, v4

    and-int/2addr v5, v11

    add-int/lit8 v9, p2, 0x4

    .line 89
    aget-byte v10, v0, v9

    and-int/2addr v10, v11

    add-int/lit8 v12, p2, 0x5

    .line 90
    aget-byte v13, v0, v12

    and-int/2addr v13, v11

    if-nez v3, :cond_3

    if-nez v5, :cond_3

    if-nez v10, :cond_3

    if-nez v13, :cond_3

    .line 91
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 92
    :cond_3
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_4

    sget v6, Ll0/c0;->h:I

    if-ne v6, v5, :cond_4

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_4

    sget v6, Ll0/c0;->j:I

    if-eq v6, v13, :cond_5

    .line 93
    :cond_4
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_5

    .line 94
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 95
    sput v7, Ll0/c0;->k:I

    .line 96
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 97
    :cond_5
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 98
    sput v5, Ll0/c0;->h:I

    .line 99
    sput v10, Ll0/c0;->i:I

    .line 100
    sput v13, Ll0/c0;->j:I

    .line 101
    aget-byte v2, v0, v2

    and-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lk0/td;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 102
    aget-byte v2, v0, v4

    and-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lk0/td;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 103
    aget-byte v2, v0, v9

    and-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lk0/td;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 104
    aget-byte v0, v0, v12

    and-int/2addr v0, v11

    invoke-virtual {v1, v0}, Lk0/td;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    .line 105
    :pswitch_e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_44

    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v2, v0, v2

    and-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lk0/td;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 107
    aget-byte v2, v0, v2

    and-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lk0/td;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 108
    aget-byte v2, v0, v2

    and-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lk0/td;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 109
    aget-byte v0, v0, v2

    and-int/2addr v0, v11

    invoke-virtual {v1, v0}, Lk0/td;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :pswitch_f
    add-int/lit8 v2, p2, 0x2

    .line 110
    aget-byte v2, v0, v2

    and-int/2addr v2, v11

    add-int/lit8 v5, p2, 0x3

    .line 111
    aget-byte v5, v0, v5

    and-int/2addr v5, v11

    add-int/lit8 v7, p2, 0x4

    .line 112
    aget-byte v13, v0, v7

    and-int/2addr v13, v11

    add-int/lit8 v18, p2, 0x5

    .line 113
    aget-byte v12, v0, v18

    and-int/2addr v12, v11

    add-int/lit8 v19, p2, 0x6

    .line 114
    aget-byte v10, v0, v19

    and-int/2addr v10, v11

    add-int/lit8 v19, p2, 0x7

    .line 115
    aget-byte v4, v0, v19

    and-int/2addr v4, v11

    new-array v3, v8, [I

    shr-int/lit8 v20, v2, 0x7

    and-int/lit8 v20, v20, 0x1

    aput v20, v3, v6

    const/16 v11, 0xa

    .line 116
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v11, v8, [I

    shr-int/lit8 v21, v2, 0x6

    and-int/lit8 v21, v21, 0x1

    aput v21, v11, v6

    .line 117
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v8

    aput v11, v3, v6

    .line 118
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v11, v8, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/2addr v14, v8

    aput v14, v11, v6

    .line 119
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v8

    aput v11, v3, v6

    .line 120
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v9, v8, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v8

    aput v11, v9, v6

    .line 121
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    aput v2, v3, v6

    .line 122
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v8, [I

    shr-int/lit8 v9, v5, 0x7

    and-int/2addr v9, v8

    aput v9, v3, v6

    .line 123
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v8, [I

    shr-int/lit8 v9, v5, 0x6

    and-int/2addr v9, v8

    aput v9, v3, v6

    .line 124
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    shr-int/lit8 v9, v5, 0x5

    and-int/2addr v9, v8

    aput v9, v3, v6

    .line 125
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    and-int/2addr v5, v15

    aput v5, v3, v6

    .line 126
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v8, [I

    shr-int/lit8 v5, v10, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v6

    .line 127
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 128
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 129
    aget-byte v2, v0, v18

    const/16 v3, 0xff

    and-int/lit16 v13, v2, 0xff

    .line 130
    aget-byte v0, v0, v7

    and-int/lit16 v12, v0, 0xff

    :cond_6
    const/16 v0, 0x1b

    if-ne v5, v8, :cond_d

    const/16 v2, 0x77

    if-eq v13, v2, :cond_9

    const/16 v3, 0xab

    if-eq v13, v3, :cond_8

    if-le v13, v2, :cond_7

    const/16 v2, 0xab

    if-ge v13, v2, :cond_7

    new-array v2, v8, [I

    add-int/lit8 v13, v13, -0x78

    const/4 v3, 0x2

    .line 131
    div-int/2addr v13, v3

    add-int/lit8 v13, v13, 0x3c

    aput v13, v2, v6

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_7
    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v6

    .line 132
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_8
    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 133
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_9
    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    .line 134
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v0, 0x77

    if-eq v12, v0, :cond_c

    const/16 v2, 0xab

    if-eq v12, v2, :cond_b

    if-lt v12, v0, :cond_a

    const/16 v0, 0xab

    if-gt v12, v0, :cond_a

    new-array v0, v8, [I

    add-int/lit8 v12, v12, -0x78

    const/4 v2, 0x2

    .line 135
    div-int/2addr v12, v2

    add-int/lit8 v12, v12, 0x3c

    aput v12, v0, v6

    const/16 v2, 0x1c

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_a
    const/16 v2, 0x1c

    new-array v0, v8, [I

    const/4 v3, -0x1

    aput v3, v0, v6

    .line 136
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_b
    const/16 v2, 0x1c

    new-array v0, v8, [I

    const/4 v3, -0x3

    aput v3, v0, v6

    .line 137
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_c
    const/16 v2, 0x1c

    new-array v0, v8, [I

    const/4 v3, -0x2

    aput v3, v0, v6

    .line 138
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_d
    if-eqz v13, :cond_10

    const/16 v2, 0x7f

    if-eq v13, v2, :cond_f

    const/16 v2, 0x1f

    if-lt v13, v2, :cond_e

    const/16 v3, 0x3b

    if-gt v13, v3, :cond_e

    new-array v3, v8, [I

    sub-int/2addr v13, v2

    const/4 v2, 0x5

    mul-int/2addr v13, v2

    add-int/lit16 v13, v13, 0x9b

    aput v13, v3, v6

    .line 139
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v6

    .line 140
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 141
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    .line 142
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    if-eqz v12, :cond_13

    const/16 v0, 0x7f

    if-eq v12, v0, :cond_12

    const/16 v0, 0x1f

    if-lt v12, v0, :cond_11

    const/16 v2, 0x3b

    if-gt v12, v2, :cond_11

    new-array v2, v8, [I

    sub-int/2addr v12, v0

    const/4 v0, 0x5

    mul-int/2addr v12, v0

    add-int/lit16 v12, v12, 0x9b

    aput v12, v2, v6

    const/16 v0, 0x1c

    .line 143
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    const/16 v0, 0x1c

    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v6

    .line 144
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    const/16 v0, 0x1c

    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 145
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    const/16 v0, 0x1c

    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    .line 146
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v0, 0x35

    new-array v2, v8, [I

    const/4 v3, 0x2

    shr-int/lit8 v3, v10, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v6

    .line 147
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    mul-int/lit8 v0, v4, 0xa

    add-int/lit16 v0, v0, 0x3e8

    if-nez v4, :cond_14

    .line 148
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :cond_14
    const v2, 0x8000

    and-int/2addr v2, v4

    if-eqz v2, :cond_15

    sub-int/2addr v4, v8

    not-int v0, v4

    neg-int v0, v0

    const/16 v2, 0xa

    mul-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x3e8

    .line 149
    :cond_15
    invoke-static {v0}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :pswitch_10
    add-int/lit8 v2, p2, 0x3

    .line 150
    aget-byte v3, v0, v2

    const/4 v4, 0x2

    add-int/lit8 v10, p2, 0x2

    .line 151
    aget-byte v4, v0, v10

    const/16 v11, 0x3d

    if-eq v4, v11, :cond_3e

    const/16 v11, 0x56

    if-eq v4, v11, :cond_3d

    const/16 v11, 0x52

    if-eq v4, v11, :cond_3a

    const/16 v11, 0x53

    if-eq v4, v11, :cond_37

    const/16 v11, 0xa1

    packed-switch v4, :pswitch_data_4

    const/16 v12, 0xc6

    packed-switch v4, :pswitch_data_5

    packed-switch v4, :pswitch_data_6

    packed-switch v4, :pswitch_data_7

    packed-switch v4, :pswitch_data_8

    .line 152
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 153
    aget-byte v3, v0, v10

    .line 154
    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v3, v2

    move v2, v6

    .line 155
    :goto_7
    iget-object v4, v1, Lk0/td;->b:[[I

    array-length v9, v4

    if-ge v2, v9, :cond_17

    .line 156
    aget-object v9, v4, v2

    aget v9, v9, v6

    if-ne v3, v9, :cond_16

    if-eqz v3, :cond_17

    .line 157
    iput v2, v1, Lk0/td;->c:I

    goto :goto_8

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    :goto_8
    if-eq v3, v5, :cond_1d

    if-eq v3, v7, :cond_1b

    const/16 v3, 0xff

    and-int/2addr v0, v3

    if-eqz v0, :cond_18

    .line 158
    array-length v0, v4

    if-ge v2, v0, :cond_44

    .line 159
    aget-object v0, v4, v2

    aget v0, v0, v8

    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 160
    :cond_18
    iget v0, v1, Lk0/td;->c:I

    array-length v2, v4

    if-ge v0, v2, :cond_19

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1a

    .line 161
    aget-object v0, v4, v0

    aget v0, v0, v8

    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_19
    const/16 v2, 0xff

    .line 162
    :cond_1a
    :goto_9
    iput v2, v1, Lk0/td;->c:I

    goto/16 :goto_e

    :cond_1b
    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v8, :cond_44

    .line 163
    sget v0, Lh0/c;->E:I

    if-eq v0, v7, :cond_1c

    .line 164
    invoke-static {v5, v6}, Ll0/b0;->l0(II)V

    .line 165
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_1c
    const/16 v0, 0x12

    .line 166
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 167
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_1d
    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v8, :cond_44

    .line 168
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_1e

    if-eq v0, v7, :cond_1e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1e

    .line 169
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    .line 170
    invoke-static {v7, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_1e
    const/16 v0, 0x1a

    .line 171
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 172
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_11
    if-nez v3, :cond_44

    .line 173
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v0, 0x1f

    .line 174
    invoke-virtual {v1, v12, v11, v0}, Lk0/td;->h3(III)V

    goto/16 :goto_e

    :pswitch_12
    if-nez v3, :cond_44

    .line 175
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v0, 0x1e

    .line 176
    invoke-virtual {v1, v12, v11, v0}, Lk0/td;->h3(III)V

    goto/16 :goto_e

    :pswitch_13
    if-nez v3, :cond_44

    .line 177
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v0, 0x1d

    .line 178
    invoke-virtual {v1, v12, v11, v0}, Lk0/td;->h3(III)V

    goto/16 :goto_e

    :pswitch_14
    if-nez v3, :cond_44

    .line 179
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v0, 0x1c

    .line 180
    invoke-virtual {v1, v12, v11, v0}, Lk0/td;->h3(III)V

    goto/16 :goto_e

    .line 181
    :pswitch_15
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 182
    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-nez v0, :cond_44

    .line 183
    sget v0, Lu0/b;->D:I

    if-eq v0, v14, :cond_20

    if-ne v0, v9, :cond_1f

    goto :goto_a

    .line 184
    :cond_1f
    invoke-static {}, Lu0/d;->x1()V

    goto/16 :goto_e

    :cond_20
    :goto_a
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 185
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_e

    .line 186
    :pswitch_16
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 187
    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-nez v0, :cond_44

    .line 188
    sget v0, Lu0/b;->D:I

    if-eq v0, v14, :cond_22

    if-ne v0, v9, :cond_21

    goto :goto_b

    .line 189
    :cond_21
    invoke-static {}, Lu0/d;->B1()V

    goto/16 :goto_e

    :cond_22
    :goto_b
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 190
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_e

    .line 191
    :pswitch_17
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 192
    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-nez v0, :cond_44

    .line 193
    sget v0, Lu0/b;->D:I

    if-eq v0, v14, :cond_24

    if-ne v0, v9, :cond_23

    goto :goto_c

    .line 194
    :cond_23
    invoke-static {}, Lu0/d;->I1()V

    goto/16 :goto_e

    :cond_24
    :goto_c
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 195
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_e

    .line 196
    :pswitch_18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 197
    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-nez v0, :cond_44

    .line 198
    sget v0, Lu0/b;->D:I

    if-eq v0, v14, :cond_26

    if-ne v0, v9, :cond_25

    goto :goto_d

    .line 199
    :cond_25
    invoke-static {}, Lu0/d;->B1()V

    goto/16 :goto_e

    :cond_26
    :goto_d
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 200
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_e

    .line 201
    :pswitch_19
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_44

    if-eqz v3, :cond_27

    const/16 v0, 0x1d

    .line 202
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_27
    const/16 v0, 0x1d

    .line 203
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 204
    :pswitch_1a
    invoke-static {}, Lo1/u;->r()V

    goto/16 :goto_e

    .line 205
    :pswitch_1b
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_e

    .line 206
    :pswitch_1c
    invoke-static {}, La/i;->A()V

    goto/16 :goto_e

    .line 207
    :pswitch_1d
    invoke-static {}, Lo1/u;->j()I

    goto/16 :goto_e

    .line 208
    :pswitch_1e
    invoke-static {}, Lo1/u;->E()I

    goto/16 :goto_e

    .line 209
    :pswitch_1f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_44

    if-eqz v3, :cond_28

    const/16 v0, 0x15

    .line 210
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_28
    const/16 v0, 0x15

    .line 211
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 212
    :pswitch_20
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_29

    if-nez v3, :cond_44

    .line 213
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Lh0/f;->h(I)V

    goto/16 :goto_e

    :cond_29
    if-eq v0, v14, :cond_2a

    if-ne v0, v9, :cond_44

    :cond_2a
    if-nez v3, :cond_44

    const/16 v0, 0x18

    .line 214
    invoke-virtual {v1, v12, v11, v0}, Lk0/td;->h3(III)V

    goto/16 :goto_e

    .line 215
    :pswitch_21
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2b

    if-nez v3, :cond_44

    .line 216
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v9}, Lh0/f;->h(I)V

    goto/16 :goto_e

    :cond_2b
    if-eq v0, v14, :cond_2c

    if-ne v0, v9, :cond_44

    :cond_2c
    if-nez v3, :cond_44

    const/16 v0, 0x17

    .line 217
    invoke-virtual {v1, v12, v11, v0}, Lk0/td;->h3(III)V

    goto/16 :goto_e

    :pswitch_22
    if-nez v3, :cond_44

    .line 218
    aget-byte v0, v0, v10

    const/16 v2, 0xff

    and-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x20

    invoke-virtual {v1, v0}, Lk0/td;->g3(I)V

    goto/16 :goto_e

    :pswitch_23
    if-nez v3, :cond_44

    .line 219
    sget v0, Lu0/b;->D:I

    if-ne v0, v14, :cond_2d

    const/16 v2, 0xa

    .line 220
    invoke-virtual {v1, v11, v2}, Lk0/td;->i3(II)V

    goto/16 :goto_e

    :cond_2d
    if-ne v0, v8, :cond_2e

    .line 221
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->h()V

    goto/16 :goto_e

    .line 222
    :cond_2e
    invoke-static {}, Lu0/d;->y1()V

    goto/16 :goto_e

    :pswitch_24
    if-nez v3, :cond_44

    .line 223
    sget v0, Lu0/b;->D:I

    if-ne v0, v14, :cond_2f

    const/16 v0, 0x1a

    .line 224
    invoke-virtual {v1, v11, v0}, Lk0/td;->i3(II)V

    goto/16 :goto_e

    :cond_2f
    if-ne v0, v8, :cond_30

    .line 225
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->c()V

    goto/16 :goto_e

    .line 226
    :cond_30
    invoke-static {}, Lu0/d;->I1()V

    goto/16 :goto_e

    :pswitch_25
    if-nez v3, :cond_44

    .line 227
    sget v0, Lu0/b;->D:I

    if-ne v0, v14, :cond_31

    const/16 v0, 0x19

    .line 228
    invoke-virtual {v1, v11, v0}, Lk0/td;->i3(II)V

    goto/16 :goto_e

    :cond_31
    if-ne v0, v8, :cond_32

    .line 229
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->g()V

    goto/16 :goto_e

    .line 230
    :cond_32
    invoke-static {}, Lu0/d;->B1()V

    goto/16 :goto_e

    .line 231
    :pswitch_26
    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-nez v0, :cond_44

    if-nez v3, :cond_44

    .line 232
    sget v0, Lu0/b;->D:I

    if-ne v0, v14, :cond_33

    const/16 v0, 0xb

    .line 233
    invoke-virtual {v1, v11, v0}, Lk0/td;->i3(II)V

    goto/16 :goto_e

    :cond_33
    if-ne v0, v8, :cond_34

    .line 234
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->d()V

    goto/16 :goto_e

    .line 235
    :cond_34
    invoke-static {}, Lu0/d;->x1()V

    goto/16 :goto_e

    .line 236
    :pswitch_27
    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-nez v0, :cond_44

    if-nez v3, :cond_44

    .line 237
    sget v0, Lu0/b;->D:I

    if-ne v0, v14, :cond_35

    const/16 v2, 0xa

    .line 238
    invoke-virtual {v1, v11, v2}, Lk0/td;->i3(II)V

    goto/16 :goto_e

    :cond_35
    if-ne v0, v8, :cond_36

    .line 239
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->i()V

    goto/16 :goto_e

    .line 240
    :cond_36
    invoke-static {}, Lu0/d;->L1()V

    goto/16 :goto_e

    .line 241
    :cond_37
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 242
    sget v0, Lu0/b;->D:I

    if-ne v0, v14, :cond_38

    if-nez v3, :cond_44

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 243
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_e

    :cond_38
    if-eqz v3, :cond_39

    .line 244
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 245
    :cond_39
    invoke-static {v7, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 246
    :cond_3a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 247
    sget v0, Lu0/b;->D:I

    if-ne v0, v14, :cond_3b

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 248
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_e

    :cond_3b
    if-eqz v3, :cond_3c

    .line 249
    invoke-static {v5, v6}, Ll0/b0;->l0(II)V

    goto :goto_e

    .line 250
    :cond_3c
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_3d
    if-nez v3, :cond_44

    .line 251
    sget v0, Lu0/b;->D:I

    if-ne v0, v8, :cond_44

    .line 252
    sget-object v0, Lw0/d;->b:Lw0/g;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lw0/g;->w(I)V

    goto :goto_e

    .line 253
    :cond_3e
    invoke-static {}, Lo1/u;->W0()V

    goto :goto_e

    :cond_3f
    move v2, v4

    .line 254
    iget v3, v1, Lk0/td;->e:I

    add-int/lit8 v2, p2, 0x2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_44

    .line 255
    aget-byte v3, v0, v2

    if-ne v3, v7, :cond_40

    .line 256
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    .line 257
    invoke-static {v9, v8}, Ll0/b0;->l0(II)V

    .line 258
    :cond_40
    aget-byte v0, v0, v2

    iput v0, v1, Lk0/td;->e:I

    goto :goto_e

    :cond_41
    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 259
    aget-byte v4, v0, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 260
    aget-byte v4, v0, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 261
    aget-byte v0, v0, v4

    aput v0, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_42
    add-int/lit8 v2, p2, 0x2

    .line 262
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v0, v0, v3

    const/16 v3, 0x11f8

    invoke-static {v2, v0, v6, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_e

    :cond_43
    move v2, v4

    add-int/lit8 v2, p2, 0x2

    .line 263
    aget-byte v0, v0, v2

    :cond_44
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x68
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x20
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x34
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x48
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x5c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0xa
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x19
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x19
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x9
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x9
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/td;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/td;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/td;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lz/c;->e:Lo1/y;

    iget-object v1, p0, Lk0/td;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/td;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/td;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x93

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
    .locals 1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x84

    .line 1
    aget p3, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p3, p2}, Lk0/td;->h3(III)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xc6

    .line 2
    aget p3, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p3, p2}, Lk0/td;->h3(III)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x90

    .line 3
    aget p3, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p3, p2}, Lk0/td;->h3(III)V

    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xf

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0xa

    .line 1
    div-int/lit8 p1, p1, 0x1e

    :goto_0
    return p1
.end method

.method public final b3(I)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xc6

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xa4

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3(I)V
    .locals 1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x16

    .line 2
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0, v0}, Lk0/td;->b3(I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xb

    .line 4
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xe

    .line 5
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x8

    .line 6
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x6

    .line 8
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x5

    .line 9
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    goto :goto_0

    :pswitch_8
    const/16 p1, 0xa

    .line 10
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x1b

    .line 11
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    .line 12
    invoke-virtual {p0, p1}, Lk0/td;->b3(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g3(I)V
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    if-lez p1, :cond_1

    .line 2
    sget-object v0, Lo0/e;->b:Lo0/h;

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lo0/h;->D(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v7, 0x7

    if-ne v0, v3, :cond_2

    if-lez p1, :cond_2

    if-ge p1, v7, :cond_2

    .line 3
    invoke-static {p1}, Lw0/f;->B(I)V

    goto/16 :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 6
    :pswitch_2
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v5}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 7
    :pswitch_3
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v4}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 8
    :pswitch_4
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v7}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 9
    :pswitch_5
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 10
    :pswitch_6
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 11
    :pswitch_7
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v6}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 12
    :pswitch_8
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v1}, Lh0/f;->h(I)V

    goto :goto_1

    .line 13
    :pswitch_9
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    const/16 v2, 0xd

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_6

    :cond_4
    const/16 v0, 0xa1

    const/16 v1, 0xc6

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x16

    .line 14
    invoke-virtual {p0, v1, v0, p1}, Lk0/td;->h3(III)V

    goto :goto_1

    :pswitch_b
    const/16 p1, 0x15

    .line 15
    invoke-virtual {p0, v1, v0, p1}, Lk0/td;->h3(III)V

    goto :goto_1

    :pswitch_c
    const/16 p1, 0x14

    .line 16
    invoke-virtual {p0, v1, v0, p1}, Lk0/td;->h3(III)V

    goto :goto_1

    :pswitch_d
    const/16 p1, 0x13

    .line 17
    invoke-virtual {p0, v1, v0, p1}, Lk0/td;->h3(III)V

    goto :goto_1

    :pswitch_e
    const/16 p1, 0x12

    .line 18
    invoke-virtual {p0, v1, v0, p1}, Lk0/td;->h3(III)V

    goto :goto_1

    :pswitch_f
    const/16 p1, 0x11

    .line 19
    invoke-virtual {p0, v1, v0, p1}, Lk0/td;->h3(III)V

    goto :goto_1

    :pswitch_10
    const/16 p1, 0x10

    .line 20
    invoke-virtual {p0, v1, v0, p1}, Lk0/td;->h3(III)V

    goto :goto_1

    :pswitch_11
    const/16 p1, 0xf

    .line 21
    invoke-virtual {p0, v1, v0, p1}, Lk0/td;->h3(III)V

    goto :goto_1

    :pswitch_12
    const/16 p1, 0xe

    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lk0/td;->h3(III)V

    goto :goto_1

    .line 23
    :pswitch_13
    invoke-virtual {p0, v1, v0, v2}, Lk0/td;->h3(III)V

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v5, 0x25

    new-array v1, v1, [I

    const/4 v6, 0x0

    aput v0, v1, v6

    aput v4, v1, v3

    aput p1, v1, v2

    .line 24
    invoke-static {v5, v1}, Lu0/d;->I3(I[I)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public final h3(III)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput p1, v0, p1

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final i3(II)V
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0, p1, p1}, Lk0/td;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
