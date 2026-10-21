.class public Lk0/yo;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/yo;->c:I

    const/16 v1, 0x9

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

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/yo;->d:[[I

    .line 4
    new-instance v0, Lk0/yo$a;

    invoke-direct {v0, p0}, Lk0/yo$a;-><init>(Lk0/yo;)V

    iput-object v0, p0, Lk0/yo;->e:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/yo;->e:Ljava/lang/Runnable;

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

    if-eq v0, v1, :cond_10

    const/16 v1, 0x24

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eq v0, v1, :cond_e

    const/16 v1, 0x27

    const/16 v9, 0x10

    const/16 v10, 0xb

    const/4 v11, -0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x29

    if-eq v0, v1, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/16 p3, 0x38

    if-eq v0, p3, :cond_3

    const/16 p3, 0x35

    if-eq v0, p3, :cond_1

    const/16 p3, 0x36

    if-eq v0, p3, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance p3, Ljava/lang/String;

    add-int/2addr p2, v8

    const/16 v0, 0x11

    const-string v1, "ascii"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p3, p1, p2, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 p1, 0x6e

    .line 3
    invoke-static {p1, p3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 p3, p2, 0x8

    .line 4
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    const-string v1, "persist.fyt.temperature"

    .line 5
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 6
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0x9

    add-int/lit16 p3, p3, 0x258

    const/high16 v0, 0x10000000

    or-int/2addr p3, v0

    and-int/2addr p3, v11

    goto :goto_0

    :cond_2
    mul-int/2addr v0, v7

    add-int/lit16 p3, v0, 0x258

    .line 7
    :goto_0
    invoke-static {p3}, Lu0/d;->B3(I)V

    const/16 p3, 0x6d

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x9

    .line 8
    aget-byte v1, p1, v1

    shl-int/2addr v1, v9

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0xa

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v5, 0xff00

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    add-int/2addr p2, v10

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_3
    const/16 p3, 0x62

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 9
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v5, [I

    .line 10
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v5, [I

    .line 11
    aget-byte v3, p1, v1

    shr-int/2addr v3, v7

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    .line 12
    aget-byte v3, p1, v1

    shr-int/2addr v3, v6

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v5, [I

    .line 13
    aget-byte v3, p1, v1

    shr-int/2addr v3, v2

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v5, [I

    .line 14
    aget-byte v3, p1, v1

    shr-int/2addr v3, v8

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v5, [I

    .line 15
    aget-byte v3, p1, v1

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v5, [I

    .line 16
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v5, [I

    add-int/2addr p2, v2

    .line 17
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v5, [I

    .line 18
    aget-byte v1, p1, p2

    shr-int/2addr v1, v7

    and-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v5, [I

    .line 19
    aget-byte p1, p1, p2

    shr-int/2addr p1, v2

    and-int/2addr p1, v2

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 20
    :cond_4
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x2a00

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    :cond_6
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 22
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v5

    aput v1, p3, v4

    const/16 v1, 0xa

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 23
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v1, v5, [I

    .line 24
    aget-byte v8, p1, v0

    shr-int/2addr v8, v7

    and-int/2addr v8, v5

    aput v8, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v1, v5, [I

    .line 25
    aget-byte v8, p1, v0

    shr-int/lit8 v6, v8, 0x4

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v1, v5, [I

    .line 26
    aget-byte v6, p1, v0

    shr-int/2addr v6, v5

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 27
    aget-byte v0, p1, v0

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 28
    aget-byte v6, p1, v1

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v5

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v5, [I

    .line 29
    aget-byte v6, p1, v1

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v5

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    .line 30
    aget-byte v6, p1, v1

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    .line 31
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x1f

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x31

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x6

    .line 32
    aget-byte v1, p1, v1

    shr-int/2addr v1, v2

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 33
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/2addr p2, v7

    .line 34
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    const-string v2, "persist.fyt.reversetemp"

    .line 35
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 36
    aget-byte p2, p1, p2

    and-int/lit16 v0, p2, 0xff

    .line 37
    aget-byte p1, p1, p3

    and-int/lit16 v1, p1, 0xff

    :cond_7
    const/16 p1, 0x40

    const/16 p2, 0x1e

    const/4 p3, -0x3

    const/4 v2, -0x2

    const/16 v6, 0x1b

    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_9

    if-lt v0, p2, :cond_8

    if-gt v0, p1, :cond_8

    new-array v7, v5, [I

    aput v0, v7, v4

    .line 38
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v0, v5, [I

    aput v11, v0, v4

    .line 39
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v0, v5, [I

    aput p3, v0, v4

    .line 40
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array v0, v5, [I

    aput v2, v0, v4

    .line 41
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v0, 0x1c

    if-eqz v1, :cond_d

    if-eq v1, v3, :cond_c

    if-lt v1, p2, :cond_b

    if-gt v1, p1, :cond_b

    new-array p1, v5, [I

    aput v1, p1, v4

    .line 42
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_b
    new-array p1, v5, [I

    aput v11, p1, v4

    .line 43
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_c
    new-array p1, v5, [I

    aput p3, p1, v4

    .line 44
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_d
    new-array p1, v5, [I

    aput v2, p1, v4

    .line 45
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_e
    add-int/2addr p2, v8

    .line 46
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 47
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_f

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 48
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 49
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_f
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 50
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 51
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 52
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 53
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 54
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v8

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 55
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    add-int/lit8 p3, p2, 0x2

    .line 56
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 57
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 58
    iput p2, p0, Lk0/yo;->c:I

    move p2, v4

    .line 59
    :goto_3
    iget-object p3, p0, Lk0/yo;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_12

    .line 60
    iget v0, p0, Lk0/yo;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_11

    if-eqz v0, :cond_12

    .line 61
    iput p2, p0, Lk0/yo;->b:I

    goto :goto_4

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_12
    :goto_4
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_13

    .line 62
    array-length p1, p3

    if-ge p2, p1, :cond_15

    .line 63
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_13
    if-nez p1, :cond_15

    .line 64
    iget p1, p0, Lk0/yo;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_14

    if-eq p1, v3, :cond_14

    .line 65
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 66
    :cond_14
    iput v3, p0, Lk0/yo;->b:I

    :cond_15
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

    .line 3
    iget-object v0, p0, Lk0/yo;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6f

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

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x90

    aput v0, p1, v4

    aput v2, p1, v2

    .line 1
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0xc6

    aput v0, p1, v4

    aput v2, p1, v2

    .line 2
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
