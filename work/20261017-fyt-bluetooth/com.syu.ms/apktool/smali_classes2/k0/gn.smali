.class public Lk0/gn;
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
    iput v0, p0, Lk0/gn;->c:I

    const/16 v1, 0x1a

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

    const/16 v3, 0x17

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v3, 0x18

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_19

    const/16 v2, 0x19

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/gn;->d:[[I

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xb
        0x15
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x35
    .end array-data

    :array_a
    .array-data 4
        0xd
        0xd
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x36
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x28
    .end array-data

    :array_e
    .array-data 4
        0x11
        0x29
    .end array-data

    :array_f
    .array-data 4
        0x12
        0x2a
    .end array-data

    :array_10
    .array-data 4
        0x13
        0x2b
    .end array-data

    :array_11
    .array-data 4
        0x14
        0x2c
    .end array-data

    :array_12
    .array-data 4
        0x15
        0x2d
    .end array-data

    :array_13
    .array-data 4
        0x16
        0x26
    .end array-data

    :array_14
    .array-data 4
        0x17
        0x44
    .end array-data

    :array_15
    .array-data 4
        0x18
        0x43
    .end array-data

    :array_16
    .array-data 4
        0x19
        0x12
    .end array-data

    :array_17
    .array-data 4
        0x1a
        0x1a
    .end array-data

    :array_18
    .array-data 4
        0x1b
        0x6
    .end array-data

    :array_19
    .array-data 4
        0x1c
        0x5
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

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->h:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_13

    const/16 v1, 0x21

    const/16 v6, 0x10

    const/16 v7, 0xb

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x2

    if-eq v0, v1, :cond_9

    const/16 v1, 0x24

    if-eq v0, v1, :cond_7

    const/16 v1, 0x29

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    if-eq v0, v1, :cond_5

    const/16 p3, 0x68

    const v1, 0xff00

    if-eq v0, p3, :cond_4

    const/16 v9, 0x7d

    if-eq v0, v9, :cond_2

    const/16 v7, 0x70

    if-eq v0, v7, :cond_1

    const/16 p3, 0x71

    if-eq v0, p3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 p3, 0x6b

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x3

    .line 2
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v1

    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    or-int/2addr v2, v7

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x5

    .line 3
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v1

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    or-int/2addr v2, v7

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x8

    .line 4
    aget-byte v2, p1, v2

    shl-int/2addr v2, v6

    const/high16 v5, 0xff0000

    and-int/2addr v2, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x6

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_1
    const/16 v0, 0x63

    new-array v6, v5, [I

    add-int/lit8 v7, p2, 0x4

    .line 5
    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v1

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    aput v7, v6, v4

    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x62

    new-array v6, v5, [I

    add-int/lit8 v7, p2, 0x6

    .line 6
    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v1

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    aput v7, v6, v4

    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x65

    new-array v6, v5, [I

    add-int/lit8 v7, p2, 0x8

    .line 7
    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v1

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    aput v7, v6, v4

    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x64

    new-array v6, v5, [I

    add-int/lit8 v7, p2, 0xa

    .line 8
    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v1, v7

    add-int/lit8 v7, p2, 0x9

    aget-byte v7, p1, v7

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    aput v1, v6, v4

    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    new-array v1, v5, [I

    add-int/2addr p2, v10

    .line 9
    aget-byte v3, p1, p2

    shr-int/lit8 v2, v3, 0x3

    and-int/lit8 v2, v2, 0x11

    aput v2, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v1, v5, [I

    .line 10
    aget-byte v2, p1, p2

    shr-int/2addr v2, v10

    and-int/lit8 v2, v2, 0x11

    aput v2, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x69

    new-array v1, v5, [I

    .line 11
    aget-byte v2, p1, p2

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0x11

    aput v2, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 12
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/lit8 p1, p1, 0x11

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_3

    goto/16 :goto_5

    :cond_3
    add-int/2addr p2, v2

    .line 14
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v8

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 15
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v10, [I

    aput v7, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v5

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p3, v0, v1, p1, p2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    const/16 p3, 0x6e

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x3

    .line 16
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    add-int/2addr p2, v10

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v10

    sub-int/2addr p3, v10

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 18
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    const/16 p2, 0x189c

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    :cond_7
    add-int/2addr p2, v10

    .line 19
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 20
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_8

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 21
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 22
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_8
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 23
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 24
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 25
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 26
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 27
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_9
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 28
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v5

    aput v1, p3, v4

    const/16 v1, 0xa

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 29
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v1, v5, [I

    .line 30
    aget-byte v7, p1, v0

    shr-int/2addr v7, v9

    and-int/2addr v7, v5

    aput v7, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 31
    aget-byte v1, p1, v0

    shr-int/2addr v1, v8

    and-int/2addr v1, v5

    aput v1, p3, v4

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v1, v5, [I

    .line 32
    aget-byte v6, p1, v0

    shr-int/lit8 v2, v6, 0x3

    and-int/2addr v2, v5

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v1, v5, [I

    .line 33
    aget-byte v2, p1, v0

    shr-int/2addr v2, v10

    and-int/2addr v2, v5

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 34
    aget-byte v0, p1, v0

    shr-int/2addr v0, v5

    and-int/2addr v0, v5

    aput v0, p3, v4

    const/16 v0, 0xf

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x3

    .line 35
    aget-byte v6, p1, v2

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v5, [I

    .line 36
    aget-byte v6, p1, v2

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v5, [I

    .line 37
    aget-byte v6, p1, v2

    shr-int/2addr v6, v9

    and-int/2addr v6, v5

    aput v6, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v1, v5, [I

    .line 38
    aget-byte v2, p1, v2

    and-int/2addr v0, v2

    aput v0, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 39
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v0, -0x3

    const/4 v1, -0x2

    const/16 v2, 0x7f

    const/16 v6, 0x1c

    const/16 v7, 0x1b

    if-eqz p3, :cond_e

    add-int/lit8 p3, p2, 0x4

    .line 40
    aget-byte v8, p1, p3

    and-int/2addr v8, v3

    if-nez v8, :cond_a

    new-array p3, v5, [I

    aput v1, p3, v4

    .line 41
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    .line 42
    :cond_a
    aget-byte v8, p1, p3

    and-int/2addr v8, v3

    if-ne v8, v2, :cond_b

    new-array p3, v5, [I

    aput v0, p3, v4

    .line 43
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_b
    new-array v8, v5, [I

    .line 44
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    aput p3, v8, v4

    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/2addr p2, v9

    .line 45
    aget-byte p3, p1, p2

    and-int/2addr p3, v3

    if-nez p3, :cond_c

    new-array p1, v5, [I

    aput v1, p1, v4

    .line 46
    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 47
    :cond_c
    aget-byte p3, p1, p2

    and-int/2addr p3, v3

    if-ne p3, v2, :cond_d

    new-array p1, v5, [I

    aput v0, p1, v4

    .line 48
    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_d
    new-array p3, v5, [I

    .line 49
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, p3, v4

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_e
    add-int/lit8 p3, p2, 0x4

    .line 50
    aget-byte v8, p1, p3

    and-int/2addr v8, v3

    if-nez v8, :cond_f

    new-array p3, v5, [I

    aput v1, p3, v4

    .line 51
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 52
    :cond_f
    aget-byte v8, p1, p3

    and-int/2addr v8, v3

    if-ne v8, v2, :cond_10

    new-array p3, v5, [I

    aput v0, p3, v4

    .line 53
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_10
    new-array v8, v5, [I

    .line 54
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    aput p3, v8, v4

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/2addr p2, v9

    .line 55
    aget-byte p3, p1, p2

    and-int/2addr p3, v3

    if-nez p3, :cond_11

    new-array p1, v5, [I

    aput v1, p1, v4

    .line 56
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 57
    :cond_11
    aget-byte p3, p1, p2

    and-int/2addr p3, v3

    if-ne p3, v2, :cond_12

    new-array p1, v5, [I

    aput v0, p1, v4

    .line 58
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_12
    new-array p3, v5, [I

    .line 59
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, p3, v4

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_13
    add-int/lit8 p3, p2, 0x2

    .line 60
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 61
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 62
    iput p2, p0, Lk0/gn;->c:I

    move p2, v4

    .line 63
    :goto_3
    iget-object p3, p0, Lk0/gn;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_15

    .line 64
    iget v0, p0, Lk0/gn;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_14

    if-eqz v0, :cond_15

    .line 65
    iput p2, p0, Lk0/gn;->b:I

    goto :goto_4

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_15
    :goto_4
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_16

    .line 66
    array-length p1, p3

    if-ge p2, p1, :cond_18

    .line 67
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_16
    if-nez p1, :cond_18

    .line 68
    iget p1, p0, Lk0/gn;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_17

    if-eq p1, v3, :cond_17

    .line 69
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 70
    :cond_17
    iput v3, p0, Lk0/gn;->b:I

    :cond_18
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
    .locals 4

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0x89

    aput p3, p1, v3

    aput v3, p1, v1

    .line 1
    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v3, p1, v1

    .line 2
    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    new-array p1, p1, [I

    aput v0, p1, v2

    const/16 v0, 0x8b

    aput v0, p1, v3

    aput v1, p1, v1

    .line 3
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
