.class public Lk0/s0;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:B

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lk0/s0;->b:[[I

    const/16 v1, 0x1e

    new-array v1, v1, [[I

    .line 3
    iput-object v1, p0, Lk0/s0;->c:[[I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lk0/s0;->d:I

    const/16 v2, 0xff

    .line 5
    iput v2, p0, Lk0/s0;->f:I

    const/16 v2, 0xe

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x3

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x4

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    const/4 v4, 0x6

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x7

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    const/16 v4, 0xa

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    const/16 v4, 0xb

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    const/16 v4, 0xc

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v2, v3

    iput-object v2, p0, Lk0/s0;->g:[[I

    .line 7
    iput-byte v1, p0, Lk0/s0;->h:B

    .line 8
    new-instance v0, Lk0/s0$a;

    invoke-direct {v0, p0}, Lk0/s0$a;-><init>(Lk0/s0;)V

    iput-object v0, p0, Lk0/s0;->i:Ljava/lang/Runnable;

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

.method public static synthetic b3(Lk0/s0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/s0;->i:Ljava/lang/Runnable;

    return-object p0
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

    if-eq v0, v1, :cond_1e

    const/16 v1, -0x10

    const/4 v6, 0x2

    if-eq v0, v1, :cond_1d

    const/16 p3, 0x11

    const/4 v1, 0x4

    const/4 v7, 0x3

    if-eq v0, p3, :cond_16

    const/16 p3, 0x62

    const/16 v8, 0x13

    if-eq v0, v8, :cond_15

    const/16 v9, 0x31

    const/16 v10, 0x41

    if-eq v0, v9, :cond_6

    if-eq v0, v10, :cond_5

    const/16 v8, 0x16

    if-eq v0, v8, :cond_3

    const/16 p3, 0x17

    if-eq v0, p3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const/16 p3, 0x6c

    new-array v0, v5, [I

    add-int/2addr p2, v7

    .line 2
    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    .line 3
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x18

    shr-int/2addr p1, v7

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_1
    const/16 p3, 0x6f

    new-array v0, v5, [I

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v6, p1, v3

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v5

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v5, [I

    .line 5
    aget-byte v6, p1, v3

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v5

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v0, v5, [I

    .line 6
    aget-byte v3, p1, v3

    shr-int/2addr v3, v4

    and-int/2addr v3, v5

    aput v3, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v5, [I

    add-int/2addr p2, v2

    .line 7
    aget-byte p1, p1, p2

    shr-int/2addr p1, v1

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_2
    const/16 p3, 0x7b

    new-array v0, v5, [I

    add-int/2addr p2, v7

    .line 8
    aget-byte v1, p1, p2

    shr-int/2addr v1, v7

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7c

    new-array v0, v5, [I

    .line 9
    aget-byte v1, p1, p2

    shr-int/2addr v1, v6

    and-int/2addr v1, v5

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v5, [I

    .line 10
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v5, [I

    .line 11
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_1
    add-int/lit8 p3, p2, 0x3e

    .line 12
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/lit8 p3, p3, 0x18

    move v0, v4

    :goto_1
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_20

    new-array v1, v6, [I

    aput v0, v1, v4

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    add-int/lit8 v8, v2, 0x2

    .line 13
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

    .line 14
    iget-object v8, p0, Lk0/s0;->c:[[I

    aget-object v8, v8, v0

    invoke-static {v2, v1, v8}, Lk0/qt;->C0(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    iget-object v2, p0, Lk0/s0;->c:[[I

    aput-object v1, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p2, 0xe

    .line 16
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    new-array v1, v5, [I

    add-int/lit8 v7, p2, 0x2

    .line 17
    aget-byte v8, p1, v7

    and-int/2addr v8, v3

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x3

    aget-byte v10, p1, v9

    and-int/2addr v10, v3

    or-int/2addr v8, v10

    or-int/2addr v8, v0

    aput v8, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v1, v5, [I

    .line 18
    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    shl-int/lit8 v7, v7, 0x8

    aget-byte v8, p1, v9

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    or-int/2addr v7, v0

    aput v7, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    move p3, v4

    :goto_2
    if-ge p3, v2, :cond_20

    new-array v1, v6, [I

    aput p3, v1, v4

    mul-int/lit8 v7, p3, 0x2

    add-int/2addr v7, p2

    add-int/lit8 v8, v7, 0x4

    .line 19
    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v2

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    or-int/2addr v7, v8

    or-int/2addr v7, v0

    aput v7, v1, v5

    const/16 v7, 0x73

    .line 20
    iget-object v8, p0, Lk0/s0;->b:[[I

    aget-object v8, v8, p3

    invoke-static {v7, v1, v8}, Lk0/qt;->C0(I[I[I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 21
    iget-object v7, p0, Lk0/s0;->b:[[I

    aput-object v1, v7, p3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 22
    :cond_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_20

    add-int/lit8 p3, p2, 0x2

    .line 23
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Lk0/s0;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 24
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    invoke-static {v0}, Lk0/s0;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 25
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Lk0/s0;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 26
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Lk0/s0;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 27
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Lk0/s0;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 28
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    invoke-static {v0}, Lk0/s0;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    .line 29
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Lk0/s0;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 30
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Lk0/s0;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    :cond_6
    const/16 p3, 0xb

    new-array v0, v5, [I

    add-int/lit8 v9, p2, 0x2

    .line 31
    aget-byte v9, p1, v9

    and-int/2addr v9, v7

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x3

    .line 32
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x8

    aput v0, p3, v4

    const/16 v0, 0xd

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x4

    .line 33
    aget-byte v9, p1, v0

    and-int/lit8 v9, v9, 0x10

    aput v9, p3, v4

    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v9, v5, [I

    .line 34
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x20

    aput v0, v9, v4

    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x6

    .line 35
    aget-byte p3, p1, p3

    if-eqz p3, :cond_7

    if-eq p3, v5, :cond_b

    if-eq p3, v6, :cond_a

    if-eq p3, v7, :cond_9

    if-eq p3, v1, :cond_8

    :cond_7
    move p3, v4

    move v0, p3

    :goto_3
    move v1, v0

    goto :goto_4

    :cond_8
    move v0, v4

    move p3, v5

    move v1, p3

    goto :goto_4

    :cond_9
    move p3, v4

    move v0, p3

    move v1, v5

    goto :goto_4

    :cond_a
    move p3, v4

    move v0, v5

    goto :goto_3

    :cond_b
    move p3, v4

    move v1, p3

    move v0, v5

    :goto_4
    const/16 v6, 0x12

    new-array v7, v5, [I

    aput p3, v7, v4

    .line 36
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    aput v0, p3, v4

    .line 37
    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    aput v1, v0, v4

    .line 38
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x7

    .line 39
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 40
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v0, -0x3

    const/4 v1, -0x2

    const/16 v6, 0x1c

    const/16 v7, 0x1b

    if-eqz p3, :cond_10

    add-int/lit8 p3, p2, 0x9

    .line 41
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-nez p3, :cond_c

    new-array p3, v5, [I

    aput v1, p3, v4

    .line 42
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    if-ne p3, v3, :cond_d

    new-array p3, v5, [I

    aput v0, p3, v4

    .line 43
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    new-array v8, v5, [I

    mul-int/2addr p3, v2

    add-int/lit16 p3, p3, 0xaf

    aput p3, v8, v4

    .line 44
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 p2, p2, 0x8

    .line 45
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-nez p1, :cond_e

    new-array p1, v5, [I

    aput v1, p1, v4

    .line 46
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_e
    if-ne p1, v3, :cond_f

    new-array p1, v5, [I

    aput v0, p1, v4

    .line 47
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_f
    new-array p2, v5, [I

    mul-int/2addr p1, v2

    add-int/lit16 p1, p1, 0xaf

    aput p1, p2, v4

    .line 48
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_10
    add-int/lit8 p3, p2, 0x8

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-nez p3, :cond_11

    new-array p3, v5, [I

    aput v1, p3, v4

    .line 50
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    if-ne p3, v3, :cond_12

    new-array p3, v5, [I

    aput v0, p3, v4

    .line 51
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    new-array v8, v5, [I

    mul-int/2addr p3, v2

    add-int/lit16 p3, p3, 0xaf

    aput p3, v8, v4

    .line 52
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 p2, p2, 0x9

    .line 53
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-nez p1, :cond_13

    new-array p1, v5, [I

    aput v1, p1, v4

    .line 54
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_13
    if-ne p1, v3, :cond_14

    new-array p1, v5, [I

    aput v0, p1, v4

    .line 55
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_14
    new-array p2, v5, [I

    mul-int/2addr p1, v2

    add-int/lit16 p1, p1, 0xaf

    aput p1, p2, v4

    .line 56
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_15
    add-int/lit8 v0, p2, 0xc

    .line 57
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0xd

    .line 58
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x18

    new-array v2, v5, [I

    add-int/lit8 v6, p2, 0x2

    .line 59
    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    or-int/2addr v6, v0

    aput v6, v2, v4

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v2, p2, 0x4

    .line 60
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    or-int/2addr v2, v6

    or-int/2addr v1, v2

    aput v1, p3, v4

    const/16 v1, 0x63

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x75

    new-array v2, v5, [I

    add-int/lit8 v6, p2, 0x6

    .line 61
    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    or-int/2addr v0, v6

    aput v0, v2, v4

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x8

    .line 62
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    or-int/2addr v2, v6

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0xa

    .line 63
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0xb

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    aput p1, p3, v4

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_16
    add-int/lit8 p3, p2, 0x6

    .line 64
    aget-byte p3, p1, p3

    new-array v0, v5, [I

    shr-int/lit8 v8, p3, 0x3

    and-int/2addr v8, v5

    aput v8, v0, v4

    .line 65
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v5

    aput v2, v0, v4

    .line 66
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v5

    aput v2, v0, v4

    .line 67
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const-string v0, "persist.syu.reversefrontdoor"

    .line 68
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 69
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v5

    aput p3, v0, v4

    .line 70
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_17
    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 71
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v5

    aput p3, v0, v4

    .line 72
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    .line 73
    :goto_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_20

    add-int/lit8 p3, p2, 0x4

    .line 74
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 75
    aget-byte v0, p1, v0

    and-int/2addr p3, v3

    .line 76
    iput p3, p0, Lk0/s0;->f:I

    move p3, v4

    .line 77
    :goto_8
    iget-object v1, p0, Lk0/s0;->g:[[I

    array-length v2, v1

    if-ge p3, v2, :cond_19

    .line 78
    iget v2, p0, Lk0/s0;->f:I

    aget-object v6, v1, p3

    aget v6, v6, v4

    if-ne v2, v6, :cond_18

    if-eqz v2, :cond_19

    .line 79
    iput p3, p0, Lk0/s0;->e:I

    goto :goto_9

    :cond_18
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_19
    :goto_9
    and-int/2addr v0, v3

    if-ne v0, v5, :cond_1a

    .line 80
    array-length v0, v1

    if-ge p3, v0, :cond_1c

    .line 81
    iget-byte v0, p0, Lk0/s0;->h:B

    if-nez v0, :cond_1c

    add-int/2addr v0, v5

    int-to-byte v0, v0

    .line 82
    iput-byte v0, p0, Lk0/s0;->h:B

    .line 83
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    .line 84
    iget-object p3, p0, Lk0/s0;->i:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_1a
    if-nez v0, :cond_1c

    .line 85
    iget p3, p0, Lk0/s0;->e:I

    array-length v0, v1

    if-ge p3, v0, :cond_1b

    if-eq p3, v3, :cond_1b

    .line 86
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 87
    iget-object p3, p0, Lk0/s0;->i:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 88
    iput-byte v4, p0, Lk0/s0;->h:B

    .line 89
    :cond_1b
    iput v3, p0, Lk0/s0;->e:I

    :cond_1c
    :goto_a
    add-int/lit8 p3, p2, 0x9

    .line 90
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x21c

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_b

    .line 91
    :cond_1d
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_b

    .line 92
    :cond_1e
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_20

    add-int/2addr p2, v2

    .line 93
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-eqz p1, :cond_1f

    .line 94
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_b

    .line 95
    :cond_1f
    invoke-static {v4}, Lk0/qt;->a(I)V

    :cond_20
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    iget-object p3, p0, Lk0/s0;->c:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, 0x5

    if-ge v0, p3, :cond_2

    .line 3
    iget-object p3, p0, Lk0/s0;->b:[[I

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

    invoke-virtual {p0, v3, v0, p1}, Lk0/s0;->c3(BBB)V

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

    invoke-virtual {p0, v3, p1, p2}, Lk0/s0;->c3(BBB)V

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

    invoke-virtual {p0, p3, p4, p1}, Lk0/s0;->c3(BBB)V

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

    invoke-virtual {p0, p3, v2, p1}, Lk0/s0;->c3(BBB)V

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

    invoke-virtual {p0, v3, p4, p1}, Lk0/s0;->c3(BBB)V

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

    invoke-virtual {p0, v3, v2, p1}, Lk0/s0;->c3(BBB)V

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
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x1b
        0x2
        0x2
        0x2
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x1b
        0x3
        0x1
        0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        0x1b
        0x3
        0x1
        0x2
        -0x1
    .end array-data
.end method

.method public final c3(BBB)V
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
