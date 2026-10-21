.class public Lk0/j5;
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
    iput v0, p0, Lk0/j5;->c:I

    const/16 v1, 0x18

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

    const/16 v2, 0x17

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/j5;->d:[[I

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
        0xd
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
        0x12
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x1a
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1a
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x20
    .end array-data

    :array_e
    .array-data 4
        0x11
        0x21
    .end array-data

    :array_f
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x13
        0x22
    .end array-data

    :array_11
    .array-data 4
        0x14
        0x23
    .end array-data

    :array_12
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_14
    .array-data 4
        0x17
        0x9
    .end array-data

    :array_15
    .array-data 4
        0x81
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x82
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x83
        0x26
    .end array-data
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

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    const/4 v7, 0x2

    if-eq v0, v1, :cond_5

    const/16 p3, 0x32

    const/4 v1, 0x4

    if-eq v0, p3, :cond_4

    const/4 p3, 0x5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/2addr p2, v7

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 4
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 5
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 6
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 7
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 8
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 9
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x3

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 11
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 12
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 v0, p2, 0x2

    .line 13
    aget-byte v2, p1, v0

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    .line 14
    aget-byte v7, p1, v3

    and-int/2addr v7, v4

    add-int/lit8 v8, p2, 0x4

    .line 15
    aget-byte v9, p1, v8

    and-int/2addr v9, v4

    add-int/2addr p2, p3

    .line 16
    aget-byte p3, p1, p2

    and-int/2addr p3, v4

    if-nez v2, :cond_1

    if-nez v7, :cond_1

    if-nez v9, :cond_1

    if-nez p3, :cond_1

    .line 17
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 18
    :cond_1
    sget v5, Ll0/c0;->g:I

    if-ne v5, v2, :cond_2

    sget v5, Ll0/c0;->h:I

    if-ne v5, v7, :cond_2

    sget v5, Ll0/c0;->i:I

    if-ne v5, v9, :cond_2

    sget v5, Ll0/c0;->j:I

    if-eq v5, p3, :cond_3

    .line 19
    :cond_2
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_3

    .line 20
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 21
    sput v1, Ll0/c0;->k:I

    .line 22
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 23
    :cond_3
    :goto_1
    sput v2, Ll0/c0;->g:I

    .line 24
    sput v7, Ll0/c0;->h:I

    .line 25
    sput v9, Ll0/c0;->i:I

    .line 26
    sput p3, Ll0/c0;->j:I

    .line 27
    aget-byte p3, p1, v0

    and-int/2addr p3, v4

    invoke-virtual {p0, p3}, Lk0/j5;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 28
    aget-byte p3, p1, v3

    and-int/2addr p3, v4

    invoke-virtual {p0, p3}, Lk0/j5;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 29
    aget-byte p3, p1, v8

    and-int/2addr p3, v4

    invoke-virtual {p0, p3}, Lk0/j5;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 30
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lk0/j5;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    .line 31
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 v0, p2, 0x2

    .line 32
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lk0/j5;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 33
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lk0/j5;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 34
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lk0/j5;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/2addr p2, p3

    .line 35
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lk0/j5;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 36
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 37
    aget-byte v0, p1, v0

    add-int/2addr p2, v1

    .line 38
    aget-byte p1, p1, p2

    const/16 p2, 0x62

    new-array v1, v6, [I

    shr-int/lit8 v4, p3, 0x5

    and-int/2addr v4, v2

    aput v4, v1, v5

    .line 39
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x63

    new-array v1, v6, [I

    shr-int/lit8 v4, p3, 0x4

    and-int/2addr v4, v6

    aput v4, v1, v5

    .line 40
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x64

    new-array v1, v6, [I

    shr-int/lit8 v4, p3, 0x2

    and-int/2addr v4, v3

    aput v4, v1, v5

    .line 41
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x65

    new-array v1, v6, [I

    and-int/2addr p3, v3

    aput p3, v1, v5

    .line 42
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x66

    new-array p3, v6, [I

    shr-int/lit8 v1, v0, 0x7

    and-int/2addr v1, v6

    aput v1, p3, v5

    .line 43
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x67

    new-array p3, v6, [I

    shr-int/lit8 v1, v0, 0x5

    and-int/2addr v1, v3

    aput v1, p3, v5

    .line 44
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x68

    new-array p3, v6, [I

    shr-int/lit8 v1, v0, 0x3

    and-int/2addr v1, v3

    aput v1, p3, v5

    .line 45
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x69

    new-array p3, v6, [I

    and-int/2addr v0, v2

    aput v0, p3, v5

    .line 46
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6a

    new-array p3, v6, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v6

    aput v0, p3, v5

    .line 47
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6b

    new-array p3, v6, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v2

    aput v0, p3, v5

    .line 48
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6c

    new-array p3, v6, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v6

    aput p1, p3, v5

    .line 49
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 50
    :cond_5
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 51
    :cond_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_f

    add-int/lit8 p3, p2, 0x2

    .line 52
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 53
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 54
    iput p2, p0, Lk0/j5;->c:I

    move p2, v5

    .line 55
    :goto_2
    iget-object p3, p0, Lk0/j5;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_8

    .line 56
    iget v0, p0, Lk0/j5;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v5

    if-ne v0, v1, :cond_7

    if-eqz v0, :cond_8

    .line 57
    iput p2, p0, Lk0/j5;->b:I

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 58
    :cond_8
    :goto_3
    iget v0, p0, Lk0/j5;->c:I

    const/16 v1, 0x84

    if-eq v0, v1, :cond_d

    const/16 v1, 0x85

    if-eq v0, v1, :cond_b

    and-int/2addr p1, v4

    if-ne p1, v6, :cond_9

    .line 59
    array-length p1, p3

    if-ge p2, p1, :cond_f

    .line 60
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_9
    if-nez p1, :cond_f

    .line 61
    iget p1, p0, Lk0/j5;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_a

    if-eq p1, v4, :cond_a

    .line 62
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 63
    :cond_a
    iput v4, p0, Lk0/j5;->b:I

    goto :goto_6

    :cond_b
    move p2, v5

    :goto_4
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x8

    if-ge p2, p3, :cond_c

    .line 64
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 65
    :cond_c
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_d
    move p2, v5

    :goto_5
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_e

    .line 66
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 67
    :cond_e
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    :cond_f
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
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

    if-ltz p2, :cond_0

    const/16 p3, 0x6e

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
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p1, v0

    const/16 p4, 0xc6

    aput p4, p1, p3

    const/4 p4, 0x2

    aput p4, p1, p4

    const/4 p4, 0x3

    .line 2
    aget v0, p2, v0

    aput v0, p1, p4

    const/4 p4, 0x4

    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 4

    const/16 v0, 0xf

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method
