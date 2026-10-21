.class public Lk0/rl;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/rl;->c:I

    const/16 v1, 0x23

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

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v8, 0x7

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v8, 0x8

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v8, 0x9

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v8, 0xa

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v8, 0xb

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v8, 0xc

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v8, 0xd

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v8, 0xe

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v8, 0xf

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v8, 0x10

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v8, 0x11

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v8, 0x12

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v8, 0x13

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v8, 0x14

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v8, 0x15

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v8, 0x16

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v8, 0x17

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v8, 0x18

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v8, 0x19

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v8, 0x1a

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v8, 0x1b

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v8, 0x1c

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v8, 0x1d

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v8, 0x1e

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v8, 0x1f

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v8, 0x20

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v8, 0x21

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v8, 0x22

    aput-object v3, v1, v8

    iput-object v1, p0, Lk0/rl;->d:[[I

    .line 4
    iput v0, p0, Lk0/rl;->f:I

    new-array v1, v7, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_23

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    aput-object v2, v1, v6

    iput-object v1, p0, Lk0/rl;->g:[[I

    .line 6
    iput v0, p0, Lk0/rl;->h:I

    .line 7
    new-instance v0, Lk0/rl$a;

    invoke-direct {v0, p0}, Lk0/rl$a;-><init>(Lk0/rl;)V

    iput-object v0, p0, Lk0/rl;->i:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/rl$b;

    invoke-direct {v0, p0}, Lk0/rl$b;-><init>(Lk0/rl;)V

    iput-object v0, p0, Lk0/rl;->j:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x16
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x18
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x35
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xb
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4e
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x36
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x20
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x21
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x22
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x23
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x28
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x29
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x2a
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x2b
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x31
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x28
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x29
    .end array-data

    :array_18
    .array-data 4
        0x19
        0x2a
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0x2b
    .end array-data

    :array_1a
    .array-data 4
        0x1b
        0x2c
    .end array-data

    :array_1b
    .array-data 4
        0x1c
        0x2d
    .end array-data

    :array_1c
    .array-data 4
        0x1d
        0x2e
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x2f
    .end array-data

    :array_1e
    .array-data 4
        0x1f
        0x30
    .end array-data

    :array_1f
    .array-data 4
        0x20
        0x32
    .end array-data

    :array_20
    .array-data 4
        0x21
        0x33
    .end array-data

    :array_21
    .array-data 4
        0x22
        0x7
    .end array-data

    :array_22
    .array-data 4
        0x23
        0x8
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_24
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_25
    .array-data 4
        0x3
        0x1a
    .end array-data

    :array_26
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_27
    .array-data 4
        0x5
        0xd
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
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v2, v0, Lk0/mt;->l:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/rl;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_10

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eq v0, v2, :cond_f

    const/16 v9, 0x24

    if-eq v0, v9, :cond_d

    const/16 v6, 0x26

    if-eq v0, v6, :cond_c

    const/16 v6, 0x30

    if-eq v0, v6, :cond_b

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    invoke-static {p3}, Ll0/c0;->z1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    invoke-static {p3}, Ll0/c0;->z1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 4
    aget-byte p3, p1, p3

    invoke-static {p3}, Ll0/c0;->z1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v7

    .line 5
    aget-byte p1, p1, p2

    invoke-static {p1}, Ll0/c0;->z1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_1
    const/16 p3, 0xa

    new-array v0, v5, [I

    add-int/lit8 v6, p2, 0x2

    .line 6
    aget-byte v9, p1, v6

    shr-int/2addr v9, v1

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v0, v5, [I

    .line 7
    aget-byte v9, p1, v6

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v5, [I

    .line 8
    aget-byte v9, p1, v6

    shr-int/2addr v9, v7

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v0, v5, [I

    .line 9
    aget-byte v9, p1, v6

    shr-int/lit8 v2, v9, 0x3

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v0, v5, [I

    .line 10
    aget-byte v2, p1, v6

    shr-int/2addr v2, v8

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 11
    aget-byte v0, p1, v6

    shr-int/2addr v0, v5

    and-int/2addr v0, v5

    aput v0, p3, v4

    const/16 v0, 0xf

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v2, v5, [I

    .line 12
    aget-byte v6, p1, v6

    shr-int/2addr v6, v4

    and-int/2addr v6, v5

    aput v6, v2, v4

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v2, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 13
    aget-byte v9, p1, v6

    shr-int/lit8 v1, v9, 0x7

    and-int/2addr v1, v5

    aput v1, v2, v4

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v5, [I

    .line 14
    aget-byte v2, p1, v6

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v5

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v5, [I

    .line 15
    aget-byte v2, p1, v6

    shr-int/2addr v2, v7

    and-int/2addr v2, v5

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v1, v5, [I

    .line 16
    aget-byte v2, p1, v6

    shr-int/2addr v2, v4

    and-int/2addr v0, v2

    aput v0, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 17
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x5

    .line 18
    aget-byte v2, p1, v1

    and-int/2addr v2, v3

    const-string v6, "persist.fyt.reversetemp"

    .line 19
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 20
    aget-byte v0, p1, v1

    and-int/2addr v0, v3

    .line 21
    aget-byte p3, p1, p3

    and-int/lit16 v2, p3, 0xff

    :cond_0
    const/16 p3, 0x3b

    const/4 v1, -0x1

    const/16 v3, 0x1f

    const/4 v6, -0x3

    const/4 v7, -0x2

    const/16 v9, 0x7f

    const/16 v10, 0x1b

    if-eqz v0, :cond_3

    if-eq v0, v9, :cond_2

    if-lt v0, v3, :cond_1

    if-gt v0, p3, :cond_1

    new-array v11, v5, [I

    aput v0, v11, v4

    .line 22
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v0, v5, [I

    aput v1, v0, v4

    .line 23
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v0, v5, [I

    aput v6, v0, v4

    .line 24
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v0, v5, [I

    aput v7, v0, v4

    .line 25
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v0, 0x1c

    if-eqz v2, :cond_6

    if-eq v2, v9, :cond_5

    if-lt v2, v3, :cond_4

    if-gt v2, p3, :cond_4

    new-array p3, v5, [I

    aput v2, p3, v4

    .line 26
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array p3, v5, [I

    aput v1, p3, v4

    .line 27
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array p3, v5, [I

    aput v6, p3, v4

    .line 28
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array p3, v5, [I

    aput v7, p3, v4

    .line 29
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 p3, 0x35

    new-array v0, v5, [I

    add-int/lit8 p2, p2, 0x6

    .line 30
    aget-byte p1, p1, p2

    shr-int/2addr p1, v8

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 31
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 32
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 33
    iput p2, p0, Lk0/rl;->f:I

    move p2, v4

    .line 34
    :goto_2
    iget-object p3, p0, Lk0/rl;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_8

    .line 35
    iget v0, p0, Lk0/rl;->f:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_7

    if-eqz v0, :cond_8

    .line 36
    iput p2, p0, Lk0/rl;->e:I

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_9

    .line 37
    array-length p1, p3

    if-ge p2, p1, :cond_17

    .line 38
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_9
    if-nez p1, :cond_17

    .line 39
    iget p1, p0, Lk0/rl;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_a

    if-eq p1, v3, :cond_a

    .line 40
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 41
    :cond_a
    iput v3, p0, Lk0/rl;->e:I

    goto/16 :goto_9

    .line 42
    :cond_b
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_c
    add-int/lit8 p3, p2, 0x3

    .line 43
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    const p2, 0x8000

    const/16 v0, 0x29f4

    invoke-static {p3, p1, p2, v4, v0}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_9

    :cond_d
    add-int/2addr p2, v8

    .line 44
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 45
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_e

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 46
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 47
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 48
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 49
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 50
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 51
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 52
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_f
    const/16 p3, 0x62

    new-array v0, v5, [I

    add-int/2addr p2, v8

    .line 53
    aget-byte v2, p1, p2

    shr-int/lit8 v1, v2, 0x7

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v5, [I

    .line 54
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v5, [I

    .line 55
    aget-byte v1, p1, p2

    shr-int/2addr v1, v7

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    .line 56
    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_10
    add-int/lit8 p3, p2, 0x2

    .line 57
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 58
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 59
    iput p2, p0, Lk0/rl;->c:I

    move p2, v4

    .line 60
    :goto_5
    iget-object p3, p0, Lk0/rl;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_12

    .line 61
    iget v0, p0, Lk0/rl;->c:I

    aget-object v2, p3, p2

    aget v2, v2, v4

    if-ne v0, v2, :cond_11

    if-eqz v0, :cond_12

    .line 62
    iput p2, p0, Lk0/rl;->b:I

    goto :goto_6

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 63
    :cond_12
    :goto_6
    iget v0, p0, Lk0/rl;->c:I

    const/16 v2, 0x22

    if-eq v0, v2, :cond_16

    const/16 v2, 0x23

    if-eq v0, v2, :cond_15

    and-int/2addr p1, v3

    if-ne p1, v5, :cond_13

    .line 64
    array-length p1, p3

    if-ge p2, p1, :cond_17

    .line 65
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_13
    if-nez p1, :cond_17

    .line 66
    iget p1, p0, Lk0/rl;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_14

    if-eq p1, v3, :cond_14

    .line 67
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 68
    :cond_14
    iput v3, p0, Lk0/rl;->b:I

    goto :goto_9

    :cond_15
    move p2, v4

    :goto_7
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_17

    .line 69
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 70
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_16
    move p2, v4

    :goto_8
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_17

    const/16 p3, 0x8

    .line 71
    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    .line 72
    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_17
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/rl;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/rl;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x67

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
    .locals 4

    const/4 p3, 0x2

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x90

    aput p4, p1, v3

    aput v3, p1, p3

    .line 1
    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x83

    aput p4, p1, v3

    aput v3, p1, p3

    .line 2
    aget p3, p2, v2

    aput p3, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    const/16 p1, 0x66

    new-array p3, v3, [I

    .line 3
    aget p2, p2, v2

    shr-int/2addr p2, v1

    and-int/2addr p2, v3

    aput p2, p3, v2

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    :goto_0
    return-void
.end method
