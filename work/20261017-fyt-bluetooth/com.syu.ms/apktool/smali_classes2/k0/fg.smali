.class public Lk0/fg;
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

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/fg;->c:I

    const/16 v1, 0x28

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

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v4, 0x20

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v4, 0x21

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v4, 0x22

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v4, 0x23

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v4, 0x24

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v4, 0x25

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v4, 0x26

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    const/16 v3, 0x27

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/fg;->d:[[I

    .line 4
    new-instance v1, Lk0/fg$a;

    invoke-direct {v1, p0}, Lk0/fg$a;-><init>(Lk0/fg;)V

    iput-object v1, p0, Lk0/fg;->e:Ljava/lang/Runnable;

    .line 5
    iput v0, p0, Lk0/fg;->f:I

    .line 6
    new-instance v0, Lk0/fg$b;

    invoke-direct {v0, p0}, Lk0/fg$b;-><init>(Lk0/fg;)V

    iput-object v0, p0, Lk0/fg;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/fg$c;

    invoke-direct {v0, p0}, Lk0/fg$c;-><init>(Lk0/fg;)V

    iput-object v0, p0, Lk0/fg;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/fg$d;

    invoke-direct {v0, p0}, Lk0/fg$d;-><init>(Lk0/fg;)V

    iput-object v0, p0, Lk0/fg;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/fg$e;

    invoke-direct {v0, p0}, Lk0/fg$e;-><init>(Lk0/fg;)V

    iput-object v0, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/fg$f;

    invoke-direct {v0, p0}, Lk0/fg$f;-><init>(Lk0/fg;)V

    iput-object v0, p0, Lk0/fg;->k:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x28
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x29
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x2a
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x2b
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x2c
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2d
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4a
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x4b
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x16
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x35
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x26
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x40
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x1c
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x1b
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x19
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0x36
    .end array-data

    :array_1a
    .array-data 4
        0x1b
        0x19
    .end array-data

    :array_1b
    .array-data 4
        0x1c
        0x1d
    .end array-data

    :array_1c
    .array-data 4
        0x1d
        0x22
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x23
    .end array-data

    :array_1e
    .array-data 4
        0x1f
        0x20
    .end array-data

    :array_1f
    .array-data 4
        0x20
        0x21
    .end array-data

    :array_20
    .array-data 4
        0x21
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x22
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x23
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x24
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x30
        0x7
    .end array-data

    :array_25
    .array-data 4
        0x31
        0x23
    .end array-data

    :array_26
    .array-data 4
        0x32
        0x1f
    .end array-data

    :array_27
    .array-data 4
        0x33
        0x1e
    .end array-data
.end method

.method public static b3()V
    .locals 9

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/16 v2, 0x83

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x5

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    if-eq v5, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget v5, Lw0/d;->j:I

    and-int/lit16 v5, v5, 0xff

    .line 3
    sget v6, Lw0/d;->h:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v6, :cond_1

    if-eq v6, v2, :cond_1

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    aput v8, v1, v8

    goto :goto_0

    :pswitch_1
    aput v2, v1, v8

    goto :goto_0

    :pswitch_2
    aput v3, v1, v8

    goto :goto_0

    :cond_1
    aput v7, v1, v8

    .line 4
    :goto_0
    sget v6, Lw0/d;->i:I

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v1, v7

    const/4 v7, 0x4

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v7

    const/4 v6, 0x6

    .line 5
    rem-int/2addr v5, v6

    add-int/2addr v5, v2

    aput v5, v1, v4

    .line 6
    sget v2, Lw0/d;->z:I

    if-eqz v2, :cond_2

    .line 7
    aget v2, v1, v6

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v6

    goto :goto_1

    .line 8
    :cond_2
    aget v2, v1, v6

    and-int/2addr v2, v3

    aput v2, v1, v6

    :goto_1
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 9
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 10
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c3()V
    .locals 15

    const/16 v0, 0x9

    new-array v1, v0, [I

    const/16 v2, 0x84

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x7

    aput v4, v1, v2

    const/16 v5, 0xff

    const/4 v6, 0x2

    aput v5, v1, v6

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v7, 0x10

    const/16 v8, 0x20

    const/4 v9, 0x5

    const/16 v10, 0xa

    const/16 v11, 0x8

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x6

    if-eq v5, v13, :cond_5

    if-eq v5, v11, :cond_0

    if-eq v5, v10, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    sget v5, Lu0/b;->r3:I

    div-int/lit8 v5, v5, 0x64

    .line 3
    invoke-static {v5}, Lk0/fg;->d3(I)I

    move-result v5

    aput v5, v1, v12

    .line 4
    sget v5, Lu0/b;->t3:I

    rem-int/lit16 v5, v5, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Lk0/fg;->d3(I)I

    move-result v5

    aput v5, v1, v13

    .line 5
    sget v5, Lu0/b;->t3:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Lk0/fg;->d3(I)I

    move-result v5

    aput v5, v1, v9

    .line 6
    sget v5, Lu0/b;->o3:I

    if-ne v5, v2, :cond_1

    .line 7
    aget v2, v1, v14

    and-int/lit8 v2, v2, 0x30

    aput v2, v1, v14

    goto :goto_0

    .line 8
    :cond_1
    sget v2, Lu0/b;->n3:I

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v12, :cond_2

    goto :goto_0

    :cond_2
    aput v7, v1, v14

    goto :goto_0

    :cond_3
    aput v3, v1, v14

    goto :goto_0

    :cond_4
    aput v8, v1, v14

    :goto_0
    aput v3, v1, v4

    .line 9
    sget v2, Lu0/b;->r3:I

    rem-int/lit8 v2, v2, 0x64

    .line 10
    invoke-static {v2}, Lk0/fg;->d3(I)I

    move-result v2

    aput v2, v1, v11

    goto :goto_2

    .line 11
    :cond_5
    sget v2, Lo0/e;->B:I

    div-int/lit8 v2, v2, 0x64

    .line 12
    invoke-static {v2}, Lk0/fg;->d3(I)I

    move-result v2

    aput v2, v1, v12

    .line 13
    sget v2, Lo0/e;->r:I

    rem-int/lit16 v2, v2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Lk0/fg;->d3(I)I

    move-result v2

    aput v2, v1, v13

    .line 14
    sget v2, Lo0/e;->r:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Lk0/fg;->d3(I)I

    move-result v2

    aput v2, v1, v9

    .line 15
    sget v2, Lo0/e;->P:I

    if-eqz v2, :cond_6

    .line 16
    aget v2, v1, v14

    and-int/lit8 v2, v2, 0x30

    aput v2, v1, v14

    goto :goto_1

    .line 17
    :cond_6
    sget v2, Lo0/e;->O:I

    if-eqz v2, :cond_a

    if-eq v2, v6, :cond_9

    if-eq v2, v12, :cond_8

    if-eq v2, v13, :cond_7

    goto :goto_1

    :cond_7
    const/16 v2, 0x60

    aput v2, v1, v14

    goto :goto_1

    :cond_8
    aput v7, v1, v14

    goto :goto_1

    :cond_9
    aput v8, v1, v14

    goto :goto_1

    :cond_a
    aput v3, v1, v14

    :goto_1
    aput v3, v1, v4

    .line 18
    sget v2, Lo0/e;->B:I

    rem-int/lit8 v2, v2, 0x64

    .line 19
    invoke-static {v2}, Lk0/fg;->d3(I)I

    move-result v2

    aput v2, v1, v11

    :goto_2
    new-array v2, v10, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_b

    add-int/lit8 v4, v3, 0x1

    .line 20
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 21
    :cond_b
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public static d3(I)I
    .locals 1

    .line 1
    rem-int/lit8 v0, p0, 0x64

    div-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0x4

    rem-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v0

    return p0
.end method

.method public static synthetic e3(Lk0/fg;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/fg;->a3()V

    return-void
.end method

.method public static synthetic f3(Lk0/fg;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/fg;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic g3()V
    .locals 0

    .line 1
    invoke-static {}, Lk0/fg;->b3()V

    return-void
.end method

.method public static synthetic h3()V
    .locals 0

    .line 1
    invoke-static {}, Lk0/fg;->c3()V

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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/fg;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/fg;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/fg;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/fg;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/fg;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    iget-object v0, p0, Lk0/fg;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/fg;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/fg;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->u:Lo1/y;

    iget-object v2, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->v:Lo1/y;

    iget-object v2, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lu0/c;->r:Lo1/y;

    iget-object v2, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 6

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_3

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    add-int/2addr p2, v5

    .line 3
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 4
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 5
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 6
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 7
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 8
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 9
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 10
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 11
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 12
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p3, p2

    .line 13
    iput p3, p0, Lk0/fg;->c:I

    move p3, v3

    .line 14
    :goto_1
    iget-object v0, p0, Lk0/fg;->d:[[I

    array-length v1, v0

    if-ge p3, v1, :cond_5

    .line 15
    iget v1, p0, Lk0/fg;->c:I

    aget-object v2, v0, p3

    aget v2, v2, v3

    if-ne v1, v2, :cond_4

    if-eqz v1, :cond_5

    .line 16
    iput p3, p0, Lk0/fg;->b:I

    goto :goto_2

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 17
    :cond_5
    :goto_2
    iget v1, p0, Lk0/fg;->c:I

    packed-switch v1, :pswitch_data_0

    and-int/2addr p1, p2

    if-ne p1, v4, :cond_a

    .line 18
    array-length p1, v0

    if-ge p3, p1, :cond_c

    .line 19
    aget-object p1, v0, p3

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_7

    :pswitch_0
    move p3, v3

    :goto_3
    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0x1e

    if-ge p3, v0, :cond_6

    .line 20
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 21
    :cond_6
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :pswitch_1
    move p3, v3

    :goto_4
    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0x1f

    if-ge p3, v0, :cond_7

    .line 22
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 23
    :cond_7
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :pswitch_2
    move p3, v3

    :goto_5
    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0x8

    if-ge p3, v0, :cond_8

    .line 24
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 25
    :cond_8
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :pswitch_3
    move p3, v3

    :goto_6
    and-int/lit16 v0, p1, 0xff

    const/4 v1, 0x7

    if-ge p3, v0, :cond_9

    .line 26
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 27
    :cond_9
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_a
    if-nez p1, :cond_c

    .line 28
    iget p1, p0, Lk0/fg;->b:I

    array-length p3, v0

    if-ge p1, p3, :cond_b

    if-eq p1, p2, :cond_b

    .line 29
    aget-object p1, v0, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 30
    :cond_b
    iput p2, p0, Lk0/fg;->b:I

    :cond_c
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
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

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/fg;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/fg;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/fg;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/fg;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/fg;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/fg;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/fg;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/fg;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->u:Lo1/y;

    iget-object v1, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lu0/c;->v:Lo1/y;

    iget-object v1, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lu0/c;->r:Lo1/y;

    iget-object v1, p0, Lk0/fg;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x7

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

.method public final a3()V
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0x82

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eq v5, v2, :cond_4

    if-eq v5, v4, :cond_3

    if-eq v5, v0, :cond_2

    if-eq v5, v6, :cond_1

    const/16 v8, 0x8

    if-eq v5, v8, :cond_0

    const/16 v9, 0xa

    if-eq v5, v9, :cond_0

    aput v8, v1, v4

    goto :goto_0

    :cond_0
    aput v7, v1, v4

    goto :goto_0

    :cond_1
    aput v4, v1, v4

    goto :goto_0

    :cond_2
    aput v2, v1, v4

    goto :goto_0

    :cond_3
    aput v0, v1, v4

    goto :goto_0

    :cond_4
    aput v3, v1, v4

    .line 2
    :goto_0
    sget v5, Lu0/b;->a0:I

    if-eqz v5, :cond_5

    .line 3
    aget v5, v1, v4

    or-int/lit16 v5, v5, 0x80

    aput v5, v1, v4

    .line 4
    :cond_5
    sget v5, Lu0/b;->f:I

    if-nez v5, :cond_6

    .line 5
    aget v5, v1, v4

    and-int/lit8 v5, v5, 0x7f

    aput v5, v1, v4

    .line 6
    :cond_6
    sget v4, Ly0/f;->C0:I

    aput v4, v1, v7

    const/16 v5, 0x24

    if-le v4, v5, :cond_7

    aput v5, v1, v7

    .line 7
    :cond_7
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_8

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_9

    :cond_8
    aput v3, v1, v7

    .line 8
    :cond_9
    iget v2, p0, Lk0/fg;->f:I

    if-lez v2, :cond_a

    .line 9
    aget v2, v1, v7

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v7

    :cond_a
    new-array v2, v6, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_b

    add-int/lit8 v4, v3, 0x1

    .line 10
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 11
    :cond_b
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
