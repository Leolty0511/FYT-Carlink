.class public Lk0/b0;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

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
    iput v0, p0, Lk0/b0;->c:I

    const/16 v1, 0x15

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

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/b0;->d:[[I

    .line 4
    iput-byte v0, p0, Lk0/b0;->e:B

    .line 5
    new-instance v0, Lk0/b0$a;

    invoke-direct {v0, p0}, Lk0/b0$a;-><init>(Lk0/b0;)V

    iput-object v0, p0, Lk0/b0;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/b0$b;

    invoke-direct {v0, p0}, Lk0/b0$b;-><init>(Lk0/b0;)V

    iput-object v0, p0, Lk0/b0;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/b0$c;

    invoke-direct {v0, p0}, Lk0/b0$c;-><init>(Lk0/b0;)V

    iput-object v0, p0, Lk0/b0;->h:Ljava/lang/Runnable;

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
        0x1b
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1c
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x9
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x4
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x3
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x20
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x21
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x14
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x15
        -0x1
    .end array-data
.end method

.method public static synthetic b3(Lk0/b0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/b0;->f:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/b0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/b0;->a3(I)V

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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iget-object v0, p0, Lk0/b0;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lk0/b0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 7

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_13

    const/16 p3, 0x31

    const/4 v1, 0x5

    const/16 v3, 0xff

    if-eq v0, p3, :cond_11

    const/16 p3, 0x41

    const/4 v4, 0x1

    if-eq v0, p3, :cond_8

    const/16 p3, 0x42

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v0, p3, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    const/16 p3, 0x65

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 3
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x6

    .line 4
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_1
    const/16 p3, 0x68

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 5
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 6
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x6

    .line 7
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_2
    const/16 p3, 0x66

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 8
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 9
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x62

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x6

    .line 10
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_3
    const/4 p3, 0x4

    add-int/2addr p2, p3

    .line 11
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 12
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v4

    aput v0, p2, v6

    .line 13
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v4

    aput v0, p2, v6

    .line 14
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v4

    aput v0, p2, v6

    .line 15
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v4

    aput v0, p2, v6

    .line 16
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v4

    aput v0, p2, v6

    .line 17
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v4

    aput v0, p2, v6

    .line 18
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v4

    aput p1, p2, v6

    .line 19
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_4
    add-int/lit8 p3, p2, 0x4

    .line 20
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/2addr p2, v1

    .line 21
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    const/16 v2, 0x14

    const/4 v5, 0x0

    if-ne v0, v2, :cond_1

    if-ne v1, v4, :cond_1

    .line 22
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x73

    aget-object v0, v0, v1

    new-array v2, v4, [I

    aput v4, v2, v6

    invoke-virtual {v0, v1, v2, v5, v5}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x15

    if-ne v0, v2, :cond_2

    if-ne v1, v4, :cond_2

    .line 23
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x74

    aget-object v0, v0, v1

    new-array v2, v4, [I

    aput v4, v2, v6

    invoke-virtual {v0, v1, v2, v5, v5}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    .line 24
    :cond_2
    :goto_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 25
    aget-byte p3, p1, p3

    .line 26
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 27
    iput p2, p0, Lk0/b0;->c:I

    move p2, v6

    .line 28
    :goto_2
    iget-object p3, p0, Lk0/b0;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_4

    .line 29
    iget v0, p0, Lk0/b0;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v6

    if-ne v0, v1, :cond_3

    if-eqz v0, :cond_4

    .line 30
    iput p2, p0, Lk0/b0;->b:I

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    and-int/2addr p1, v3

    if-ne p1, v4, :cond_5

    .line 31
    array-length p1, p3

    if-ge p2, p1, :cond_14

    .line 32
    iget-byte p1, p0, Lk0/b0;->e:B

    if-nez p1, :cond_14

    add-int/2addr p1, v4

    int-to-byte p1, p1

    .line 33
    iput-byte p1, p0, Lk0/b0;->e:B

    .line 34
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 35
    iget-object p1, p0, Lk0/b0;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_d

    :cond_5
    if-nez p1, :cond_14

    .line 36
    iget p1, p0, Lk0/b0;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_6

    if-eq p1, v3, :cond_6

    .line 37
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 38
    iget-object p1, p0, Lk0/b0;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 39
    iput-byte v6, p0, Lk0/b0;->e:B

    .line 40
    :cond_6
    iput v3, p0, Lk0/b0;->b:I

    goto/16 :goto_d

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 41
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, p3

    const/16 p2, 0x72

    new-array p3, v4, [I

    aput p1, p3, v6

    .line 42
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 43
    :cond_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_14

    add-int/lit8 p3, p2, 0x2

    .line 44
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v4

    const/16 v1, 0xf

    const/16 v2, 0x9

    if-le v0, v2, :cond_9

    move p3, v1

    goto :goto_4

    :cond_9
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v4

    .line 45
    :goto_4
    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 46
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v4

    if-le v0, v2, :cond_a

    move p3, v1

    goto :goto_5

    :cond_a
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v4

    .line 47
    :goto_5
    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 48
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v4

    if-le v0, v2, :cond_b

    move p3, v1

    goto :goto_6

    :cond_b
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v4

    .line 49
    :goto_6
    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 50
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v4

    if-le v0, v2, :cond_c

    move p3, v1

    goto :goto_7

    :cond_c
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v4

    .line 51
    :goto_7
    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 52
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v4

    if-le v0, v2, :cond_d

    move p3, v1

    goto :goto_8

    :cond_d
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v4

    .line 53
    :goto_8
    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 54
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v4

    if-le v0, v2, :cond_e

    move p3, v1

    goto :goto_9

    :cond_e
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v4

    .line 55
    :goto_9
    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 56
    aget-byte v0, p1, p3

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, v4

    if-le v0, v2, :cond_f

    move p3, v1

    goto :goto_a

    :cond_f
    aget-byte p3, p1, p3

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v4

    .line 57
    :goto_a
    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/2addr p2, v2

    .line 58
    aget-byte p3, p1, p2

    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x8

    sub-int/2addr p3, v4

    if-le p3, v2, :cond_10

    goto :goto_b

    :cond_10
    aget-byte p1, p1, p2

    mul-int/lit8 p1, p1, 0xa

    div-int/lit8 p1, p1, 0x8

    add-int/lit8 v1, p1, -0x1

    .line 59
    :goto_b
    invoke-static {v1}, Lu0/d;->G2(I)V

    goto :goto_d

    .line 60
    :cond_11
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_14

    add-int/lit8 p2, p2, 0xd

    .line 61
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    mul-int/2addr p1, v1

    const/16 p2, 0x190

    if-ge p1, p2, :cond_12

    sub-int/2addr p2, p1

    rsub-int p1, p2, 0x3e8

    goto :goto_c

    :cond_12
    rsub-int p1, p1, 0x578

    :goto_c
    const/16 p2, 0x258

    if-le p1, p2, :cond_14

    .line 62
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_d

    .line 63
    :cond_13
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_14
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/b0;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/b0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x75

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

    const/16 p3, 0x18

    if-eq p1, p3, :cond_1

    const/16 p2, 0x30

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 3
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/b0;->d3(I)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x60
        0x1
        -0x1
    .end array-data
.end method

.method public final a3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v3, -0x66

    aput v3, v0, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 p1, 0x4

    aput v1, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(I)V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x1b

    aput v4, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x3

    aput p1, v0, v3

    aput p1, v0, v2

    const/4 p1, 0x5

    aput v1, v0, p1

    const/4 p1, 0x6

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
