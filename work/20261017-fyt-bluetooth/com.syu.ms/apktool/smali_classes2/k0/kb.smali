.class public Lk0/kb;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/kb;->e:I

    const/16 v0, 0xb

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v13, 0xa

    aput-object v3, v1, v13

    iput-object v1, p0, Lk0/kb;->f:[[I

    const/16 v1, 0xe

    new-array v1, v1, [[I

    new-array v3, v2, [I

    .line 4
    fill-array-data v3, :array_b

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v2, 0xd

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/kb;->g:[[I

    .line 5
    iput v4, p0, Lk0/kb;->h:I

    .line 6
    iput v4, p0, Lk0/kb;->i:I

    .line 7
    iput v4, p0, Lk0/kb;->j:I

    .line 8
    new-instance v0, Lk0/kb$a;

    invoke-direct {v0, p0}, Lk0/kb$a;-><init>(Lk0/kb;)V

    iput-object v0, p0, Lk0/kb;->k:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/kb$b;

    invoke-direct {v0, p0}, Lk0/kb$b;-><init>(Lk0/kb;)V

    iput-object v0, p0, Lk0/kb;->l:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/kb$c;

    invoke-direct {v0, p0}, Lk0/kb$c;-><init>(Lk0/kb;)V

    iput-object v0, p0, Lk0/kb;->m:Ljava/lang/Runnable;

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
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x18
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_f
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_10
    .array-data 4
        0x1f
        0x35
    .end array-data

    :array_11
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_13
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_14
    .array-data 4
        0x2d
        0x36
    .end array-data

    :array_15
    .array-data 4
        0x2f
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_17
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_18
    .array-data 4
        0x46
        0x8
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
    iget-object v0, p0, Lk0/kb;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/h0;->d:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/kb;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->f:I

    .line 9
    iput v1, v0, Lk0/mt;->g:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 8

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1a

    const/16 p3, 0x1a

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, p3, :cond_18

    const/16 p3, 0x11

    const/16 v5, 0x8

    const/16 v6, 0xff

    if-eq v0, p3, :cond_12

    const/16 p3, 0x12

    const/4 v7, 0x3

    if-eq v0, p3, :cond_10

    const/16 p3, 0x21

    if-eq v0, p3, :cond_b

    const/16 p3, 0x22

    if-eq v0, p3, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/2addr p2, v7

    .line 4
    aget-byte p1, p1, p2

    if-eq p3, v4, :cond_6

    if-eq p3, v2, :cond_1

    goto/16 :goto_c

    .line 5
    :cond_1
    iget p2, p0, Lk0/kb;->i:I

    if-eq p1, p2, :cond_1b

    if-le p1, p2, :cond_3

    move p2, v3

    .line 6
    :goto_0
    iget p3, p0, Lk0/kb;->i:I

    sub-int p3, p1, p3

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_2

    .line 7
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge p1, p2, :cond_5

    move p2, v3

    .line 9
    :goto_1
    iget p3, p0, Lk0/kb;->i:I

    sub-int/2addr p3, p1

    const/16 v0, 0x1e

    if-ge p2, p3, :cond_4

    .line 10
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    .line 12
    :cond_5
    :goto_2
    iput p1, p0, Lk0/kb;->i:I

    goto/16 :goto_c

    .line 13
    :cond_6
    iget p2, p0, Lk0/kb;->h:I

    if-eq p1, p2, :cond_1b

    if-le p1, p2, :cond_8

    move p2, v3

    .line 14
    :goto_3
    iget p3, p0, Lk0/kb;->h:I

    sub-int p3, p1, p3

    const/4 v0, 0x7

    if-ge p2, p3, :cond_7

    .line 15
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 16
    :cond_7
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge p1, p2, :cond_a

    move p2, v3

    .line 17
    :goto_4
    iget p3, p0, Lk0/kb;->h:I

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_9

    .line 18
    invoke-static {v5, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 19
    :cond_9
    invoke-static {v5, v4}, Ll0/b0;->l0(II)V

    .line 20
    :cond_a
    :goto_5
    iput p1, p0, Lk0/kb;->h:I

    goto/16 :goto_c

    .line 21
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/lit8 p3, p2, 0x2

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    iput p3, p0, Lk0/kb;->d:I

    add-int/2addr p2, v7

    .line 23
    aget-byte p1, p1, p2

    move p2, v3

    .line 24
    :goto_6
    iget-object p3, p0, Lk0/kb;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_d

    .line 25
    iget v0, p0, Lk0/kb;->d:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_c

    if-eqz v0, :cond_d

    .line 26
    iput p2, p0, Lk0/kb;->e:I

    goto :goto_7

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    and-int/2addr p1, v6

    if-eqz p1, :cond_e

    .line 27
    array-length p1, p3

    if-ge p2, p1, :cond_1b

    .line 28
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 29
    :cond_e
    iget p1, p0, Lk0/kb;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_f

    if-eq p1, v6, :cond_f

    .line 30
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 31
    :cond_f
    iput v6, p0, Lk0/kb;->e:I

    goto/16 :goto_c

    :cond_10
    add-int/2addr p2, v1

    .line 32
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 33
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_11

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 34
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 35
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 36
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 37
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 38
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 39
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v4

    aput p1, p2, v3

    const/4 p1, 0x5

    .line 40
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_12
    add-int/lit8 p3, p2, 0x2

    .line 41
    aget-byte p3, p1, p3

    .line 42
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/lit8 p3, p2, 0x4

    .line 43
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 44
    aget-byte v0, p1, v0

    and-int/2addr p3, v6

    .line 45
    iput p3, p0, Lk0/kb;->c:I

    move p3, v3

    .line 46
    :goto_9
    iget-object v1, p0, Lk0/kb;->f:[[I

    array-length v2, v1

    if-ge p3, v2, :cond_14

    .line 47
    iget v2, p0, Lk0/kb;->c:I

    aget-object v7, v1, p3

    aget v7, v7, v3

    if-ne v2, v7, :cond_13

    if-eqz v2, :cond_14

    .line 48
    iput p3, p0, Lk0/kb;->b:I

    goto :goto_a

    :cond_13
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_14
    :goto_a
    and-int/2addr v0, v6

    if-eqz v0, :cond_15

    .line 49
    array-length v0, v1

    if-ge p3, v0, :cond_17

    .line 50
    aget-object p3, v1, p3

    aget p3, p3, v4

    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 51
    :cond_15
    iget p3, p0, Lk0/kb;->b:I

    array-length v0, v1

    if-ge p3, v0, :cond_16

    if-eq p3, v6, :cond_16

    .line 52
    aget-object p3, v1, p3

    aget p3, p3, v4

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    .line 53
    :cond_16
    iput v6, p0, Lk0/kb;->b:I

    :cond_17
    :goto_b
    add-int/lit8 p3, p2, 0x9

    .line 54
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    const/16 p2, 0x21c

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_c

    :cond_18
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 55
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_19

    add-int/2addr p2, v1

    .line 56
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v4

    aget-byte v0, p1, p2

    shr-int/2addr v0, v3

    and-int/2addr v0, v4

    aget-byte p1, p1, p2

    shr-int/2addr p1, v2

    and-int/2addr p1, v4

    invoke-static {p3, v0, p1}, Ll0/c0;->b(III)V

    goto :goto_c

    :cond_19
    add-int/2addr p2, v1

    .line 57
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v4

    aget-byte v0, p1, p2

    shr-int/2addr v0, v3

    and-int/2addr v0, v4

    aget-byte p1, p1, p2

    shr-int/2addr p1, v2

    and-int/2addr p1, v4

    invoke-static {p3, v0, p1}, Ll0/c0;->a(III)V

    goto :goto_c

    .line 58
    :cond_1a
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_1b
    :goto_c
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/kb;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/kb;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x6

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
