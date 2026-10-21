.class public Lk0/hh;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:J

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:B

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hh;->c:I

    const/16 v1, 0x11

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

    const/4 v4, 0x6

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x7

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v4, 0xa

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v4, 0xb

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v4, 0xc

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v4, 0xd

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v4, 0xe

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v4, 0xf

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v2, 0x10

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/hh;->d:[[I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lk0/hh;->e:J

    .line 5
    new-instance v0, Lk0/hh$a;

    invoke-direct {v0, p0}, Lk0/hh$a;-><init>(Lk0/hh;)V

    iput-object v0, p0, Lk0/hh;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/hh$b;

    invoke-direct {v0, p0}, Lk0/hh$b;-><init>(Lk0/hh;)V

    iput-object v0, p0, Lk0/hh;->g:Ljava/lang/Runnable;

    .line 7
    iput-byte v3, p0, Lk0/hh;->h:B

    .line 8
    new-instance v0, Lk0/hh$c;

    invoke-direct {v0, p0}, Lk0/hh$c;-><init>(Lk0/hh;)V

    iput-object v0, p0, Lk0/hh;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/hh$d;

    invoke-direct {v0, p0}, Lk0/hh$d;-><init>(Lk0/hh;)V

    iput-object v0, p0, Lk0/hh;->j:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0x20
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x21
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x22
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x23
        0x15
    .end array-data

    :array_d
    .array-data 4
        0x24
        0x10
    .end array-data

    :array_e
    .array-data 4
        0x25
        0x26
    .end array-data

    :array_f
    .array-data 4
        0x26
        0x43
    .end array-data

    :array_10
    .array-data 4
        0x27
        0x44
    .end array-data
.end method

.method public static synthetic a3(Lk0/hh;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/hh;->e:J

    return-wide v0
.end method

.method public static synthetic b3(Lk0/hh;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/hh;->e:J

    return-wide p1
.end method

.method public static synthetic c3(Lk0/hh;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/hh;->j:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->i:I

    const-string v2, "com.syu.canbus"

    .line 2
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/hh;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/hh;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/hh;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6f

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_f

    const/16 v3, 0x20

    const/4 v9, 0x3

    if-eq v2, v3, :cond_a

    const/16 v10, 0x29

    if-eq v2, v10, :cond_9

    const/16 v11, 0x30

    if-eq v2, v11, :cond_8

    const/16 v11, 0x35

    const/16 v12, 0x10

    const v13, 0xff00

    const/16 v14, 0x8

    if-eq v2, v11, :cond_7

    const/4 v10, 0x5

    const/4 v11, 0x4

    packed-switch v2, :pswitch_data_0

    const/16 v15, 0xf

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_0
    const/16 v2, 0x2a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v15

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v8, [I

    .line 3
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v8, [I

    .line 4
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 6
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 7
    :pswitch_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v7, p2, 0x1

    aget-byte v7, v1, v7

    sub-int/2addr v7, v8

    invoke-direct {v2, v1, v4, v7}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v4, p2, 0x2

    .line 8
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    if-eqz v1, :cond_2

    if-eq v1, v8, :cond_1

    if-eq v1, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v1, 0x21

    .line 9
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 10
    :cond_1
    invoke-static {v3, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    const/16 v1, 0x1f

    .line 11
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    const/16 v2, 0x1a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 12
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v15

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v8, [I

    .line 13
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 15
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 16
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_3
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 17
    aget-byte v3, v1, v3

    shl-int/2addr v3, v14

    and-int/2addr v3, v13

    add-int/lit8 v16, p2, 0x3

    aget-byte v13, v1, v16

    and-int/2addr v13, v6

    or-int/2addr v3, v13

    aput v3, v2, v7

    const/16 v3, 0xd

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x4

    .line 18
    aget-byte v13, v1, v3

    shr-int/2addr v13, v7

    and-int/2addr v13, v8

    aput v13, v2, v7

    const/16 v13, 0xe

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 19
    aget-byte v16, v1, v3

    shr-int/lit8 v16, v16, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v2, v7

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 20
    aget-byte v15, v1, v3

    shr-int/2addr v15, v5

    and-int/2addr v15, v9

    aput v15, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v12, v8, [I

    .line 21
    aget-byte v15, v1, v3

    shr-int/2addr v15, v11

    and-int/2addr v15, v8

    aput v15, v12, v7

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v12, v8, [I

    .line 22
    aget-byte v15, v1, v3

    shr-int/2addr v15, v10

    and-int/2addr v15, v8

    aput v15, v12, v7

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v12, v8, [I

    .line 23
    aget-byte v15, v1, v3

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v8

    aput v15, v12, v7

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v12, v8, [I

    .line 24
    aget-byte v3, v1, v3

    shr-int/2addr v3, v4

    and-int/2addr v3, v8

    aput v3, v12, v7

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 25
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v12, 0xff00

    and-int/2addr v4, v12

    add-int/lit8 v12, p2, 0x6

    aget-byte v12, v1, v12

    and-int/2addr v12, v6

    or-int/2addr v4, v12

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 26
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 27
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 28
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 29
    aget-byte v12, v1, v4

    shr-int/2addr v12, v8

    and-int/2addr v12, v8

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x30

    new-array v3, v8, [I

    .line 30
    aget-byte v12, v1, v4

    shr-int/lit8 v5, v12, 0x2

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v8, [I

    .line 31
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v3, v8, [I

    .line 32
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x33

    new-array v3, v8, [I

    .line 33
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v8, [I

    .line 34
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 35
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 36
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xd

    .line 37
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x38

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 38
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_4
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 39
    aget-byte v3, v1, v3

    shl-int/2addr v3, v14

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    aput v3, v2, v7

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x4

    .line 40
    aget-byte v3, v1, v3

    shl-int/2addr v3, v14

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    aput v3, v2, v7

    const/16 v3, 0x9

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x6

    .line 41
    aget-byte v3, v1, v3

    shl-int/2addr v3, v14

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    aput v3, v2, v7

    const/16 v3, 0xa

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x8

    .line 42
    aget-byte v4, v1, v3

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v2, v7

    const/16 v4, 0xb

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 43
    aget-byte v1, v1, v3

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v2, v7

    const/16 v1, 0xc

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_5
    const-string v2, "persist.syu.reversefrontdoor"

    .line 44
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 45
    aget-byte v6, v1, v3

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 46
    aget-byte v3, v1, v3

    shr-int/2addr v3, v4

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 47
    aget-byte v6, v1, v3

    shr-int/lit8 v4, v6, 0x7

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 48
    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 49
    aget-byte v4, v1, v3

    shr-int/2addr v4, v10

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 50
    aget-byte v4, v1, v3

    shr-int/2addr v4, v11

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 51
    aget-byte v4, v1, v3

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 52
    aget-byte v3, v1, v3

    shr-int/2addr v3, v5

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 53
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v11

    and-int/2addr v1, v8

    invoke-static {v3, v1, v7}, Ll0/c0;->N1(III)V

    goto/16 :goto_4

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x3

    .line 55
    aget-byte v5, v1, v4

    and-int/2addr v5, v6

    add-int/lit8 v9, p2, 0x4

    .line 56
    aget-byte v12, v1, v9

    and-int/2addr v12, v6

    add-int/lit8 v10, p2, 0x5

    .line 57
    aget-byte v13, v1, v10

    and-int/2addr v13, v6

    const/16 v14, 0xfd

    if-le v3, v14, :cond_4

    if-le v5, v14, :cond_4

    if-le v12, v14, :cond_4

    if-le v13, v14, :cond_4

    .line 58
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 59
    :cond_4
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_5

    sget v7, Ll0/c0;->h:I

    if-ne v7, v5, :cond_5

    sget v7, Ll0/c0;->i:I

    if-ne v7, v12, :cond_5

    sget v7, Ll0/c0;->j:I

    if-eq v7, v13, :cond_6

    .line 60
    :cond_5
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_6

    .line 61
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 62
    sput v11, Ll0/c0;->k:I

    .line 63
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 64
    :cond_6
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 65
    sput v5, Ll0/c0;->h:I

    .line 66
    sput v12, Ll0/c0;->i:I

    .line 67
    sput v13, Ll0/c0;->j:I

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 69
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 70
    aget-byte v2, v1, v9

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 71
    aget-byte v1, v1, v10

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->a1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_4

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 73
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 74
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 75
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->a1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    :cond_7
    const/16 v2, 0x22

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 76
    aget-byte v5, v1, v5

    shl-int/2addr v5, v14

    const v9, 0xff00

    and-int/2addr v5, v9

    add-int/lit8 v9, p2, 0x2

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x23

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 77
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x24

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 78
    aget-byte v5, v1, v5

    shl-int/2addr v5, v14

    const v9, 0xff00

    and-int/2addr v5, v9

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 79
    aget-byte v5, v1, v5

    shl-int/2addr v5, v14

    const v9, 0xff00

    and-int/2addr v5, v9

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x27

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x9

    .line 80
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    const/high16 v9, 0xff0000

    and-int/2addr v5, v9

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v1, v9

    shl-int/2addr v9, v14

    const v11, 0xff00

    and-int/2addr v9, v11

    or-int/2addr v5, v9

    add-int/lit8 v9, p2, 0xb

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x28

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xc

    .line 81
    aget-byte v9, v1, v5

    shr-int/lit8 v4, v9, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 82
    aget-byte v3, v1, v5

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x39

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xd

    .line 83
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 84
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xf

    .line 85
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x10

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 86
    :cond_8
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1e78

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_4

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 88
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 89
    aget-byte v1, v1, v3

    and-int/2addr v2, v6

    .line 90
    iput v2, v0, Lk0/hh;->c:I

    move v2, v7

    .line 91
    :goto_2
    iget-object v3, v0, Lk0/hh;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 92
    iget v4, v0, Lk0/hh;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_b

    if-eqz v4, :cond_c

    .line 93
    iput v2, v0, Lk0/hh;->b:I

    goto :goto_3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_d

    .line 94
    array-length v1, v3

    if-ge v2, v1, :cond_10

    .line 95
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_d
    if-nez v1, :cond_10

    .line 96
    iget v1, v0, Lk0/hh;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_e

    if-eq v1, v6, :cond_e

    .line 97
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 98
    :cond_e
    iput v6, v0, Lk0/hh;->b:I

    goto :goto_4

    :cond_f
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 99
    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    aput v1, v2, v7

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :cond_10
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
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

    iget-object v1, p0, Lk0/hh;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/hh;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/hh;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/hh;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x3c

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
    .locals 7

    const/16 p3, 0xc6

    const/4 p4, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0xe3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput v2, p1, v6

    const/16 p3, 0xca

    aput p3, p1, v5

    aput v4, p1, v4

    .line 1
    aget p3, p2, v6

    aput p3, p1, v3

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    new-array p1, p1, [I

    aput v2, p1, v6

    aput p3, p1, v5

    aput p4, p1, v4

    .line 2
    aget p3, p2, v6

    aput p3, p1, v3

    aget p2, p2, v5

    aput p2, p1, v1

    aput v6, p1, v0

    aput v6, p1, p4

    const/4 p2, 0x7

    aput v6, p1, p2

    const/16 p2, 0x8

    aput v6, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput v2, p1, v6

    const/16 p3, 0xc8

    aput p3, p1, v5

    aput v4, p1, v4

    .line 3
    aget p3, p2, v6

    aput p3, p1, v3

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p4, [I

    aput v2, p1, v6

    aput p3, p1, v5

    aput v3, p1, v4

    .line 4
    aget p3, p2, v6

    aput p3, p1, v3

    aget p3, p2, v5

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
