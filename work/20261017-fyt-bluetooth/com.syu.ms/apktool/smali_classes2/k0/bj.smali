.class public Lk0/bj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:B

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:F

.field public m:I

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/bj;->c:I

    const/16 v1, 0xc

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

    new-array v2, v2, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/bj;->d:[[I

    .line 4
    iput v0, p0, Lk0/bj;->e:I

    .line 5
    iput v0, p0, Lk0/bj;->f:I

    .line 6
    iput v0, p0, Lk0/bj;->g:I

    .line 7
    new-instance v0, Lk0/bj$a;

    invoke-direct {v0, p0}, Lk0/bj$a;-><init>(Lk0/bj;)V

    iput-object v0, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    .line 8
    iput-byte v3, p0, Lk0/bj;->i:B

    .line 9
    new-instance v0, Lk0/bj$b;

    invoke-direct {v0, p0}, Lk0/bj$b;-><init>(Lk0/bj;)V

    iput-object v0, p0, Lk0/bj;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/bj$c;

    invoke-direct {v0, p0}, Lk0/bj$c;-><init>(Lk0/bj;)V

    iput-object v0, p0, Lk0/bj;->k:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lk0/bj;->l:F

    const/16 v0, 0xff

    .line 12
    iput v0, p0, Lk0/bj;->m:I

    .line 13
    iput v0, p0, Lk0/bj;->n:I

    .line 14
    new-instance v0, Lk0/bj$d;

    invoke-direct {v0, p0}, Lk0/bj$d;-><init>(Lk0/bj;)V

    iput-object v0, p0, Lk0/bj;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/bj$e;

    invoke-direct {v0, p0}, Lk0/bj$e;-><init>(Lk0/bj;)V

    iput-object v0, p0, Lk0/bj;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/bj$f;

    invoke-direct {v0, p0}, Lk0/bj$f;-><init>(Lk0/bj;)V

    iput-object v0, p0, Lk0/bj;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/bj$g;

    invoke-direct {v0, p0}, Lk0/bj$g;-><init>(Lk0/bj;)V

    iput-object v0, p0, Lk0/bj;->r:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lk0/bj$h;

    invoke-direct {v0, p0}, Lk0/bj$h;-><init>(Lk0/bj;)V

    iput-object v0, p0, Lk0/bj;->s:Ljava/lang/Runnable;

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

    :array_8
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x16
        0xc
    .end array-data
.end method

.method public static synthetic a3(Lk0/bj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/bj;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic b3(Lk0/bj;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/bj;->m3()V

    return-void
.end method

.method public static synthetic c3(Lk0/bj;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/bj;->l:F

    return p0
.end method

.method public static synthetic d3(Lk0/bj;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/bj;->l:F

    return p1
.end method

.method public static synthetic e3(Lk0/bj;F)F
    .locals 1

    .line 1
    iget v0, p0, Lk0/bj;->l:F

    rem-float/2addr v0, p1

    iput v0, p0, Lk0/bj;->l:F

    return v0
.end method

.method public static synthetic f3(Lk0/bj;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/bj;->n:I

    return p0
.end method

.method public static synthetic g3(Lk0/bj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/bj;->n:I

    return p1
.end method

.method public static synthetic h3(Lk0/bj;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/bj;->m:I

    return p0
.end method

.method public static synthetic i3(Lk0/bj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/bj;->m:I

    return p1
.end method

.method public static synthetic j3(Lk0/bj;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/bj;->l3(BLjava/lang/String;)V

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/bj;->j:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->b:I

    .line 7
    iput v1, v0, Lk0/mt;->c:I

    .line 8
    iput v1, v0, Lk0/mt;->d:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    .line 10
    sget v3, Lk0/nt;->a:I

    const v4, 0x1901c7

    if-eq v3, v4, :cond_0

    .line 11
    iput v1, v0, Lk0/mt;->h:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 12
    iput v1, v0, Lk0/mt;->h:I

    .line 13
    :goto_0
    iget-object v0, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/bj;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    iget-object v0, p0, Lk0/bj;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6c

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x29

    const/4 v7, 0x3

    const/16 v8, 0xff

    if-eq v2, v3, :cond_19

    const/16 v3, 0x40

    const/4 v9, 0x7

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-eq v2, v3, :cond_18

    const/16 v3, 0x24

    if-eq v2, v3, :cond_16

    const/16 v3, 0x25

    if-eq v2, v3, :cond_15

    const/16 v10, 0x30

    if-eq v2, v10, :cond_14

    const/16 v10, 0x31

    if-eq v2, v10, :cond_13

    const/16 v12, 0x12

    const/16 v13, 0xd

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->l1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 7
    aget-byte v4, v1, v4

    add-int/lit8 v7, p2, 0x4

    .line 8
    aget-byte v9, v1, v7

    add-int/lit8 v11, p2, 0x5

    .line 9
    aget-byte v14, v1, v11

    add-int/lit8 v15, p2, 0x6

    .line 10
    aget-byte v15, v1, v15

    const/16 v3, 0xa

    new-array v10, v6, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v5

    .line 11
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v10, v6, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v5

    .line 12
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v10, v6, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v5

    .line 13
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v6

    aput v10, v3, v5

    .line 14
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v10, v6, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v6

    aput v13, v10, v5

    .line 15
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v10, v6, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v6

    aput v2, v10, v5

    .line 16
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v4, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 17
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    shr-int/lit8 v10, v4, 0x6

    and-int/2addr v10, v6

    aput v10, v3, v5

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    shr-int/lit8 v10, v4, 0x5

    and-int/2addr v10, v6

    aput v10, v3, v5

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v5

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 21
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    aget-byte v2, v1, v11

    and-int/lit16 v9, v2, 0xff

    .line 23
    aget-byte v1, v1, v7

    and-int/lit16 v14, v1, 0xff

    :cond_0
    and-int/lit16 v1, v9, 0xff

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v4, 0x1b

    if-eqz v1, :cond_2

    if-eq v1, v8, :cond_1

    new-array v7, v6, [I

    aput v1, v7, v5

    .line 24
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v1, v6, [I

    aput v2, v1, v5

    .line 25
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v1, v6, [I

    aput v3, v1, v5

    .line 26
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v1, v14, 0xff

    const/16 v4, 0x1c

    if-eqz v1, :cond_4

    if-eq v1, v8, :cond_3

    new-array v2, v6, [I

    aput v1, v2, v5

    .line 27
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array v1, v6, [I

    aput v2, v1, v5

    .line 28
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v1, v6, [I

    aput v3, v1, v5

    .line 29
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0x41

    new-array v2, v6, [I

    shr-int/lit8 v3, v15, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 30
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v15, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    const/16 v2, 0x10

    .line 31
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    and-int/lit8 v2, v15, 0x1

    aput v2, v1, v5

    const/16 v2, 0x25

    .line 32
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 34
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 35
    iput v2, v0, Lk0/bj;->c:I

    move v2, v5

    .line 36
    :goto_2
    iget-object v3, v0, Lk0/bj;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_6

    .line 37
    iget v7, v0, Lk0/bj;->c:I

    aget-object v10, v3, v2

    aget v10, v10, v5

    if-ne v7, v10, :cond_5

    if-eqz v7, :cond_6

    .line 38
    iput v2, v0, Lk0/bj;->b:I

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 39
    :cond_6
    :goto_3
    iget v7, v0, Lk0/bj;->c:I

    if-eq v7, v9, :cond_e

    const/16 v9, 0x9

    if-eq v7, v9, :cond_9

    and-int/2addr v1, v8

    if-ne v1, v6, :cond_7

    .line 40
    array-length v1, v3

    if-ge v2, v1, :cond_1c

    .line 41
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_7
    if-nez v1, :cond_1c

    .line 42
    iget v1, v0, Lk0/bj;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_8

    if-eq v1, v8, :cond_8

    .line 43
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 44
    :cond_8
    iput v8, v0, Lk0/bj;->b:I

    goto/16 :goto_5

    .line 45
    :cond_9
    iget v2, v0, Lk0/bj;->e:I

    if-eq v2, v1, :cond_d

    if-nez v1, :cond_a

    if-eq v2, v6, :cond_b

    :cond_a
    if-nez v1, :cond_c

    if-ne v2, v4, :cond_c

    .line 46
    iget v2, v0, Lk0/bj;->f:I

    if-ge v2, v11, :cond_c

    .line 47
    :cond_b
    invoke-static {v12, v5}, Ll0/b0;->l0(II)V

    .line 48
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    .line 49
    :cond_c
    iput v5, v0, Lk0/bj;->f:I

    .line 50
    iput v1, v0, Lk0/bj;->e:I

    goto/16 :goto_5

    :cond_d
    if-ne v1, v4, :cond_1c

    .line 51
    iget v1, v0, Lk0/bj;->f:I

    add-int/2addr v1, v6

    iput v1, v0, Lk0/bj;->f:I

    if-ne v1, v11, :cond_1c

    .line 52
    invoke-static {v13, v5}, Ll0/b0;->l0(II)V

    .line 53
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    .line 54
    :cond_e
    iget v2, v0, Lk0/bj;->e:I

    if-eq v2, v1, :cond_12

    if-nez v1, :cond_f

    if-eq v2, v6, :cond_10

    :cond_f
    if-nez v1, :cond_11

    if-ne v2, v4, :cond_11

    .line 55
    iget v2, v0, Lk0/bj;->f:I

    if-ge v2, v11, :cond_11

    .line 56
    :cond_10
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    .line 57
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 58
    :cond_11
    iput v5, v0, Lk0/bj;->f:I

    .line 59
    iput v1, v0, Lk0/bj;->e:I

    goto/16 :goto_5

    :cond_12
    if-ne v1, v4, :cond_1c

    .line 60
    iget v1, v0, Lk0/bj;->f:I

    add-int/2addr v1, v6

    iput v1, v0, Lk0/bj;->f:I

    if-ne v1, v11, :cond_1c

    const/16 v1, 0x10

    .line 61
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 62
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_13
    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 63
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 64
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 65
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 66
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 67
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 68
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 69
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 70
    :cond_14
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_15
    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 71
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    .line 72
    aget-byte v9, v1, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x410

    new-array v3, v6, [I

    .line 73
    aget-byte v9, v1, v8

    shr-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3f5

    new-array v3, v6, [I

    .line 74
    aget-byte v4, v1, v8

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v6, [I

    .line 75
    aget-byte v4, v1, v8

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    .line 76
    aget-byte v1, v1, v8

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 77
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 78
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 79
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 80
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_17
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 81
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 82
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 83
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 84
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 85
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 86
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_18
    const/16 v2, 0x67

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 87
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    .line 88
    aget-byte v8, v1, v4

    shr-int/2addr v8, v11

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    .line 89
    aget-byte v8, v1, v4

    shr-int/2addr v8, v10

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v6, [I

    .line 90
    aget-byte v8, v1, v4

    shr-int/2addr v8, v7

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v6, [I

    .line 91
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 92
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    .line 93
    aget-byte v8, v1, v4

    shr-int/2addr v8, v10

    and-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v6, [I

    .line 94
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 95
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const/16 v3, 0x1300

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_5

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1b

    .line 97
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_5

    .line 98
    :cond_1b
    invoke-static {v5}, Lk0/qt;->a(I)V

    :cond_1c
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/bj;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/bj;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/bj;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/bj;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/bj;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v1, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/bj;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v1, p0, Lk0/bj;->s:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v1, p0, Lk0/bj;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x78

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
    .locals 11

    const/4 p3, 0x4

    const/16 p4, 0xe3

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_c

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_a

    const/16 v6, 0x3eb

    if-eq p1, v6, :cond_8

    const/16 v6, 0x3ed

    if-eq p1, v6, :cond_3

    const/16 v6, 0x405

    if-eq p1, v6, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2
    aget p1, p2, v5

    mul-int/lit16 p1, p1, 0x500

    invoke-static {}, La/f;->w()I

    move-result v6

    div-int/2addr p1, v6

    .line 3
    aget v6, p2, v4

    mul-int/lit16 v6, v6, 0x2d0

    invoke-static {}, La/f;->i()I

    move-result v7

    div-int/2addr v6, v7

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v5, :cond_1

    .line 5
    aget v6, p2, v4

    mul-int/lit16 v6, v6, 0x2d0

    div-int/lit16 v6, v6, 0x208

    .line 6
    :cond_1
    aget v7, p2, v3

    const/4 v8, 0x7

    const/16 v9, 0x85

    const/16 v10, 0x8

    if-nez v7, :cond_2

    new-array p2, v10, [I

    aput p4, p2, v3

    aput v9, p2, v5

    aput v1, p2, v4

    shr-int/lit8 p4, p1, 0x8

    and-int/lit16 p4, p4, 0xff

    aput p4, p2, v0

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, p3

    shr-int/lit8 p1, v6, 0x8

    aput p1, p2, v1

    and-int/lit16 p1, v6, 0xff

    aput p1, p2, v2

    aput v5, p2, v8

    .line 7
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 8
    :cond_2
    aget p2, p2, v3

    if-ne p2, v5, :cond_d

    new-array p2, v10, [I

    aput p4, p2, v3

    aput v9, p2, v5

    aput v1, p2, v4

    shr-int/lit8 p4, p1, 0x8

    and-int/lit16 p4, p4, 0xff

    aput p4, p2, v0

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, p3

    shr-int/lit8 p1, v6, 0x8

    aput p1, p2, v1

    and-int/lit16 p1, v6, 0xff

    aput p1, p2, v2

    aput v3, p2, v8

    .line 9
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 10
    :cond_3
    aget p1, p2, v3

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_4

    goto/16 :goto_1

    .line 11
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    const/16 p2, 0x65

    aget p1, p1, p2

    if-ne p1, v5, :cond_5

    new-array p1, v2, [I

    .line 12
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_5
    new-array p1, v2, [I

    .line 13
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 14
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    const/16 p2, 0x66

    aget p1, p1, p2

    if-ne p1, v5, :cond_7

    new-array p1, v2, [I

    .line 15
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_7
    new-array p1, v2, [I

    .line 16
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 17
    :cond_8
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_9

    new-array p1, v2, [I

    .line 18
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_9
    new-array p1, v2, [I

    .line 19
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 p1, 0x32

    .line 20
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v1, [I

    .line 21
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 22
    :cond_a
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_d

    new-array p1, v1, [I

    aput p4, p1, v3

    const/16 p4, -0x70

    aput p4, p1, v5

    aput v4, p1, v4

    .line 23
    aget p4, p2, v3

    aput p4, p1, v0

    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 24
    :cond_b
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_d

    new-array p1, v1, [I

    aput p4, p1, v3

    const/16 p4, -0x7c

    aput p4, p1, v5

    aput v4, p1, v4

    .line 25
    aget p4, p2, v3

    aput p4, p1, v0

    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 26
    :cond_c
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_d

    new-array p1, v2, [I

    aput p4, p1, v3

    const/16 p4, -0x3a

    aput p4, p1, v5

    aput v0, p1, v4

    .line 27
    aget p4, p2, v3

    aput p4, p1, v0

    aget p2, p2, v5

    aput p2, p1, p3

    aput v3, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_d
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x1
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x1
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x2
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x3a
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x3a
        0x3
        0xb
        0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x3a
        0x3
        0xb
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x70
        0x2
        0x94
        0x0
    .end array-data
.end method

.method public k3(ILjava/lang/String;)V
    .locals 6

    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xcb

    const/4 v3, 0x1

    aput v1, v0, v3

    const/16 v1, 0x20

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xf

    if-le v1, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    if-ne p1, v3, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :goto_1
    if-ge v2, v5, :cond_2

    add-int/lit8 p2, v2, 0x4

    .line 3
    aget-char v1, p1, v2

    aput v1, v0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-ne p1, v4, :cond_2

    :goto_2
    if-ge v2, v5, :cond_2

    .line 4
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, v1, 0x4

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 5
    aput v4, v0, v3

    add-int/lit8 v1, v1, 0x5

    and-int/lit16 p1, p1, 0xff

    .line 6
    aput p1, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final l3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    const/16 v1, 0x20

    aput v1, v0, p1

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
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final m3()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x31
        0x0
    .end array-data
.end method
