.class public Lk0/qq;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:[I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/qq;->c:I

    const/16 v1, 0x8

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

    iput-object v1, p0, Lk0/qq;->d:[[I

    .line 4
    iput v0, p0, Lk0/qq;->e:I

    .line 5
    new-instance v1, Lk0/qq$a;

    invoke-direct {v1, p0}, Lk0/qq$a;-><init>(Lk0/qq;)V

    iput-object v1, p0, Lk0/qq;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/qq$b;

    invoke-direct {v1, p0}, Lk0/qq$b;-><init>(Lk0/qq;)V

    iput-object v1, p0, Lk0/qq;->g:Ljava/lang/Runnable;

    new-array v1, v2, [I

    .line 7
    fill-array-data v1, :array_8

    iput-object v1, p0, Lk0/qq;->h:[I

    .line 8
    iput v0, p0, Lk0/qq;->i:I

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Air codeCmd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "      value = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public S2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/qq;->f:Ljava/lang/Runnable;

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

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->l:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    iput v1, v0, Lk0/mt;->h:I

    .line 13
    iput v1, v0, Lk0/mt;->p:I

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

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_18

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_17

    const/16 v3, 0x20

    const/16 v8, 0x12

    if-eq v2, v3, :cond_f

    const/16 v3, 0x24

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eq v2, v3, :cond_d

    const/16 v3, 0x29

    if-eq v2, v3, :cond_c

    const/16 v3, 0x30

    if-eq v2, v3, :cond_b

    const/16 v3, 0x35

    if-eq v2, v3, :cond_a

    const/16 v4, 0x55

    if-eq v2, v4, :cond_0

    goto/16 :goto_c

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v4, v1, v2

    and-int/2addr v4, v5

    add-int/lit8 v12, p2, 0x3

    .line 3
    aget-byte v13, v1, v12

    and-int/2addr v13, v5

    const-string v14, "persist.fyt.reversetemp"

    .line 4
    invoke-static {v14, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5
    aget-byte v4, v1, v12

    and-int/2addr v4, v5

    .line 6
    aget-byte v12, v1, v2

    and-int/lit16 v13, v12, 0xff

    :cond_1
    const/4 v12, -0x3

    const/4 v14, -0x2

    const/16 v15, 0x50

    const/16 v5, 0x1b

    const/16 v3, 0x10

    if-eq v4, v3, :cond_3

    if-eq v4, v15, :cond_2

    new-array v9, v7, [I

    aput v4, v9, v6

    .line 7
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v4, v7, [I

    aput v12, v4, v6

    .line 8
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v4, v7, [I

    aput v14, v4, v6

    .line 9
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v4, 0x1c

    if-eq v13, v3, :cond_5

    if-eq v13, v15, :cond_4

    new-array v5, v7, [I

    aput v13, v5, v6

    .line 10
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v5, v7, [I

    aput v12, v5, v6

    .line 11
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v5, v7, [I

    aput v14, v5, v6

    .line 12
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v4, p2, 0x4

    .line 13
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    const/16 v9, 0xf

    and-int/2addr v5, v9

    packed-switch v5, :pswitch_data_0

    move v5, v6

    :goto_2
    move v12, v5

    :goto_3
    move v13, v12

    goto :goto_4

    :pswitch_0
    move v5, v7

    goto :goto_2

    :pswitch_1
    move v12, v6

    move v13, v12

    move v5, v7

    goto :goto_4

    :pswitch_2
    move v13, v6

    move v5, v7

    move v12, v5

    goto :goto_4

    :pswitch_3
    move v12, v6

    move v5, v7

    move v13, v5

    goto :goto_4

    :pswitch_4
    move v5, v6

    move v12, v5

    move v13, v7

    goto :goto_4

    :pswitch_5
    move v5, v6

    move v12, v7

    goto :goto_3

    :pswitch_6
    move v5, v6

    move v13, v5

    move v12, v7

    :goto_4
    new-array v14, v7, [I

    aput v5, v14, v6

    .line 14
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v8, v7, [I

    aput v12, v8, v6

    .line 15
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v8, v7, [I

    aput v13, v8, v6

    .line 16
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x15

    new-array v8, v7, [I

    .line 17
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aput v4, v8, v6

    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v4, p2, 0x5

    .line 18
    aget-byte v5, v1, v4

    const/4 v8, 0x6

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    const/16 v12, 0x3e

    if-ne v5, v7, :cond_7

    .line 19
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v5

    const-string v13, "com.syu.carinfo.air.Air_Activity_All_NewAdd_HP"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 20
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    .line 21
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 22
    :cond_6
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 23
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 24
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    :cond_7
    :goto_5
    const/16 v5, 0x25

    new-array v13, v7, [I

    .line 25
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v7

    aput v4, v13, v6

    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v5, v7, [I

    add-int/lit8 v13, p2, 0x6

    .line 26
    aget-byte v14, v1, v13

    shr-int/2addr v14, v6

    and-int/2addr v14, v7

    aput v14, v5, v6

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v5, v7, [I

    .line 27
    aget-byte v14, v1, v13

    shr-int/2addr v14, v7

    and-int/2addr v14, v7

    aput v14, v5, v6

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    .line 28
    aget-byte v5, v1, v13

    shr-int/2addr v5, v11

    and-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v5, v7, [I

    .line 29
    aget-byte v11, v1, v13

    const/4 v12, 0x3

    shr-int/2addr v11, v12

    and-int/2addr v11, v7

    aput v11, v5, v6

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    .line 30
    aget-byte v5, v1, v13

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    aput v5, v4, v6

    const/16 v5, 0x35

    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    .line 31
    aget-byte v5, v1, v13

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    .line 32
    aget-byte v4, v1, v13

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    .line 33
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    if-ne v1, v2, :cond_8

    goto :goto_6

    :cond_8
    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x258

    .line 34
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_c

    .line 35
    :cond_9
    :goto_6
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_c

    :cond_a
    const/16 v2, 0x407

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 36
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 37
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    const/4 v5, 0x3

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 38
    :cond_b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x168

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_c

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 41
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 42
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 43
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_e
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 44
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 45
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_7
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 46
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x3

    .line 47
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 48
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 49
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 51
    aget-byte v1, v1, v5

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 52
    iput v2, v0, Lk0/qq;->c:I

    move v2, v6

    .line 53
    :goto_8
    iget-object v3, v0, Lk0/qq;->d:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_11

    .line 54
    iget v5, v0, Lk0/qq;->c:I

    aget-object v9, v3, v2

    aget v9, v9, v6

    if-ne v5, v9, :cond_10

    if-eqz v5, :cond_11

    .line 55
    iput v2, v0, Lk0/qq;->b:I

    goto :goto_9

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 56
    :cond_11
    :goto_9
    iget v5, v0, Lk0/qq;->c:I

    const/16 v9, 0x9

    if-eq v5, v9, :cond_15

    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-ne v1, v7, :cond_12

    .line 57
    array-length v1, v3

    if-ge v2, v1, :cond_1c

    .line 58
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_12
    if-nez v1, :cond_1c

    .line 59
    iget v1, v0, Lk0/qq;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_13

    const/16 v2, 0xff

    if-eq v1, v2, :cond_14

    .line 60
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_13
    const/16 v2, 0xff

    .line 61
    :cond_14
    :goto_a
    iput v2, v0, Lk0/qq;->b:I

    goto/16 :goto_c

    :cond_15
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v7, :cond_1c

    .line 62
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    if-eq v1, v4, :cond_16

    .line 63
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 64
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_16
    const/16 v1, 0x1a

    .line 65
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 66
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 70
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    :cond_18
    move v3, v5

    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v5, v1, v2

    and-int/2addr v5, v3

    add-int/lit8 v8, p2, 0x3

    .line 72
    aget-byte v9, v1, v8

    and-int/2addr v9, v3

    add-int/lit8 v10, p2, 0x4

    .line 73
    aget-byte v10, v1, v10

    and-int/2addr v10, v3

    add-int/lit8 v11, p2, 0x5

    .line 74
    aget-byte v11, v1, v11

    and-int/2addr v11, v3

    if-nez v5, :cond_19

    if-nez v9, :cond_19

    if-nez v10, :cond_19

    if-nez v11, :cond_19

    .line 75
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_b

    .line 76
    :cond_19
    sget v3, Ll0/c0;->g:I

    if-ne v3, v5, :cond_1a

    sget v3, Ll0/c0;->h:I

    if-ne v3, v9, :cond_1a

    sget v3, Ll0/c0;->i:I

    if-ne v3, v10, :cond_1a

    sget v3, Ll0/c0;->j:I

    if-eq v3, v11, :cond_1b

    .line 77
    :cond_1a
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 78
    sput v4, Ll0/c0;->k:I

    .line 79
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 80
    :cond_1b
    :goto_b
    sput v5, Ll0/c0;->g:I

    .line 81
    sput v9, Ll0/c0;->h:I

    .line 82
    sput v10, Ll0/c0;->i:I

    .line 83
    sput v11, Ll0/c0;->j:I

    .line 84
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 86
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 87
    aget-byte v1, v1, v8

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_1c
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    iget-object v1, p0, Lk0/qq;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/qq;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x33

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    const/4 v1, 0x4

    aput v1, p1, p3

    const/4 v2, 0x3

    .line 1
    aget p2, p2, p4

    aput p2, p1, v2

    iget-object p2, p0, Lk0/qq;->h:[I

    iget v2, p0, Lk0/qq;->i:I

    rem-int/2addr v2, p3

    aget p2, p2, v2

    aput p2, p1, v1

    const/4 p2, 0x5

    aput p4, p1, p2

    const/4 p2, 0x6

    aput p4, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    .line 2
    iget p1, p0, Lk0/qq;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lk0/qq;->i:I

    .line 3
    rem-int/2addr p1, p3

    iput p1, p0, Lk0/qq;->i:I

    :goto_0
    return-void
.end method
