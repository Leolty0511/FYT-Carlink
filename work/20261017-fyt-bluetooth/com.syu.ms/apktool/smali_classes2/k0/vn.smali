.class public Lk0/vn;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/vn;->c:I

    const/16 v1, 0xb

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

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/vn;->d:[[I

    .line 4
    iput v0, p0, Lk0/vn;->e:I

    .line 5
    new-instance v0, Lk0/vn$a;

    invoke-direct {v0, p0}, Lk0/vn$a;-><init>(Lk0/vn;)V

    iput-object v0, p0, Lk0/vn;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/vn$b;

    invoke-direct {v0, p0}, Lk0/vn$b;-><init>(Lk0/vn;)V

    iput-object v0, p0, Lk0/vn;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/vn$c;

    invoke-direct {v0, p0}, Lk0/vn$c;-><init>(Lk0/vn;)V

    iput-object v0, p0, Lk0/vn;->h:Ljava/lang/Runnable;

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
        0xd
    .end array-data
.end method

.method public static synthetic b3(Lk0/vn;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/vn;->a3()V

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

    const/4 v1, 0x0

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
    iput v2, v0, Lk0/mt;->h:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/vn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/vn;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/vn;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/16 v2, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_12

    const/16 v1, 0x21

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v0, v1, :cond_a

    const/16 v1, 0x24

    if-eq v0, v1, :cond_8

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    if-eq p3, v5, :cond_6

    const/16 v0, 0x8

    if-eq p3, v3, :cond_5

    if-eq p3, v6, :cond_3

    if-eq p3, v0, :cond_2

    goto/16 :goto_7

    :cond_2
    add-int/lit8 p3, p2, 0x3

    .line 4
    aget-byte p3, p1, p3

    add-int/2addr p2, v7

    .line 5
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 6
    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_3
    add-int/2addr p2, v3

    .line 7
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    .line 8
    sget p2, Lk0/nt;->W:I

    if-nez p2, :cond_4

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 9
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 10
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 11
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 12
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 13
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 14
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 15
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v8

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 16
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_5
    add-int/lit8 p3, p2, 0x4

    .line 17
    aget-byte p3, p1, p3

    shl-int/2addr p3, v0

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v5, [I

    aput p1, p3, v4

    .line 18
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 19
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v8, [I

    aput v5, v0, v4

    aput p1, v0, v5

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 20
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_7

    add-int/2addr p2, v3

    .line 21
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->b(III)V

    goto/16 :goto_7

    :cond_7
    add-int/2addr p2, v3

    .line 22
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :cond_8
    add-int/2addr p2, v8

    .line 23
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 24
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_9

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 25
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 26
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 27
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 28
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 29
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 30
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 31
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_a
    const/16 p3, 0x15

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 32
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 33
    aget-byte v0, p1, p3

    and-int/2addr v0, v2

    const/16 v1, 0x1c

    if-eqz v0, :cond_c

    if-eq v0, v2, :cond_b

    .line 34
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0x9f6

    new-array v0, v5, [I

    aput p3, v0, v4

    .line 35
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array p3, v5, [I

    const/4 v0, -0x3

    aput v0, p3, v4

    .line 36
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array p3, v5, [I

    const/4 v0, -0x2

    aput v0, p3, v4

    .line 37
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 p3, p2, 0x5

    .line 38
    aget-byte p3, p1, p3

    if-eq p3, v5, :cond_11

    if-eq p3, v8, :cond_10

    if-eq p3, v3, :cond_f

    if-eq p3, v7, :cond_e

    if-eq p3, v6, :cond_d

    move p3, v4

    move v0, p3

    :goto_3
    move v1, v0

    goto :goto_4

    :cond_d
    move v0, v4

    move v1, v0

    move p3, v5

    goto :goto_4

    :cond_e
    move v0, v4

    move p3, v5

    move v1, p3

    goto :goto_4

    :cond_f
    move p3, v4

    move v0, p3

    move v1, v5

    goto :goto_4

    :cond_10
    move p3, v4

    move v0, v5

    goto :goto_3

    :cond_11
    move p3, v4

    move v1, p3

    move v0, v5

    :goto_4
    const/16 v2, 0x12

    new-array v8, v5, [I

    aput p3, v8, v4

    .line 39
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v2, v5, [I

    aput v0, v2, v4

    .line 40
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    aput v1, v0, v4

    .line 41
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa

    new-array v0, v5, [I

    add-int/lit8 p2, p2, 0x6

    .line 42
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v0, v5, [I

    .line 43
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v0, v5, [I

    .line 44
    aget-byte v1, p1, p2

    shr-int/2addr v1, v6

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xf

    new-array v0, v5, [I

    .line 45
    aget-byte v1, p1, p2

    shr-int/2addr v1, v7

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v5, [I

    .line 46
    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_12
    add-int/lit8 p3, p2, 0x2

    .line 47
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 48
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 49
    iput p2, p0, Lk0/vn;->c:I

    move p2, v4

    .line 50
    :goto_5
    iget-object p3, p0, Lk0/vn;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_14

    .line 51
    iget v0, p0, Lk0/vn;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_13

    if-eqz v0, :cond_14

    .line 52
    iput p2, p0, Lk0/vn;->b:I

    goto :goto_6

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_14
    :goto_6
    and-int/2addr p1, v2

    if-ne p1, v5, :cond_15

    .line 53
    array-length p1, p3

    if-ge p2, p1, :cond_17

    .line 54
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_15
    if-nez p1, :cond_17

    .line 55
    iget p1, p0, Lk0/vn;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_16

    if-eq p1, v2, :cond_16

    .line 56
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 57
    :cond_16
    iput v2, p0, Lk0/vn;->b:I

    :cond_17
    :goto_7
    return-void
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
    iget-object v0, p0, Lk0/vn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/vn;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/vn;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

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
    .locals 0

    return-void
.end method

.method public final a3()V
    .locals 13

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x80

    const/16 v7, 0xb

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v5, v2, :cond_4

    if-eq v5, v10, :cond_3

    const/4 v11, 0x4

    if-eq v5, v11, :cond_a

    if-eq v5, v8, :cond_2

    if-eq v5, v4, :cond_0

    const/16 v8, 0x9

    if-eq v5, v8, :cond_0

    aput v7, v1, v10

    goto :goto_2

    :cond_0
    aput v4, v1, v10

    .line 2
    sget v5, Lu0/b;->U1:I

    if-ne v5, v10, :cond_1

    aput v3, v1, v11

    goto :goto_0

    :cond_1
    aput v6, v1, v11

    .line 3
    :goto_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v8, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DataMain.sAudioPlayStatus "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lu0/b;->U1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    aput v0, v1, v10

    goto :goto_2

    :cond_3
    aput v8, v1, v10

    goto :goto_2

    :cond_4
    aput v2, v1, v10

    .line 4
    sget v5, Lw0/d;->h:I

    const/high16 v11, 0x10000

    if-ne v5, v11, :cond_5

    aput v3, v1, v9

    goto :goto_1

    :cond_5
    const v11, 0x10001

    if-ne v5, v11, :cond_6

    aput v2, v1, v9

    goto :goto_1

    :cond_6
    const v11, 0x10002

    if-ne v5, v11, :cond_7

    aput v10, v1, v9

    goto :goto_1

    :cond_7
    if-nez v5, :cond_8

    const/16 v5, 0x10

    aput v5, v1, v9

    goto :goto_1

    :cond_8
    if-ne v5, v2, :cond_9

    const/16 v5, 0x11

    aput v5, v1, v9

    .line 5
    :cond_9
    :goto_1
    sget v5, Lw0/d;->i:I

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aput v11, v1, v8

    const/4 v8, 0x6

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v8

    .line 6
    :cond_a
    :goto_2
    sget v5, Ly0/f;->C0:I

    mul-int/2addr v5, v9

    and-int/lit8 v5, v5, 0x7f

    const/4 v8, 0x7

    aput v5, v1, v8

    .line 7
    sget v5, Ly0/f;->i:I

    if-eq v5, v2, :cond_b

    sget v5, Ly0/f;->C0:I

    if-nez v5, :cond_c

    .line 8
    :cond_b
    aget v5, v1, v8

    or-int/2addr v5, v6

    aput v5, v1, v8

    .line 9
    :cond_c
    sget v5, Lu0/b;->a0:I

    if-nez v5, :cond_d

    aput v3, v1, v10

    .line 10
    :cond_d
    sget v5, Lu0/b;->o:I

    if-ne v5, v2, :cond_e

    .line 11
    sget v2, Lu0/b;->r4:I

    aput v2, v1, v4

    goto :goto_3

    :cond_e
    aput v3, v1, v4

    :goto_3
    new-array v2, v7, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_4
    if-ge v3, v0, :cond_f

    add-int/lit8 v4, v3, 0x1

    .line 12
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_4

    .line 13
    :cond_f
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
