.class public Lk0/a9;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static k:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public final h:I

.field public i:Lo1/g0;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/a9;->c:I

    const/16 v1, 0x16

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

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xf

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v5, 0x10

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v5, 0x11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v5, 0x12

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v5, 0x13

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v5, 0x14

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/a9;->d:[[I

    .line 4
    iput v0, p0, Lk0/a9;->e:I

    .line 5
    new-instance v0, Lk0/a9$a;

    invoke-direct {v0, p0}, Lk0/a9$a;-><init>(Lk0/a9;)V

    iput-object v0, p0, Lk0/a9;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/a9$b;

    invoke-direct {v0, p0}, Lk0/a9$b;-><init>(Lk0/a9;)V

    iput-object v0, p0, Lk0/a9;->g:Ljava/lang/Runnable;

    .line 7
    iput v4, p0, Lk0/a9;->h:I

    .line 8
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/a9;->i:Lo1/g0;

    .line 9
    new-instance v0, Lk0/a9$c;

    invoke-direct {v0, p0}, Lk0/a9$c;-><init>(Lk0/a9;)V

    iput-object v0, p0, Lk0/a9;->j:Ljava/lang/Runnable;

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
        0x1a
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
        0xb
        0x4
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_d
    .array-data 4
        0x80
        0x19
    .end array-data

    :array_e
    .array-data 4
        0x81
        0x15
    .end array-data

    :array_f
    .array-data 4
        0x82
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x84
        0x6
    .end array-data

    :array_12
    .array-data 4
        0x85
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x86
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x87
        0x36
    .end array-data

    :array_15
    .array-data 4
        0x88
        0x5
    .end array-data
.end method

.method public static synthetic a3(Lk0/a9;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/a9;->i:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3(Lk0/a9;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/a9;->d3(I)V

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
    iget-object v0, p0, Lk0/a9;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/a9;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/a9;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x6

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v2, v0, Lk0/mt;->e:I

    .line 7
    iput v2, v0, Lk0/mt;->f:I

    .line 8
    iput v2, v0, Lk0/mt;->g:I

    .line 9
    iput v4, v0, Lk0/mt;->o:I

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v2, v0, Lk0/mt;->e:I

    .line 12
    iput v4, v0, Lk0/mt;->f:I

    .line 13
    iput v4, v0, Lk0/mt;->g:I

    .line 14
    iput v4, v0, Lk0/mt;->o:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x11

    const/16 v5, 0xc

    const/16 v6, 0x12

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v2, v3, :cond_23

    const/16 v3, 0x28

    if-eq v2, v3, :cond_21

    const/16 v3, 0x30

    if-eq v2, v3, :cond_20

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_1f

    const/16 v10, 0x38

    const/16 v14, 0x9

    if-eq v2, v10, :cond_17

    const/16 v10, 0x39

    if-eq v2, v10, :cond_12

    const/16 v10, 0x40

    const/16 v15, 0x8

    if-eq v2, v10, :cond_10

    const/16 v10, 0x41

    if-eq v2, v10, :cond_f

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x3

    .line 4
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    add-int/lit8 v6, p2, 0x4

    .line 5
    aget-byte v8, v1, v6

    and-int/2addr v8, v11

    add-int/lit8 v7, p2, 0x5

    .line 6
    aget-byte v10, v1, v7

    and-int/2addr v10, v11

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    if-nez v8, :cond_0

    if-nez v10, :cond_0

    .line 7
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 8
    :cond_0
    sget v11, Ll0/c0;->g:I

    if-ne v11, v3, :cond_1

    sget v11, Ll0/c0;->h:I

    if-ne v11, v5, :cond_1

    sget v11, Ll0/c0;->i:I

    if-ne v11, v8, :cond_1

    sget v11, Ll0/c0;->j:I

    if-eq v11, v10, :cond_2

    .line 9
    :cond_1
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_2

    .line 10
    invoke-static {v13}, Lu0/d;->C2(I)V

    .line 11
    sput v9, Ll0/c0;->k:I

    .line 12
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 13
    :cond_2
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 14
    sput v5, Ll0/c0;->h:I

    .line 15
    sput v8, Ll0/c0;->i:I

    .line 16
    sput v10, Ll0/c0;->j:I

    .line 17
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 18
    aget-byte v2, v1, v4

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 19
    aget-byte v2, v1, v6

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 20
    aget-byte v1, v1, v7

    invoke-static {v1}, Ll0/e0;->p(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    .line 21
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 25
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/e0;->p(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    .line 26
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 28
    aget-byte v1, v1, v3

    and-int/2addr v2, v11

    .line 29
    iput v2, v0, Lk0/a9;->c:I

    move v2, v12

    .line 30
    :goto_1
    iget-object v3, v0, Lk0/a9;->d:[[I

    array-length v10, v3

    if-ge v2, v10, :cond_4

    .line 31
    iget v10, v0, Lk0/a9;->c:I

    aget-object v16, v3, v2

    aget v4, v16, v12

    if-ne v10, v4, :cond_3

    if-eqz v10, :cond_4

    .line 32
    iput v2, v0, Lk0/a9;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    :cond_4
    :goto_2
    iget v4, v0, Lk0/a9;->c:I

    if-eq v4, v14, :cond_c

    const/16 v6, 0xa

    if-eq v4, v6, :cond_7

    and-int/2addr v1, v11

    if-ne v1, v13, :cond_5

    .line 34
    array-length v1, v3

    if-ge v2, v1, :cond_31

    .line 35
    aget-object v1, v3, v2

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_5
    if-nez v1, :cond_31

    .line 36
    iget v1, v0, Lk0/a9;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_6

    if-eq v1, v11, :cond_6

    .line 37
    aget-object v1, v3, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    .line 38
    :cond_6
    iput v11, v0, Lk0/a9;->b:I

    goto/16 :goto_8

    :cond_7
    and-int/2addr v1, v11

    if-ne v1, v13, :cond_31

    .line 39
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x1a

    if-eq v1, v9, :cond_b

    if-eq v1, v7, :cond_b

    if-ne v1, v15, :cond_8

    goto :goto_3

    .line 40
    :cond_8
    sget v1, Lh0/c;->E:I

    if-eq v1, v8, :cond_a

    if-eq v1, v9, :cond_a

    if-eq v1, v7, :cond_a

    .line 41
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 42
    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    .line 43
    invoke-static {v2, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 44
    :cond_9
    invoke-static {v5, v12}, Ll0/b0;->l0(II)V

    .line 45
    invoke-static {v5, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 46
    :cond_a
    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    .line 47
    invoke-static {v2, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 48
    :cond_b
    :goto_3
    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    .line 49
    invoke-static {v2, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_c
    and-int/2addr v1, v11

    if-ne v1, v13, :cond_31

    .line 50
    sget v1, Lh0/c;->E:I

    if-eq v1, v9, :cond_e

    .line 51
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 52
    invoke-static {v6, v12}, Ll0/b0;->l0(II)V

    .line 53
    invoke-static {v6, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_d
    const/16 v1, 0xd

    .line 54
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 55
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 56
    :cond_e
    invoke-static {v6, v12}, Ll0/b0;->l0(II)V

    .line 57
    invoke-static {v6, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_f
    const/16 v2, 0x7b

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x2

    .line 58
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x3

    .line 59
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x4

    .line 60
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x5

    .line 61
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    add-int/lit8 v4, p2, 0x6

    .line 62
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v2, v12

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x7

    .line 63
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 64
    :cond_10
    sget v2, Lk0/nt;->c:I

    if-ne v2, v15, :cond_11

    const/16 v2, 0x75

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x2

    .line 65
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x3

    .line 66
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x4

    .line 67
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x5

    .line 68
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x6

    .line 69
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x7

    .line 70
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_11
    const/16 v2, 0x6e

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x2

    .line 71
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x3

    .line 72
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x4

    .line 73
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x5

    .line 74
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x6

    .line 75
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x7

    .line 76
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 77
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x3

    .line 78
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    add-int/lit8 v6, p2, 0x4

    .line 79
    aget-byte v8, v1, v6

    and-int/2addr v8, v11

    add-int/lit8 v7, p2, 0x5

    .line 80
    aget-byte v9, v1, v7

    and-int/2addr v9, v11

    .line 81
    sget v10, Ll0/c0;->g:I

    if-ne v10, v3, :cond_13

    sget v10, Ll0/c0;->h:I

    if-ne v10, v5, :cond_13

    sget v10, Ll0/c0;->i:I

    if-ne v10, v8, :cond_13

    sget v10, Ll0/c0;->j:I

    if-eq v10, v9, :cond_16

    :cond_13
    if-nez v3, :cond_14

    if-nez v5, :cond_14

    if-nez v8, :cond_14

    if-eqz v9, :cond_15

    .line 82
    :cond_14
    sget v10, Lk0/a9;->k:I

    if-nez v10, :cond_15

    .line 83
    invoke-virtual/range {p0 .. p0}, Lk0/a9;->c3()V

    .line 84
    :cond_15
    sput v3, Ll0/c0;->g:I

    .line 85
    sput v5, Ll0/c0;->h:I

    .line 86
    sput v8, Ll0/c0;->i:I

    .line 87
    sput v9, Ll0/c0;->j:I

    :cond_16
    const/16 v3, 0x6a

    new-array v5, v13, [I

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v5, v12

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v13, [I

    .line 89
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v13, [I

    .line 90
    aget-byte v4, v1, v6

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v13, [I

    .line 91
    aget-byte v1, v1, v7

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 92
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    if-eq v3, v11, :cond_18

    const/16 v3, 0x66

    new-array v4, v13, [I

    .line 93
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_18
    add-int/lit8 v2, p2, 0x3

    .line 94
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    if-eq v3, v11, :cond_19

    const/16 v3, 0x67

    new-array v4, v13, [I

    .line 95
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_19
    add-int/lit8 v2, p2, 0x4

    .line 96
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    if-eq v3, v11, :cond_1a

    const/16 v3, 0x68

    new-array v4, v13, [I

    .line 97
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_1a
    add-int/lit8 v2, p2, 0x5

    .line 98
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    if-eq v3, v11, :cond_1b

    const/16 v3, 0x69

    new-array v4, v13, [I

    .line 99
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_1b
    add-int/lit8 v2, p2, 0x6

    .line 100
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    if-eq v3, v11, :cond_1c

    const/16 v3, 0x62

    new-array v4, v13, [I

    .line 101
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_1c
    add-int/lit8 v2, p2, 0x7

    .line 102
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    if-eq v3, v11, :cond_1d

    const/16 v3, 0x63

    new-array v4, v13, [I

    .line 103
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_1d
    add-int/lit8 v2, p2, 0x8

    .line 104
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    if-eq v3, v11, :cond_1e

    const/16 v3, 0x64

    new-array v4, v13, [I

    .line 105
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_1e
    add-int/lit8 v2, p2, 0x9

    .line 106
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    if-eq v3, v11, :cond_31

    const/16 v3, 0x65

    new-array v4, v13, [I

    .line 107
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    aput v1, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 108
    :cond_1f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_20
    add-int/lit8 v2, p2, 0x3

    .line 109
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    const/16 v3, 0x2ee0

    invoke-static {v2, v1, v12, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_8

    :cond_21
    add-int/lit8 v2, p2, 0x2

    .line 110
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 111
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_22

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 112
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 113
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_22
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 114
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 115
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 116
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 117
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v13

    aput v1, v2, v12

    .line 118
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_23
    add-int/lit8 v2, p2, 0x2

    .line 119
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 120
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 121
    aget-byte v4, v1, v4

    const/16 v14, 0xb

    new-array v15, v13, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v12

    .line 122
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    new-array v14, v13, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v13

    aput v15, v14, v12

    .line 123
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    new-array v5, v13, [I

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v13

    aput v14, v5, v12

    const/16 v14, 0xd

    .line 124
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x10

    new-array v14, v13, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v13

    aput v2, v14, v12

    .line 125
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    and-int/2addr v3, v2

    if-eq v3, v13, :cond_28

    if-eq v3, v10, :cond_27

    if-eq v3, v8, :cond_26

    if-eq v3, v9, :cond_25

    if-eq v3, v7, :cond_24

    move v5, v12

    move v7, v5

    move v8, v7

    goto :goto_5

    :cond_24
    move v5, v12

    move v7, v5

    move v8, v13

    goto :goto_5

    :cond_25
    move v7, v12

    move v5, v13

    move v8, v5

    goto :goto_5

    :cond_26
    move v7, v12

    move v8, v7

    move v5, v13

    goto :goto_5

    :cond_27
    move v8, v12

    move v5, v13

    move v7, v5

    goto :goto_5

    :cond_28
    move v5, v12

    move v8, v5

    move v7, v13

    :goto_5
    const/16 v9, 0x14

    new-array v10, v13, [I

    aput v5, v10, v12

    .line 126
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v9, v13, [I

    aput v7, v9, v12

    .line 127
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    new-array v5, v13, [I

    aput v8, v5, v12

    .line 128
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v13, [I

    aput v8, v5, v12

    .line 129
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x4d

    new-array v6, v13, [I

    aput v3, v6, v12

    .line 130
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v5, v13, [I

    and-int/2addr v2, v4

    aput v2, v5, v12

    .line 131
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 132
    aget-byte v3, v1, v2

    add-int/lit8 v4, p2, 0x6

    .line 133
    aget-byte v5, v1, v4

    const-string v6, "persist.fyt.reversetemp"

    .line 134
    invoke-static {v6, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 135
    aget-byte v3, v1, v4

    .line 136
    aget-byte v5, v1, v2

    :cond_29
    const/4 v2, -0x3

    const/4 v4, -0x2

    const/16 v6, 0x1b

    const/16 v7, 0x1e

    if-eqz v3, :cond_2c

    if-eq v3, v7, :cond_2b

    if-lez v3, :cond_2a

    if-ge v3, v7, :cond_2a

    new-array v8, v13, [I

    and-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x22

    aput v3, v8, v12

    .line 137
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_2a
    new-array v3, v13, [I

    const/4 v8, -0x1

    aput v8, v3, v12

    .line 138
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_2b
    new-array v3, v13, [I

    aput v2, v3, v12

    .line 139
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_2c
    new-array v3, v13, [I

    aput v4, v3, v12

    .line 140
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v3, 0x1c

    if-eqz v5, :cond_2f

    if-eq v5, v7, :cond_2e

    if-lez v5, :cond_2d

    if-ge v5, v7, :cond_2d

    new-array v2, v13, [I

    and-int/lit16 v4, v5, 0xff

    add-int/lit8 v4, v4, 0x22

    aput v4, v2, v12

    .line 141
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2d
    new-array v2, v13, [I

    const/4 v4, -0x1

    aput v4, v2, v12

    .line 142
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2e
    new-array v4, v13, [I

    aput v2, v4, v12

    .line 143
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2f
    new-array v2, v13, [I

    aput v4, v2, v12

    .line 144
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    .line 145
    :goto_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, p2, 0x7

    .line 146
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    if-eq v1, v11, :cond_30

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_30

    if-eqz v1, :cond_30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x258

    .line 147
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_8

    .line 148
    :cond_30
    invoke-static {v12}, Lu0/d;->A3(I)V

    :cond_31
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/a9;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/a9;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/a9;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/a9;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x81

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 v0, 0x80

    aput v0, p1, v3

    aput v2, p1, v2

    .line 1
    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_0

    .line 2
    array-length p1, p2

    if-lez p1, :cond_0

    .line 3
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/a9;->d3(I)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    .line 4
    array-length p1, p2

    if-lez p1, :cond_0

    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 v0, 0xa7

    aput v0, p1, v3

    aput v2, p1, v2

    .line 5
    aget v0, p2, v4

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c3()V
    .locals 3

    const-string v0, "com.syu.carinfo.rzc.ruifengs3.JhRuiFengS3TireAct"

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

.method public final d3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x74

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/a9;->k:I

    .line 3
    iget-object p1, p0, Lk0/a9;->i:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/a9;->k:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/a9;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
