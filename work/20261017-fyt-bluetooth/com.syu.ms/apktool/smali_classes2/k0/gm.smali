.class public Lk0/gm;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gm;->c:I

    const/16 v1, 0xa

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

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

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/gm;->d:[[I

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
        0x6
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xb
        0xc
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
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v2, v0, Lk0/mt;->l:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_d

    const/16 v6, 0x24

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-eq v0, v6, :cond_b

    const/16 v6, 0x27

    const/16 v10, 0x10

    const/16 v11, 0xa

    if-eq v0, v6, :cond_5

    const/16 v1, 0x29

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 p3, 0x35

    if-eq v0, p3, :cond_1

    const/16 p3, 0x36

    if-eq v0, p3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 p3, 0x6a

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 4
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v5, [I

    add-int/2addr p2, v8

    .line 5
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_1
    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 6
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 7
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x4

    .line 8
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    or-int/2addr v1, v6

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 9
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    or-int/2addr v1, v6

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x9

    .line 10
    aget-byte v1, p1, v1

    shl-int/2addr v1, v10

    const/high16 v6, 0xff0000

    and-int/2addr v1, v6

    add-int/lit8 v6, p2, 0xa

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v2, v6

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0xb

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xc

    .line 11
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v5, [I

    .line 12
    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x8

    .line 13
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    .line 14
    invoke-static {v4}, Lu0/d;->A3(I)V

    goto/16 :goto_5

    :cond_2
    mul-int/2addr p1, v11

    add-int/lit16 p1, p1, 0x258

    .line 15
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_5

    .line 16
    :cond_3
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v9

    sub-int/2addr p3, v9

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 17
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    const/16 p2, 0x2198

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    :cond_5
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 18
    aget-byte v6, p1, v0

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v5

    aput v6, p3, v4

    invoke-static {v11, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 19
    aget-byte v6, p1, v0

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v5

    aput v6, p3, v4

    const/16 v6, 0xb

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 20
    aget-byte v6, p1, v0

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, p3, v4

    const/16 v6, 0xc

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v6, v5, [I

    .line 21
    aget-byte v11, p1, v0

    shr-int/2addr v11, v2

    and-int/2addr v11, v5

    aput v11, v6, v4

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v6, v5, [I

    .line 22
    aget-byte v11, p1, v0

    shr-int/lit8 v9, v11, 0x2

    and-int/2addr v9, v5

    aput v9, v6, v4

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x48

    new-array v6, v5, [I

    .line 23
    aget-byte v0, p1, v0

    shr-int/2addr v0, v5

    and-int/2addr v0, v5

    aput v0, v6, v4

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 24
    aget-byte v9, p1, v6

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    .line 25
    aget-byte v9, p1, v6

    shr-int/lit8 v8, v9, 0x5

    and-int/2addr v8, v5

    aput v8, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x16

    new-array v0, v5, [I

    .line 26
    aget-byte v8, p1, v6

    shr-int/lit8 v7, v8, 0x4

    and-int/2addr v7, v5

    aput v7, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x18

    new-array v0, v5, [I

    .line 27
    aget-byte v6, p1, v6

    shr-int/lit8 v2, v6, 0x3

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 28
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v2, p2, 0x5

    .line 29
    aget-byte v6, p1, v2

    and-int/2addr v6, v3

    const-string v7, "persist.fyt.reversetemp"

    .line 30
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 31
    aget-byte v0, p1, v2

    and-int/2addr v0, v3

    .line 32
    aget-byte p3, p1, p3

    and-int/lit16 v6, p3, 0xff

    :cond_6
    const/4 p3, -0x3

    const/4 v2, -0x2

    const/16 v7, 0x1b

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_7

    new-array v8, v5, [I

    aput v0, v8, v4

    .line 33
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    new-array v0, v5, [I

    aput p3, v0, v4

    .line 34
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_8
    new-array v0, v5, [I

    aput v2, v0, v4

    .line 35
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v0, 0x1c

    if-eqz v6, :cond_a

    if-eq v6, v1, :cond_9

    new-array p3, v5, [I

    aput v6, p3, v4

    .line 36
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v1, v5, [I

    aput p3, v1, v4

    .line 37
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array p3, v5, [I

    aput v2, p3, v4

    .line 38
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x6

    .line 39
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v1, v5, [I

    .line 40
    aget-byte v2, p1, v0

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v5

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x25

    new-array v1, v5, [I

    .line 41
    aget-byte v0, p1, v0

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    add-int/lit8 p2, p2, 0x8

    .line 42
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_b
    add-int/2addr p2, v9

    .line 43
    aget-byte p3, p1, p2

    and-int/2addr p3, v5

    if-ne p3, v5, :cond_12

    const-string p3, "persist.syu.reversefrontdoor"

    .line 44
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_c

    new-array p3, v5, [I

    .line 45
    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 46
    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array p3, v5, [I

    .line 47
    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 48
    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p3, v5, [I

    .line 49
    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 50
    aget-byte v0, p1, p2

    shr-int/2addr v0, v8

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 51
    aget-byte v0, p1, p2

    shr-int/2addr v0, v2

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 52
    aget-byte p1, p1, p2

    shr-int/2addr p1, v9

    and-int/2addr p1, v5

    aput p1, p3, v4

    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    add-int/lit8 p3, p2, 0x2

    .line 53
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 54
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 55
    iput p2, p0, Lk0/gm;->c:I

    move p2, v4

    .line 56
    :goto_3
    iget-object p3, p0, Lk0/gm;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_f

    .line 57
    iget v0, p0, Lk0/gm;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_e

    if-eqz v0, :cond_f

    .line 58
    iput p2, p0, Lk0/gm;->b:I

    goto :goto_4

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_f
    :goto_4
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_10

    .line 59
    array-length p1, p3

    if-ge p2, p1, :cond_12

    .line 60
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_10
    if-nez p1, :cond_12

    .line 61
    iget p1, p0, Lk0/gm;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_11

    if-eq p1, v3, :cond_11

    .line 62
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 63
    :cond_11
    iput v3, p0, Lk0/gm;->b:I

    :cond_12
    :goto_5
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

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x70

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x90

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
