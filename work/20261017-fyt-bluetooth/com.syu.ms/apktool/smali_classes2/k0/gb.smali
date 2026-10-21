.class public Lk0/gb;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:[I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:J

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gb;->b:I

    .line 3
    iput v0, p0, Lk0/gb;->d:I

    const/16 v1, 0xa

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    iput-object v1, p0, Lk0/gb;->e:[[I

    .line 5
    new-instance v1, Lk0/gb$a;

    invoke-direct {v1, p0}, Lk0/gb$a;-><init>(Lk0/gb;)V

    iput-object v1, p0, Lk0/gb;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/gb$b;

    invoke-direct {v1, p0}, Lk0/gb$b;-><init>(Lk0/gb;)V

    iput-object v1, p0, Lk0/gb;->g:Ljava/lang/Runnable;

    new-array v1, v2, [I

    .line 7
    fill-array-data v1, :array_a

    iput-object v1, p0, Lk0/gb;->h:[I

    .line 8
    iput v0, p0, Lk0/gb;->i:I

    .line 9
    new-instance v0, Lk0/gb$c;

    invoke-direct {v0, p0}, Lk0/gb$c;-><init>(Lk0/gb;)V

    iput-object v0, p0, Lk0/gb;->j:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lk0/gb;->k:J

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lk0/gb;->l:I

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
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic e3(Lk0/gb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/gb;->a3()V

    return-void
.end method

.method public static synthetic f3(Lk0/gb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/gb;->c3()V

    return-void
.end method

.method public static synthetic g3(Lk0/gb;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/gb;->k:J

    return-wide v0
.end method

.method public static synthetic h3(Lk0/gb;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/gb;->k:J

    return-wide p1
.end method

.method public static synthetic i3(Lk0/gb;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/gb;->l:I

    return p0
.end method

.method public static synthetic j3(Lk0/gb;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/gb;->l:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput-object v2, v1, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    iput v2, v1, Lk0/mt;->e:I

    .line 3
    iput v2, v1, Lk0/mt;->f:I

    .line 4
    iput v2, v1, Lk0/mt;->g:I

    .line 5
    iput v2, v1, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v0, Lk0/gb;->f:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v4, v0, Lk0/gb;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v4, v0, Lk0/gb;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v4, v0, Lk0/gb;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v4, v0, Lk0/gb;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    :cond_0
    iget-object v1, v0, Lk0/gb;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    sget v1, Lk0/nt;->a:I

    shr-int/lit8 v1, v1, 0x10

    const v4, 0xffff

    and-int/2addr v1, v4

    const/16 v4, 0xaa

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/16 v7, 0x25

    const/16 v8, 0x33

    const/16 v9, 0xe3

    const/16 v10, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/4 v14, 0x2

    if-eq v1, v12, :cond_2

    if-eq v1, v11, :cond_1

    goto/16 :goto_0

    :cond_1
    new-array v1, v10, [I

    aput v9, v1, v2

    aput v8, v1, v3

    aput v13, v1, v14

    aput v2, v1, v12

    .line 14
    iget-object v15, v0, Lk0/gb;->h:[I

    iget v12, v0, Lk0/gb;->i:I

    rem-int/2addr v12, v14

    aget v12, v15, v12

    aput v12, v1, v11

    aput v7, v1, v13

    const/16 v12, 0x1a

    aput v12, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v10, [I

    aput v9, v1, v2

    aput v8, v1, v3

    aput v13, v1, v14

    const/4 v15, 0x3

    aput v2, v1, v15

    .line 15
    iget-object v15, v0, Lk0/gb;->h:[I

    iget v3, v0, Lk0/gb;->i:I

    rem-int/2addr v3, v14

    aget v3, v15, v3

    aput v3, v1, v11

    aput v7, v1, v13

    aput v12, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v10, [I

    aput v9, v1, v2

    const/4 v3, 0x1

    aput v8, v1, v3

    aput v13, v1, v14

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 16
    iget-object v2, v0, Lk0/gb;->h:[I

    iget v3, v0, Lk0/gb;->i:I

    rem-int/2addr v3, v14

    aget v2, v2, v3

    aput v2, v1, v11

    aput v7, v1, v13

    aput v12, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    .line 17
    iget v1, v0, Lk0/gb;->i:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lk0/gb;->i:I

    .line 18
    rem-int/2addr v1, v14

    iput v1, v0, Lk0/gb;->i:I

    goto :goto_0

    :cond_2
    new-array v1, v10, [I

    aput v9, v1, v2

    aput v8, v1, v3

    aput v13, v1, v14

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 19
    iget-object v3, v0, Lk0/gb;->h:[I

    iget v12, v0, Lk0/gb;->i:I

    rem-int/2addr v12, v14

    aget v3, v3, v12

    aput v3, v1, v11

    aput v7, v1, v13

    const/16 v3, 0x1b

    aput v3, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v10, [I

    aput v9, v1, v2

    const/4 v12, 0x1

    aput v8, v1, v12

    aput v13, v1, v14

    const/4 v12, 0x3

    aput v2, v1, v12

    .line 20
    iget-object v12, v0, Lk0/gb;->h:[I

    iget v15, v0, Lk0/gb;->i:I

    rem-int/2addr v15, v14

    aget v12, v12, v15

    aput v12, v1, v11

    aput v7, v1, v13

    aput v3, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v10, [I

    aput v9, v1, v2

    const/4 v9, 0x1

    aput v8, v1, v9

    aput v13, v1, v14

    const/4 v8, 0x3

    aput v2, v1, v8

    .line 21
    iget-object v2, v0, Lk0/gb;->h:[I

    iget v8, v0, Lk0/gb;->i:I

    rem-int/2addr v8, v14

    aget v2, v2, v8

    aput v2, v1, v11

    aput v7, v1, v13

    aput v3, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    .line 22
    iget v1, v0, Lk0/gb;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/gb;->i:I

    .line 23
    rem-int/2addr v1, v14

    iput v1, v0, Lk0/gb;->i:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    sget v1, Lk0/nt;->a:I

    .line 2
    aget-byte v2, p1, p2

    const/16 v3, 0x20

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_e

    const/16 v7, 0x2f

    if-eq v2, v7, :cond_d

    const/16 v7, 0x55

    if-eq v2, v7, :cond_1

    const/16 v1, 0x66

    if-eq v2, v1, :cond_0

    goto/16 :goto_a

    .line 3
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4
    sget v1, Lk0/nt;->a:I

    const/16 v2, 0x14d

    if-ne v1, v2, :cond_14

    add-int/lit8 v1, p2, 0x2

    .line 5
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/gb;->d3(I)V

    goto/16 :goto_a

    :cond_1
    const v2, 0x3014d

    if-ge v1, v2, :cond_2

    goto/16 :goto_a

    :cond_2
    add-int/lit8 v1, p2, 0x2

    .line 6
    aget-byte v2, p1, v1

    add-int/lit8 v7, p2, 0x3

    .line 7
    aget-byte v8, p1, v7

    add-int/lit8 v9, p2, 0x4

    .line 8
    aget-byte v9, p1, v9

    add-int/lit8 v10, p2, 0x5

    .line 9
    aget-byte v10, p1, v10

    add-int/lit8 v11, p2, 0x6

    .line 10
    aget-byte v11, p1, v11

    add-int/lit8 v12, p2, 0x7

    .line 11
    aget-byte v12, p1, v12

    add-int/lit8 v13, p2, 0x8

    .line 12
    aget-byte v13, p1, v13

    const-string v13, "persist.fyt.reversetemp"

    .line 13
    invoke-static {v13, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 14
    aget-byte v2, p1, v7

    .line 15
    aget-byte v8, p1, v1

    :cond_3
    and-int/lit16 v1, v2, 0xff

    const/4 v2, -0x3

    const/4 v7, -0x2

    const/16 v13, 0x1b

    const/16 v14, 0x50

    const/16 v15, 0x10

    if-eq v1, v15, :cond_5

    if-eq v1, v14, :cond_4

    if-le v1, v15, :cond_6

    if-ge v1, v14, :cond_6

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 16
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v1, v6, [I

    aput v2, v1, v5

    .line 17
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v1, v6, [I

    aput v7, v1, v5

    .line 18
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    :cond_6
    :goto_0
    and-int/lit16 v1, v8, 0xff

    const/16 v3, 0x1c

    if-eq v1, v15, :cond_8

    if-eq v1, v14, :cond_7

    if-le v1, v15, :cond_9

    if-ge v1, v14, :cond_9

    new-array v2, v6, [I

    aput v1, v2, v5

    .line 19
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v1, v6, [I

    aput v2, v1, v5

    .line 20
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v1, v6, [I

    aput v7, v1, v5

    .line 21
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :cond_9
    :goto_1
    and-int/lit8 v1, v9, 0xf

    const/16 v2, 0x15

    new-array v3, v6, [I

    and-int/2addr v1, v4

    aput v1, v3, v5

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v9, 0x4

    const/16 v2, 0xf

    and-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move v3, v6

    goto :goto_3

    :pswitch_1
    move v3, v5

    move v7, v3

    move v8, v6

    goto :goto_5

    :pswitch_2
    move v7, v5

    move v3, v6

    move v8, v3

    goto :goto_5

    :pswitch_3
    move v3, v5

    move v7, v6

    goto :goto_4

    :pswitch_4
    move v3, v5

    move v8, v3

    move v7, v6

    goto :goto_5

    :pswitch_5
    move v8, v5

    move v3, v6

    move v7, v3

    goto :goto_5

    :pswitch_6
    move v7, v5

    move v8, v7

    move v3, v6

    goto :goto_5

    :goto_2
    move v3, v5

    :goto_3
    move v7, v3

    :goto_4
    move v8, v7

    :goto_5
    const/16 v9, 0x13

    new-array v13, v6, [I

    aput v3, v13, v5

    .line 23
    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v9, v6, [I

    aput v7, v9, v5

    .line 24
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v7, v6, [I

    aput v8, v7, v5

    .line 25
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v7, v6, [I

    aput v1, v7, v5

    .line 26
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v3, v6, [I

    and-int/lit8 v7, v10, 0x3

    aput v7, v3, v5

    .line 27
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1f

    new-array v3, v6, [I

    shr-int/lit8 v7, v10, 0x2

    and-int/lit8 v7, v7, 0x3

    aput v7, v3, v5

    .line 28
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v3, v6, [I

    shr-int/lit8 v7, v10, 0x4

    and-int/lit8 v7, v7, 0x3

    aput v7, v3, v5

    .line 29
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v3, v10, 0x6

    and-int/lit8 v3, v3, 0x3

    aput v3, v1, v5

    const/16 v3, 0x20

    .line 30
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v3, v6, [I

    and-int/lit8 v7, v11, 0x1

    aput v7, v3, v5

    .line 31
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v3, v6, [I

    shr-int/lit8 v7, v11, 0x1

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 32
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v3, v6, [I

    shr-int/lit8 v7, v11, 0x2

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 33
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v3, v6, [I

    shr-int/lit8 v7, v11, 0x4

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 34
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v3, v6, [I

    shr-int/lit8 v7, v11, 0x5

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 35
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x26

    new-array v3, v6, [I

    shr-int/lit8 v7, v11, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 36
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v3, v11, 0x7

    and-int/2addr v3, v6

    aput v3, v1, v5

    .line 37
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v6, [I

    shr-int/lit8 v3, v12, 0x0

    and-int/lit8 v3, v3, 0x3

    aput v3, v2, v5

    .line 38
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x4f

    new-array v2, v6, [I

    shr-int/lit8 v3, v12, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 39
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v2, v6, [I

    shr-int/lit8 v3, v12, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 40
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 41
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    add-int/lit8 v1, p2, 0x9

    .line 42
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_a

    goto/16 :goto_a

    :cond_a
    const/16 v2, 0x28

    if-le v1, v2, :cond_c

    const/16 v3, 0x5a

    if-le v1, v3, :cond_b

    const/16 v1, 0x32

    goto :goto_6

    :cond_b
    sub-int/2addr v1, v2

    :goto_6
    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x3e8

    goto :goto_7

    :cond_c
    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0xa

    rsub-int v1, v2, 0x3e8

    .line 43
    :goto_7
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    .line 44
    :cond_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    add-int/lit8 v1, p2, 0x2

    .line 45
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/gb;->d3(I)V

    goto :goto_a

    .line 46
    :cond_e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    add-int/lit8 v1, p2, 0x2

    .line 47
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 48
    aget-byte v2, p1, v2

    and-int/2addr v1, v4

    .line 49
    iput v1, v0, Lk0/gb;->d:I

    move v1, v5

    .line 50
    :goto_8
    iget-object v3, v0, Lk0/gb;->e:[[I

    array-length v7, v3

    if-ge v1, v7, :cond_10

    .line 51
    iget v7, v0, Lk0/gb;->d:I

    aget-object v8, v3, v1

    aget v8, v8, v5

    if-ne v7, v8, :cond_f

    if-eqz v7, :cond_10

    .line 52
    iput v1, v0, Lk0/gb;->c:I

    goto :goto_9

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 53
    :cond_10
    :goto_9
    iget v7, v0, Lk0/gb;->d:I

    const/16 v8, 0x16

    if-eq v7, v8, :cond_12

    and-int/2addr v2, v4

    if-eqz v2, :cond_11

    .line 54
    array-length v2, v3

    if-ge v1, v2, :cond_14

    .line 55
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_a

    .line 56
    :cond_11
    array-length v2, v3

    if-gt v1, v2, :cond_14

    .line 57
    iget v1, v0, Lk0/gb;->c:I

    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_12
    and-int/lit16 v1, v2, 0xff

    if-ne v1, v6, :cond_14

    .line 58
    sget v1, Lu0/b;->o:I

    const/4 v2, 0x5

    if-ne v1, v6, :cond_13

    new-array v1, v2, [I

    .line 59
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_a

    :cond_13
    new-array v1, v2, [I

    .line 60
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_14
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public W2()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/gb;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/gb;->g:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/gb;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/gb;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/gb;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/gb;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x61

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
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    const/16 v4, 0xe3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v1, :cond_2

    const/16 v10, 0x3eb

    if-eq v1, v10, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v2, :cond_4

    .line 1
    array-length v1, v2

    if-lez v1, :cond_4

    new-array v1, v7, [I

    aput v4, v1, v8

    const/16 v4, -0x3a

    aput v4, v1, v6

    aput v9, v1, v9

    aput v9, v1, v3

    .line 2
    aget v2, v2, v8

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v6, v9

    :goto_0
    int-to-byte v2, v6

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 3
    :cond_2
    sget v1, Lk0/nt;->c:I

    const/16 v10, 0xaa

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/16 v13, 0x25

    const/16 v14, 0x33

    const/16 v15, 0x8

    if-ne v1, v5, :cond_3

    new-array v1, v15, [I

    aput v4, v1, v8

    aput v14, v1, v6

    aput v7, v1, v9

    .line 4
    aget v16, v2, v8

    aput v16, v1, v3

    iget-object v3, v0, Lk0/gb;->h:[I

    iget v6, v0, Lk0/gb;->i:I

    rem-int/2addr v6, v9

    aget v3, v3, v6

    aput v3, v1, v5

    aput v13, v1, v7

    const/16 v3, 0x1a

    aput v3, v1, v12

    aput v10, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v15, [I

    aput v4, v1, v8

    const/4 v6, 0x1

    aput v14, v1, v6

    aput v7, v1, v9

    .line 5
    aget v6, v2, v8

    const/16 v16, 0x3

    aput v6, v1, v16

    iget-object v6, v0, Lk0/gb;->h:[I

    iget v14, v0, Lk0/gb;->i:I

    rem-int/2addr v14, v9

    aget v6, v6, v14

    aput v6, v1, v5

    aput v13, v1, v7

    aput v3, v1, v12

    aput v10, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v15, [I

    aput v4, v1, v8

    const/16 v4, 0x33

    const/4 v6, 0x1

    aput v4, v1, v6

    aput v7, v1, v9

    .line 6
    aget v2, v2, v8

    const/4 v4, 0x3

    aput v2, v1, v4

    iget-object v2, v0, Lk0/gb;->h:[I

    iget v4, v0, Lk0/gb;->i:I

    rem-int/2addr v4, v9

    aget v2, v2, v4

    aput v2, v1, v5

    aput v13, v1, v7

    aput v3, v1, v12

    aput v10, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array v1, v15, [I

    aput v4, v1, v8

    const/16 v3, 0x33

    const/4 v6, 0x1

    aput v3, v1, v6

    aput v7, v1, v9

    .line 7
    aget v3, v2, v8

    const/4 v6, 0x3

    aput v3, v1, v6

    iget-object v3, v0, Lk0/gb;->h:[I

    iget v6, v0, Lk0/gb;->i:I

    rem-int/2addr v6, v9

    aget v3, v3, v6

    aput v3, v1, v5

    aput v13, v1, v7

    const/16 v3, 0x1b

    aput v3, v1, v12

    aput v10, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v15, [I

    aput v4, v1, v8

    const/16 v6, 0x33

    const/4 v14, 0x1

    aput v6, v1, v14

    aput v7, v1, v9

    .line 8
    aget v6, v2, v8

    const/4 v14, 0x3

    aput v6, v1, v14

    iget-object v6, v0, Lk0/gb;->h:[I

    iget v14, v0, Lk0/gb;->i:I

    rem-int/2addr v14, v9

    aget v6, v6, v14

    aput v6, v1, v5

    aput v13, v1, v7

    aput v3, v1, v12

    aput v10, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v15, [I

    aput v4, v1, v8

    const/16 v4, 0x33

    const/4 v6, 0x1

    aput v4, v1, v6

    aput v7, v1, v9

    .line 9
    aget v2, v2, v8

    const/4 v4, 0x3

    aput v2, v1, v4

    iget-object v2, v0, Lk0/gb;->h:[I

    iget v4, v0, Lk0/gb;->i:I

    rem-int/2addr v4, v9

    aget v2, v2, v4

    aput v2, v1, v5

    aput v13, v1, v7

    aput v3, v1, v12

    aput v10, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    .line 10
    :goto_1
    iget v1, v0, Lk0/gb;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/gb;->i:I

    .line 11
    rem-int/2addr v1, v9

    iput v1, v0, Lk0/gb;->i:I

    :cond_4
    :goto_2
    return-void
.end method

.method public final a3()V
    .locals 14

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-virtual {p0, v1}, Lk0/gb;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/16 v9, 0x9

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    if-eq v5, v10, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v9, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 4
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v8

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 5
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto/16 :goto_1

    .line 7
    :cond_1
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_2

    aput v3, v1, v10

    .line 8
    sget v2, Lo0/e;->B:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 9
    sget v2, Lo0/e;->C:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 10
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v6

    .line 11
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 12
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto :goto_1

    .line 13
    :cond_2
    sget v2, Lo0/e;->C:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 14
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v8

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 15
    sget v2, Lo0/e;->r:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 16
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto :goto_1

    .line 17
    :cond_3
    sget v5, Lw0/d;->i:I

    .line 18
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 19
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_4

    aput v2, v1, v10

    goto :goto_0

    :cond_4
    const v13, 0x10001

    if-ne v12, v13, :cond_5

    const/4 v12, 0x2

    aput v12, v1, v10

    goto :goto_0

    :cond_5
    const v13, 0x10002

    if-ne v12, v13, :cond_6

    aput v3, v1, v10

    goto :goto_0

    :cond_6
    const/16 v13, 0x10

    if-nez v12, :cond_7

    aput v13, v1, v10

    goto :goto_0

    :cond_7
    if-ne v12, v2, :cond_8

    aput v13, v1, v10

    :cond_8
    :goto_0
    and-int/lit16 v10, v5, 0xff

    aput v10, v1, v7

    shr-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v8

    .line 20
    rem-int/2addr v11, v8

    add-int/2addr v11, v2

    aput v11, v1, v6

    aput v3, v1, v4

    aput v3, v1, v9

    :goto_1
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_9

    add-int/lit8 v4, v3, 0x1

    .line 21
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 22
    :cond_9
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3([I)V
    .locals 8

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x10

    const/16 v3, 0xb

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v6, p1, v7

    .line 4
    aput v6, p1, v1

    goto :goto_0

    .line 5
    :pswitch_1
    aput v4, p1, v7

    .line 6
    aput v2, p1, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 7
    aput v0, p1, v7

    const/16 v0, 0x12

    .line 8
    aput v0, p1, v1

    goto :goto_0

    .line 9
    :pswitch_3
    aput v1, p1, v7

    .line 10
    aput v6, p1, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 11
    aput v0, p1, v7

    const/16 v0, 0x30

    .line 12
    aput v0, p1, v1

    goto :goto_0

    .line 13
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    .line 14
    aput v7, p1, v7

    .line 15
    aput v2, p1, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    if-ne v0, v7, :cond_2

    .line 16
    aput v4, p1, v7

    .line 17
    aput v2, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 18
    aput v4, p1, v7

    .line 19
    aput v2, p1, v1

    goto :goto_0

    .line 20
    :pswitch_6
    aput v3, p1, v7

    .line 21
    aput v6, p1, v1

    goto :goto_0

    .line 22
    :pswitch_7
    aput v3, p1, v7

    .line 23
    aput v6, p1, v1

    goto :goto_0

    .line 24
    :pswitch_8
    aput v5, p1, v7

    .line 25
    aput v5, p1, v1

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x80

    aput v2, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x24

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(I)V
    .locals 4

    const/16 v0, 0x14d

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1
    :pswitch_1
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 2
    :pswitch_2
    sget p1, Lh0/c;->E:I

    if-ne p1, v1, :cond_0

    .line 3
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v3}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/16 v0, 0x214

    invoke-virtual {p1, v0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    .line 6
    :pswitch_4
    invoke-static {}, Lo1/u;->Z0()I

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 8
    :pswitch_6
    invoke-static {}, Lo1/u;->j()I

    goto :goto_0

    .line 9
    :pswitch_7
    sget p1, Lk0/nt;->a:I

    if-ne p1, v0, :cond_1

    .line 10
    invoke-static {}, Lo1/u;->q()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lo1/u;->j()I

    goto :goto_0

    .line 12
    :pswitch_8
    sget p1, Lk0/nt;->a:I

    if-ne p1, v0, :cond_2

    .line 13
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lo1/u;->q()V

    goto :goto_0

    :pswitch_9
    if-eq p1, v1, :cond_3

    .line 15
    invoke-static {}, Lo1/u;->E()I

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 17
    :pswitch_a
    invoke-static {}, Lo1/u;->x0()V

    if-ne p1, v2, :cond_4

    new-array p1, v2, [I

    aput v3, p1, v3

    .line 18
    invoke-static {v3, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    const/high16 v1, 0x10000

    if-ne p1, v0, :cond_5

    new-array p1, v2, [I

    aput v1, p1, v3

    .line 19
    invoke-static {v3, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    new-array p1, v2, [I

    const v0, 0x10001

    aput v0, p1, v3

    .line 20
    invoke-static {v3, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    new-array p1, v2, [I

    aput v1, p1, v3

    .line 21
    invoke-static {v3, p1}, Lw0/f;->J(I[I)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
