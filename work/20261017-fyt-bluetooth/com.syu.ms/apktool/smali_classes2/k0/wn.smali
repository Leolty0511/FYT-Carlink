.class public Lk0/wn;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/Runnable;

.field public h:F

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/wn;->c:I

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

    iput-object v1, p0, Lk0/wn;->d:[[I

    .line 4
    iput v0, p0, Lk0/wn;->e:I

    .line 5
    iput-boolean v0, p0, Lk0/wn;->f:Z

    .line 6
    new-instance v0, Lk0/wn$a;

    invoke-direct {v0, p0}, Lk0/wn$a;-><init>(Lk0/wn;)V

    iput-object v0, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lk0/wn;->h:F

    const/16 v0, 0xff

    .line 8
    iput v0, p0, Lk0/wn;->i:I

    .line 9
    iput v0, p0, Lk0/wn;->j:I

    .line 10
    new-instance v0, Lk0/wn$b;

    invoke-direct {v0, p0}, Lk0/wn$b;-><init>(Lk0/wn;)V

    iput-object v0, p0, Lk0/wn;->k:Ljava/lang/Runnable;

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
        0x3a
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
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
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x1d
    .end array-data
.end method

.method public static synthetic a3(Lk0/wn;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/wn;->h:F

    return p0
.end method

.method public static synthetic b3(Lk0/wn;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/wn;->h:F

    return p1
.end method

.method public static synthetic c3(Lk0/wn;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/wn;->j:I

    return p0
.end method

.method public static synthetic d3(Lk0/wn;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/wn;->j:I

    return p1
.end method

.method public static synthetic e3(Lk0/wn;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/wn;->i:I

    return p0
.end method

.method public static synthetic f3(Lk0/wn;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/wn;->i:I

    return p1
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

    .line 4
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->h:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/wn;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v0, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6b

    const/16 v4, 0xc

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x27

    const/16 v10, 0x25

    const/16 v12, 0xa

    const/4 v13, 0x5

    if-eq v2, v3, :cond_17

    const/16 v3, 0x29

    const/4 v14, 0x3

    if-eq v2, v3, :cond_16

    const/16 v15, 0x40

    const/4 v3, 0x4

    if-eq v2, v15, :cond_15

    const/16 v11, 0x7d

    const/16 v15, 0x8

    if-eq v2, v11, :cond_10

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    shr-int/2addr v1, v14

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_0

    .line 3
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 4
    :cond_0
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    :pswitch_1
    const/16 v2, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 5
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    .line 6
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 7
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 8
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 9
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 10
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 11
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 12
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 13
    :pswitch_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_3
    const/16 v2, 0x73

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 14
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v9, [I

    .line 15
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v9, [I

    .line 16
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v9, [I

    .line 17
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 18
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    const-string v2, "persist.syu.reversefrontdoor"

    .line 19
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 20
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 21
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 22
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 23
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 24
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 25
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 26
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 27
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 28
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    add-int/lit8 v5, p2, 0x3

    .line 29
    aget-byte v6, v1, v5

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x4

    .line 30
    aget-byte v11, v1, v10

    and-int/2addr v11, v7

    add-int/lit8 v12, p2, 0x5

    .line 31
    aget-byte v13, v1, v12

    and-int/2addr v13, v7

    if-nez v4, :cond_2

    if-nez v6, :cond_2

    if-nez v11, :cond_2

    if-nez v13, :cond_2

    .line 32
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 33
    :cond_2
    sget v8, Ll0/c0;->g:I

    if-ne v8, v4, :cond_3

    sget v8, Ll0/c0;->h:I

    if-ne v8, v6, :cond_3

    sget v8, Ll0/c0;->i:I

    if-ne v8, v11, :cond_3

    sget v8, Ll0/c0;->j:I

    if-eq v8, v13, :cond_4

    .line 34
    :cond_3
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_4

    .line 35
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 36
    sput v3, Ll0/c0;->k:I

    .line 37
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 38
    :cond_4
    :goto_1
    sput v4, Ll0/c0;->g:I

    .line 39
    sput v6, Ll0/c0;->h:I

    .line 40
    sput v11, Ll0/c0;->i:I

    .line 41
    sput v13, Ll0/c0;->j:I

    .line 42
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 43
    aget-byte v2, v1, v5

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 44
    aget-byte v2, v1, v10

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 45
    aget-byte v1, v1, v12

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->l1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 46
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 47
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 48
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 49
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->l1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_7
    new-array v2, v9, [I

    add-int/lit8 v11, p2, 0x2

    .line 50
    aget-byte v15, v1, v11

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v9

    aput v15, v2, v8

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v12, v9, [I

    .line 51
    aget-byte v15, v1, v11

    shr-int/2addr v15, v5

    and-int/2addr v15, v9

    aput v15, v12, v8

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 52
    aget-byte v12, v1, v11

    shr-int/2addr v12, v13

    and-int/2addr v12, v9

    aput v12, v2, v8

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4f

    new-array v4, v9, [I

    .line 53
    aget-byte v12, v1, v11

    shr-int/2addr v12, v3

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v4, v9, [I

    .line 54
    aget-byte v12, v1, v11

    shr-int/2addr v12, v14

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v4, v9, [I

    .line 55
    aget-byte v12, v1, v11

    shr-int/lit8 v6, v12, 0x2

    and-int/2addr v6, v9

    aput v6, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v4, v9, [I

    .line 56
    aget-byte v6, v1, v11

    shr-int/2addr v6, v9

    and-int/2addr v6, v9

    aput v6, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 57
    aget-byte v11, v1, v6

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v9

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v9, [I

    .line 58
    aget-byte v11, v1, v6

    shr-int/2addr v11, v5

    and-int/2addr v11, v9

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v9, [I

    .line 59
    aget-byte v11, v1, v6

    shr-int/2addr v11, v13

    and-int/2addr v11, v9

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v9, [I

    .line 60
    aget-byte v6, v1, v6

    and-int/lit8 v6, v6, 0xf

    aput v6, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 61
    aget-byte v11, v1, v6

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v9

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v9, [I

    .line 62
    aget-byte v11, v1, v6

    shr-int/lit8 v5, v11, 0x6

    and-int/2addr v5, v9

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 63
    aget-byte v4, v1, v6

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v2, v8

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 64
    aget-byte v6, v1, v5

    shr-int/lit8 v3, v6, 0x4

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 65
    aget-byte v3, v1, v5

    shr-int/2addr v3, v8

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v8

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 66
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    add-int/lit8 v5, p2, 0x5

    .line 67
    aget-byte v6, v1, v5

    and-int/2addr v6, v7

    const-string v10, "persist.fyt.reversetemp"

    .line 68
    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 69
    aget-byte v4, v1, v5

    and-int/2addr v4, v7

    .line 70
    aget-byte v1, v1, v2

    and-int/lit16 v6, v1, 0xff

    :cond_5
    const/16 v1, 0x1b

    if-eqz v4, :cond_8

    if-eq v4, v7, :cond_7

    if-lt v4, v3, :cond_6

    const/16 v2, 0x40

    if-gt v4, v2, :cond_6

    new-array v2, v9, [I

    aput v4, v2, v8

    .line 71
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v2, v9, [I

    const/4 v4, -0x1

    aput v4, v2, v8

    .line 72
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v2, v9, [I

    const/4 v4, -0x3

    aput v4, v2, v8

    .line 73
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v9, [I

    const/4 v4, -0x2

    aput v4, v2, v8

    .line 74
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v1, 0x1c

    if-eqz v6, :cond_b

    if-eq v6, v7, :cond_a

    if-lt v6, v3, :cond_9

    const/16 v2, 0x40

    if-gt v6, v2, :cond_9

    new-array v2, v9, [I

    aput v6, v2, v8

    .line 75
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_9
    new-array v2, v9, [I

    const/4 v3, -0x1

    aput v3, v2, v8

    .line 76
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_a
    new-array v2, v9, [I

    const/4 v3, -0x3

    aput v3, v2, v8

    .line 77
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_b
    new-array v2, v9, [I

    const/4 v3, -0x2

    aput v3, v2, v8

    .line 78
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 80
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 81
    iput v2, v0, Lk0/wn;->c:I

    move v2, v8

    .line 82
    :goto_3
    iget-object v3, v0, Lk0/wn;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 83
    iget v4, v0, Lk0/wn;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 84
    iput v2, v0, Lk0/wn;->b:I

    goto :goto_4

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_e

    .line 85
    array-length v1, v3

    if-ge v2, v1, :cond_1e

    .line 86
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_e
    if-nez v1, :cond_1e

    .line 87
    iget v1, v0, Lk0/wn;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_f

    if-eq v1, v7, :cond_f

    .line 88
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 89
    :cond_f
    iput v7, v0, Lk0/wn;->b:I

    goto/16 :goto_9

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-eq v2, v9, :cond_13

    if-eq v2, v14, :cond_12

    if-eq v2, v15, :cond_11

    goto/16 :goto_9

    :cond_11
    add-int/lit8 v2, p2, 0x3

    .line 91
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 92
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 93
    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    .line 94
    iput-boolean v9, v0, Lk0/wn;->f:Z

    goto/16 :goto_9

    :cond_12
    add-int/lit8 v2, p2, 0x4

    .line 95
    aget-byte v2, v1, v2

    shl-int/2addr v2, v15

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    or-int/2addr v1, v2

    const/16 v2, 0x64

    div-int/2addr v1, v2

    const/16 v2, 0x407

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 96
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 97
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v6, [I

    aput v9, v4, v8

    aput v1, v4, v9

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_13
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 98
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_14

    add-int/lit8 v2, p2, 0x3

    .line 99
    aget-byte v4, v1, v2

    shr-int/2addr v4, v14

    and-int/2addr v4, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    invoke-static {v4, v1, v8}, Ll0/c0;->b(III)V

    goto/16 :goto_9

    :cond_14
    add-int/lit8 v2, p2, 0x3

    .line 100
    aget-byte v4, v1, v2

    shr-int/2addr v4, v14

    and-int/2addr v4, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    invoke-static {v4, v1, v8}, Ll0/c0;->a(III)V

    goto/16 :goto_9

    :cond_15
    const/16 v2, 0x63

    new-array v4, v9, [I

    add-int/lit8 v7, p2, 0x2

    .line 101
    aget-byte v10, v1, v7

    shr-int/2addr v10, v5

    and-int/2addr v10, v14

    aput v10, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 102
    aget-byte v4, v1, v7

    shr-int/2addr v4, v13

    and-int/2addr v4, v9

    aput v4, v2, v8

    const/16 v4, 0x64

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v9, [I

    .line 103
    aget-byte v10, v1, v7

    shr-int/2addr v10, v3

    and-int/2addr v10, v9

    aput v10, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v9, [I

    .line 104
    aget-byte v10, v1, v7

    shr-int/2addr v10, v14

    and-int/2addr v10, v9

    aput v10, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v9, [I

    .line 105
    aget-byte v7, v1, v7

    shr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x7

    aput v7, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v4, v9, [I

    add-int/lit8 v7, p2, 0x3

    .line 106
    aget-byte v10, v1, v7

    shr-int/2addr v10, v5

    and-int/2addr v10, v14

    aput v10, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v9, [I

    .line 107
    aget-byte v10, v1, v7

    shr-int/2addr v10, v3

    and-int/2addr v10, v14

    aput v10, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v9, [I

    .line 108
    aget-byte v7, v1, v7

    shr-int/2addr v7, v8

    and-int/2addr v7, v9

    aput v7, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v9, [I

    add-int/lit8 v7, p2, 0x4

    .line 109
    aget-byte v10, v1, v7

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v9

    aput v10, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v9, [I

    .line 110
    aget-byte v10, v1, v7

    shr-int/lit8 v5, v10, 0x6

    and-int/2addr v5, v9

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v9, [I

    .line 111
    aget-byte v5, v1, v7

    shr-int/lit8 v3, v5, 0x4

    and-int/2addr v3, v14

    aput v3, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v9, [I

    .line 112
    aget-byte v4, v1, v7

    shr-int/2addr v4, v6

    and-int/2addr v4, v14

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v9, [I

    .line 113
    aget-byte v1, v1, v7

    shr-int/2addr v1, v8

    and-int/2addr v1, v14

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x3

    .line 115
    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    .line 116
    iget-boolean v3, v0, Lk0/wn;->f:Z

    if-nez v3, :cond_1e

    const/16 v3, 0x1300

    .line 117
    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 118
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    const-string v2, "persist.fyt.temperature"

    .line 119
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v9, :cond_19

    .line 120
    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v10

    if-ne v2, v9, :cond_18

    goto :goto_5

    :cond_18
    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x258

    goto :goto_7

    :cond_19
    :goto_5
    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    .line 121
    rem-int/lit8 v2, v1, 0xa

    if-lt v2, v13, :cond_1a

    .line 122
    div-int/2addr v1, v12

    mul-int/2addr v1, v12

    add-int/2addr v1, v12

    goto :goto_6

    .line 123
    :cond_1a
    div-int/2addr v1, v12

    mul-int/2addr v1, v12

    :goto_6
    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    const/4 v2, -0x1

    and-int/2addr v1, v2

    .line 124
    :goto_7
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto :goto_9

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 125
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    .line 126
    iget v2, v0, Lk0/wn;->e:I

    if-eq v2, v1, :cond_1e

    if-ne v1, v9, :cond_1c

    .line 127
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 128
    invoke-virtual/range {p0 .. p0}, Lk0/wn;->g3()V

    .line 129
    sget v2, Ly0/f;->i:I

    if-eq v2, v9, :cond_1d

    .line 130
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    .line 131
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_1c
    if-nez v1, :cond_1d

    .line 132
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 133
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 134
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    .line 135
    sget v2, Ly0/f;->i:I

    if-ne v2, v9, :cond_1d

    .line 136
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    .line 137
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    .line 138
    :cond_1d
    :goto_8
    iput v1, v0, Lk0/wn;->e:I

    :cond_1e
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
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
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/wn;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/wn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7c

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
    .locals 6

    const/4 p3, 0x6

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p4, p1, v4

    const/16 p4, -0x76

    aput p4, p1, v5

    aput p3, p1, v3

    .line 1
    aget p4, p2, v4

    aput p4, p1, v2

    aget p4, p2, v5

    aput p4, p1, v1

    aget p4, p2, v3

    aput p4, p1, v0

    aget p4, p2, v2

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p4, p2, v1

    aput p4, p1, p3

    const/16 p3, 0x8

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p4, p1, v4

    const/16 p3, -0x7c

    aput p3, p1, v5

    aput v3, p1, v3

    .line 2
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p4, p1, v4

    const/16 p3, -0x70

    aput p3, p1, v5

    aput v3, p1, v3

    .line 3
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, -0x3a

    aput p3, p1, v5

    aput v2, p1, v3

    .line 4
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    aput v4, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final g3()V
    .locals 3

    const-string v0, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
