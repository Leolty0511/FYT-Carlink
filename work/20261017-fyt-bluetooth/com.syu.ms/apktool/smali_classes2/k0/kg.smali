.class public Lk0/kg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/kg;->c:I

    const/16 v1, 0xff

    iput v1, p0, Lk0/kg;->d:I

    const/4 v1, 0x3

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

    iput-object v1, p0, Lk0/kg;->e:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x1d
    .end array-data

    :array_1
    .array-data 4
        0x32
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x33
        0x1e
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
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v3, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x32

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v7, :cond_7

    const/4 v10, 0x5

    const/4 v11, 0x4

    if-eq v2, v11, :cond_5

    const/16 v12, 0x1c

    if-eq v2, v12, :cond_4

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/16 v6, 0xc

    const v17, 0xff00

    const/4 v4, 0x7

    const/16 v5, 0x8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x71

    if-eq v2, v3, :cond_2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    const/16 v12, 0x26

    const/16 v3, 0x10

    if-eq v2, v12, :cond_0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/16 v2, 0x15

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    const v6, 0xffff

    and-int/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 5
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Lk0/qt;->c(I)I

    move-result v4

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 6
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Lk0/qt;->c(I)I

    move-result v4

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 7
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lk0/qt;->c(I)I

    move-result v1

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_1
    new-array v2, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 8
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v8

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 9
    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x8

    and-int v5, v5, v17

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const v6, 0xffff

    and-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 10
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 11
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x7

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v9, [I

    .line 12
    aget-byte v1, v1, v5

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_2
    new-array v2, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 13
    aget-byte v7, v1, v5

    const/16 v12, 0xf

    and-int/2addr v7, v12

    aput v7, v2, v8

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v6, v9, [I

    .line 14
    aget-byte v7, v1, v5

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v6, v9, [I

    .line 15
    aget-byte v7, v1, v5

    shr-int/2addr v7, v10

    and-int/2addr v7, v9

    aput v7, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 16
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v9

    aput v6, v2, v8

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 17
    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v9

    aput v1, v2, v8

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_3
    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 18
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v8

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 19
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v8

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x4

    .line 20
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v8

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x5

    .line 21
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v8

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x6

    .line 22
    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v8

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_0
    const/16 v2, 0x22

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 23
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 24
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x3

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    const/16 v4, 0x23

    .line 25
    invoke-static {v4, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    .line 26
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x13

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    const/16 v4, 0x24

    .line 27
    invoke-static {v4, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    .line 28
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x23

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x25

    .line 29
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 30
    :cond_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x4

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    const/16 v3, 0x1b

    .line 31
    invoke-static {v3, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    .line 32
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0xc

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    .line 33
    invoke-static {v12, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    .line 34
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x14

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    const/16 v3, 0x1d

    .line 35
    invoke-static {v3, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    .line 36
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x1c

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    const/16 v3, 0x1e

    .line 37
    invoke-static {v3, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    .line 38
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x24

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    const/16 v3, 0x1f

    .line 39
    invoke-static {v3, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    .line 40
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2c

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    const/16 v3, 0x20

    .line 41
    invoke-static {v3, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    const/16 v2, 0x21

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 42
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v2, p2, 0x4

    .line 43
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lk0/qt;->c(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x5

    .line 44
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lk0/qt;->c(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x6

    .line 45
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lk0/qt;->c(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 46
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const/4 v4, 0x3

    add-int/lit8 v4, p3, -0x3

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 48
    aget-byte v3, v1, v3

    add-int/lit8 v7, p2, 0x4

    .line 49
    aget-byte v7, v1, v7

    add-int/lit8 v10, p2, 0x5

    .line 50
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x6

    .line 51
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x7

    .line 52
    aget-byte v12, v1, v12

    add-int/lit8 v16, p2, 0x8

    .line 53
    aget-byte v16, v1, v16

    add-int/lit8 v15, p2, 0x9

    .line 54
    aget-byte v1, v1, v15

    new-array v15, v9, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v15, v8

    .line 55
    invoke-static {v4, v15}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shl-int/2addr v2, v5

    and-int v2, v2, v17

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v4, v8

    .line 56
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shl-int/lit8 v3, v7, 0x8

    and-int v3, v3, v17

    and-int/lit16 v4, v10, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v8

    .line 57
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shl-int/lit8 v3, v12, 0x8

    and-int v3, v3, v17

    and-int/lit16 v4, v11, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v8

    .line 58
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v9, [I

    shl-int/lit8 v4, v16, 0x8

    and-int v4, v4, v17

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    aput v1, v3, v8

    .line 59
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_4
    add-int/lit8 v2, p2, 0x3

    .line 60
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Lk0/kg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 61
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Lk0/kg;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 62
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Lk0/kg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 63
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lk0/kg;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_5

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 64
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 65
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 66
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 67
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 68
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 69
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/4 v3, 0x3

    .line 70
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 71
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 72
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 73
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 74
    aget-byte v2, v1, v2

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 75
    aget-byte v1, v1, v4

    and-int/lit16 v2, v2, 0xff

    .line 76
    iput v2, v0, Lk0/kg;->c:I

    move v2, v8

    .line 77
    :goto_1
    iget-object v4, v0, Lk0/kg;->e:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_9

    .line 78
    iget v5, v0, Lk0/kg;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v8

    if-ne v5, v6, :cond_8

    if-eqz v5, :cond_9

    .line 79
    iput v2, v0, Lk0/kg;->b:I

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    :cond_9
    :goto_2
    iget v5, v0, Lk0/kg;->c:I

    if-eq v5, v3, :cond_d

    const/16 v3, 0x33

    if-eq v5, v3, :cond_b

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v9, :cond_a

    .line 81
    array-length v1, v4

    if-ge v2, v1, :cond_f

    .line 82
    aget-object v1, v4, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_a
    if-nez v1, :cond_f

    .line 83
    array-length v1, v4

    if-gt v2, v1, :cond_f

    .line 84
    iget v1, v0, Lk0/kg;->b:I

    aget-object v1, v4, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_b
    move v2, v8

    :goto_3
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_c

    const/16 v3, 0x1e

    .line 85
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    const/16 v3, 0x1e

    .line 86
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_d
    move v2, v8

    :goto_4
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_e

    const/16 v3, 0x1f

    .line 87
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    const/16 v3, 0x1f

    .line 88
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    :cond_f
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1f
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

    const/16 p3, 0x17

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

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p1, v0

    const/16 p4, 0x81

    aput p4, p1, p3

    const/4 p4, 0x2

    aput p3, p1, p4

    const/4 p3, 0x3

    .line 2
    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    :cond_3
    :goto_0
    return v1
.end method
