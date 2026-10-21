.class public Lk0/qp;
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
    iput v0, p0, Lk0/qp;->c:I

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

    iput-object v1, p0, Lk0/qp;->d:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x4
    .end array-data

    :array_4
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xd
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x10
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x19
        0xc
    .end array-data

    :array_8
    .array-data 4
        0x1b
        0x0
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

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
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    .line 9
    sget v1, Lk0/nt;->a:I

    const v3, 0xa01c8

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput v2, v0, Lk0/mt;->g:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x1d

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_16

    const/16 v7, 0x1e

    if-eq v0, v7, :cond_15

    const/16 v7, 0x20

    const/4 v8, 0x3

    if-eq v0, v7, :cond_10

    const/16 v7, 0x24

    const/4 v9, 0x2

    if-eq v0, v7, :cond_e

    const/16 v7, 0x30

    if-eq v0, v7, :cond_d

    const/16 p3, 0x7d

    const/16 v7, 0xb

    if-eq v0, p3, :cond_b

    const/16 p3, 0x28

    const/16 v2, 0x10

    const/16 v10, 0xa

    if-eq v0, p3, :cond_2

    const/16 p3, 0x29

    if-eq v0, p3, :cond_1

    const p3, 0xff00

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/16 v0, 0x75

    new-array v1, v6, [I

    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, p3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x76

    new-array v1, v6, [I

    add-int/lit8 v2, p2, 0x4

    .line 3
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, p3

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x77

    new-array v1, v6, [I

    add-int/lit8 v2, p2, 0x6

    .line 4
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    aput v2, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x7

    .line 5
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x8

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    or-int/2addr p3, v0

    if-nez p3, :cond_0

    .line 6
    invoke-static {v5}, Lu0/d;->B3(I)V

    goto :goto_0

    :cond_0
    add-int/lit16 p3, p3, 0x258

    .line 7
    invoke-static {p3}, Lu0/d;->B3(I)V

    :goto_0
    const/16 p3, 0x78

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x9

    .line 8
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x79

    new-array v0, v6, [I

    add-int/2addr p2, v10

    .line 9
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_1
    const/16 v0, 0x70

    new-array v1, v6, [I

    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, p3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x71

    new-array v1, v6, [I

    add-int/lit8 v2, p2, 0x4

    .line 11
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr p3, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    or-int/2addr p3, v2

    aput p3, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x6

    .line 12
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x7

    .line 13
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x74

    new-array v0, v6, [I

    add-int/lit8 p2, p2, 0x8

    .line 14
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_2
    const/16 v0, 0x6b

    new-array v1, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 15
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, p3

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/2addr v8, v4

    or-int/2addr v3, v8

    aput v3, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6c

    new-array v1, v6, [I

    add-int/lit8 v3, p2, 0x4

    .line 16
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, p3

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, p1, v8

    and-int/2addr v8, v4

    or-int/2addr v3, v8

    aput v3, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6d

    new-array v1, v6, [I

    add-int/lit8 v3, p2, 0x6

    .line 17
    aget-byte v3, p1, v3

    shl-int/lit8 v2, v3, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, p3

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x8

    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6e

    new-array v1, v6, [I

    add-int/lit8 v2, p2, 0x9

    .line 18
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr p3, v2

    add-int/lit8 v2, p2, 0xa

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    or-int/2addr p3, v2

    aput p3, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v0, v6, [I

    add-int/2addr p2, v7

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_3
    const/16 p3, 0x62

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x2

    .line 20
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 21
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x4

    .line 22
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x5

    .line 23
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x6

    .line 24
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x7

    .line 25
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x8

    .line 26
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x9

    .line 27
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v6, [I

    add-int/2addr p2, v10

    .line 28
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 29
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    const/16 p2, 0x1e77

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    :cond_2
    new-array p3, v6, [I

    add-int/lit8 v0, p2, 0x2

    .line 30
    aget-byte v11, p1, v0

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v6

    aput v11, p3, v5

    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    .line 31
    aget-byte v10, p1, v0

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v6

    aput v10, p3, v5

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v7, v6, [I

    .line 32
    aget-byte v10, p1, v0

    shr-int/2addr v10, v3

    and-int/2addr v10, v6

    aput v10, v7, v5

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v7, v6, [I

    .line 33
    aget-byte v10, p1, v0

    shr-int/lit8 v8, v10, 0x3

    and-int/2addr v8, v6

    aput v8, v7, v5

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v7, v6, [I

    .line 34
    aget-byte v8, p1, v0

    shr-int/2addr v8, v9

    and-int/2addr v8, v6

    aput v8, v7, v5

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v7, v6, [I

    .line 35
    aget-byte v8, p1, v0

    shr-int/2addr v8, v6

    and-int/2addr v8, v6

    aput v8, v7, v5

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    .line 36
    aget-byte v0, p1, v0

    shr-int/2addr v0, v5

    and-int/2addr v0, v6

    aput v0, p3, v5

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x3

    .line 37
    aget-byte v7, p1, v2

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    aput v7, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v6, [I

    .line 38
    aget-byte v7, p1, v2

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v6

    aput v7, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v6, [I

    .line 39
    aget-byte v7, p1, v2

    shr-int/2addr v7, v3

    and-int/2addr v7, v6

    aput v7, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v6, [I

    .line 40
    aget-byte v2, p1, v2

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 41
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    const-string v2, "persist.fyt.reversetemp"

    .line 42
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v0, p2, 0x5

    .line 43
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    :cond_3
    const/4 v7, -0x2

    const/16 v8, 0x1f

    const/16 v9, 0x1b

    if-nez v0, :cond_4

    new-array v0, v6, [I

    aput v7, v0, v5

    .line 44
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    if-ne v0, v8, :cond_5

    new-array v0, v6, [I

    const/4 v10, -0x3

    aput v10, v0, v5

    .line 45
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    if-lt v0, v6, :cond_6

    if-gt v0, v1, :cond_6

    new-array v10, v6, [I

    aput v0, v10, v5

    .line 46
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v0, v6, [I

    const/4 v10, -0x1

    aput v10, v0, v5

    .line 47
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/2addr p2, v3

    .line 48
    aget-byte p2, p1, p2

    and-int/2addr p2, v4

    .line 49
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    aget-byte p1, p1, p3

    and-int/lit16 p2, p1, 0xff

    :cond_7
    const/16 p1, 0x1c

    if-nez p2, :cond_8

    new-array p2, v6, [I

    aput v7, p2, v5

    .line 51
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_8
    if-ne p2, v8, :cond_9

    new-array p2, v6, [I

    const/4 p3, -0x3

    aput p3, p2, v5

    .line 52
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_9
    if-lt p2, v6, :cond_a

    if-gt p2, v1, :cond_a

    new-array p3, v6, [I

    aput p2, p3, v5

    .line 53
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_a
    new-array p2, v6, [I

    const/4 p3, -0x1

    aput p3, p2, v5

    .line 54
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_b
    add-int/lit8 p3, p2, 0x2

    .line 55
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    if-eq p3, v6, :cond_c

    goto/16 :goto_6

    :cond_c
    add-int/2addr p2, v8

    .line 56
    aget-byte p3, p1, p2

    shr-int/2addr p3, v8

    and-int/2addr p3, v6

    aget-byte v0, p1, p2

    shr-int/2addr v0, v2

    and-int/2addr v0, v6

    invoke-static {p3, v0, v5}, Ll0/c0;->a(III)V

    .line 57
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v9, [I

    aput v7, v1, v5

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v1, v6

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 58
    :cond_d
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v9

    sub-int/2addr p3, v9

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    add-int/2addr p2, v9

    .line 59
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 60
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_f

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 61
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 62
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_f
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 63
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 64
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 65
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 66
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 67
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v9

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 68
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_10
    add-int/lit8 p3, p2, 0x2

    .line 69
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    .line 70
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 71
    iput p2, p0, Lk0/qp;->c:I

    move p2, v5

    .line 72
    :goto_3
    iget-object p3, p0, Lk0/qp;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_12

    .line 73
    iget v0, p0, Lk0/qp;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v5

    if-ne v0, v1, :cond_11

    if-eqz v0, :cond_12

    .line 74
    iput p2, p0, Lk0/qp;->b:I

    goto :goto_4

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_12
    :goto_4
    and-int/2addr p1, v4

    if-ne p1, v6, :cond_13

    .line 75
    array-length p1, p3

    if-ge p2, p1, :cond_1a

    .line 76
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_13
    if-nez p1, :cond_1a

    .line 77
    iget p1, p0, Lk0/qp;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_14

    if-eq p1, v4, :cond_14

    .line 78
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 79
    :cond_14
    iput v4, p0, Lk0/qp;->b:I

    goto/16 :goto_6

    :cond_15
    add-int/lit8 p3, p2, 0x2

    .line 80
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->F0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 81
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->F0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 82
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->F0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v3

    .line 83
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->F0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_6

    :cond_16
    add-int/lit8 p3, p2, 0x2

    .line 84
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    add-int/lit8 v1, p2, 0x3

    .line 85
    aget-byte v7, p1, v1

    and-int/2addr v7, v4

    add-int/lit8 v8, p2, 0x4

    .line 86
    aget-byte v9, p1, v8

    and-int/2addr v9, v4

    add-int/2addr p2, v3

    .line 87
    aget-byte v3, p1, p2

    and-int/2addr v3, v4

    if-nez v0, :cond_17

    if-nez v7, :cond_17

    if-nez v9, :cond_17

    if-nez v3, :cond_17

    .line 88
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_5

    .line 89
    :cond_17
    sget v5, Ll0/c0;->g:I

    if-ne v5, v0, :cond_18

    sget v5, Ll0/c0;->h:I

    if-ne v5, v7, :cond_18

    sget v5, Ll0/c0;->i:I

    if-ne v5, v9, :cond_18

    sget v5, Ll0/c0;->j:I

    if-eq v5, v3, :cond_19

    .line 90
    :cond_18
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_19

    .line 91
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 92
    sput v2, Ll0/c0;->k:I

    .line 93
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 94
    :cond_19
    :goto_5
    sput v0, Ll0/c0;->g:I

    .line 95
    sput v7, Ll0/c0;->h:I

    .line 96
    sput v9, Ll0/c0;->i:I

    .line 97
    sput v3, Ll0/c0;->j:I

    .line 98
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->F0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 99
    aget-byte p3, p1, v1

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->F0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 100
    aget-byte p3, p1, v8

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->F0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 101
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->F0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    :cond_1a
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x40
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

    const/16 p3, 0x7a

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

    const/16 p3, 0xc6

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
