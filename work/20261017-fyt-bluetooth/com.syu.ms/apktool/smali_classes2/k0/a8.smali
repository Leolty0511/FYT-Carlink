.class public Lk0/a8;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Z

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0xff

    .line 2
    iput v1, v0, Lk0/a8;->e:I

    const/16 v1, 0xd

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v8, 0x4

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v9, 0x5

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v10, 0x6

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v11, 0x7

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v12, 0x8

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v13, 0x9

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v14, 0xa

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v15, 0xb

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v16, 0xc

    aput-object v4, v2, v16

    iput-object v2, v0, Lk0/a8;->f:[[I

    const/16 v2, 0x17

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_d

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    const/16 v4, 0x10

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    const/16 v4, 0x11

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    const/16 v4, 0x12

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    const/16 v4, 0x13

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    const/16 v4, 0x14

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    const/16 v4, 0x15

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    const/16 v3, 0x16

    aput-object v1, v2, v3

    iput-object v2, v0, Lk0/a8;->g:[[I

    .line 5
    iput v5, v0, Lk0/a8;->h:I

    .line 6
    iput v5, v0, Lk0/a8;->i:I

    .line 7
    iput v5, v0, Lk0/a8;->j:I

    .line 8
    new-instance v1, Lk0/a8$a;

    invoke-direct {v1, v0}, Lk0/a8$a;-><init>(Lk0/a8;)V

    iput-object v1, v0, Lk0/a8;->k:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lk0/a8$b;

    invoke-direct {v1, v0}, Lk0/a8$b;-><init>(Lk0/a8;)V

    iput-object v1, v0, Lk0/a8;->l:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/a8$c;

    invoke-direct {v1, v0}, Lk0/a8$c;-><init>(Lk0/a8;)V

    iput-object v1, v0, Lk0/a8;->m:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lk0/a8$d;

    invoke-direct {v1, v0}, Lk0/a8$d;-><init>(Lk0/a8;)V

    iput-object v1, v0, Lk0/a8;->n:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/a8$e;

    invoke-direct {v1, v0}, Lk0/a8$e;-><init>(Lk0/a8;)V

    iput-object v1, v0, Lk0/a8;->o:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lk0/a8$f;

    invoke-direct {v1, v0}, Lk0/a8$f;-><init>(Lk0/a8;)V

    iput-object v1, v0, Lk0/a8;->p:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 14
    iput v1, v0, Lk0/a8;->q:I

    .line 15
    iput-boolean v5, v0, Lk0/a8;->r:Z

    const-string v1, ""

    .line 16
    iput-object v1, v0, Lk0/a8;->s:Ljava/lang/String;

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
        0xc
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
        0xa
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_12
    .array-data 4
        0x17
        0x22
    .end array-data

    :array_13
    .array-data 4
        0x18
        0x23
    .end array-data

    :array_14
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_15
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_16
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_18
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_19
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_1a
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_1b
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_1c
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_1d
    .array-data 4
        0x34
        0x12
    .end array-data

    :array_1e
    .array-data 4
        0x35
        0x1a
    .end array-data

    :array_1f
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_20
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_21
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_22
    .array-data 4
        0x46
        0x8
    .end array-data

    :array_23
    .array-data 4
        0x61
        0x3f
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public static b3(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic c3(Lk0/a8;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/a8;->g3()V

    return-void
.end method

.method public static synthetic d3(Lk0/a8;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/a8;->f3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic e3(Lk0/a8;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/a8;->h3()V

    return-void
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

    const/4 v1, 0x1

    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 2
    iput v2, v0, Lk0/mt;->g:I

    .line 3
    iput v2, v0, Lk0/mt;->o:I

    .line 4
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    sget v3, Lk0/nt;->c:I

    const-string v4, "com.syu.canbus"

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    .line 6
    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v2, v0, Lk0/mt;->f:I

    goto :goto_0

    .line 8
    :pswitch_0
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 9
    iput v1, v0, Lk0/mt;->f:I

    .line 10
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 11
    :pswitch_1
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    iput v1, v0, Lk0/mt;->f:I

    .line 13
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/a8;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/a8;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/a8;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/a8;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/a8;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/a8;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 20
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x79

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_25

    const/16 v3, -0x10

    const/4 v8, 0x2

    if-eq v2, v3, :cond_24

    const/16 v3, 0x31

    const/16 v9, 0x12

    const/16 v10, 0x41

    const/4 v12, 0x3

    const/16 v13, 0xff

    if-eq v2, v3, :cond_1d

    if-eq v2, v10, :cond_1c

    const/16 v3, 0x61

    const/16 v10, 0x1f

    const/4 v14, 0x5

    const/4 v15, 0x6

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x11

    const/16 v11, 0x8

    if-eq v2, v3, :cond_13

    if-eq v2, v9, :cond_11

    const/16 v3, 0x21

    if-eq v2, v3, :cond_c

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    goto/16 :goto_f

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v1, v1, v3

    if-eqz v2, :cond_b

    if-eq v2, v7, :cond_6

    if-eq v2, v8, :cond_1

    goto/16 :goto_f

    .line 4
    :cond_1
    iget v2, v0, Lk0/a8;->i:I

    if-eq v1, v2, :cond_26

    if-le v1, v2, :cond_3

    move v2, v6

    .line 5
    :goto_0
    iget v3, v0, Lk0/a8;->i:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_2

    .line 6
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge v1, v2, :cond_5

    move v2, v6

    .line 8
    :goto_1
    iget v3, v0, Lk0/a8;->i:I

    sub-int/2addr v3, v1

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_4

    .line 9
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 11
    :cond_5
    :goto_2
    iput v1, v0, Lk0/a8;->i:I

    goto/16 :goto_f

    .line 12
    :cond_6
    iget v2, v0, Lk0/a8;->h:I

    if-eq v1, v2, :cond_26

    if-le v1, v2, :cond_8

    move v2, v6

    .line 13
    :goto_3
    iget v3, v0, Lk0/a8;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_7

    .line 14
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 15
    :cond_7
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge v1, v2, :cond_a

    move v2, v6

    .line 16
    :goto_4
    iget v3, v0, Lk0/a8;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_9

    .line 17
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 18
    :cond_9
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 19
    :cond_a
    :goto_5
    iput v1, v0, Lk0/a8;->h:I

    goto/16 :goto_f

    .line 20
    :cond_b
    iput v6, v0, Lk0/a8;->h:I

    .line 21
    iput v6, v0, Lk0/a8;->i:I

    goto/16 :goto_f

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    iput v2, v0, Lk0/a8;->d:I

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    move v2, v6

    .line 24
    :goto_6
    iget-object v3, v0, Lk0/a8;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_e

    .line 25
    iget v4, v0, Lk0/a8;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_d

    if-eqz v4, :cond_e

    .line 26
    iput v2, v0, Lk0/a8;->e:I

    goto :goto_7

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    and-int/2addr v1, v13

    if-ne v1, v7, :cond_f

    .line 27
    array-length v1, v3

    if-ge v2, v1, :cond_26

    .line 28
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_f
    if-nez v1, :cond_26

    .line 29
    iget v1, v0, Lk0/a8;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_10

    if-eq v1, v13, :cond_10

    .line 30
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 31
    :cond_10
    iput v13, v0, Lk0/a8;->e:I

    goto/16 :goto_f

    :cond_11
    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 33
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_12

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 34
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 35
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_12
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 36
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 37
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 38
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 39
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 40
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    .line 41
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    add-int/lit8 v2, p2, 0x4

    .line 42
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 43
    aget-byte v3, v1, v3

    and-int/2addr v2, v13

    .line 44
    iput v2, v0, Lk0/a8;->c:I

    move v2, v6

    .line 45
    :goto_9
    iget-object v4, v0, Lk0/a8;->f:[[I

    array-length v8, v4

    if-ge v2, v8, :cond_15

    .line 46
    iget v8, v0, Lk0/a8;->c:I

    aget-object v9, v4, v2

    aget v9, v9, v6

    if-ne v8, v9, :cond_14

    if-eqz v8, :cond_15

    .line 47
    iput v2, v0, Lk0/a8;->b:I

    goto :goto_a

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 48
    :cond_15
    :goto_a
    iget v8, v0, Lk0/a8;->c:I

    if-eq v8, v15, :cond_18

    and-int/2addr v3, v13

    if-eqz v3, :cond_16

    .line 49
    array-length v3, v4

    if-ge v2, v3, :cond_1a

    .line 50
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 51
    :cond_16
    iget v2, v0, Lk0/a8;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_17

    if-eq v2, v13, :cond_17

    .line 52
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 53
    :cond_17
    iput v13, v0, Lk0/a8;->b:I

    goto :goto_b

    :cond_18
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v7, :cond_1a

    .line 54
    sget v2, Lh0/c;->E:I

    if-eq v2, v12, :cond_19

    if-eq v2, v5, :cond_19

    if-eq v2, v14, :cond_19

    const/16 v2, 0xc

    .line 55
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 56
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_19
    const/16 v2, 0x1a

    .line 57
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 58
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    :cond_1a
    :goto_b
    add-int/lit8 v2, p2, 0x9

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v13

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_f

    :cond_1b
    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x2

    .line 60
    aget-byte v11, v1, v9

    shr-int/2addr v11, v15

    and-int/2addr v11, v12

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 61
    aget-byte v11, v1, v9

    shr-int/2addr v11, v5

    and-int/2addr v11, v12

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    .line 62
    aget-byte v11, v1, v9

    shr-int/2addr v11, v12

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    .line 63
    aget-byte v11, v1, v9

    shr-int/2addr v11, v8

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    .line 64
    aget-byte v11, v1, v9

    shr-int/2addr v11, v7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    .line 65
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x3

    .line 66
    aget-byte v11, v1, v9

    shr-int/2addr v11, v7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 67
    aget-byte v11, v1, v9

    shr-int/2addr v11, v6

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    .line 68
    aget-byte v11, v1, v9

    shr-int/2addr v11, v15

    and-int/2addr v11, v12

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    .line 69
    aget-byte v11, v1, v9

    shr-int/2addr v11, v14

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    .line 70
    aget-byte v11, v1, v9

    shr-int/2addr v11, v5

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    .line 71
    aget-byte v9, v1, v9

    shr-int/2addr v9, v8

    and-int/2addr v9, v12

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x4

    .line 72
    aget-byte v11, v1, v9

    shr-int/2addr v11, v5

    and-int/lit8 v11, v11, 0xf

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 73
    aget-byte v11, v1, v9

    shr-int/2addr v11, v8

    and-int/2addr v11, v12

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    .line 74
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x5

    .line 75
    aget-byte v11, v1, v9

    shr-int/2addr v11, v4

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    .line 76
    aget-byte v9, v1, v9

    shr-int/2addr v9, v8

    and-int/2addr v9, v10

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x6

    .line 77
    aget-byte v10, v1, v9

    shr-int/2addr v10, v15

    and-int/2addr v10, v12

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    .line 78
    aget-byte v10, v1, v9

    shr-int/lit8 v5, v10, 0x4

    and-int/2addr v5, v12

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 79
    aget-byte v5, v1, v9

    shr-int/2addr v5, v12

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 80
    aget-byte v5, v1, v9

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x7

    .line 81
    aget-byte v8, v1, v5

    shr-int/lit8 v4, v8, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 82
    aget-byte v1, v1, v5

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x7f

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    .line 83
    :cond_1c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    add-int/lit8 v2, p2, 0x2

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/a8;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/a8;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 86
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/a8;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/a8;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 88
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    invoke-static {v3}, Lk0/a8;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 89
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Lk0/a8;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 90
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    invoke-static {v3}, Lk0/a8;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    .line 91
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    invoke-static {v1}, Lk0/a8;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_f

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 92
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    add-int/lit8 v3, p2, 0x3

    .line 93
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    add-int/lit8 v4, p2, 0x4

    .line 94
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    add-int/lit8 v11, p2, 0x6

    .line 95
    aget-byte v11, v1, v11

    and-int/2addr v11, v13

    add-int/lit8 v14, p2, 0x7

    .line 96
    aget-byte v14, v1, v14

    and-int/2addr v14, v13

    add-int/lit8 v15, p2, 0x8

    .line 97
    aget-byte v15, v1, v15

    and-int/2addr v15, v13

    const/16 v9, 0xa

    add-int/lit8 v16, p2, 0xa

    .line 98
    aget-byte v1, v1, v16

    and-int/2addr v1, v13

    new-array v13, v7, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v13, v6

    .line 99
    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xb

    new-array v13, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v12

    aput v2, v13, v6

    .line 100
    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v9, v3, 0x4

    and-int/2addr v9, v7

    aput v9, v2, v6

    const/16 v9, 0xc

    .line 101
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v9, v7, [I

    shr-int/2addr v3, v12

    and-int/2addr v3, v7

    aput v3, v9, v6

    .line 102
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v9, v4, 0x5

    and-int/2addr v9, v7

    aput v9, v3, v6

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v4, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 104
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    if-eq v11, v7, :cond_21

    if-eq v11, v8, :cond_20

    if-eq v11, v12, :cond_1f

    if-eq v11, v5, :cond_1e

    move v2, v6

    move v3, v2

    :goto_c
    move v4, v3

    goto :goto_d

    :cond_1e
    move v3, v6

    move v2, v7

    move v4, v2

    goto :goto_d

    :cond_1f
    move v2, v6

    move v3, v2

    move v4, v7

    goto :goto_d

    :cond_20
    move v2, v6

    move v3, v7

    goto :goto_c

    :cond_21
    move v2, v6

    move v4, v2

    move v3, v7

    :goto_d
    new-array v5, v7, [I

    aput v2, v5, v6

    const/16 v2, 0x12

    .line 105
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 106
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    aput v14, v3, v6

    .line 108
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xff

    and-int/lit16 v3, v15, 0xff

    const/16 v4, 0xfe

    const/16 v5, 0x1b

    if-ne v3, v4, :cond_22

    new-array v2, v7, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    .line 109
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_22
    if-ne v3, v2, :cond_23

    new-array v2, v7, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 110
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_23
    new-array v2, v7, [I

    aput v3, v2, v6

    .line 111
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_e
    const/16 v2, 0x64

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 112
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 114
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 115
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    .line 116
    :cond_24
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_f

    :cond_25
    add-int/lit8 v2, p2, 0x2

    .line 117
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 118
    aget-byte v1, v1, v3

    const/16 v3, 0x62

    new-array v5, v7, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    aput v2, v5, v6

    .line 119
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 120
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_26
    :goto_f
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/a8;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/a8;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/a8;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/a8;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/a8;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/a8;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/a8;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7f

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

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p2, v1}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p3, p1, v2

    aput v1, p1, v4

    const/16 p3, 0x6f

    aput p3, p1, v3

    .line 2
    aget p3, p2, v2

    aput p3, p1, v0

    aget p3, p2, v4

    aput p3, p1, v1

    aget p3, p2, v3

    aput p3, p1, p4

    const/4 p3, 0x6

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2, v3}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, p4, [I

    aput p3, p1, v2

    aput v3, p1, v4

    const/16 p3, 0x3d

    aput p3, p1, v3

    .line 4
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, p4, [I

    aput p3, p1, v2

    aput v3, p1, v4

    const/16 p3, 0x8c

    aput p3, p1, v3

    aput v4, p1, v0

    .line 6
    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final f3(BLjava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    :try_start_0
    const-string p1, "utf-8"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    :goto_1
    array-length p2, p1

    if-le p2, v1, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    array-length p2, p1

    :goto_2
    if-ge v2, p2, :cond_3

    add-int/lit8 p2, v2, 0x3

    .line 4
    aget-byte v3, p1, v2

    aput v3, v0, p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 6
    :cond_3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final g3()V
    .locals 8

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    move v0, v6

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_5
    move v0, v4

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v2

    goto :goto_0

    :pswitch_8
    move v0, v5

    goto :goto_0

    :pswitch_9
    move v0, v3

    :goto_0
    new-array v4, v4, [I

    const/16 v7, 0xe3

    aput v7, v4, v6

    aput v5, v4, v3

    const/16 v3, 0x24

    aput v3, v4, v5

    aput v0, v4, v2

    aput v6, v4, v1

    .line 2
    invoke-static {v4}, Lz/k;->s([I)V

    return-void

    nop

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
.end method

.method public final h3()V
    .locals 6

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    move v1, v2

    goto :goto_2

    :pswitch_0
    move v1, v3

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x7

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x6

    .line 2
    :goto_2
    :pswitch_4
    iget v0, p0, Lk0/a8;->q:I

    if-eq v0, v1, :cond_2

    .line 3
    iput v1, p0, Lk0/a8;->q:I

    move v0, v3

    goto :goto_3

    :cond_2
    move v0, v2

    .line 4
    :goto_3
    iget v5, p0, Lk0/a8;->q:I

    if-eq v5, v1, :cond_3

    .line 5
    iput v1, p0, Lk0/a8;->q:I

    move v0, v3

    .line 6
    :cond_3
    iget-object v1, p0, Lk0/a8;->s:Ljava/lang/String;

    sget-object v5, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    iput-object v1, p0, Lk0/a8;->s:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lk0/a8;->s:Ljava/lang/String;

    :cond_4
    move v3, v0

    :cond_5
    if-eqz v3, :cond_7

    .line 9
    iget v0, p0, Lk0/a8;->q:I

    if-eqz v0, :cond_6

    iget-object v1, p0, Lk0/a8;->s:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lk0/a8;->i3(ILjava/lang/String;)V

    .line 10
    :cond_6
    iget-boolean v0, p0, Lk0/a8;->r:Z

    if-eq v0, v4, :cond_7

    .line 11
    iput-boolean v4, p0, Lk0/a8;->r:Z

    .line 12
    iput v2, p0, Lk0/a8;->q:I

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public final i3(ILjava/lang/String;)V
    .locals 5

    const/16 v0, 0x1e

    new-array v0, v0, [I

    const/16 v1, -0x1d

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x1b

    const/4 v3, 0x1

    aput v1, v0, v3

    const/16 v1, 0xcd

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v1, 0x3

    aput p1, v0, v1

    if-eq p1, v3, :cond_0

    if-eq p1, v4, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 1
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x18

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const-string p1, "utf-8"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :goto_1
    if-ge v2, v1, :cond_3

    add-int/lit8 p2, v2, 0x6

    .line 3
    aget-byte v3, p1, v2

    aput v3, v0, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4
    :catch_0
    :cond_3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
