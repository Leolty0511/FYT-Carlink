.class public Lk0/nm;
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
    iput v0, p0, Lk0/nm;->c:I

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

    iput-object v1, p0, Lk0/nm;->d:[[I

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
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x12
        0xd
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->h:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x3

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_12

    const/16 v5, 0xb

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq v0, v1, :cond_8

    const/16 v8, 0x24

    const/4 v9, 0x2

    if-eq v0, v8, :cond_6

    const/16 v8, 0x30

    if-eq v0, v8, :cond_5

    const/16 p3, 0x33

    if-eq v0, p3, :cond_4

    const/16 p3, 0x7d

    if-eq v0, p3, :cond_2

    const/16 p3, 0x38

    if-eq v0, p3, :cond_1

    const/16 p3, 0x39

    if-eq v0, p3, :cond_0

    goto/16 :goto_8

    :cond_0
    const/16 p3, 0x6f

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 4
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v0, v4, [I

    add-int/2addr p2, v6

    .line 5
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_1
    const/16 p3, 0x6b

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 6
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 7
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 8
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x5

    .line 9
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x6

    .line 10
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x7

    .line 11
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x8

    .line 12
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v4, [I

    add-int/lit8 p2, p2, 0x9

    .line 13
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 14
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    if-eq p3, v4, :cond_3

    goto/16 :goto_8

    :cond_3
    add-int/2addr p2, v1

    .line 15
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v4

    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v4

    invoke-static {p3, v0, v3}, Ll0/c0;->a(III)V

    .line 16
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v9, [I

    aput v5, v1, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    aput p1, v1, v4

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_4
    const/16 p3, 0x62

    new-array v0, v4, [I

    add-int/lit8 v5, p2, 0x3

    .line 17
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, p1, v8

    and-int/2addr v8, v2

    or-int/2addr v5, v8

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v4, [I

    add-int/lit8 v5, p2, 0x5

    .line 18
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, p1, v6

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v4, [I

    add-int/lit8 v5, p2, 0x7

    .line 19
    aget-byte v6, p1, v5

    shr-int/2addr v6, v7

    and-int/2addr v1, v6

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v4, [I

    .line 20
    aget-byte v1, p1, v5

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v4, [I

    add-int/lit8 p2, p2, 0x8

    .line 21
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 22
    :cond_5
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v9

    sub-int/2addr p3, v9

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    add-int/2addr p2, v9

    .line 23
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 24
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_7

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 25
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 26
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 27
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 28
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 29
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 30
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v1

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 31
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_8
    new-array p3, v4, [I

    add-int/lit8 v0, p2, 0x2

    .line 32
    aget-byte v8, p1, v0

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v4

    aput v8, p3, v3

    const/16 v8, 0xa

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 33
    aget-byte v9, p1, v0

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v4

    aput v9, p3, v3

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v5, v4, [I

    .line 34
    aget-byte v9, p1, v0

    shr-int/2addr v9, v6

    and-int/2addr v9, v4

    aput v9, v5, v3

    invoke-static {p3, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v5, v4, [I

    .line 35
    aget-byte v9, p1, v0

    shr-int/2addr v9, v7

    and-int/2addr v9, v4

    aput v9, v5, v3

    invoke-static {p3, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x36

    new-array v5, v4, [I

    .line 36
    aget-byte v9, p1, v0

    shr-int/lit8 v1, v9, 0x3

    and-int/2addr v1, v4

    aput v1, v5, v3

    invoke-static {p3, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v1, v4, [I

    add-int/lit8 v5, p2, 0x3

    .line 37
    aget-byte v9, p1, v5

    shr-int/2addr v9, v4

    and-int/lit8 v9, v9, 0x8

    aget-byte v0, p1, v0

    shr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x7

    or-int/2addr v0, v9

    aput v0, v1, v3

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v0, v4, [I

    .line 38
    aget-byte v1, p1, v5

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 39
    aget-byte p3, p1, v5

    and-int/lit8 p3, p3, 0xf

    packed-switch p3, :pswitch_data_0

    move p3, v3

    move v0, p3

    move v1, v0

    move v5, v1

    move v6, v5

    goto/16 :goto_2

    :pswitch_0
    move p3, v3

    move v6, p3

    move v0, v4

    move v1, v0

    goto :goto_1

    :pswitch_1
    move p3, v3

    move v1, p3

    move v6, v1

    move v0, v4

    move v5, v0

    goto :goto_2

    :pswitch_2
    move p3, v3

    move v1, p3

    move v5, v1

    move v6, v5

    move v0, v4

    goto :goto_2

    :pswitch_3
    move p3, v3

    move v5, p3

    move v6, v5

    move v0, v4

    move v1, v0

    goto :goto_2

    :pswitch_4
    move p3, v3

    move v0, p3

    move v5, v0

    move v6, v5

    move v1, v4

    goto :goto_2

    :pswitch_5
    move p3, v3

    move v0, p3

    move v6, v0

    move v1, v4

    :goto_1
    move v5, v1

    goto :goto_2

    :pswitch_6
    move p3, v3

    move v0, p3

    move v1, v0

    move v6, v1

    move v5, v4

    goto :goto_2

    :pswitch_7
    move v0, v3

    move v1, v0

    move v5, v1

    move v6, v5

    move p3, v4

    goto :goto_2

    :pswitch_8
    move p3, v3

    move v0, p3

    move v1, v0

    move v5, v1

    move v6, v4

    :goto_2
    const/16 v9, 0x41

    new-array v10, v4, [I

    aput p3, v10, v3

    .line 40
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v9, v4, [I

    aput v0, v9, v3

    .line 41
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v4, [I

    aput v1, v0, v3

    .line 42
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v4, [I

    aput v5, v0, v3

    .line 43
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x31

    new-array v0, v4, [I

    aput v6, v0, v3

    .line 44
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 45
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v0, -0x3

    const/4 v1, -0x2

    const/16 v5, 0x1e

    const/16 v6, 0x1c

    const/16 v9, 0x1b

    if-eqz p3, :cond_d

    add-int/lit8 p3, p2, 0x4

    .line 46
    aget-byte v10, p1, p3

    and-int/2addr v10, v2

    if-nez v10, :cond_9

    new-array p3, v4, [I

    aput v1, p3, v3

    .line 47
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 48
    :cond_9
    aget-byte v10, p1, p3

    and-int/2addr v10, v2

    if-ne v10, v5, :cond_a

    new-array p3, v4, [I

    aput v0, p3, v3

    .line 49
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v10, v4, [I

    .line 50
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    aput p3, v10, v3

    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 p3, p2, 0x5

    .line 51
    aget-byte v6, p1, p3

    and-int/2addr v6, v2

    if-nez v6, :cond_b

    new-array p3, v4, [I

    aput v1, p3, v3

    .line 52
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 53
    :cond_b
    aget-byte v1, p1, p3

    and-int/2addr v1, v2

    if-ne v1, v5, :cond_c

    new-array p3, v4, [I

    aput v0, p3, v3

    .line 54
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array v0, v4, [I

    .line 55
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    aput p3, v0, v3

    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    add-int/lit8 p3, p2, 0x4

    .line 56
    aget-byte v10, p1, p3

    and-int/2addr v10, v2

    if-nez v10, :cond_e

    new-array p3, v4, [I

    aput v1, p3, v3

    .line 57
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 58
    :cond_e
    aget-byte v10, p1, p3

    and-int/2addr v10, v2

    if-ne v10, v5, :cond_f

    new-array p3, v4, [I

    aput v0, p3, v3

    .line 59
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    new-array v10, v4, [I

    .line 60
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    aput p3, v10, v3

    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 p3, p2, 0x5

    .line 61
    aget-byte v9, p1, p3

    and-int/2addr v9, v2

    if-nez v9, :cond_10

    new-array p3, v4, [I

    aput v1, p3, v3

    .line 62
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 63
    :cond_10
    aget-byte v1, p1, p3

    and-int/2addr v1, v2

    if-ne v1, v5, :cond_11

    new-array p3, v4, [I

    aput v0, p3, v3

    .line 64
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_11
    new-array v0, v4, [I

    .line 65
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    aput p3, v0, v3

    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 p3, 0x1d

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x6

    .line 66
    aget-byte v2, p1, v1

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 67
    aget-byte v0, p1, v1

    shr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0xf

    aput v0, p3, v3

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x7

    .line 68
    aget-byte p3, p1, p3

    mul-int/2addr p3, v8

    add-int/lit16 p3, p3, 0x3e8

    .line 69
    invoke-static {p3}, Lu0/d;->B3(I)V

    const/16 p3, 0xd

    new-array v0, v4, [I

    add-int/lit8 p2, p2, 0x8

    .line 70
    aget-byte v1, p1, p2

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x21

    new-array v0, v4, [I

    .line 71
    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v4

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_12
    add-int/lit8 p3, p2, 0x2

    .line 72
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 73
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 74
    iput p2, p0, Lk0/nm;->c:I

    move p2, v3

    .line 75
    :goto_6
    iget-object p3, p0, Lk0/nm;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_14

    .line 76
    iget v0, p0, Lk0/nm;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_13

    if-eqz v0, :cond_14

    .line 77
    iput p2, p0, Lk0/nm;->b:I

    goto :goto_7

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_14
    :goto_7
    and-int/2addr p1, v2

    if-ne p1, v4, :cond_15

    .line 78
    array-length p1, p3

    if-ge p2, p1, :cond_17

    .line 79
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_15
    if-nez p1, :cond_17

    .line 80
    iget p1, p0, Lk0/nm;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_16

    if-eq p1, v2, :cond_16

    .line 81
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 82
    :cond_16
    iput v2, p0, Lk0/nm;->b:I

    :cond_17
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 p3, 0x73

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

    const/16 p3, 0x82

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
