.class public Lk0/ce;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static l:I = 0xff

.field public static m:I = 0xff

.field public static n:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/ce;->d:I

    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/ce;->e:[[I

    .line 4
    new-instance v0, Lk0/ce$a;

    invoke-direct {v0, p0}, Lk0/ce$a;-><init>(Lk0/ce;)V

    iput-object v0, p0, Lk0/ce;->h:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/ce$b;

    invoke-direct {v0, p0}, Lk0/ce$b;-><init>(Lk0/ce;)V

    iput-object v0, p0, Lk0/ce;->i:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/ce$c;

    invoke-direct {v0, p0}, Lk0/ce$c;-><init>(Lk0/ce;)V

    iput-object v0, p0, Lk0/ce;->j:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/ce$d;

    invoke-direct {v0, p0}, Lk0/ce$d;-><init>(Lk0/ce;)V

    iput-object v0, p0, Lk0/ce;->k:Ljava/lang/Runnable;

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
        0xd
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
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data
.end method

.method public static synthetic b3(Lk0/ce;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/ce;->a3()V

    return-void
.end method

.method public static synthetic c3(Lk0/ce;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/ce;->g:Z

    return p0
.end method

.method public static synthetic d3(Lk0/ce;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/ce;->g:Z

    return p1
.end method

.method public static synthetic e3(Lk0/ce;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/ce;->f:Z

    return p0
.end method

.method public static synthetic f3(Lk0/ce;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/ce;->f:Z

    return p1
.end method

.method public static varargs i3([I)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x5

    .line 2
    new-array v1, v1, [B

    const/16 v2, -0x78

    const/4 v3, 0x0

    .line 3
    aput-byte v2, v1, v3

    const/16 v2, 0x55

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/4 v4, 0x2

    .line 4
    aput-byte v2, v1, v4

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v5, 0x3

    aput-byte v2, v1, v5

    .line 5
    aget-byte v2, v1, v4

    aget-byte v4, v1, v5

    xor-int/2addr v2, v4

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x4

    .line 6
    aget v5, p0, v3

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 7
    aget v4, p0, v3

    xor-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x4

    int-to-byte p0, v2

    .line 8
    aput-byte p0, v1, v0

    return-object v1
.end method

.method public static varargs j3([I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lk0/ce;->i3([I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 1

    const/16 v0, 0x24

    .line 1
    sput v0, Ly0/f;->C0:I

    return-void
.end method

.method public S2()V
    .locals 4

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->l:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lk0/ce;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 11
    :cond_0
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Lk0/ce;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sput-boolean v2, Lu0/b;->Y3:Z

    .line 13
    sget-object v0, Lz/c;->c:Lo1/y;

    iget-object v1, p0, Lk0/ce;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 15
    iput v2, v0, Lk0/mt;->e:I

    .line 16
    iput v1, v0, Lk0/mt;->l:I

    .line 17
    iput v2, v0, Lk0/mt;->f:I

    .line 18
    iput v1, v0, Lk0/mt;->g:I

    .line 19
    iput v2, v0, Lk0/mt;->o:I

    .line 20
    iput v1, v0, Lk0/mt;->b:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x51

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x1

    if-eq v2, v3, :cond_1a

    const/16 v3, -0x10

    if-eq v2, v3, :cond_19

    const/16 v3, 0x41

    if-eq v2, v3, :cond_18

    const/16 v9, 0x61

    const/4 v10, 0x0

    if-eq v2, v9, :cond_17

    const/16 v9, 0x11

    const/4 v11, 0x4

    if-eq v2, v9, :cond_f

    const/16 v9, 0x12

    const/4 v12, 0x5

    if-eq v2, v9, :cond_d

    const/16 v13, 0x31

    if-eq v2, v13, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_b

    :cond_0
    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 2
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x8

    const v8, 0xff00

    and-int/2addr v5, v8

    add-int/lit8 v9, p2, 0x5

    aget-byte v11, v1, v9

    and-int/2addr v11, v6

    or-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v7, [I

    .line 3
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v9

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 4
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    add-int/lit8 v14, p2, 0x3

    .line 6
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x4

    .line 7
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x6

    .line 8
    aget-byte v8, v1, v16

    add-int/lit8 v16, p2, 0x7

    .line 9
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x8

    .line 10
    aget-byte v18, v1, v17

    add-int/lit8 v19, p2, 0x9

    .line 11
    aget-byte v20, v1, v19

    new-array v6, v7, [I

    shr-int/lit8 v21, v2, 0x6

    and-int/lit8 v21, v21, 0x1

    aput v21, v6, v10

    const/16 v9, 0xa

    .line 12
    invoke-static {v9, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x35

    new-array v9, v7, [I

    shr-int/lit8 v22, v2, 0x5

    and-int/lit8 v22, v22, 0x1

    aput v22, v9, v10

    .line 13
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xe

    new-array v9, v7, [I

    shr-int/lit8 v22, v2, 0x2

    and-int/lit8 v22, v22, 0x1

    aput v22, v9, v10

    .line 14
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xb

    new-array v9, v7, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v5

    aput v2, v9, v10

    .line 15
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v6, v7, [I

    shr-int/lit8 v9, v14, 0x4

    and-int/2addr v9, v5

    aput v9, v6, v10

    .line 16
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v6, v14, 0x3

    and-int/2addr v6, v7

    aput v6, v2, v10

    const/16 v6, 0xd

    .line 17
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v15, 0x7

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_2

    const-string v2, "com.syu.canbus.landrover"

    .line 18
    invoke-static {v2}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_2
    const/16 v2, 0x10

    new-array v9, v7, [I

    shr-int/lit8 v14, v15, 0x5

    and-int/2addr v14, v7

    aput v14, v9, v10

    .line 19
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v9, v15, 0x4

    and-int/2addr v9, v7

    aput v9, v2, v10

    .line 20
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v8, 0xff

    if-eq v2, v7, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v12, :cond_4

    if-eq v2, v4, :cond_3

    packed-switch v2, :pswitch_data_0

    move v2, v10

    move v3, v2

    :goto_0
    move v4, v3

    :goto_1
    move v5, v4

    goto :goto_2

    :pswitch_0
    move v3, v7

    move v4, v3

    move v5, v4

    move v2, v10

    goto :goto_2

    :pswitch_1
    move v3, v7

    move v4, v3

    move v2, v10

    move v5, v2

    goto :goto_2

    :pswitch_2
    move v3, v7

    move v5, v3

    move v2, v10

    move v4, v2

    goto :goto_2

    :pswitch_3
    move v3, v7

    move v2, v10

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v7

    move v2, v10

    move v3, v2

    move v5, v3

    goto :goto_2

    :cond_4
    move v4, v7

    move v5, v4

    move v2, v10

    move v3, v2

    goto :goto_2

    :cond_5
    move v5, v7

    move v2, v10

    move v3, v2

    move v4, v3

    goto :goto_2

    :cond_6
    move v2, v7

    move v3, v10

    goto :goto_0

    :goto_2
    new-array v9, v7, [I

    aput v2, v9, v10

    .line 21
    invoke-static {v13, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v3, v2, v10

    const/16 v3, 0x12

    .line 22
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    aput v4, v3, v10

    .line 23
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v5, v3, v10

    .line 24
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v7, [I

    aput v8, v3, v10

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    aput v16, v3, v10

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 27
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 28
    aget-byte v18, v1, v19

    .line 29
    aget-byte v20, v1, v17

    :cond_7
    move/from16 v2, v18

    move/from16 v3, v20

    and-int/lit16 v4, v2, 0xff

    const/4 v5, -0x1

    const/16 v8, 0x1b

    const/4 v9, -0x2

    if-ne v2, v9, :cond_8

    new-array v2, v7, [I

    aput v9, v2, v10

    .line 30
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    if-ne v2, v5, :cond_9

    new-array v2, v7, [I

    const/4 v4, -0x3

    aput v4, v2, v10

    .line 31
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v2, v7, [I

    aput v4, v2, v10

    .line 32
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/lit16 v2, v3, 0xff

    const/16 v4, 0x1c

    if-ne v3, v9, :cond_a

    new-array v2, v7, [I

    aput v9, v2, v10

    .line 33
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    if-ne v3, v5, :cond_b

    new-array v2, v7, [I

    const/4 v3, -0x3

    aput v3, v2, v10

    .line 34
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array v3, v7, [I

    aput v2, v3, v10

    .line 35
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    .line 36
    :goto_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, p2, 0xd

    .line 37
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    and-int/2addr v1, v2

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    const/4 v2, 0x2

    .line 38
    div-int/2addr v1, v2

    const/16 v2, 0x190

    if-lt v1, v2, :cond_c

    const/16 v3, 0x4e2

    if-gt v1, v3, :cond_c

    add-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v1, v2

    goto :goto_5

    :cond_c
    sub-int/2addr v2, v1

    rsub-int v1, v2, 0x3e8

    :goto_5
    const/16 v2, 0x258

    if-le v1, v2, :cond_1b

    .line 39
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_b

    :cond_d
    add-int/lit8 v2, p2, 0x4

    .line 40
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 41
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v10

    .line 42
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v10

    const/4 v3, 0x2

    .line 43
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_e
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v10

    .line 44
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v10

    const/4 v3, 0x2

    .line 45
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v10

    .line 46
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v10

    .line 47
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v10

    .line 48
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v7

    aput v1, v2, v10

    .line 49
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    .line 51
    sget v3, Lk0/ce;->n:I

    if-eq v3, v2, :cond_10

    .line 52
    iput-boolean v7, v0, Lk0/ce;->g:Z

    .line 53
    sput v2, Lk0/ce;->n:I

    .line 54
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v2

    iget-object v3, v0, Lk0/ce;->k:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    :cond_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, p2, 0x4

    .line 56
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 57
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 58
    iput v2, v0, Lk0/ce;->c:I

    move v2, v10

    .line 59
    :goto_7
    iget-object v4, v0, Lk0/ce;->e:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_12

    .line 60
    iget v5, v0, Lk0/ce;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v10

    if-ne v5, v6, :cond_11

    if-eqz v5, :cond_12

    .line 61
    iput v2, v0, Lk0/ce;->b:I

    goto :goto_8

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    const/16 v5, 0xff

    and-int/2addr v3, v5

    if-eqz v3, :cond_14

    .line 62
    array-length v3, v4

    if-ge v2, v3, :cond_13

    .line 63
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    :cond_13
    const/16 v3, 0xff

    goto :goto_a

    .line 64
    :cond_14
    iget v2, v0, Lk0/ce;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_15

    const/16 v3, 0xff

    if-eq v2, v3, :cond_16

    .line 65
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_15
    const/16 v3, 0xff

    .line 66
    :cond_16
    :goto_9
    iput v3, v0, Lk0/ce;->b:I

    :goto_a
    add-int/lit8 v2, p2, 0x9

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x12c0

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_b

    :cond_17
    const/16 v2, 0x64

    new-array v3, v7, [I

    const/4 v4, 0x2

    add-int/lit8 v4, p2, 0x2

    .line 68
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x1f

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 69
    :cond_18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 73
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 74
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 76
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 77
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto :goto_b

    .line 78
    :cond_19
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 80
    aget-byte v1, v1, v3

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    .line 81
    sput v2, Lk0/ce;->l:I

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 82
    sput v1, Lk0/ce;->m:I

    :cond_1b
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/ce;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Lk0/ce;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lu0/b;->Y3:Z

    .line 5
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v0, v1, Lk0/mt;->b:I

    .line 6
    sget-object v0, Lz/c;->c:Lo1/y;

    iget-object v1, p0, Lk0/ce;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x65

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
    .locals 7

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eq p1, p4, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v0}, Lk0/ce;->h3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v3, [I

    const/16 v3, 0xe3

    aput v3, p1, p3

    aput v0, p1, p4

    const/16 v3, 0x3b

    aput v3, p1, v0

    .line 2
    aget p3, p2, p3

    int-to-byte p3, p3

    aput p3, p1, v2

    aget p2, p2, p4

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-le p1, v0, :cond_3

    .line 4
    aget p1, p2, p3

    .line 5
    aget v4, p2, p4

    const/4 v5, 0x6

    new-array v5, v5, [I

    const/16 v6, 0xb5

    aput v6, v5, p3

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    aput p3, v5, p4

    and-int/lit16 p1, p1, 0xff

    aput p1, v5, v0

    shr-int/lit8 p1, v4, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, v5, v2

    and-int/lit16 p1, v4, 0xff

    aput p1, v5, v1

    .line 6
    aget p1, p2, v0

    aput p1, v5, v3

    invoke-static {v5}, Lk0/ce;->j3([I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p2, v0}, Lk0/ce;->h3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    aget p1, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/ce;->g3(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a3()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x2a
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x2a
        0x1
        0x0
    .end array-data
.end method

.method public b([B)V
    .locals 0

    return-void
.end method

.method public final g3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x2a

    aput v1, v0, v2

    int-to-byte p2, p2

    const/4 v1, 0x3

    aput p2, v0, v1

    int-to-byte p1, p1

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final h3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
