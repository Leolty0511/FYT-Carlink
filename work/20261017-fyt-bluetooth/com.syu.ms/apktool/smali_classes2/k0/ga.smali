.class public Lk0/ga;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static l:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/ga;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/ga;->c:I

    const/16 v1, 0xff

    .line 4
    iput v1, p0, Lk0/ga;->g:I

    const/16 v1, 0x1d

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v3, 0x14

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v3, 0x15

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v3, 0x16

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v3, 0x17

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v3, 0x18

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_19

    const/16 v3, 0x19

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1a

    const/16 v3, 0x1a

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1b

    const/16 v3, 0x1b

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1c

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/ga;->h:[[I

    .line 6
    iput v4, p0, Lk0/ga;->i:I

    .line 7
    iput v4, p0, Lk0/ga;->j:I

    .line 8
    new-instance v0, Lk0/ga$a;

    invoke-direct {v0, p0}, Lk0/ga$a;-><init>(Lk0/ga;)V

    iput-object v0, p0, Lk0/ga;->k:Ljava/lang/Runnable;

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
        -0x1
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
        0xa
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x81
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x82
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0x83
        0x1b
    .end array-data

    :array_d
    .array-data 4
        0x84
        0x15
    .end array-data

    :array_e
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_f
    .array-data 4
        0x8a
        0x28
    .end array-data

    :array_10
    .array-data 4
        0x8b
        0x29
    .end array-data

    :array_11
    .array-data 4
        0x8c
        0x2a
    .end array-data

    :array_12
    .array-data 4
        0x8d
        0x2b
    .end array-data

    :array_13
    .array-data 4
        0x8e
        0x2c
    .end array-data

    :array_14
    .array-data 4
        0x8f
        0x2d
    .end array-data

    :array_15
    .array-data 4
        0x95
        0x27
    .end array-data

    :array_16
    .array-data 4
        0x96
        0x26
    .end array-data

    :array_17
    .array-data 4
        0xb6
        0x1
    .end array-data

    :array_18
    .array-data 4
        0xb8
        0x2
    .end array-data

    :array_19
    .array-data 4
        0xb9
        0x40
    .end array-data

    :array_1a
    .array-data 4
        0x91
        0xb
    .end array-data

    :array_1b
    .array-data 4
        0xa5
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0xad
        0x5
    .end array-data
.end method

.method public static a3(I)I
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0xff

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x19

    .line 1
    div-int/lit8 v0, p0, 0xa

    :goto_0
    return v0
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
    iget-object v0, p0, Lk0/ga;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    iget-object v0, p0, Lk0/ga;->b:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ga;->b3(I)V

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ga;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x0
    .end array-data
.end method

.method public U2([BII)V
    .locals 8

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x18

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_1a

    const/16 v1, -0x10

    if-eq v0, v1, :cond_19

    const/16 p3, 0x41

    if-eq v0, p3, :cond_18

    const/16 p3, 0x11

    const/16 v1, 0x8

    if-eq v0, p3, :cond_12

    const/16 p3, 0x12

    const/4 v7, 0x3

    if-eq v0, p3, :cond_10

    const/16 p3, 0x21

    if-eq v0, p3, :cond_b

    const/16 p3, 0x22

    if-eq v0, p3, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1e

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/2addr p2, v7

    .line 4
    aget-byte p1, p1, p2

    if-eq p3, v6, :cond_6

    if-eq p3, v3, :cond_1

    goto/16 :goto_d

    .line 5
    :cond_1
    iget p2, p0, Lk0/ga;->j:I

    if-eq p1, p2, :cond_1e

    if-le p1, p2, :cond_3

    move p2, v5

    .line 6
    :goto_0
    iget p3, p0, Lk0/ga;->j:I

    sub-int p3, p1, p3

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_2

    .line 7
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge p1, p2, :cond_5

    move p2, v5

    .line 9
    :goto_1
    iget p3, p0, Lk0/ga;->j:I

    sub-int/2addr p3, p1

    const/16 v0, 0x1e

    if-ge p2, p3, :cond_4

    .line 10
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 12
    :cond_5
    :goto_2
    iput p1, p0, Lk0/ga;->j:I

    goto/16 :goto_d

    .line 13
    :cond_6
    iget p2, p0, Lk0/ga;->i:I

    if-eq p1, p2, :cond_1e

    if-le p1, p2, :cond_8

    move p2, v5

    .line 14
    :goto_3
    iget p3, p0, Lk0/ga;->i:I

    sub-int p3, p1, p3

    const/4 v0, 0x7

    if-ge p2, p3, :cond_7

    .line 15
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 16
    :cond_7
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge p1, p2, :cond_a

    move p2, v5

    .line 17
    :goto_4
    iget p3, p0, Lk0/ga;->i:I

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_9

    .line 18
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 19
    :cond_9
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 20
    :cond_a
    :goto_5
    iput p1, p0, Lk0/ga;->i:I

    goto/16 :goto_d

    .line 21
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1e

    add-int/lit8 p3, p2, 0x3

    .line 22
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lk0/ga;->f:I

    move p1, v5

    .line 24
    :goto_6
    iget-object p2, p0, Lk0/ga;->h:[[I

    array-length v0, p2

    if-ge p1, v0, :cond_d

    .line 25
    iget v0, p0, Lk0/ga;->f:I

    aget-object v1, p2, p1

    aget v1, v1, v5

    if-ne v0, v1, :cond_c

    if-eqz v0, :cond_d

    .line 26
    iput p1, p0, Lk0/ga;->g:I

    goto :goto_7

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    and-int/2addr p3, v4

    if-eqz p3, :cond_e

    .line 27
    array-length p3, p2

    if-ge p1, p3, :cond_1e

    .line 28
    aget-object p1, p2, p1

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    .line 29
    :cond_e
    iget p1, p0, Lk0/ga;->g:I

    array-length p3, p2

    if-ge p1, p3, :cond_f

    if-eq p1, v4, :cond_f

    .line 30
    aget-object p1, p2, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 31
    :cond_f
    iput v4, p0, Lk0/ga;->g:I

    goto/16 :goto_d

    :cond_10
    add-int/2addr p2, v2

    .line 32
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    const-string p2, "persist.syu.reversefrontdoor"

    .line 33
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_11

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 34
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 35
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 36
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 37
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 38
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 39
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v6

    aput p3, p2, v5

    const/4 p3, 0x5

    .line 40
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 41
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 42
    :cond_12
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1e

    add-int/lit8 p3, p2, 0x4

    .line 43
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 44
    aget-byte v0, p1, v0

    and-int/2addr p3, v4

    .line 45
    iput p3, p0, Lk0/ga;->e:I

    move p3, v5

    .line 46
    :goto_9
    iget-object v2, p0, Lk0/ga;->h:[[I

    array-length v3, v2

    if-ge p3, v3, :cond_14

    .line 47
    iget v3, p0, Lk0/ga;->e:I

    aget-object v7, v2, p3

    aget v7, v7, v5

    if-ne v3, v7, :cond_13

    if-eqz v3, :cond_14

    .line 48
    iput p3, p0, Lk0/ga;->d:I

    goto :goto_a

    :cond_13
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_14
    :goto_a
    and-int/2addr v0, v4

    if-eqz v0, :cond_15

    .line 49
    array-length v0, v2

    if-ge p3, v0, :cond_17

    .line 50
    aget-object p3, v2, p3

    aget p3, p3, v6

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 51
    :cond_15
    iget p3, p0, Lk0/ga;->d:I

    array-length v0, v2

    if-ge p3, v0, :cond_16

    if-eq p3, v4, :cond_16

    .line 52
    aget-object p3, v2, p3

    aget p3, p3, v6

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    .line 53
    :cond_16
    iput v4, p0, Lk0/ga;->d:I

    :cond_17
    :goto_b
    add-int/lit8 p3, p2, 0x9

    .line 54
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x157c

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_d

    .line 55
    :cond_18
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1e

    add-int/lit8 p3, p2, 0x2

    .line 56
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/ga;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 57
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/ga;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 58
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/ga;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 59
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/ga;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 60
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/ga;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 61
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/ga;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 62
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/ga;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 63
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Lk0/ga;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_d

    .line 64
    :cond_19
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_d

    :cond_1a
    add-int/lit8 p3, p2, 0x3

    .line 65
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_1b

    move v2, v5

    goto :goto_c

    :cond_1b
    if-le p3, v2, :cond_1c

    goto :goto_c

    :cond_1c
    move v2, p3

    :goto_c
    const/16 p3, 0x3f5

    new-array v0, v6, [I

    aput v2, v0, v5

    .line 66
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 67
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 68
    sget p3, Lk0/nt;->a:I

    const v0, 0x20130

    if-ne p3, v0, :cond_1e

    add-int/2addr p2, v3

    .line 69
    aget-byte p3, p1, p2

    and-int/2addr p3, v4

    if-ne p3, v6, :cond_1d

    .line 70
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_d

    .line 71
    :cond_1d
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    if-nez p1, :cond_1e

    .line 72
    invoke-static {v5}, Lk0/qt;->a(I)V

    :cond_1e
    :goto_d
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ga;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ga;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 2
    aget p1, p2, p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    const/4 p3, 0x5

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    if-le p1, p3, :cond_2

    move p2, p3

    goto :goto_0

    :cond_2
    move p2, p1

    .line 3
    :goto_0
    invoke-virtual {p0, p2}, Lk0/ga;->b3(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/ga;->l:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, -0xe

    aput v4, v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x7

    aput v4, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x4

    aput p1, v0, v3

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/ga;->b:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/ga;->l:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ga;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
