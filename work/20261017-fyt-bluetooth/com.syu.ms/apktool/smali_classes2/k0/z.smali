.class public Lk0/z;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:[I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/z;->b:I

    .line 3
    iput v0, p0, Lk0/z;->d:I

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

    iput-object v1, p0, Lk0/z;->e:[[I

    .line 5
    iput-byte v0, p0, Lk0/z;->f:B

    .line 6
    new-instance v1, Lk0/z$a;

    invoke-direct {v1, p0}, Lk0/z$a;-><init>(Lk0/z;)V

    iput-object v1, p0, Lk0/z;->g:Ljava/lang/Runnable;

    new-array v1, v2, [I

    .line 7
    fill-array-data v1, :array_a

    iput-object v1, p0, Lk0/z;->h:[I

    .line 8
    iput v0, p0, Lk0/z;->i:I

    .line 9
    new-instance v0, Lk0/z$b;

    invoke-direct {v0, p0}, Lk0/z$b;-><init>(Lk0/z;)V

    iput-object v0, p0, Lk0/z;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/z$c;

    invoke-direct {v0, p0}, Lk0/z$c;-><init>(Lk0/z;)V

    iput-object v0, p0, Lk0/z;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/z$d;

    invoke-direct {v0, p0}, Lk0/z$d;-><init>(Lk0/z;)V

    iput-object v0, p0, Lk0/z;->l:Ljava/lang/Runnable;

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

.method public static synthetic e3(Lk0/z;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/z;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lk0/z;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/z;->a3()V

    return-void
.end method

.method public static synthetic g3(Lk0/z;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/z;->c3()V

    return-void
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

    const/4 v2, 0x1

    .line 2
    iput v2, v1, Lk0/mt;->e:I

    .line 3
    iput v2, v1, Lk0/mt;->f:I

    const/4 v3, 0x0

    .line 4
    iput v3, v1, Lk0/mt;->g:I

    .line 5
    iput v3, v1, Lk0/mt;->o:I

    .line 6
    iget-object v1, v0, Lk0/z;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v4, v0, Lk0/z;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v4, v0, Lk0/z;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v4, v0, Lk0/z;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v4, v0, Lk0/z;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v1, v0, Lk0/z;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    sget v1, Lk0/nt;->c:I

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

    if-eq v1, v12, :cond_1

    if-eq v1, v11, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array v1, v10, [I

    aput v9, v1, v3

    aput v8, v1, v2

    aput v13, v1, v14

    aput v3, v1, v12

    .line 13
    iget-object v15, v0, Lk0/z;->h:[I

    iget v12, v0, Lk0/z;->i:I

    rem-int/2addr v12, v14

    aget v12, v15, v12

    aput v12, v1, v11

    aput v7, v1, v13

    const/16 v12, 0x1a

    aput v12, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v10, [I

    aput v9, v1, v3

    aput v8, v1, v2

    aput v13, v1, v14

    const/4 v15, 0x3

    aput v3, v1, v15

    .line 14
    iget-object v15, v0, Lk0/z;->h:[I

    iget v2, v0, Lk0/z;->i:I

    rem-int/2addr v2, v14

    aget v2, v15, v2

    aput v2, v1, v11

    aput v7, v1, v13

    aput v12, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v10, [I

    aput v9, v1, v3

    const/4 v2, 0x1

    aput v8, v1, v2

    aput v13, v1, v14

    const/4 v2, 0x3

    aput v3, v1, v2

    .line 15
    iget-object v2, v0, Lk0/z;->h:[I

    iget v3, v0, Lk0/z;->i:I

    rem-int/2addr v3, v14

    aget v2, v2, v3

    aput v2, v1, v11

    aput v7, v1, v13

    aput v12, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    .line 16
    iget v1, v0, Lk0/z;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/z;->i:I

    .line 17
    rem-int/2addr v1, v14

    iput v1, v0, Lk0/z;->i:I

    goto :goto_0

    :cond_1
    new-array v1, v10, [I

    aput v9, v1, v3

    aput v8, v1, v2

    aput v13, v1, v14

    const/4 v2, 0x3

    aput v3, v1, v2

    .line 18
    iget-object v2, v0, Lk0/z;->h:[I

    iget v12, v0, Lk0/z;->i:I

    rem-int/2addr v12, v14

    aget v2, v2, v12

    aput v2, v1, v11

    aput v7, v1, v13

    const/16 v2, 0x1b

    aput v2, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v10, [I

    aput v9, v1, v3

    const/4 v12, 0x1

    aput v8, v1, v12

    aput v13, v1, v14

    const/4 v12, 0x3

    aput v3, v1, v12

    .line 19
    iget-object v12, v0, Lk0/z;->h:[I

    iget v15, v0, Lk0/z;->i:I

    rem-int/2addr v15, v14

    aget v12, v12, v15

    aput v12, v1, v11

    aput v7, v1, v13

    aput v2, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v10, [I

    aput v9, v1, v3

    const/4 v9, 0x1

    aput v8, v1, v9

    aput v13, v1, v14

    const/4 v8, 0x3

    aput v3, v1, v8

    .line 20
    iget-object v3, v0, Lk0/z;->h:[I

    iget v8, v0, Lk0/z;->i:I

    rem-int/2addr v8, v14

    aget v3, v3, v8

    aput v3, v1, v11

    aput v7, v1, v13

    aput v2, v1, v6

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    .line 21
    iget v1, v0, Lk0/z;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/z;->i:I

    .line 22
    rem-int/2addr v1, v14

    iput v1, v0, Lk0/z;->i:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v3, 0x20

    const/16 v5, 0x12

    const/4 v6, 0x4

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v1, v3, :cond_10

    const/16 v10, 0x2f

    if-eq v1, v10, :cond_f

    const/16 v10, 0x55

    if-eq v1, v10, :cond_3

    const/16 v2, 0x66

    if-eq v1, v2, :cond_2

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3
    sget v1, Lu0/b;->o:I

    if-ne v1, v9, :cond_17

    add-int/lit8 v1, p2, 0x2

    .line 4
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 5
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 6
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 7
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    .line 8
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 9
    sget v1, Lu0/b;->o:I

    if-ne v1, v9, :cond_17

    add-int/lit8 v1, p2, 0x2

    .line 10
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 11
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 12
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 13
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    .line 14
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 15
    sget v1, Lk0/nt;->a:I

    const/16 v2, 0x14d

    if-ne v1, v2, :cond_17

    add-int/lit8 v1, p2, 0x2

    .line 16
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk0/z;->d3(I)V

    goto/16 :goto_a

    .line 17
    :cond_3
    sget v1, Lk0/nt;->a:I

    const/16 v10, 0x1b

    if-ne v1, v10, :cond_4

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v1, p2, 0x2

    .line 18
    aget-byte v11, p1, v1

    add-int/lit8 v12, p2, 0x3

    .line 19
    aget-byte v13, p1, v12

    add-int/lit8 v14, p2, 0x4

    .line 20
    aget-byte v14, p1, v14

    add-int/lit8 v15, p2, 0x5

    .line 21
    aget-byte v15, p1, v15

    add-int/lit8 v16, p2, 0x6

    .line 22
    aget-byte v16, p1, v16

    add-int/lit8 v17, p2, 0x7

    .line 23
    aget-byte v17, p1, v17

    add-int/lit8 v18, p2, 0x8

    .line 24
    aget-byte v18, p1, v18

    const-string v2, "persist.fyt.reversetemp"

    .line 25
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26
    aget-byte v11, p1, v12

    .line 27
    aget-byte v13, p1, v1

    :cond_5
    and-int/lit16 v1, v11, 0xff

    const/4 v2, -0x3

    const/4 v11, -0x2

    const/16 v12, 0x50

    const/16 v4, 0x10

    if-eq v1, v4, :cond_7

    if-eq v1, v12, :cond_6

    if-le v1, v4, :cond_8

    if-ge v1, v12, :cond_8

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 28
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array v1, v9, [I

    aput v2, v1, v8

    .line 29
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    new-array v1, v9, [I

    aput v11, v1, v8

    .line 30
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    :cond_8
    :goto_0
    and-int/lit16 v1, v13, 0xff

    const/16 v3, 0x1c

    if-eq v1, v4, :cond_a

    if-eq v1, v12, :cond_9

    if-le v1, v4, :cond_b

    if-ge v1, v12, :cond_b

    new-array v2, v9, [I

    aput v1, v2, v8

    .line 31
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v1, v9, [I

    aput v2, v1, v8

    .line 32
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array v1, v9, [I

    aput v11, v1, v8

    .line 33
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :cond_b
    :goto_1
    and-int/lit8 v1, v14, 0xf

    const/16 v2, 0x15

    new-array v3, v9, [I

    and-int/2addr v1, v7

    aput v1, v3, v8

    .line 34
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v14, 0x4

    const/16 v2, 0xf

    and-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move v3, v9

    goto :goto_3

    :pswitch_1
    move v3, v8

    move v4, v3

    move v6, v9

    goto :goto_5

    :pswitch_2
    move v4, v8

    move v3, v9

    move v6, v3

    goto :goto_5

    :pswitch_3
    move v3, v8

    move v4, v9

    goto :goto_4

    :pswitch_4
    move v3, v8

    move v6, v3

    move v4, v9

    goto :goto_5

    :pswitch_5
    move v6, v8

    move v3, v9

    move v4, v3

    goto :goto_5

    :pswitch_6
    move v4, v8

    move v6, v4

    move v3, v9

    goto :goto_5

    :goto_2
    move v3, v8

    :goto_3
    move v4, v3

    :goto_4
    move v6, v4

    :goto_5
    const/16 v10, 0x13

    new-array v11, v9, [I

    aput v3, v11, v8

    .line 35
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v10, v9, [I

    aput v4, v10, v8

    .line 36
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    aput v6, v3, v8

    .line 37
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v9, [I

    aput v1, v4, v8

    .line 38
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v3, v9, [I

    and-int/lit8 v4, v15, 0x3

    aput v4, v3, v8

    .line 39
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1f

    new-array v3, v9, [I

    shr-int/lit8 v4, v15, 0x2

    and-int/lit8 v4, v4, 0x3

    aput v4, v3, v8

    .line 40
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v3, v9, [I

    shr-int/lit8 v4, v15, 0x4

    and-int/lit8 v4, v4, 0x3

    aput v4, v3, v8

    .line 41
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v3, v15, 0x6

    and-int/lit8 v3, v3, 0x3

    aput v3, v1, v8

    const/16 v3, 0x20

    .line 42
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    and-int/lit8 v3, v16, 0x1

    aput v3, v1, v8

    const/16 v3, 0xd

    .line 43
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v3, v9, [I

    shr-int/lit8 v4, v16, 0x1

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 44
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v3, v9, [I

    shr-int/lit8 v4, v16, 0x2

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 45
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v3, v9, [I

    shr-int/lit8 v4, v16, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 46
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v3, v9, [I

    shr-int/lit8 v4, v16, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 47
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x26

    new-array v3, v9, [I

    shr-int/lit8 v4, v16, 0x6

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 48
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v3, v16, 0x7

    and-int/2addr v3, v9

    aput v3, v1, v8

    .line 49
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v9, [I

    shr-int/lit8 v3, v17, 0x0

    and-int/lit8 v3, v3, 0x3

    aput v3, v2, v8

    .line 50
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x4f

    new-array v2, v9, [I

    shr-int/lit8 v3, v17, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 51
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v2, v9, [I

    shr-int/lit8 v3, v17, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 52
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 53
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x9

    add-int/lit8 v1, p2, 0x9

    .line 54
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_c

    goto/16 :goto_a

    :cond_c
    const/16 v2, 0x28

    if-le v1, v2, :cond_e

    const/16 v3, 0x5a

    if-le v1, v3, :cond_d

    const/16 v1, 0x32

    goto :goto_6

    :cond_d
    sub-int/2addr v1, v2

    :goto_6
    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x3e8

    goto :goto_7

    :cond_e
    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0xa

    rsub-int v1, v2, 0x3e8

    .line 55
    :goto_7
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    .line 56
    :cond_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v1, p2, 0x2

    .line 57
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk0/z;->d3(I)V

    goto/16 :goto_a

    .line 58
    :cond_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v1, p2, 0x2

    .line 59
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 60
    aget-byte v2, p1, v2

    and-int/2addr v1, v7

    .line 61
    iput v1, v0, Lk0/z;->d:I

    move v1, v8

    .line 62
    :goto_8
    iget-object v3, v0, Lk0/z;->e:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_12

    .line 63
    iget v4, v0, Lk0/z;->d:I

    aget-object v10, v3, v1

    aget v10, v10, v8

    if-ne v4, v10, :cond_11

    if-eqz v4, :cond_12

    .line 64
    iput v1, v0, Lk0/z;->c:I

    goto :goto_9

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 65
    :cond_12
    :goto_9
    iget v4, v0, Lk0/z;->d:I

    const/16 v10, 0x9

    if-eq v4, v10, :cond_15

    and-int/2addr v2, v7

    if-ne v2, v9, :cond_13

    .line 66
    array-length v2, v3

    if-ge v1, v2, :cond_17

    .line 67
    iget-byte v2, v0, Lk0/z;->f:B

    if-nez v2, :cond_17

    add-int/2addr v2, v9

    int-to-byte v2, v2

    .line 68
    iput-byte v2, v0, Lk0/z;->f:B

    .line 69
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 70
    iget-object v1, v0, Lk0/z;->g:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_13
    if-nez v2, :cond_17

    .line 71
    iget v1, v0, Lk0/z;->c:I

    array-length v2, v3

    if-ge v1, v2, :cond_14

    if-eq v1, v7, :cond_14

    .line 72
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 73
    iget-object v1, v0, Lk0/z;->g:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 74
    iput-byte v8, v0, Lk0/z;->f:B

    .line 75
    :cond_14
    iput v7, v0, Lk0/z;->c:I

    goto :goto_a

    :cond_15
    and-int/lit16 v1, v2, 0xff

    if-ne v1, v9, :cond_17

    .line 76
    sget v1, Lh0/c;->E:I

    if-eq v1, v6, :cond_16

    const/16 v1, 0xd

    .line 77
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 78
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_a

    .line 79
    :cond_16
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 80
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    :cond_17
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
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/z;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/z;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/z;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/z;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/z;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/z;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0xaa

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/16 v5, 0x25

    const/4 v6, 0x3

    const/16 v7, 0x33

    const/16 v8, 0xe3

    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-ne v1, v11, :cond_1

    new-array v1, v9, [I

    aput v8, v1, v13

    aput v7, v1, v10

    aput v12, v1, v14

    .line 2
    aget v15, p2, v13

    aput v15, v1, v6

    iget-object v15, v0, Lk0/z;->h:[I

    iget v6, v0, Lk0/z;->i:I

    rem-int/2addr v6, v14

    aget v6, v15, v6

    aput v6, v1, v11

    aput v5, v1, v12

    const/16 v6, 0x1a

    aput v6, v1, v4

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    aput v8, v1, v13

    aput v7, v1, v10

    aput v12, v1, v14

    .line 3
    aget v15, p2, v13

    const/16 v16, 0x3

    aput v15, v1, v16

    iget-object v15, v0, Lk0/z;->h:[I

    iget v7, v0, Lk0/z;->i:I

    rem-int/2addr v7, v14

    aget v7, v15, v7

    aput v7, v1, v11

    aput v5, v1, v12

    aput v6, v1, v4

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    aput v8, v1, v13

    const/16 v7, 0x33

    aput v7, v1, v10

    aput v12, v1, v14

    .line 4
    aget v7, p2, v13

    const/4 v8, 0x3

    aput v7, v1, v8

    iget-object v7, v0, Lk0/z;->h:[I

    iget v8, v0, Lk0/z;->i:I

    rem-int/2addr v8, v14

    aget v7, v7, v8

    aput v7, v1, v11

    aput v5, v1, v12

    aput v6, v1, v4

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v1, v9, [I

    aput v8, v1, v13

    const/16 v6, 0x33

    aput v6, v1, v10

    aput v12, v1, v14

    .line 5
    aget v6, p2, v13

    const/4 v7, 0x3

    aput v6, v1, v7

    iget-object v6, v0, Lk0/z;->h:[I

    iget v7, v0, Lk0/z;->i:I

    rem-int/2addr v7, v14

    aget v6, v6, v7

    aput v6, v1, v11

    aput v5, v1, v12

    const/16 v6, 0x1b

    aput v6, v1, v4

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    aput v8, v1, v13

    const/16 v7, 0x33

    aput v7, v1, v10

    aput v12, v1, v14

    .line 6
    aget v7, p2, v13

    const/4 v15, 0x3

    aput v7, v1, v15

    iget-object v7, v0, Lk0/z;->h:[I

    iget v15, v0, Lk0/z;->i:I

    rem-int/2addr v15, v14

    aget v7, v7, v15

    aput v7, v1, v11

    aput v5, v1, v12

    aput v6, v1, v4

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    aput v8, v1, v13

    const/16 v7, 0x33

    aput v7, v1, v10

    aput v12, v1, v14

    .line 7
    aget v7, p2, v13

    const/4 v8, 0x3

    aput v7, v1, v8

    iget-object v7, v0, Lk0/z;->h:[I

    iget v8, v0, Lk0/z;->i:I

    rem-int/2addr v8, v14

    aget v7, v7, v8

    aput v7, v1, v11

    aput v5, v1, v12

    aput v6, v1, v4

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 8
    :goto_0
    iget v1, v0, Lk0/z;->i:I

    add-int/2addr v1, v10

    iput v1, v0, Lk0/z;->i:I

    .line 9
    rem-int/2addr v1, v14

    iput v1, v0, Lk0/z;->i:I

    :goto_1
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
    invoke-virtual {p0, v1}, Lk0/z;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/16 v8, 0x9

    const/4 v9, 0x6

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    if-eq v5, v10, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v8, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 4
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 5
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto/16 :goto_2

    .line 7
    :cond_1
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_2

    aput v3, v1, v10

    .line 8
    sget v2, Lo0/e;->B:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 9
    sget v2, Lo0/e;->C:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 10
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v7

    .line 11
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 12
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 13
    :cond_2
    sget v2, Lo0/e;->C:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 14
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 15
    sget v2, Lo0/e;->r:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 16
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

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

    const/4 v2, 0x2

    aput v2, v1, v10

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
    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v6

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 20
    rem-int/2addr v11, v9

    if-nez v11, :cond_9

    aput v9, v1, v7

    goto :goto_1

    :cond_9
    aput v11, v1, v7

    :goto_1
    aput v3, v1, v4

    aput v3, v1, v8

    :goto_2
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 21
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 22
    :cond_a
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
    aput v6, p1, v7

    .line 4
    aput v6, p1, v1

    goto :goto_0

    .line 5
    :pswitch_0
    aput v4, p1, v7

    .line 6
    aput v2, p1, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    .line 7
    aput v0, p1, v7

    const/16 v0, 0x12

    .line 8
    aput v0, p1, v1

    goto :goto_0

    .line 9
    :pswitch_2
    aput v1, p1, v7

    .line 10
    aput v6, p1, v1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    .line 11
    aput v0, p1, v7

    const/16 v0, 0x30

    .line 12
    aput v0, p1, v1

    goto :goto_0

    .line 13
    :pswitch_4
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
    :pswitch_5
    aput v3, p1, v7

    .line 21
    aput v6, p1, v1

    goto :goto_0

    .line 22
    :pswitch_6
    aput v3, p1, v7

    .line 23
    aput v6, p1, v1

    goto :goto_0

    .line 24
    :pswitch_7
    aput v5, p1, v7

    .line 25
    aput v5, p1, v1

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
