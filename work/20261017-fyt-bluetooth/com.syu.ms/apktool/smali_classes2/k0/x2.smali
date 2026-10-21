.class public Lk0/x2;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:I

.field public e:I

.field public f:[[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lk0/x2;->b:[[I

    const/16 v1, 0x1e

    new-array v1, v1, [[I

    .line 3
    iput-object v1, p0, Lk0/x2;->c:[[I

    const/16 v1, 0xff

    .line 4
    iput v1, p0, Lk0/x2;->e:I

    const/16 v1, 0xe

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

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

    aput-object v3, v1, v0

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

    const/16 v2, 0xd

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/x2;->f:[[I

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
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
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
        0x1b
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1c
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data
.end method

.method public static a3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
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
    .locals 2

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

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 11

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x18

    const/4 v2, 0x5

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_18

    const/16 v1, -0x10

    const/4 v6, 0x2

    if-eq v0, v1, :cond_17

    const/16 p3, 0x11

    const/4 v1, 0x4

    const/4 v7, 0x3

    if-eq v0, p3, :cond_10

    const/16 p3, 0xb

    const/16 v8, 0x13

    if-eq v0, v8, :cond_f

    const/16 v9, 0x31

    const/16 v10, 0x41

    if-eq v0, v9, :cond_8

    if-eq v0, v10, :cond_7

    const/16 p3, 0x65

    if-eq v0, p3, :cond_5

    const/16 v1, 0x67

    if-eq v0, v1, :cond_4

    const/16 p3, 0x16

    if-eq v0, p3, :cond_2

    const/16 p3, 0x17

    if-eq v0, p3, :cond_0

    goto/16 :goto_9

    :cond_0
    add-int/lit8 p3, p2, 0x3e

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/lit8 p3, p3, 0x18

    move v0, v4

    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1a

    new-array v1, v6, [I

    aput v0, v1, v4

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    add-int/lit8 v8, v2, 0x2

    .line 3
    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v2, v7

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v2, v8

    or-int/2addr v2, p3

    aput v2, v1, v5

    const/16 v2, 0x74

    .line 4
    iget-object v8, p0, Lk0/x2;->c:[[I

    aget-object v8, v8, v0

    invoke-static {v2, v1, v8}, Lk0/qt;->C0(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lk0/x2;->c:[[I

    aput-object v1, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p2, 0xe

    .line 6
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/lit8 p3, p3, 0x18

    const/16 v0, 0x72

    new-array v1, v5, [I

    add-int/lit8 v7, p2, 0x2

    .line 7
    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    or-int/2addr v7, p3

    aput v7, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    move v0, v4

    :goto_1
    if-ge v0, v2, :cond_1a

    new-array v1, v6, [I

    aput v0, v1, v4

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, p2

    add-int/lit8 v8, v7, 0x4

    .line 8
    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v2

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    or-int/2addr v7, v8

    or-int/2addr v7, p3

    aput v7, v1, v5

    const/16 v7, 0x73

    .line 9
    iget-object v8, p0, Lk0/x2;->b:[[I

    aget-object v8, v8, v0

    invoke-static {v7, v1, v8}, Lk0/qt;->C0(I[I[I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    iget-object v7, p0, Lk0/x2;->b:[[I

    aput-object v1, v7, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/16 v0, 0x6c

    new-array v1, v5, [I

    add-int/2addr p2, v7

    .line 11
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 12
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x18

    shr-int/2addr p1, v7

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_5
    const/16 p3, 0x7b

    new-array v0, v5, [I

    add-int/2addr p2, v7

    .line 13
    aget-byte v1, p1, p2

    shr-int/2addr v1, v7

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7c

    new-array v0, v5, [I

    .line 14
    aget-byte v1, p1, p2

    shr-int/2addr v1, v6

    and-int/2addr v1, v5

    if-eqz v1, :cond_6

    move v1, v5

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v5, [I

    .line 15
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v5, [I

    .line 16
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 17
    :cond_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1a

    add-int/lit8 p3, p2, 0x2

    .line 18
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Lk0/x2;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 19
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    invoke-static {v0}, Lk0/x2;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Lk0/x2;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Lk0/x2;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Lk0/x2;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 23
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    invoke-static {v0}, Lk0/x2;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    .line 24
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Lk0/x2;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 25
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Lk0/x2;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :cond_8
    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x3

    .line 27
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x8

    aput v0, p3, v4

    const/16 v0, 0xd

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x4

    .line 28
    aget-byte v2, p1, v0

    const/16 v9, 0x10

    and-int/2addr v2, v9

    aput v2, p3, v4

    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 29
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x20

    aput v0, p3, v4

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x6

    .line 30
    aget-byte p3, p1, p3

    if-eqz p3, :cond_9

    if-eq p3, v5, :cond_d

    if-eq p3, v6, :cond_c

    if-eq p3, v7, :cond_b

    if-eq p3, v1, :cond_a

    :cond_9
    move p3, v4

    move v0, p3

    :goto_3
    move v1, v0

    goto :goto_4

    :cond_a
    move v0, v4

    move p3, v5

    move v1, p3

    goto :goto_4

    :cond_b
    move p3, v4

    move v0, p3

    move v1, v5

    goto :goto_4

    :cond_c
    move p3, v4

    move v0, v5

    goto :goto_3

    :cond_d
    move p3, v4

    move v1, p3

    move v0, v5

    :goto_4
    const/16 v2, 0x12

    new-array v6, v5, [I

    aput p3, v6, v4

    .line 31
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    aput v0, p3, v4

    .line 32
    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    aput v1, v0, v4

    .line 33
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x7

    .line 34
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 35
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/16 v0, 0x1c

    const/16 v1, 0x1b

    if-eqz p3, :cond_e

    new-array p3, v5, [I

    add-int/lit8 v2, p2, 0x9

    .line 36
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, p3, v4

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 p2, p2, 0x8

    .line 37
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, p3, v4

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_e
    new-array p3, v5, [I

    add-int/lit8 v2, p2, 0x8

    .line 38
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, p3, v4

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 p2, p2, 0x9

    .line 39
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, p3, v4

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_f
    add-int/lit8 v0, p2, 0xc

    .line 40
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0xd

    .line 41
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x18

    const/16 v2, 0x62

    new-array v6, v5, [I

    add-int/lit8 v7, p2, 0x2

    .line 42
    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    or-int/2addr v7, v0

    aput v7, v6, v4

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    add-int/lit8 v6, p2, 0x4

    .line 43
    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    or-int/2addr v1, v6

    aput v1, v2, v4

    const/16 v1, 0x63

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v6, v5, [I

    add-int/lit8 v7, p2, 0x6

    .line 44
    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    or-int/2addr v0, v7

    aput v0, v6, v4

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x64

    new-array v2, v5, [I

    add-int/lit8 v6, p2, 0x8

    .line 45
    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, p2, 0x9

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    aput v6, v2, v4

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0xa

    .line 46
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr p2, p3

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    aput p1, v0, v4

    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_10
    add-int/lit8 p3, p2, 0x6

    .line 47
    aget-byte p3, p1, p3

    new-array v0, v5, [I

    shr-int/lit8 v8, p3, 0x3

    and-int/2addr v8, v5

    aput v8, v0, v4

    .line 48
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v5

    aput v2, v0, v4

    .line 49
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v5

    aput v2, v0, v4

    .line 50
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const-string v0, "persist.syu.reversefrontdoor"

    .line 51
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 52
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v5

    aput p3, v0, v4

    .line 53
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_11
    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 54
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v5

    aput p3, v0, v4

    .line 55
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    .line 56
    :goto_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1a

    add-int/lit8 p3, p2, 0x4

    .line 57
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 58
    aget-byte v0, p1, v0

    and-int/2addr p3, v3

    .line 59
    iput p3, p0, Lk0/x2;->e:I

    move p3, v4

    .line 60
    :goto_6
    iget-object v1, p0, Lk0/x2;->f:[[I

    array-length v2, v1

    if-ge p3, v2, :cond_13

    .line 61
    iget v2, p0, Lk0/x2;->e:I

    aget-object v6, v1, p3

    aget v6, v6, v4

    if-ne v2, v6, :cond_12

    if-eqz v2, :cond_13

    .line 62
    iput p3, p0, Lk0/x2;->d:I

    goto :goto_7

    :cond_12
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_13
    :goto_7
    and-int/2addr v0, v3

    if-eqz v0, :cond_14

    .line 63
    array-length v0, v1

    if-ge p3, v0, :cond_16

    .line 64
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 65
    :cond_14
    iget p3, p0, Lk0/x2;->d:I

    array-length v0, v1

    if-ge p3, v0, :cond_15

    if-eq p3, v3, :cond_15

    .line 66
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 67
    :cond_15
    iput v3, p0, Lk0/x2;->d:I

    :cond_16
    :goto_8
    add-int/lit8 p3, p2, 0x9

    .line 68
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_9

    .line 69
    :cond_17
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_9

    .line 70
    :cond_18
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1a

    add-int/2addr p2, v2

    .line 71
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-eqz p1, :cond_19

    .line 72
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_9

    .line 73
    :cond_19
    invoke-static {v4}, Lk0/qt;->a(I)V

    :cond_1a
    :goto_9
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 p3, 0x7d

    if-ge p2, p3, :cond_2

    const/16 p3, 0x73

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x74

    if-eq p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :cond_0
    :goto_0
    const/16 p3, 0x1e

    if-ge v0, p3, :cond_2

    .line 2
    iget-object p3, p0, Lk0/x2;->c:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, 0x5

    if-ge v0, p3, :cond_2

    .line 3
    iget-object p3, p0, Lk0/x2;->b:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 6

    const/16 p3, 0x6c

    const/4 p4, 0x5

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0x6a

    const/4 v4, 0x7

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p2, :cond_8

    .line 1
    array-length p1, p2

    if-lez p1, :cond_8

    .line 2
    aget p1, p2, v5

    if-eqz p1, :cond_0

    .line 3
    aput v1, p2, v5

    .line 4
    :cond_0
    aget p1, p2, v5

    int-to-byte p1, p1

    invoke-virtual {p0, v3, v0, p1}, Lk0/x2;->b3(BBB)V

    goto/16 :goto_2

    :pswitch_1
    if-eqz p2, :cond_8

    .line 5
    array-length p1, p2

    if-lez p1, :cond_8

    .line 6
    aget p1, p2, v5

    if-eqz p1, :cond_1

    .line 7
    aput v1, p2, v5

    :cond_1
    const/4 p1, 0x2

    .line 8
    aget p2, p2, v5

    int-to-byte p2, p2

    invoke-virtual {p0, v3, p1, p2}, Lk0/x2;->b3(BBB)V

    goto/16 :goto_2

    :pswitch_2
    new-array p1, v4, [I

    .line 9
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_3
    new-array p1, v4, [I

    .line 10
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_4
    new-array p1, v4, [I

    .line 11
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_5
    new-array p1, v4, [I

    .line 12
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_6
    if-eqz p2, :cond_8

    .line 13
    array-length p1, p2

    if-lez p1, :cond_8

    .line 14
    aget p1, p2, v5

    if-gez p1, :cond_2

    .line 15
    aput v5, p2, v5

    goto :goto_0

    .line 16
    :cond_2
    aget p1, p2, v5

    if-le p1, v0, :cond_3

    .line 17
    aput v0, p2, v5

    .line 18
    :cond_3
    :goto_0
    aget p1, p2, v5

    int-to-byte p1, p1

    invoke-virtual {p0, p3, p4, p1}, Lk0/x2;->b3(BBB)V

    goto :goto_2

    :pswitch_7
    if-eqz p2, :cond_8

    .line 19
    array-length p1, p2

    if-lez p1, :cond_8

    .line 20
    aget p1, p2, v5

    if-gez p1, :cond_4

    .line 21
    aput v5, p2, v5

    goto :goto_1

    .line 22
    :cond_4
    aget p1, p2, v5

    if-le p1, v2, :cond_5

    .line 23
    aput v2, p2, v5

    .line 24
    :cond_5
    :goto_1
    aget p1, p2, v5

    int-to-byte p1, p1

    invoke-virtual {p0, p3, v2, p1}, Lk0/x2;->b3(BBB)V

    goto :goto_2

    :pswitch_8
    if-eqz p2, :cond_8

    .line 25
    array-length p1, p2

    if-lez p1, :cond_8

    .line 26
    aget p1, p2, v5

    if-eqz p1, :cond_6

    .line 27
    aput v1, p2, v5

    .line 28
    :cond_6
    aget p1, p2, v5

    int-to-byte p1, p1

    invoke-virtual {p0, v3, p4, p1}, Lk0/x2;->b3(BBB)V

    goto :goto_2

    :pswitch_9
    if-eqz p2, :cond_8

    .line 29
    array-length p1, p2

    if-lez p1, :cond_8

    .line 30
    aget p1, p2, v5

    if-eqz p1, :cond_7

    .line 31
    aput v1, p2, v5

    .line 32
    :cond_7
    aget p1, p2, v5

    int-to-byte p1, p1

    invoke-virtual {p0, v3, v2, p1}, Lk0/x2;->b3(BBB)V

    :cond_8
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x4
        0x1b
        0x2
        0x2
        0x1
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x1b
        0x2
        0x2
        0x2
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x1b
        0x3
        0x1
        0x1
        0xff
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        0x1b
        0x3
        0x1
        0x2
        0xff
    .end array-data
.end method

.method public final b3(BBB)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    aput p1, v0, v2

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    aput p3, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
