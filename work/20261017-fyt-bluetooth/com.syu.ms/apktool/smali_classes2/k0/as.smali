.class public Lk0/as;
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

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/as;->c:I

    const/16 v1, 0xe

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

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/as;->d:[[I

    .line 4
    new-instance v1, Lk0/as$a;

    invoke-direct {v1, p0}, Lk0/as$a;-><init>(Lk0/as;)V

    iput-object v1, p0, Lk0/as;->e:Ljava/lang/Runnable;

    .line 5
    iput v0, p0, Lk0/as;->f:I

    .line 6
    new-instance v0, Lk0/as$b;

    invoke-direct {v0, p0}, Lk0/as$b;-><init>(Lk0/as;)V

    iput-object v0, p0, Lk0/as;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/as$c;

    invoke-direct {v0, p0}, Lk0/as$c;-><init>(Lk0/as;)V

    iput-object v0, p0, Lk0/as;->h:Ljava/lang/Runnable;

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
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x19
        0xd
    .end array-data

    :array_d
    .array-data 4
        0x1b
        0x5
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

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->b:I

    .line 7
    iput v2, v0, Lk0/mt;->c:I

    .line 8
    iput v2, v0, Lk0/mt;->d:I

    .line 9
    iput v2, v0, Lk0/mt;->o:I

    .line 10
    iput v2, v0, Lk0/mt;->h:I

    .line 11
    iput v2, v0, Lk0/mt;->q:I

    .line 12
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/as;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v4, :cond_d

    const/16 v8, 0xa

    if-eq v2, v8, :cond_b

    const/16 v9, 0x35

    const/16 v10, 0x10

    const/16 v11, 0xc

    const v13, 0xff00

    const/16 v14, 0x8

    const/4 v15, 0x5

    const/4 v12, 0x4

    if-eq v2, v9, :cond_9

    const/16 v9, 0x37

    if-eq v2, v9, :cond_8

    const/16 v8, 0x7f

    if-eq v2, v8, :cond_7

    if-eq v2, v12, :cond_6

    if-eq v2, v15, :cond_2

    const/4 v5, 0x6

    if-eq v2, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 4
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 5
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 6
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 7
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 8
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 9
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 10
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 11
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 14
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x5

    .line 15
    aget-byte v13, v1, v11

    and-int/2addr v13, v5

    if-nez v3, :cond_3

    if-nez v8, :cond_3

    if-nez v10, :cond_3

    if-nez v13, :cond_3

    .line 16
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_3
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_4

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_4

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_4

    sget v6, Ll0/c0;->j:I

    if-eq v6, v13, :cond_5

    .line 18
    :cond_4
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_5

    .line 19
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 20
    sput v12, Ll0/c0;->k:I

    .line 21
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_5
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 23
    sput v8, Ll0/c0;->h:I

    .line 24
    sput v10, Ll0/c0;->i:I

    .line 25
    sput v13, Ll0/c0;->j:I

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 27
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 28
    aget-byte v2, v1, v9

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 29
    aget-byte v1, v1, v11

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    .line 34
    :cond_7
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 35
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 36
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v2, v6

    const/16 v4, 0xb

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 37
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v2, v6

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 38
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    and-int/2addr v4, v13

    add-int/lit8 v8, p2, 0x6

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v2, v6

    const/16 v4, 0xd

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 39
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    and-int/2addr v4, v13

    add-int/lit8 v8, p2, 0x8

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v2, v6

    const/16 v4, 0xe

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 40
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v2, v6

    const/16 v4, 0xf

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 41
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v2, v6

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0xb

    .line 42
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0xc

    .line 43
    aget-byte v8, v1, v8

    shl-int/2addr v8, v14

    and-int/2addr v8, v13

    add-int/lit8 v9, p2, 0xd

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0xe

    .line 44
    aget-byte v8, v1, v8

    shl-int/2addr v8, v14

    and-int/2addr v8, v13

    add-int/lit8 v9, p2, 0xf

    aget-byte v9, v1, v9

    and-int/2addr v5, v9

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x10

    .line 45
    aget-byte v8, v1, v5

    const/4 v9, 0x7

    shr-int/2addr v8, v9

    and-int/2addr v8, v7

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v7, [I

    .line 46
    aget-byte v1, v1, v5

    shr-int/2addr v1, v15

    and-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_9
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 47
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_a

    add-int/lit8 v2, p2, 0x2

    .line 48
    aget-byte v3, v1, v2

    shr-int/2addr v3, v15

    and-int/2addr v3, v7

    aget-byte v2, v1, v2

    shr-int/2addr v2, v12

    and-int/2addr v2, v7

    invoke-static {v3, v2, v6}, Ll0/c0;->b(III)V

    goto :goto_2

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 49
    aget-byte v3, v1, v2

    shr-int/2addr v3, v15

    and-int/2addr v3, v7

    aget-byte v2, v1, v2

    shr-int/2addr v2, v12

    and-int/2addr v2, v7

    invoke-static {v3, v2, v6}, Ll0/c0;->a(III)V

    :goto_2
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x4

    .line 50
    aget-byte v3, v1, v3

    shl-int/2addr v3, v14

    and-int/2addr v3, v13

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v2, v6

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x9

    .line 51
    aget-byte v3, v1, v3

    shl-int/2addr v3, v10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xa

    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    and-int/2addr v4, v13

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xb

    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v2, v6

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0xc

    .line 52
    aget-byte v1, v1, v3

    const/4 v3, 0x7

    shr-int/2addr v1, v3

    and-int/2addr v1, v7

    aput v1, v2, v6

    const/16 v1, 0x9

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_b
    add-int/lit8 v2, p2, 0x3

    .line 53
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_c

    goto :goto_3

    :cond_c
    move v6, v7

    :goto_3
    const/16 v1, 0x1e0

    invoke-static {v2, v3, v6, v1}, Lk0/qt;->j(IIII)V

    goto :goto_6

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 55
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 56
    iput v2, v0, Lk0/as;->c:I

    move v2, v6

    .line 57
    :goto_4
    iget-object v3, v0, Lk0/as;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_f

    .line 58
    iget v4, v0, Lk0/as;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_e

    if-eqz v4, :cond_f

    .line 59
    iput v2, v0, Lk0/as;->b:I

    goto :goto_5

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    :goto_5
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_10

    .line 60
    array-length v1, v3

    if-ge v2, v1, :cond_12

    .line 61
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_10
    if-nez v1, :cond_12

    .line 62
    iget v1, v0, Lk0/as;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_11

    if-eq v1, v5, :cond_11

    .line 63
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 64
    :cond_11
    iput v5, v0, Lk0/as;->b:I

    :cond_12
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/as;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/as;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/as;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x16

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
