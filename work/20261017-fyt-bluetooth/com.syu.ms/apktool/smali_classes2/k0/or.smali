.class public Lk0/or;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static m:I = 0x0

.field public static n:I = 0x1


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:Z

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Lo1/g0;

.field public final l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lk0/or;->b:[[I

    const/16 v1, 0xf

    new-array v2, v1, [[I

    .line 3
    iput-object v2, p0, Lk0/or;->c:[[I

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lk0/or;->e:I

    const/16 v3, 0x15

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_0

    aput-object v5, v3, v2

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x3

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v7, 0x4

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    aput-object v5, v3, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_6

    const/4 v5, 0x6

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    const/4 v5, 0x7

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_8

    const/16 v5, 0x8

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_9

    const/16 v5, 0x9

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_a

    const/16 v5, 0xa

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_b

    const/16 v5, 0xb

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_c

    const/16 v5, 0xc

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_d

    const/16 v5, 0xd

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_e

    const/16 v5, 0xe

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_f

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x10

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v3, v1

    iput-object v3, p0, Lk0/or;->f:[[I

    .line 6
    iput-boolean v2, p0, Lk0/or;->g:Z

    .line 7
    iput v2, p0, Lk0/or;->h:I

    .line 8
    new-instance v0, Lk0/or$a;

    invoke-direct {v0, p0}, Lk0/or$a;-><init>(Lk0/or;)V

    iput-object v0, p0, Lk0/or;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/or$b;

    invoke-direct {v0, p0}, Lk0/or$b;-><init>(Lk0/or;)V

    iput-object v0, p0, Lk0/or;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/or;->k:Lo1/g0;

    .line 11
    iput v6, p0, Lk0/or;->l:I

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
        0x21
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x20
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
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xb
        0xf
    .end array-data

    :array_9
    .array-data 4
        0x13
        0x22
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x23
    .end array-data

    :array_b
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x86
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x88
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lk0/or;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/or;->k:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3(Lk0/or;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/or;->d3(I)V

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/or;->i:Ljava/lang/Runnable;

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

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x1

    if-eq v2, v3, :cond_18

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_17

    const/16 v3, 0x27

    const/16 v9, 0xf

    const/16 v10, 0x8

    const/4 v11, 0x2

    if-eq v2, v3, :cond_15

    const/16 v3, 0x29

    const/4 v12, 0x3

    if-eq v2, v3, :cond_14

    const/16 v3, 0x30

    if-eq v2, v3, :cond_13

    const/16 v3, 0x32

    if-eq v2, v3, :cond_f

    const/16 v3, 0x7d

    const/16 v13, 0x64

    const/4 v14, 0x6

    if-eq v2, v3, :cond_8

    const v3, 0xffff

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v6

    .line 4
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v6

    .line 5
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v6

    .line 6
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v6

    .line 7
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v6

    .line 8
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v6

    .line 9
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v8

    aput v1, v2, v6

    .line 10
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v5, p2, 0x3

    .line 12
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    shl-int/2addr v5, v10

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v1, v9

    and-int/2addr v9, v7

    or-int/2addr v5, v9

    if-ne v5, v3, :cond_1

    move v5, v6

    :cond_1
    const/16 v3, 0x66

    new-array v9, v8, [I

    or-int/2addr v5, v2

    aput v5, v9, v6

    .line 13
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    move v3, v6

    :goto_1
    if-ge v3, v4, :cond_1c

    new-array v5, v11, [I

    aput v3, v5, v6

    mul-int/lit8 v9, v3, 0x2

    add-int v9, p2, v9

    add-int/lit8 v12, v9, 0x5

    .line 14
    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    shl-int/2addr v12, v10

    add-int/2addr v9, v14

    aget-byte v9, v1, v9

    and-int/2addr v9, v7

    or-int/2addr v9, v12

    or-int/2addr v9, v2

    aput v9, v5, v8

    const/16 v9, 0x67

    .line 15
    iget-object v12, v0, Lk0/or;->b:[[I

    aget-object v12, v12, v3

    invoke-static {v9, v5, v12}, Lk0/qt;->C0(I[I[I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 16
    iget-object v9, v0, Lk0/or;->b:[[I

    aput-object v5, v9, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v9, p2, 0x3

    .line 18
    aget-byte v9, v1, v9

    and-int/2addr v9, v7

    shl-int/2addr v9, v10

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    or-int/2addr v5, v9

    if-ne v5, v3, :cond_3

    move v5, v6

    :cond_3
    const/16 v3, 0x65

    new-array v9, v8, [I

    or-int/2addr v4, v5

    aput v4, v9, v6

    .line 19
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v4, v8, [I

    .line 20
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    aput v1, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_3
    add-int/lit8 v2, p2, 0x8

    .line 21
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    shl-int/lit8 v2, v2, 0x18

    const/16 v3, 0x62

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 22
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    shl-int/2addr v5, v10

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v7

    or-int/2addr v5, v9

    or-int/2addr v5, v2

    aput v5, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x63

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 23
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    shl-int/2addr v5, v10

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v7

    or-int/2addr v5, v9

    aput v5, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 24
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    shl-int/2addr v4, v10

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    or-int/2addr v1, v2

    aput v1, v3, v6

    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 25
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 26
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 27
    iput v2, v0, Lk0/or;->e:I

    move v2, v6

    .line 28
    :goto_2
    iget-object v3, v0, Lk0/or;->f:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 29
    iget v4, v0, Lk0/or;->e:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_4

    if-eqz v4, :cond_5

    .line 30
    iput v2, v0, Lk0/or;->d:I

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    and-int/2addr v1, v7

    if-ne v1, v8, :cond_6

    .line 31
    array-length v1, v3

    if-ge v2, v1, :cond_1c

    .line 32
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_6
    if-nez v1, :cond_1c

    .line 33
    iget v1, v0, Lk0/or;->d:I

    array-length v2, v3

    if-ge v1, v2, :cond_7

    if-eq v1, v7, :cond_7

    .line 34
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 35
    :cond_7
    iput v7, v0, Lk0/or;->d:I

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    const/16 v3, 0x419

    const/4 v15, 0x0

    if-eq v2, v8, :cond_d

    if-eq v2, v14, :cond_c

    if-eq v2, v10, :cond_b

    const v9, 0xff00

    if-eq v2, v12, :cond_a

    if-eq v2, v5, :cond_9

    goto/16 :goto_7

    :cond_9
    add-int/lit8 v2, p2, 0x7

    .line 37
    aget-byte v2, v1, v2

    shl-int/2addr v2, v10

    and-int/2addr v2, v9

    add-int/lit8 v5, p2, 0x6

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xa

    .line 38
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v5, v11, [I

    aput v4, v5, v6

    aput v1, v5, v8

    invoke-static {v2, v3, v5, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    add-int/lit8 v2, p2, 0x4

    .line 39
    aget-byte v2, v1, v2

    shl-int/2addr v2, v10

    and-int/2addr v2, v9

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    or-int/2addr v1, v2

    div-int/2addr v1, v13

    const/16 v2, 0x407

    new-array v4, v8, [I

    aput v1, v4, v6

    .line 40
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 41
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v11, [I

    aput v8, v4, v6

    aput v1, v4, v8

    invoke-static {v2, v3, v4, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    add-int/lit8 v2, p2, 0x3

    .line 42
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 43
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 44
    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    .line 45
    iput-boolean v8, v0, Lk0/or;->g:Z

    goto/16 :goto_7

    .line 46
    :cond_c
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v11, [I

    const/16 v7, 0xc

    aput v7, v4, v6

    add-int/lit8 v7, p2, 0x3

    aget-byte v10, v1, v7

    shr-int/2addr v10, v14

    and-int/2addr v10, v8

    aput v10, v4, v8

    invoke-static {v2, v3, v4, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v11, [I

    aput v12, v4, v6

    .line 47
    aget-byte v7, v1, v7

    shr-int/2addr v7, v6

    and-int/2addr v7, v8

    aput v7, v4, v8

    invoke-static {v2, v3, v4, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v11, [I

    aput v5, v4, v6

    add-int/lit8 v5, p2, 0x4

    .line 48
    aget-byte v1, v1, v5

    shr-int/2addr v1, v6

    and-int/2addr v1, v9

    aput v1, v4, v8

    invoke-static {v2, v3, v4, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_d
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 49
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_e

    add-int/lit8 v2, p2, 0x3

    .line 50
    aget-byte v4, v1, v2

    shr-int/2addr v4, v12

    and-int/2addr v4, v8

    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v8

    invoke-static {v4, v2, v6}, Ll0/c0;->b(III)V

    goto :goto_4

    :cond_e
    add-int/lit8 v2, p2, 0x3

    .line 51
    aget-byte v4, v1, v2

    shr-int/2addr v4, v12

    and-int/2addr v4, v8

    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v8

    invoke-static {v4, v2, v6}, Ll0/c0;->a(III)V

    .line 52
    :goto_4
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v11, [I

    const/16 v5, 0xb

    aput v5, v4, v6

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    aput v1, v4, v8

    invoke-static {v2, v3, v4, v15, v15}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 53
    aget-byte v1, v1, v2

    .line 54
    sget v2, Lk0/or;->m:I

    shr-int/2addr v1, v12

    and-int/2addr v1, v8

    if-eq v2, v1, :cond_1c

    .line 55
    sput v1, Lk0/or;->m:I

    .line 56
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 57
    sget v1, Lk0/or;->m:I

    const/high16 v2, 0x20000

    if-ne v1, v8, :cond_10

    .line 58
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Lu0/i;->g4(IZ)V

    goto/16 :goto_7

    .line 59
    :cond_10
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Lu0/i;->g4(IZ)V

    goto/16 :goto_7

    .line 60
    :cond_11
    sget v1, Lk0/or;->m:I

    if-ne v1, v8, :cond_12

    .line 61
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    .line 62
    :cond_12
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    .line 63
    :cond_13
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 64
    :cond_14
    iget-boolean v2, v0, Lk0/or;->g:Z

    if-nez v2, :cond_1c

    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    const/16 v3, 0x1f4

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    shl-int/lit8 v2, v2, 0x18

    move v3, v6

    :goto_5
    if-ge v3, v9, :cond_1c

    new-array v4, v11, [I

    aput v3, v4, v6

    mul-int/lit8 v12, v3, 0x2

    add-int v12, p2, v12

    add-int/lit8 v13, v12, 0x3

    .line 67
    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    shl-int/2addr v13, v10

    add-int/2addr v12, v5

    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    or-int/2addr v12, v13

    or-int/2addr v12, v2

    aput v12, v4, v8

    const/16 v12, 0x69

    .line 68
    iget-object v13, v0, Lk0/or;->c:[[I

    aget-object v13, v13, v3

    invoke-static {v12, v4, v13}, Lk0/qt;->C0(I[I[I)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 69
    iget-object v12, v0, Lk0/or;->c:[[I

    aput-object v4, v12, v3

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 73
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->V0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_7

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 74
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v9, p2, 0x3

    .line 75
    aget-byte v10, v1, v9

    and-int/2addr v10, v7

    add-int/lit8 v11, p2, 0x4

    .line 76
    aget-byte v12, v1, v11

    and-int/2addr v12, v7

    add-int/lit8 v4, p2, 0x5

    .line 77
    aget-byte v13, v1, v4

    and-int/2addr v13, v7

    if-nez v3, :cond_19

    if-nez v10, :cond_19

    if-nez v12, :cond_19

    if-nez v13, :cond_19

    .line 78
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_6

    .line 79
    :cond_19
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_1a

    sget v6, Ll0/c0;->h:I

    if-ne v6, v10, :cond_1a

    sget v6, Ll0/c0;->i:I

    if-ne v6, v12, :cond_1a

    sget v6, Ll0/c0;->j:I

    if-eq v6, v13, :cond_1b

    .line 80
    :cond_1a
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_1b

    .line 81
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 82
    sput v5, Ll0/c0;->k:I

    .line 83
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 84
    :cond_1b
    :goto_6
    sput v3, Ll0/c0;->g:I

    .line 85
    sput v10, Ll0/c0;->h:I

    .line 86
    sput v12, Ll0/c0;->i:I

    .line 87
    sput v13, Ll0/c0;->j:I

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 89
    aget-byte v2, v1, v9

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 90
    aget-byte v2, v1, v11

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 91
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->V0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_1c
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x20
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

    iget-object v1, p0, Lk0/or;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/or;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6b

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

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xa

    .line 1
    invoke-virtual {p0, p1, p3}, Lk0/or;->c3(II)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    .line 2
    invoke-virtual {p0, p1, p3}, Lk0/or;->c3(II)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1, p3}, Lk0/or;->c3(II)V

    goto :goto_0

    .line 4
    :cond_0
    aget p1, p2, p3

    const/16 p4, 0x39

    const/4 v0, 0x1

    if-eq p1, p4, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p4, 0xe3

    aput p4, p1, p3

    const/16 p4, 0x83

    aput p4, p1, v0

    const/4 p4, 0x2

    aput p4, p1, p4

    const/4 p4, 0x3

    .line 5
    aget p3, p2, p3

    aput p3, p1, p4

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_1
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/or;->d3(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7d

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x6a

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/or;->n:I

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v2, 0x83

    aput v2, v1, v0

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x39

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/or;->k:Lo1/g0;

    invoke-virtual {p1, v0, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/or;->n:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/or;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
