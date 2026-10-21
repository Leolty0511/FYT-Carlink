.class public Lk0/ek;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static j:I = 0x0

.field public static k:I = 0x0

.field public static l:Z = false

.field public static m:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Lo1/g0;

.field public final f:I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/ek;->c:I

    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/ek;->d:[[I

    .line 4
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/ek;->e:Lo1/g0;

    .line 5
    iput v3, p0, Lk0/ek;->f:I

    .line 6
    iput v3, p0, Lk0/ek;->g:I

    .line 7
    new-instance v0, Lk0/ek$a;

    invoke-direct {v0, p0}, Lk0/ek$a;-><init>(Lk0/ek;)V

    iput-object v0, p0, Lk0/ek;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/ek$b;

    invoke-direct {v0, p0}, Lk0/ek$b;-><init>(Lk0/ek;)V

    iput-object v0, p0, Lk0/ek;->i:Ljava/lang/Runnable;

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
        -0x1
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
        0xc
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lk0/ek;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ek;->e:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3(Lk0/ek;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ek;->c3(I)V

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
    iget-object v0, p0, Lk0/ek;->e:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iput v2, v0, Lk0/mt;->q:I

    .line 8
    iput v2, v0, Lk0/mt;->i:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ek;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x18

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_f

    const/16 v3, -0x10

    const/4 v7, 0x2

    if-eq v2, v3, :cond_e

    const/16 v3, 0x11

    const/4 v8, 0x4

    const/16 v9, 0x419

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/16 v12, 0xff

    if-eq v2, v3, :cond_6

    const/16 v3, 0x18

    if-eq v2, v3, :cond_4

    const/16 v3, 0x41

    if-eq v2, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    invoke-static {v3}, Ll0/c0;->E0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 4
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    invoke-static {v3}, Ll0/c0;->E0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    .line 5
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 6
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    .line 7
    aget-byte v4, v1, v2

    and-int/2addr v4, v12

    add-int/lit8 v7, p2, 0x9

    .line 8
    aget-byte v9, v1, v7

    and-int/2addr v9, v12

    .line 9
    aget-byte v10, v1, v7

    and-int/2addr v10, v12

    if-ne v3, v12, :cond_1

    if-ne v4, v12, :cond_1

    if-ne v9, v12, :cond_1

    if-ne v10, v12, :cond_1

    .line 10
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 11
    :cond_1
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_2

    sget v5, Ll0/c0;->h:I

    if-ne v5, v4, :cond_2

    sget v5, Ll0/c0;->i:I

    if-ne v5, v9, :cond_2

    sget v5, Ll0/c0;->j:I

    if-eq v5, v10, :cond_3

    .line 12
    :cond_2
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_3

    .line 13
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 14
    sput v8, Ll0/c0;->k:I

    .line 15
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 16
    :cond_3
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 17
    sput v4, Ll0/c0;->h:I

    .line 18
    sput v9, Ll0/c0;->i:I

    .line 19
    sput v10, Ll0/c0;->j:I

    .line 20
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    invoke-static {v3}, Ll0/c0;->E0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 21
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 22
    aget-byte v2, v1, v7

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 23
    aget-byte v1, v1, v7

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    :cond_4
    add-int/lit8 v2, p2, 0x3

    .line 24
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v6

    .line 25
    aget-byte v4, v1, v2

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v6

    shl-int/2addr v3, v10

    and-int/lit8 v3, v3, 0x8

    shl-int/2addr v4, v8

    and-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 26
    sget v4, Lu0/b;->w:I

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x40

    or-int/2addr v3, v4

    .line 27
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v8, v7, [I

    const/16 v12, 0xb

    aput v12, v8, v5

    aput v3, v8, v6

    invoke-static {v4, v9, v8, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v7, [I

    const/16 v8, 0xc

    aput v8, v3, v5

    add-int/lit8 v8, p2, 0x2

    .line 28
    aget-byte v8, v1, v8

    shr-int/lit8 v7, v8, 0x2

    and-int/2addr v7, v6

    aput v7, v3, v6

    invoke-static {v4, v9, v3, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const-string v3, "persist.fyt.leftrightlighttype"

    .line 29
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 30
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v6

    aget-byte v4, v1, v2

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v6

    invoke-static {v3, v4, v1}, Ll0/c0;->b(III)V

    goto/16 :goto_6

    .line 31
    :cond_5
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v6

    aget-byte v4, v1, v2

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v6

    invoke-static {v3, v4, v1}, Ll0/c0;->a(III)V

    goto/16 :goto_6

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 32
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    sput v3, Lk0/ek;->j:I

    add-int/lit8 v3, p2, 0x4

    .line 33
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    iput v3, v0, Lk0/ek;->c:I

    move v3, v5

    .line 34
    :goto_1
    iget-object v13, v0, Lk0/ek;->d:[[I

    array-length v14, v13

    if-ge v3, v14, :cond_8

    .line 35
    iget v14, v0, Lk0/ek;->c:I

    aget-object v15, v13, v3

    aget v15, v15, v5

    if-ne v14, v15, :cond_7

    if-eqz v14, :cond_8

    .line 36
    iput v3, v0, Lk0/ek;->b:I

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 37
    :cond_8
    :goto_2
    iget v14, v0, Lk0/ek;->c:I

    if-eqz v14, :cond_9

    add-int/lit8 v14, p2, 0x5

    aget-byte v14, v1, v14

    and-int/2addr v14, v12

    if-eqz v14, :cond_9

    .line 38
    array-length v14, v13

    if-ge v3, v14, :cond_b

    .line 39
    aget-object v3, v13, v3

    aget v3, v3, v6

    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 40
    :cond_9
    iget v3, v0, Lk0/ek;->b:I

    if-eq v3, v12, :cond_a

    add-int/lit8 v14, p2, 0x5

    aget-byte v14, v1, v14

    and-int/2addr v14, v12

    if-nez v14, :cond_a

    .line 41
    aget-object v3, v13, v3

    aget v3, v3, v6

    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    .line 42
    :cond_a
    iput v12, v0, Lk0/ek;->b:I

    :cond_b
    :goto_3
    add-int/lit8 v3, p2, 0x6

    .line 43
    aget-byte v3, v1, v3

    const-string v13, "persist.syu.reversefrontdoor"

    .line 44
    invoke-static {v13, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_c

    new-array v13, v6, [I

    shr-int/lit8 v14, v3, 0x6

    and-int/2addr v14, v6

    aput v14, v13, v5

    .line 45
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    new-array v13, v6, [I

    shr-int/lit8 v14, v3, 0x7

    and-int/2addr v14, v6

    aput v14, v13, v5

    .line 46
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v13, v6, [I

    shr-int/lit8 v14, v3, 0x7

    and-int/2addr v14, v6

    aput v14, v13, v5

    .line 47
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    new-array v13, v6, [I

    shr-int/lit8 v14, v3, 0x6

    and-int/2addr v14, v6

    aput v14, v13, v5

    .line 48
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v13, v6, [I

    shr-int/lit8 v14, v3, 0x4

    and-int/2addr v14, v6

    aput v14, v13, v5

    .line 49
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    new-array v13, v6, [I

    shr-int/lit8 v14, v3, 0x5

    and-int/2addr v14, v6

    aput v14, v13, v5

    .line 50
    invoke-static {v8, v13}, Lk0/qt;->y0(I[I)V

    new-array v8, v6, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v6

    aput v3, v8, v5

    .line 51
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x9

    .line 52
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    add-int/lit8 v4, p2, 0x8

    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    const/16 v8, 0x21c

    invoke-static {v3, v4, v6, v8}, Lk0/qt;->i(IIZI)V

    .line 53
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_d

    .line 54
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    invoke-static {v3, v9, v4, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_5

    .line 55
    :cond_d
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v7, [I

    fill-array-data v4, :array_1

    invoke-static {v3, v9, v4, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 56
    :goto_5
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v7, [I

    aput v10, v4, v5

    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v6

    aput v2, v4, v6

    invoke-static {v3, v9, v4, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v2, v7, [I

    aput v6, v2, v5

    add-int/lit8 v4, p2, 0x3

    .line 57
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v2, v6

    invoke-static {v3, v9, v2, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 58
    :cond_e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_6

    .line 59
    :cond_f
    sget v2, Lk0/ek;->k:I

    add-int/lit8 v3, p2, 0x5

    aget-byte v4, v1, v3

    if-eq v2, v4, :cond_16

    .line 60
    aget-byte v1, v1, v3

    sput v1, Lk0/ek;->k:I

    .line 61
    sget v1, Lk0/nt;->a:I

    const v2, 0x2c01bc

    if-ne v1, v2, :cond_11

    .line 62
    sget v1, Lk0/ek;->k:I

    if-ne v1, v6, :cond_10

    .line 63
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_6

    .line 64
    :cond_10
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_6

    .line 65
    :cond_11
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 66
    sget v1, Lk0/ek;->k:I

    if-ne v1, v6, :cond_12

    const-string v1, "com.syu.fourcamera2"

    .line 67
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "persist.lsec.fourcamera2.show"

    .line 68
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_16

    sget v1, Lk0/ek;->j:I

    if-nez v1, :cond_16

    .line 69
    sput-boolean v6, Lk0/ek;->l:Z

    .line 70
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24f

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_6

    .line 71
    :cond_12
    sget-boolean v1, Lk0/ek;->l:Z

    if-eqz v1, :cond_13

    .line 72
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    .line 73
    :cond_13
    sput-boolean v5, Lk0/ek;->l:Z

    goto :goto_6

    .line 74
    :cond_14
    sget v1, Lk0/ek;->k:I

    if-ne v1, v6, :cond_15

    .line 75
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_6

    .line 76
    :cond_15
    invoke-static {v5}, Lk0/qt;->a(I)V

    :cond_16
    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x1
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ek;->e:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ek;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ek;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8

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

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/ek;->c3(I)V

    :goto_0
    return-void
.end method

.method public final c3(I)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x7

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v3, 0x3

    aput v3, v1, v0

    const/4 v4, 0x2

    const/16 v5, 0x6a

    aput v5, v1, v4

    aput v0, v1, v3

    const/4 v3, 0x4

    aput v0, v1, v3

    const/4 v0, 0x5

    aput p1, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/ek;->m:I

    .line 4
    iget-object p1, p0, Lk0/ek;->e:Lo1/g0;

    invoke-virtual {p1, v2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ek;->m:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/ek;->e:Lo1/g0;

    invoke-virtual {p1, v2, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
