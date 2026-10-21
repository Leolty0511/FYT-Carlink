.class public Lk0/hn;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public final i:Ljava/lang/Runnable;

.field public j:I

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hn;->c:I

    const/16 v1, 0x9

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

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/hn;->d:[[I

    .line 4
    new-instance v1, Lk0/hn$a;

    invoke-direct {v1, p0}, Lk0/hn$a;-><init>(Lk0/hn;)V

    iput-object v1, p0, Lk0/hn;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lk0/hn$b;

    invoke-direct {v1, p0}, Lk0/hn$b;-><init>(Lk0/hn;)V

    iput-object v1, p0, Lk0/hn;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/hn$c;

    invoke-direct {v1, p0}, Lk0/hn$c;-><init>(Lk0/hn;)V

    iput-object v1, p0, Lk0/hn;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/hn$d;

    invoke-direct {v1, p0}, Lk0/hn$d;-><init>(Lk0/hn;)V

    iput-object v1, p0, Lk0/hn;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lk0/hn$e;

    invoke-direct {v1, p0}, Lk0/hn$e;-><init>(Lk0/hn;)V

    iput-object v1, p0, Lk0/hn;->i:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lk0/hn;->j:I

    .line 10
    iput-boolean v0, p0, Lk0/hn;->k:Z

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lk0/hn;->l:Ljava/lang/String;

    .line 12
    new-instance v0, Lk0/hn$f;

    invoke-direct {v0, p0}, Lk0/hn$f;-><init>(Lk0/hn;)V

    iput-object v0, p0, Lk0/hn;->m:Ljava/lang/Runnable;

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
        0x1a
    .end array-data
.end method

.method public static synthetic a3(Lk0/hn;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/hn;->j3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b3(Lk0/hn;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/hn;->j:I

    return p0
.end method

.method public static synthetic c3(Lk0/hn;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/hn;->j:I

    return p1
.end method

.method public static synthetic d3(Lk0/hn;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/hn;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e3(Lk0/hn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hn;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic f3(Lk0/hn;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/hn;->l3()V

    return-void
.end method

.method public static synthetic g3(Lk0/hn;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/hn;->k:Z

    return p0
.end method

.method public static synthetic h3(Lk0/hn;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/hn;->k:Z

    return p1
.end method

.method public static synthetic i3(Lk0/hn;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/hn;->k3(Ljava/lang/String;)V

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
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/hn;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/hn;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/hn;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/hn;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/hn;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/hn;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/hn;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/hn;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/hn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/hn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/hn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x27

    const v4, 0xff00

    const/4 v5, 0x4

    const/16 v6, 0xa

    const/16 v7, 0xff

    const/4 v8, 0x1

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x29

    const/4 v9, 0x3

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x30

    const/4 v10, 0x2

    if-eq v2, v3, :cond_19

    const/16 v3, 0x40

    const/4 v12, 0x5

    const/4 v13, 0x0

    if-eq v2, v3, :cond_18

    const/16 v3, 0x66

    if-eq v2, v3, :cond_17

    const/16 v3, 0x68

    if-eq v2, v3, :cond_16

    const/16 v3, 0x7d

    const/16 v4, 0xb

    if-eq v2, v3, :cond_14

    const/16 v3, 0x12

    const/16 v14, 0x3c

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v3, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 4
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 5
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 6
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 7
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 8
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 9
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 10
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v8

    aput v2, v3, v13

    .line 11
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 12
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v8

    aget-byte v4, v1, v2

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v5

    and-int/2addr v1, v8

    invoke-static {v3, v4, v1}, Ll0/c0;->a(III)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 13
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 14
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 15
    aget-byte v4, v1, v4

    add-int/lit8 v9, p2, 0x5

    .line 16
    aget-byte v1, v1, v9

    const/16 v9, 0x78

    if-le v2, v14, :cond_1

    if-le v3, v9, :cond_1

    if-le v4, v9, :cond_1

    if-le v1, v14, :cond_1

    .line 17
    invoke-static {v13}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 18
    :cond_1
    sget v10, Ll0/c0;->g:I

    if-ne v10, v2, :cond_2

    sget v10, Ll0/c0;->h:I

    if-ne v10, v3, :cond_2

    sget v10, Ll0/c0;->i:I

    if-ne v10, v4, :cond_2

    sget v10, Ll0/c0;->j:I

    if-eq v10, v1, :cond_3

    .line 19
    :cond_2
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_3

    .line 20
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 21
    sput v5, Ll0/c0;->k:I

    .line 22
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 23
    :cond_3
    :goto_1
    sput v2, Ll0/c0;->g:I

    .line 24
    sput v3, Ll0/c0;->h:I

    .line 25
    sput v4, Ll0/c0;->i:I

    .line 26
    sput v1, Ll0/c0;->j:I

    and-int/2addr v2, v7

    mul-int/2addr v2, v6

    .line 27
    div-int/2addr v2, v14

    if-le v2, v6, :cond_4

    move v2, v6

    .line 28
    :cond_4
    invoke-static {v2}, Lu0/d;->D2(I)V

    and-int/lit16 v2, v3, 0xff

    mul-int/2addr v2, v6

    .line 29
    div-int/2addr v2, v9

    if-le v2, v6, :cond_5

    move v2, v6

    .line 30
    :cond_5
    invoke-static {v2}, Lu0/d;->E2(I)V

    and-int/lit16 v2, v4, 0xff

    mul-int/2addr v2, v6

    .line 31
    div-int/2addr v2, v9

    if-le v2, v6, :cond_6

    move v2, v6

    .line 32
    :cond_6
    invoke-static {v2}, Lu0/d;->F2(I)V

    and-int/2addr v1, v7

    mul-int/2addr v1, v6

    .line 33
    div-int/2addr v1, v14

    if-le v1, v6, :cond_7

    goto :goto_2

    :cond_7
    move v6, v1

    .line 34
    :goto_2
    invoke-static {v6}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 36
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 37
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 38
    aget-byte v1, v1, v5

    and-int/2addr v2, v7

    mul-int/2addr v2, v6

    .line 39
    div-int/2addr v2, v14

    if-le v2, v6, :cond_8

    move v2, v6

    .line 40
    :cond_8
    invoke-static {v2}, Lu0/d;->R2(I)V

    and-int/lit16 v2, v3, 0xff

    mul-int/2addr v2, v6

    .line 41
    div-int/lit16 v2, v2, 0xa5

    if-le v2, v6, :cond_9

    move v2, v6

    .line 42
    :cond_9
    invoke-static {v2}, Lu0/d;->S2(I)V

    and-int/lit16 v2, v4, 0xff

    mul-int/2addr v2, v6

    .line 43
    div-int/lit16 v2, v2, 0xa5

    if-le v2, v6, :cond_a

    move v2, v6

    .line 44
    :cond_a
    invoke-static {v2}, Lu0/d;->T2(I)V

    and-int/2addr v1, v7

    mul-int/2addr v1, v6

    .line 45
    div-int/2addr v1, v14

    if-le v1, v6, :cond_b

    goto :goto_3

    :cond_b
    move v6, v1

    .line 46
    :goto_3
    invoke-static {v6}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 48
    aget-byte v5, v1, v5

    add-int/lit8 v9, p2, 0x4

    .line 49
    aget-byte v10, v1, v9

    add-int/lit8 v12, p2, 0x5

    .line 50
    aget-byte v14, v1, v12

    add-int/lit8 v15, p2, 0x6

    .line 51
    aget-byte v15, v1, v15

    new-array v11, v8, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v13

    .line 52
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v8

    aput v11, v6, v13

    .line 53
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v6, v8, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v8

    aput v11, v6, v13

    .line 54
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v6, v8, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v8

    aput v11, v6, v13

    .line 55
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v6, v8, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v8

    aput v11, v6, v13

    .line 56
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v8

    aput v6, v4, v13

    const/16 v6, 0xf

    .line 57
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x43

    new-array v11, v8, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v8

    aput v2, v11, v13

    .line 58
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v5, 0x7

    and-int/2addr v4, v8

    aput v4, v2, v13

    .line 59
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v8, [I

    shr-int/lit8 v4, v5, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    shr-int/lit8 v4, v5, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v13

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    and-int/lit8 v4, v5, 0xf

    aput v4, v3, v13

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 63
    invoke-static {v2, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 64
    aget-byte v10, v1, v12

    .line 65
    aget-byte v14, v1, v9

    :cond_c
    const/16 v1, 0x1b

    new-array v2, v8, [I

    and-int/lit16 v3, v10, 0xff

    aput v3, v2, v13

    .line 66
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1c

    new-array v2, v8, [I

    and-int/lit16 v3, v14, 0xff

    aput v3, v2, v13

    .line 67
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v8, [I

    shr-int/lit8 v3, v15, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v13

    .line 68
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v8, [I

    shr-int/lit8 v2, v15, 0x6

    and-int/2addr v2, v8

    aput v2, v1, v13

    const/16 v2, 0x10

    .line 69
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v8, [I

    shr-int/lit8 v3, v15, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v13

    .line 70
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v8, [I

    and-int/lit8 v3, v15, 0x1

    aput v3, v2, v13

    .line 71
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 72
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 73
    aget-byte v1, v1, v4

    and-int/2addr v2, v7

    .line 74
    iput v2, v0, Lk0/hn;->c:I

    move v2, v13

    .line 75
    :goto_4
    iget-object v4, v0, Lk0/hn;->d:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_e

    .line 76
    iget v6, v0, Lk0/hn;->c:I

    aget-object v10, v4, v2

    aget v10, v10, v13

    if-ne v6, v10, :cond_d

    if-eqz v6, :cond_e

    .line 77
    iput v2, v0, Lk0/hn;->b:I

    goto :goto_5

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 78
    :cond_e
    :goto_5
    iget v6, v0, Lk0/hn;->c:I

    if-eq v6, v12, :cond_11

    and-int/2addr v1, v7

    if-ne v1, v8, :cond_f

    .line 79
    array-length v1, v4

    if-ge v2, v1, :cond_1f

    .line 80
    aget-object v1, v4, v2

    aget v1, v1, v8

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_f
    if-nez v1, :cond_1f

    .line 81
    iget v1, v0, Lk0/hn;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_10

    if-eq v1, v7, :cond_10

    .line 82
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 83
    :cond_10
    iput v7, v0, Lk0/hn;->b:I

    goto/16 :goto_8

    :cond_11
    and-int/2addr v1, v7

    if-ne v1, v8, :cond_1f

    .line 84
    sget v1, Lh0/c;->E:I

    if-eq v1, v9, :cond_13

    if-eq v1, v5, :cond_12

    if-eq v1, v12, :cond_13

    .line 85
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    .line 86
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 87
    :cond_12
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    .line 88
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_13
    const/16 v1, 0x1a

    .line 89
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    .line 90
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 91
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-eq v2, v8, :cond_15

    goto/16 :goto_8

    :cond_15
    add-int/lit8 v2, p2, 0x3

    .line 92
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    aget-byte v6, v1, v2

    shr-int/lit8 v5, v6, 0x4

    and-int/2addr v5, v8

    invoke-static {v3, v5, v13}, Ll0/c0;->a(III)V

    .line 93
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x419

    new-array v6, v10, [I

    aput v4, v6, v13

    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    aput v1, v6, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v5, v6, v1, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_16
    const/16 v2, 0x67

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 94
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 95
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v2, v13

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_17
    add-int/lit8 v2, p2, 0x3

    .line 96
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x4

    .line 97
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 98
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 99
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x7

    .line 100
    aget-byte v1, v1, v7

    const/16 v7, 0x62

    new-array v10, v8, [I

    aput v2, v10, v13

    .line 101
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v7, v8, [I

    aput v4, v7, v13

    .line 102
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v8, [I

    aput v5, v4, v13

    .line 103
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v8, [I

    aput v6, v4, v13

    .line 104
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    and-int/2addr v1, v9

    aput v1, v2, v13

    .line 105
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_5
    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 107
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_6
    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 108
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_7
    const/16 v2, 0x75

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 109
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_8
    const/16 v2, 0x74

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 110
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_9
    const/16 v2, 0x73

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 111
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_a
    const/16 v2, 0x72

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 112
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_b
    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 113
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_c
    const/16 v2, 0x70

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 114
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_d
    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 115
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_e
    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 116
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_f
    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 117
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x4

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_10
    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 118
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x4

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_11
    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 119
    aget-byte v5, v1, v5

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_12
    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 120
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x4

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_13
    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 121
    aget-byte v5, v1, v5

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 122
    :cond_19
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 123
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x4dce

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_8

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 124
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 125
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 126
    aget-byte v1, v1, v5

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v4

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1d

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_1c

    const/high16 v2, 0x10000

    sub-int/2addr v2, v1

    rsub-int v1, v2, 0x3e8

    goto :goto_6

    :cond_1c
    const/high16 v2, 0x10000

    sub-int/2addr v2, v1

    .line 127
    rem-int/lit8 v1, v2, 0xa

    .line 128
    div-int/2addr v2, v6

    mul-int/2addr v2, v6

    rsub-int v2, v2, 0x3e8

    sub-int v1, v2, v1

    goto :goto_7

    :cond_1d
    and-int/2addr v2, v8

    if-ne v2, v8, :cond_1e

    add-int/lit16 v1, v1, 0x3e8

    :goto_6
    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 129
    :cond_1e
    rem-int/lit8 v2, v1, 0xa

    .line 130
    div-int/2addr v1, v6

    mul-int/2addr v1, v6

    add-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v2

    .line 131
    :goto_7
    invoke-static {v1}, Lu0/d;->B3(I)V

    :cond_1f
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
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
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/hn;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/hn;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/hn;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/hn;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/hn;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/hn;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/hn;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/hn;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/hn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/hn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/hn;->g:Ljava/lang/Runnable;

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

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    const/16 v5, 0x405

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget p1, p2, v4

    mul-int/lit16 p1, p1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v5

    div-int/2addr p1, v5

    .line 2
    aget v5, p2, v2

    mul-int/lit16 v5, v5, 0x258

    invoke-static {}, La/f;->i()I

    move-result v6

    div-int/2addr v5, v6

    .line 3
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4
    aget v6, p2, v3

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/16 v9, 0xcb

    const/16 v10, 0x8

    if-nez v6, :cond_1

    new-array p2, v10, [I

    aput v0, p2, v3

    aput v9, p2, v4

    aput v1, p2, v2

    shr-int/lit8 v0, p1, 0x8

    aput v0, p2, p4

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, p3

    shr-int/lit8 p1, v5, 0x8

    aput p1, p2, v1

    and-int/lit16 p1, v5, 0xff

    aput p1, p2, v8

    aput v4, p2, v7

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_1
    aget p2, p2, v3

    if-ne p2, v4, :cond_4

    new-array p2, v10, [I

    aput v0, p2, v3

    aput v9, p2, v4

    aput v1, p2, v2

    shr-int/lit8 v0, p1, 0x8

    aput v0, p2, p4

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, p3

    shr-int/lit8 p1, v5, 0x8

    aput p1, p2, v1

    and-int/lit16 p1, v5, 0xff

    aput p1, p2, v8

    aput v3, p2, v7

    .line 7
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 8
    array-length p1, p2

    if-lez p1, :cond_4

    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x90

    aput v0, p1, v4

    aput v2, p1, v2

    .line 9
    aget v0, p2, v3

    int-to-byte v0, v0

    aput v0, p1, p4

    aget p2, p2, v4

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 10
    array-length p1, p2

    if-lez p1, :cond_4

    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0xc6

    aput v0, p1, v4

    aput v2, p1, v2

    .line 11
    aget v0, p2, v3

    int-to-byte v0, v0

    aput v0, p1, p4

    aget p2, p2, v4

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final j3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v2, v0, 0x4

    .line 2
    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    .line 3
    aput v3, v2, v4

    const/4 v3, 0x1

    .line 4
    aput p1, v2, v3

    add-int/2addr v0, v3

    const/4 p1, 0x2

    .line 5
    aput v0, v2, p1

    const/4 p1, 0x3

    const/16 v0, 0x10

    .line 6
    aput v0, v2, p1

    :goto_1
    if-ge v4, v1, :cond_2

    .line 7
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v0, 0x4

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 8
    aput v5, v2, v3

    add-int/lit8 v0, v0, 0x5

    and-int/lit16 p1, p1, 0xff

    .line 9
    aput p1, v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final k3(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x5

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v1, v4

    const/16 v3, -0x36

    const/4 v5, 0x1

    .line 4
    aput v3, v1, v5

    .line 5
    array-length v3, v0

    const/4 v6, 0x2

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput v3, v1, v6

    const/4 v3, 0x3

    .line 6
    aput v3, v1, v3

    const/4 v3, 0x4

    .line 7
    aput v5, v1, v3

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_1

    add-int v3, v2, v4

    .line 9
    aget-char v5, v0, v4

    int-to-byte v5, v5

    aput v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final l3()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, -0x1d

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, -0x3b

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 1
    sget v1, Lh0/c;->E:I

    const/4 v3, 0x4

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x14

    aput v1, v0, v3

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x11

    aput v1, v0, v3

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x12

    aput v1, v0, v3

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x10

    aput v1, v0, v3

    goto :goto_0

    :pswitch_4
    aput v2, v0, v3

    .line 2
    :goto_0
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lh0/c;->E:I

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/hn;->i:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/hn;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
