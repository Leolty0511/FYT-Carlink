.class public Lk0/fd;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/fd;->c:I

    const/4 v1, 0x2

    new-array v2, v1, [[I

    new-array v3, v1, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v2, v0

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/fd;->d:[[I

    .line 4
    iput-byte v0, p0, Lk0/fd;->e:B

    .line 5
    new-instance v0, Lk0/fd$a;

    invoke-direct {v0, p0}, Lk0/fd$a;-><init>(Lk0/fd;)V

    iput-object v0, p0, Lk0/fd;->f:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public static synthetic a3(Lk0/fd;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/fd;->f:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

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
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->p:I

    .line 7
    sget v3, Lk0/nt;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 8
    iput v2, v0, Lk0/mt;->p:I

    const/4 v2, 0x0

    .line 9
    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x10

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v2, :cond_19

    const/16 v8, 0x11

    if-eq v1, v8, :cond_14

    const/16 v9, 0x24

    const/4 v10, 0x5

    const/4 v11, 0x4

    if-eq v1, v9, :cond_12

    const/16 v9, 0x29

    if-eq v1, v9, :cond_11

    const v9, 0xff00

    const/4 v12, 0x7

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x7f

    const/16 v3, 0x73

    new-array v4, v7, [I

    .line 3
    aget-byte v1, p1, v1

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    shl-int/lit8 v1, v1, 0x8

    invoke-static {v2}, Lk0/qt;->c(I)I

    move-result v2

    or-int/2addr v1, v2

    aput v1, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_1
    add-int/lit8 v1, p2, 0x2

    .line 4
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    const/16 v2, 0x71

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 5
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 6
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-gt v4, v8, :cond_0

    add-int v2, p2, v4

    .line 7
    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x6e

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_e

    :pswitch_3
    add-int/lit8 v1, p2, 0x2

    .line 9
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    add-int/lit8 v2, p2, 0x3

    .line 10
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x4

    .line 11
    aget-byte v3, p1, v3

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x5

    .line 12
    aget-byte v4, p1, v4

    and-int/2addr v4, v5

    add-int/lit8 v8, p2, 0x6

    .line 13
    aget-byte v8, p1, v8

    and-int/2addr v5, v8

    const/16 v8, 0x6b

    new-array v9, v7, [I

    .line 14
    invoke-static {v1}, Lk0/qt;->c(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    invoke-static {v2}, Lk0/qt;->c(I)I

    move-result v2

    or-int/2addr v1, v2

    aput v1, v9, v6

    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6c

    new-array v2, v7, [I

    .line 15
    invoke-static {v3}, Lk0/qt;->c(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-static {v4}, Lk0/qt;->c(I)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, v2, v6

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6d

    new-array v2, v7, [I

    aput v5, v2, v6

    .line 16
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_4
    add-int/lit8 v1, p2, 0x2

    .line 17
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    add-int/lit8 v2, p2, 0x3

    .line 18
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x4

    .line 19
    aget-byte v3, p1, v3

    and-int/2addr v3, v5

    const/16 v4, 0x69

    new-array v8, v7, [I

    aput v1, v8, v6

    .line 20
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6a

    new-array v4, v7, [I

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    aput v2, v4, v6

    .line 21
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 22
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-gt v4, v8, :cond_1

    add-int v2, p2, v4

    .line 23
    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x66

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_e

    :pswitch_6
    add-int/lit8 v1, p2, 0x2

    .line 25
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    add-int/lit8 v2, p2, 0x3

    .line 26
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    add-int/lit8 v8, p2, 0x4

    .line 27
    aget-byte v8, p1, v8

    and-int/2addr v8, v5

    add-int/lit8 v12, p2, 0x5

    .line 28
    aget-byte v12, p1, v12

    and-int/2addr v12, v5

    const/16 v13, 0x64

    new-array v14, v7, [I

    aput v1, v14, v6

    .line 29
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v9

    and-int/2addr v5, v12

    or-int/2addr v5, v8

    if-eq v1, v3, :cond_4

    if-eq v1, v11, :cond_4

    if-ne v1, v10, :cond_2

    goto :goto_2

    :cond_2
    shr-int/lit8 v8, v5, 0xf

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_3

    sub-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0xa

    add-int/lit16 v5, v5, 0x212

    goto :goto_3

    :cond_3
    sub-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0x9

    add-int/lit16 v5, v5, 0x213

    goto :goto_3

    :cond_4
    :goto_2
    sub-int/2addr v5, v7

    mul-int/2addr v5, v10

    add-int/lit16 v5, v5, 0x222e

    .line 30
    :goto_3
    sget-object v8, Lk0/nt;->f:[Lo1/x;

    const/16 v9, 0x65

    new-array v3, v3, [I

    aput v1, v3, v6

    aput v2, v3, v7

    aput v5, v3, v4

    const/4 v1, 0x0

    invoke-static {v8, v9, v3, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_7
    add-int/lit8 v1, p2, 0x2

    .line 31
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    const/16 v2, 0x63

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 32
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_8
    add-int/lit8 v1, p2, 0x2

    .line 33
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    add-int/lit8 v8, p2, 0x3

    .line 34
    aget-byte v8, p1, v8

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 35
    aget-byte v9, p1, v9

    and-int/2addr v9, v5

    add-int/lit8 v13, p2, 0x5

    .line 36
    aget-byte v13, p1, v13

    and-int/2addr v5, v13

    const-string v13, "persist.fyt.reversetemp"

    .line 37
    invoke-static {v13, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/16 v14, 0x1b

    const/4 v15, -0x1

    const/16 v2, 0x1c

    if-eqz v13, :cond_7

    if-eqz v1, :cond_5

    new-array v13, v7, [I

    add-int/lit8 v1, v1, 0x23

    aput v1, v13, v6

    .line 38
    invoke-static {v14, v13}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_5
    new-array v1, v7, [I

    aput v15, v1, v6

    .line 39
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    :goto_4
    if-eqz v8, :cond_6

    new-array v1, v7, [I

    add-int/lit8 v8, v8, 0x23

    aput v8, v1, v6

    .line 40
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_6
    new-array v1, v7, [I

    aput v15, v1, v6

    .line 41
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_7
    if-eqz v1, :cond_8

    new-array v13, v7, [I

    add-int/lit8 v1, v1, 0x23

    aput v1, v13, v6

    .line 42
    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_8
    new-array v1, v7, [I

    aput v15, v1, v6

    .line 43
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_5
    if-eqz v8, :cond_9

    new-array v1, v7, [I

    add-int/lit8 v8, v8, 0x23

    aput v8, v1, v6

    .line 44
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_9
    new-array v1, v7, [I

    aput v15, v1, v6

    .line 45
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    :goto_6
    shr-int/lit8 v1, v9, 0x3

    and-int/2addr v1, v12

    if-le v1, v12, :cond_a

    move v1, v12

    :cond_a
    const/16 v2, 0x15

    new-array v8, v7, [I

    aput v1, v8, v6

    .line 46
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v1, v9, 0x7

    if-eq v1, v7, :cond_f

    if-eq v1, v4, :cond_e

    if-eq v1, v3, :cond_d

    if-eq v1, v11, :cond_c

    if-eq v1, v10, :cond_b

    move v2, v6

    move v3, v2

    :goto_7
    move v4, v3

    goto :goto_8

    :cond_b
    move v3, v6

    move v4, v3

    move v2, v7

    goto :goto_8

    :cond_c
    move v3, v6

    move v2, v7

    move v4, v2

    goto :goto_8

    :cond_d
    move v2, v6

    move v3, v2

    move v4, v7

    goto :goto_8

    :cond_e
    move v2, v6

    move v3, v7

    goto :goto_7

    :cond_f
    move v2, v6

    move v4, v2

    move v3, v7

    :goto_8
    const/16 v8, 0x12

    new-array v9, v7, [I

    aput v2, v9, v6

    .line 47
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v7, [I

    aput v3, v8, v6

    .line 48
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 49
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 50
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/lit8 v2, v5, 0x6

    and-int/2addr v2, v7

    aput v2, v1, v6

    const/16 v2, 0x10

    .line 51
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v7, [I

    shr-int/lit8 v3, v5, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 52
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v7, [I

    shr-int/lit8 v3, v5, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 53
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v7, [I

    shr-int/lit8 v3, v5, 0x3

    and-int/2addr v3, v7

    if-nez v3, :cond_10

    move v3, v6

    goto :goto_9

    :cond_10
    move v3, v7

    :goto_9
    aput v3, v2, v6

    .line 54
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v7, [I

    shr-int/lit8 v3, v5, 0x1

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 55
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v7, [I

    shr-int/lit8 v3, v5, 0x0

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 56
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_11
    add-int/lit8 v1, p2, 0x2

    .line 57
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x1630

    invoke-static {v1, v2, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    :cond_12
    add-int/lit8 v1, p2, 0x2

    .line 58
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    const-string v2, "persist.syu.reversefrontdoor"

    .line 59
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_13

    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 60
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 61
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_13
    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 62
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 63
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_a
    new-array v2, v7, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v7

    aput v4, v2, v6

    .line 64
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v7

    aput v4, v2, v6

    .line 65
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 66
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 67
    :cond_14
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_1c

    add-int/lit8 v1, p2, 0x2

    .line 68
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 69
    aget-byte v2, p1, v2

    and-int/2addr v1, v5

    .line 70
    iput v1, v0, Lk0/fd;->c:I

    move v1, v6

    .line 71
    :goto_b
    iget-object v3, v0, Lk0/fd;->d:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_16

    .line 72
    iget v4, v0, Lk0/fd;->c:I

    aget-object v8, v3, v1

    aget v8, v8, v6

    if-ne v4, v8, :cond_15

    if-eqz v4, :cond_16

    .line 73
    iput v1, v0, Lk0/fd;->b:I

    goto :goto_c

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    :goto_c
    and-int/2addr v2, v5

    if-eqz v2, :cond_17

    .line 74
    array-length v2, v3

    if-ge v1, v2, :cond_1c

    .line 75
    iget-byte v2, v0, Lk0/fd;->e:B

    if-nez v2, :cond_1c

    add-int/2addr v2, v7

    int-to-byte v2, v2

    .line 76
    iput-byte v2, v0, Lk0/fd;->e:B

    .line 77
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 78
    iget-object v1, v0, Lk0/fd;->f:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_e

    .line 79
    :cond_17
    iget v1, v0, Lk0/fd;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_18

    if-eq v1, v5, :cond_18

    .line 80
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 81
    iget-object v1, v0, Lk0/fd;->f:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 82
    iput-byte v6, v0, Lk0/fd;->e:B

    .line 83
    :cond_18
    iput v5, v0, Lk0/fd;->b:I

    goto :goto_e

    :cond_19
    add-int/lit8 v1, p2, 0x2

    .line 84
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    .line 85
    sget v2, Lu0/b;->P3:I

    if-ne v2, v7, :cond_1b

    shr-int/lit8 v2, v1, 0x7

    and-int/2addr v2, v7

    if-nez v2, :cond_1a

    move v2, v7

    goto :goto_d

    :cond_1a
    move v2, v6

    .line 86
    :goto_d
    invoke-static {v2}, Lu0/d;->t3(I)V

    :cond_1b
    const/16 v2, 0x74

    new-array v4, v7, [I

    and-int/2addr v1, v3

    aput v1, v4, v6

    .line 87
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :cond_1c
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x2
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
    .locals 8

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x5

    new-array v0, p4, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v3, 0x85

    aput v3, v0, p3

    aput p1, v0, p1

    .line 2
    aget v4, p2, v1

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput v4, v0, v5

    const/4 v4, 0x4

    aput p3, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    const-wide/16 v6, 0x64

    .line 3
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    new-array p4, p4, [I

    aput v2, p4, v1

    aput v3, p4, p3

    aput p1, p4, p1

    .line 4
    aget p1, p2, v1

    int-to-byte p1, p1

    aput p1, p4, v5

    aput v1, p4, v4

    invoke-static {p4}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method
