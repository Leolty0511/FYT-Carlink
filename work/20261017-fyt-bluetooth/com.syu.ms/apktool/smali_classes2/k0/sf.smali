.class public Lk0/sf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:J

.field public i:B


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/sf;->d:I

    const/16 v0, 0x14

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

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_13

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/sf;->e:[[I

    .line 4
    iput v3, p0, Lk0/sf;->f:I

    .line 5
    new-instance v0, Lk0/sf$a;

    invoke-direct {v0, p0}, Lk0/sf$a;-><init>(Lk0/sf;)V

    iput-object v0, p0, Lk0/sf;->g:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lk0/sf;->h:J

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lk0/sf;->i:B

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x18
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x26
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1f
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1e
    .end array-data

    :array_9
    .array-data 4
        0x10
        0xc
    .end array-data

    :array_a
    .array-data 4
        0x11
        0x27
    .end array-data

    :array_b
    .array-data 4
        0x12
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x13
        0x28
    .end array-data

    :array_d
    .array-data 4
        0x14
        0x29
    .end array-data

    :array_e
    .array-data 4
        0x15
        0x2a
    .end array-data

    :array_f
    .array-data 4
        0x16
        0x2b
    .end array-data

    :array_10
    .array-data 4
        0x17
        0x2c
    .end array-data

    :array_11
    .array-data 4
        0x18
        0x2d
    .end array-data

    :array_12
    .array-data 4
        0x19
        0x3
    .end array-data

    :array_13
    .array-data 4
        0x20
        0x4
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

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/sf;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 8

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0x24

    const/4 v5, 0x2

    if-eq v0, v1, :cond_7

    const/16 v1, 0x30

    if-eq v0, v1, :cond_6

    const/16 p3, 0x29

    if-eq v0, p3, :cond_5

    const/16 p3, 0x2a

    if-eq v0, p3, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 3
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 4
    aget-byte v1, p1, v1

    add-int/lit8 v5, p2, 0x5

    .line 5
    aget-byte v5, p1, v5

    add-int/lit8 p2, p2, 0x6

    .line 6
    aget-byte p1, p1, p2

    const/16 p2, 0xa

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 7
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x6

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 8
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x5

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 9
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x4

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 10
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xe

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x2

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 11
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x1

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 12
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array v6, v4, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v4

    aput p3, v6, v3

    .line 13
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x12

    new-array p3, v4, [I

    shr-int/lit8 v6, v0, 0x7

    and-int/2addr v6, v4

    aput v6, p3, v3

    .line 14
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v4, [I

    shr-int/lit8 v6, v0, 0x6

    and-int/2addr v6, v4

    aput v6, p3, v3

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v4, [I

    shr-int/lit8 v6, v0, 0x5

    and-int/2addr v6, v4

    aput v6, p3, v3

    .line 16
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v4, [I

    and-int/lit8 v0, v0, 0xf

    aput v0, p3, v3

    .line 17
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 p2, v1, 0xff

    const/4 p3, -0x3

    const/4 v0, -0x1

    const/16 v6, 0x1b

    const/4 v7, -0x2

    if-ne v1, v7, :cond_1

    new-array p2, v4, [I

    aput v7, p2, v3

    .line 18
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    new-array p2, v4, [I

    aput p3, p2, v3

    .line 19
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v1, v4, [I

    aput p2, v1, v3

    .line 20
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 p2, v5, 0xff

    const/16 v1, 0x1c

    if-ne v5, v7, :cond_3

    new-array p2, v4, [I

    aput v7, p2, v3

    .line 21
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    if-ne v5, v0, :cond_4

    new-array p2, v4, [I

    aput p3, p2, v3

    .line 22
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array p3, v4, [I

    aput p2, p3, v3

    .line 23
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 p2, 0x1d

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v2

    aput v0, p3, v3

    .line 24
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1e

    new-array p3, v4, [I

    and-int/2addr p1, v2

    aput p1, p3, v3

    .line 25
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 26
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    const/16 p2, 0x1500

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    .line 27
    :cond_6
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    add-int/2addr p2, v5

    .line 28
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 29
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_8

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 30
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 31
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 32
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 33
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 34
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v3

    const/4 p3, 0x4

    .line 35
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v4

    aput p3, p2, v3

    const/4 p3, 0x5

    .line 36
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 37
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_9
    add-int/lit8 p3, p2, 0x2

    .line 38
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 39
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 40
    iput p2, p0, Lk0/sf;->c:I

    move p2, v3

    .line 41
    :goto_3
    iget-object p3, p0, Lk0/sf;->e:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_b

    .line 42
    iget v0, p0, Lk0/sf;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_a

    if-eqz v0, :cond_b

    .line 43
    iput p2, p0, Lk0/sf;->b:I

    goto :goto_4

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 44
    :cond_b
    :goto_4
    iget v0, p0, Lk0/sf;->c:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    const/16 v2, 0x9

    if-eq v0, v2, :cond_d

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v4, :cond_c

    .line 45
    array-length p1, p3

    if-ge p2, p1, :cond_11

    .line 46
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_c
    if-nez p1, :cond_11

    .line 47
    array-length p1, p3

    if-gt p2, p1, :cond_11

    .line 48
    iget p1, p0, Lk0/sf;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_d
    move p2, v3

    :goto_5
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_e

    .line 49
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 50
    :cond_e
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_f
    move p2, v3

    :goto_6
    and-int/lit16 p3, p1, 0xff

    const/4 v0, 0x7

    if-ge p2, p3, :cond_10

    .line 51
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 52
    :cond_10
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    :cond_11
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
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/sf;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
    .locals 15

    move/from16 v0, p1

    const/16 v1, 0xe3

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    const/16 v8, 0xcb

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/16 v13, 0xb

    const/16 v14, 0x8

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_5

    new-array v0, v13, [I

    aput v1, v0, v7

    const/16 v1, 0xca

    aput v1, v0, v6

    aput v14, v0, v5

    .line 1
    aget v1, p2, v7

    aput v1, v0, v4

    aput v7, v0, v3

    aput v7, v0, v2

    aput v7, v0, v12

    aput v7, v0, v11

    aput v7, v0, v14

    aput v7, v0, v10

    aput v7, v0, v9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_5

    new-array v0, v13, [I

    aput v1, v0, v7

    aput v8, v0, v6

    aput v14, v0, v5

    .line 2
    aget v1, p2, v7

    aput v1, v0, v4

    aput v7, v0, v3

    aput v7, v0, v2

    aput v7, v0, v12

    aput v7, v0, v11

    aput v7, v0, v14

    aput v7, v0, v10

    aput v7, v0, v9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    new-array v0, v13, [I

    aput v1, v0, v7

    aput v8, v0, v6

    aput v14, v0, v5

    aput v7, v0, v4

    aput v7, v0, v3

    .line 3
    aget v1, p2, v7

    aput v1, v0, v2

    aput v7, v0, v12

    aput v7, v0, v11

    aput v7, v0, v14

    aput v7, v0, v10

    aput v7, v0, v9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    new-array v0, v13, [I

    aput v1, v0, v7

    aput v8, v0, v6

    aput v14, v0, v5

    aput v7, v0, v4

    .line 4
    aget v1, p2, v7

    aput v1, v0, v3

    aput v7, v0, v2

    aput v7, v0, v12

    aput v7, v0, v11

    aput v7, v0, v14

    aput v7, v0, v10

    aput v7, v0, v9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    new-array v0, v2, [I

    aput v1, v0, v7

    const/16 v1, 0x74

    aput v1, v0, v6

    aput v5, v0, v5

    .line 5
    aget v1, p2, v7

    aput v1, v0, v4

    aget v1, p2, v6

    aput v1, v0, v3

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void
.end method
