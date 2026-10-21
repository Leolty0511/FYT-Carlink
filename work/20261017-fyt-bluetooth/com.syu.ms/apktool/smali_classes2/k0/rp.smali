.class public Lk0/rp;
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
    iput v0, p0, Lk0/rp;->c:I

    const/16 v1, 0x11

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

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/rp;->d:[[I

    .line 4
    new-instance v1, Lk0/rp$a;

    invoke-direct {v1, p0}, Lk0/rp$a;-><init>(Lk0/rp;)V

    iput-object v1, p0, Lk0/rp;->e:Ljava/lang/Runnable;

    .line 5
    iput v0, p0, Lk0/rp;->f:I

    .line 6
    new-instance v0, Lk0/rp$b;

    invoke-direct {v0, p0}, Lk0/rp$b;-><init>(Lk0/rp;)V

    iput-object v0, p0, Lk0/rp;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/rp$c;

    invoke-direct {v0, p0}, Lk0/rp$c;-><init>(Lk0/rp;)V

    iput-object v0, p0, Lk0/rp;->h:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
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
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x18
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x36
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x44
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x43
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x16
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/rp;->g:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/rp;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    .line 10
    iput v1, v0, Lk0/mt;->l:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x21

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_14

    const/16 v1, 0x7d

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eq v0, v1, :cond_11

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_10

    const/16 p3, 0x23

    const/4 v1, 0x5

    if-eq v0, p3, :cond_7

    const/16 p3, 0x24

    if-eq v0, p3, :cond_5

    const/16 p3, 0x27

    if-eq v0, p3, :cond_4

    const/16 p3, 0x28

    if-eq v0, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v7, p1, v2

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0x4

    .line 4
    aget-byte v9, p1, v8

    and-int/2addr v9, v3

    add-int/2addr p2, v1

    .line 5
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    if-nez v0, :cond_1

    if-nez v7, :cond_1

    if-nez v9, :cond_1

    if-nez v1, :cond_1

    .line 6
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_1
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_2

    sget v4, Ll0/c0;->h:I

    if-ne v4, v7, :cond_2

    sget v4, Ll0/c0;->i:I

    if-ne v4, v9, :cond_2

    sget v4, Ll0/c0;->j:I

    if-eq v4, v1, :cond_3

    .line 8
    :cond_2
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_3

    .line 9
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 10
    sput v6, Ll0/c0;->k:I

    .line 11
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_3
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 13
    sput v7, Ll0/c0;->h:I

    .line 14
    sput v9, Ll0/c0;->i:I

    .line 15
    sput v1, Ll0/c0;->j:I

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 17
    aget-byte p3, p1, v2

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 18
    aget-byte p3, p1, v8

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :cond_5
    add-int/2addr p2, v7

    .line 24
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 25
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_6

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 26
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 27
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 28
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 29
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 30
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 31
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 32
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_7
    const/16 p3, 0xa

    new-array v0, v5, [I

    add-int/lit8 v8, p2, 0x2

    .line 33
    aget-byte v9, p1, v8

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v0, v5, [I

    .line 34
    aget-byte v9, p1, v8

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v5, [I

    .line 35
    aget-byte v9, p1, v8

    shr-int/2addr v9, v1

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v0, v5, [I

    .line 36
    aget-byte v9, p1, v8

    shr-int/2addr v9, v6

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v0, v5, [I

    .line 37
    aget-byte v8, p1, v8

    shr-int/2addr v8, v2

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 38
    aget-byte p3, p1, p3

    if-eq p3, v5, :cond_c

    if-eq p3, v7, :cond_b

    if-eq p3, v2, :cond_a

    if-eq p3, v6, :cond_9

    if-eq p3, v1, :cond_8

    move p3, v4

    move v0, p3

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_8
    move v0, v4

    move v2, v0

    move p3, v5

    goto :goto_3

    :cond_9
    move v0, v4

    move p3, v5

    move v2, p3

    goto :goto_3

    :cond_a
    move p3, v4

    move v0, p3

    move v2, v5

    goto :goto_3

    :cond_b
    move p3, v4

    move v0, v5

    goto :goto_2

    :cond_c
    move p3, v4

    move v2, p3

    move v0, v5

    :goto_3
    const/16 v6, 0x12

    new-array v7, v5, [I

    aput p3, v7, v4

    .line 39
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v6, v5, [I

    aput v0, v6, v4

    .line 40
    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    aput v2, v0, v4

    .line 41
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x4

    .line 42
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v1

    .line 43
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x1b

    if-eqz p1, :cond_f

    if-eq p1, v3, :cond_e

    if-lt p1, v5, :cond_d

    const/16 p3, 0x1c

    if-gt p1, p3, :cond_d

    new-array p3, v5, [I

    mul-int/2addr p1, v1

    add-int/lit16 p1, p1, 0xaf

    aput p1, p3, v4

    .line 44
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_d
    new-array p1, v5, [I

    const/4 p3, -0x1

    aput p3, p1, v4

    .line 45
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_e
    new-array p1, v5, [I

    const/4 p3, -0x3

    aput p3, p1, v4

    .line 46
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_f
    new-array p1, v5, [I

    const/4 p3, -0x2

    aput p3, p1, v4

    .line 47
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 48
    :cond_10
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    const/16 v0, 0x8

    if-eq p3, v2, :cond_13

    if-eq p3, v0, :cond_12

    goto/16 :goto_6

    :cond_12
    add-int/lit8 p3, p2, 0x3

    .line 50
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 51
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 52
    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_6

    :cond_13
    add-int/lit8 p3, p2, 0x4

    .line 53
    aget-byte p3, p1, p3

    shl-int/2addr p3, v0

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v5, [I

    aput p1, p3, v4

    .line 54
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 55
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v7, [I

    aput v5, v0, v4

    aput p1, v0, v5

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    add-int/lit8 p3, p2, 0x2

    .line 56
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 57
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 58
    iput p2, p0, Lk0/rp;->c:I

    move p2, v4

    .line 59
    :goto_4
    iget-object p3, p0, Lk0/rp;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_16

    .line 60
    iget v0, p0, Lk0/rp;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_15

    if-eqz v0, :cond_16

    .line 61
    iput p2, p0, Lk0/rp;->b:I

    goto :goto_5

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_16
    :goto_5
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_17

    .line 62
    array-length p1, p3

    if-ge p2, p1, :cond_19

    .line 63
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_17
    if-nez p1, :cond_19

    .line 64
    iget p1, p0, Lk0/rp;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_18

    if-eq p1, v3, :cond_18

    .line 65
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 66
    :cond_18
    iput v3, p0, Lk0/rp;->b:I

    :cond_19
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/rp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/rp;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/rp;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

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
    .locals 5

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, 0xc7

    aput p3, p1, v4

    aput v1, p1, v2

    .line 1
    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v4

    aput p3, p1, p4

    aget p3, p2, v2

    aput p3, p1, v1

    const/4 p3, 0x6

    aget v0, p2, v0

    aput v0, p1, p3

    const/4 p3, 0x7

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput p3, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v2, p1, v2

    .line 2
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
