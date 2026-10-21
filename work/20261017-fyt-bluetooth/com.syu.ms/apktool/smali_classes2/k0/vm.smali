.class public Lk0/vm;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Z

.field public g:I

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/vm;->c:I

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

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/vm;->d:[[I

    .line 4
    iput v0, p0, Lk0/vm;->e:I

    .line 5
    iput-boolean v0, p0, Lk0/vm;->f:Z

    const/16 v0, 0xff

    .line 6
    iput v0, p0, Lk0/vm;->g:I

    .line 7
    new-instance v0, Lk0/vm$a;

    invoke-direct {v0, p0}, Lk0/vm$a;-><init>(Lk0/vm;)V

    iput-object v0, p0, Lk0/vm;->h:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_7
    .array-data 4
        0x15
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
    .locals 4

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
    iput v2, v0, Lk0/mt;->l:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget v3, Lk0/nt;->a:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 8
    :sswitch_0
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 9
    :sswitch_1
    iput v2, v0, Lk0/mt;->i:I

    .line 10
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v0, p0, Lk0/vm;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1b01c5 -> :sswitch_1
        0x1c01c5 -> :sswitch_0
        0x8001c5 -> :sswitch_0
        0x8101c4 -> :sswitch_1
        0x8d01c4 -> :sswitch_1
        0xa201c7 -> :sswitch_0
        0xdd01c6 -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/16 v5, 0xd

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_12

    const/16 v3, 0x7d

    const/16 v12, 0xb

    if-eq v2, v3, :cond_10

    const/16 v14, 0x7f

    if-eq v2, v14, :cond_f

    const/16 v15, 0x28

    if-eq v2, v15, :cond_d

    const/16 v15, 0x29

    if-eq v2, v15, :cond_c

    const/16 v15, 0x38

    if-eq v2, v15, :cond_b

    const/16 v15, 0x39

    if-eq v2, v15, :cond_a

    const/16 v15, 0x41

    if-eq v2, v15, :cond_9

    const/16 v3, 0x42

    const/16 v6, 0x10

    if-eq v2, v3, :cond_8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v3, v1, v3

    and-int/2addr v3, v9

    add-int/lit8 v16, p2, 0x4

    .line 4
    aget-byte v14, v1, v16

    and-int/2addr v14, v9

    new-array v4, v11, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v10

    const/16 v13, 0xa

    .line 5
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v11

    aput v13, v4, v10

    .line 6
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v11

    aput v12, v4, v10

    const/16 v12, 0xc

    .line 7
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v11

    aput v12, v4, v10

    .line 8
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x3e

    new-array v5, v11, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v11

    aput v12, v5, v10

    .line 9
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 10
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 11
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v3, 0xff

    if-eq v2, v11, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    move v2, v10

    move v3, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_0
    move v3, v10

    move v2, v11

    move v4, v2

    goto :goto_1

    :cond_1
    move v2, v10

    move v3, v2

    move v4, v11

    goto :goto_1

    :cond_2
    move v2, v10

    move v3, v11

    goto :goto_0

    :cond_3
    move v2, v10

    move v4, v2

    move v3, v11

    :goto_1
    new-array v5, v11, [I

    aput v2, v5, v10

    const/16 v2, 0x12

    .line 12
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v11, [I

    aput v3, v5, v10

    .line 13
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v4, v3, v10

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    and-int/lit16 v4, v14, 0xff

    aput v4, v3, v10

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 16
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 17
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 18
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    const/16 v2, 0x1b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 19
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 20
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x8

    .line 21
    aget-byte v4, v1, v3

    shr-int/2addr v4, v10

    and-int/2addr v4, v11

    aput v4, v2, v10

    const/16 v4, 0xf

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v4, v11, [I

    .line 22
    aget-byte v1, v1, v3

    shr-int/2addr v1, v11

    and-int/2addr v1, v11

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 23
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x3

    .line 24
    aget-byte v5, v1, v4

    and-int/2addr v5, v9

    add-int/lit8 v6, p2, 0x4

    .line 25
    aget-byte v7, v1, v6

    and-int/2addr v7, v9

    const/4 v8, 0x5

    add-int/lit8 v8, p2, 0x5

    .line 26
    aget-byte v12, v1, v8

    and-int/2addr v12, v9

    if-nez v3, :cond_5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    if-nez v12, :cond_5

    .line 27
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 28
    :cond_5
    sget v10, Ll0/c0;->g:I

    if-ne v10, v3, :cond_6

    sget v10, Ll0/c0;->h:I

    if-ne v10, v5, :cond_6

    sget v10, Ll0/c0;->i:I

    if-ne v10, v7, :cond_6

    sget v10, Ll0/c0;->j:I

    if-eq v10, v12, :cond_7

    .line 29
    :cond_6
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_7

    .line 30
    invoke-static {v11}, Lu0/d;->C2(I)V

    const/4 v10, 0x4

    .line 31
    sput v10, Ll0/c0;->k:I

    .line 32
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 33
    :cond_7
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 34
    sput v5, Ll0/c0;->h:I

    .line 35
    sput v7, Ll0/c0;->i:I

    .line 36
    sput v12, Ll0/c0;->j:I

    .line 37
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 38
    aget-byte v2, v1, v4

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 39
    aget-byte v2, v1, v6

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 40
    aget-byte v1, v1, v8

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->M0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 42
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 43
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 44
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->M0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :cond_8
    const/16 v2, 0x7a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 45
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 46
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v9

    or-int/2addr v4, v7

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 47
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x8

    .line 48
    aget-byte v3, v1, v3

    shl-int/2addr v3, v6

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    or-int/2addr v3, v4

    aput v3, v2, v10

    const/16 v3, 0x7d

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 49
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0xb

    .line 50
    aget-byte v3, v1, v3

    and-int/2addr v3, v9

    aput v3, v2, v10

    const/16 v3, 0x7f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xc

    .line 51
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xd

    .line 52
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xe

    .line 53
    aget-byte v1, v1, v2

    add-int/2addr v1, v11

    and-int/2addr v1, v9

    const/16 v2, 0x82

    new-array v3, v11, [I

    aput v1, v3, v10

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_9
    const/16 v2, 0x6a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 55
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 56
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 57
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 58
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 59
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 60
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 61
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 62
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 63
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xb

    .line 64
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xc

    .line 65
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xd

    .line 66
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xe

    .line 67
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v11, [I

    .line 68
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v11, [I

    .line 69
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v11, [I

    .line 70
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v11, [I

    .line 71
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xf

    .line 72
    aget-byte v1, v1, v4

    and-int/2addr v1, v9

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_a
    const/16 v2, 0x71

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 73
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v11, [I

    .line 74
    aget-byte v4, v1, v4

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/2addr v4, v6

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 75
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v6

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v11, [I

    .line 76
    aget-byte v1, v1, v4

    const/4 v4, 0x4

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 77
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 78
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 79
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 80
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 81
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x7

    .line 82
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x8

    .line 83
    aget-byte v8, v1, v8

    add-int/lit8 v12, p2, 0x9

    .line 84
    aget-byte v1, v1, v12

    const/16 v12, 0x66

    new-array v13, v11, [I

    and-int/2addr v2, v9

    aput v2, v13, v10

    .line 85
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v12, v11, [I

    and-int/2addr v3, v9

    aput v3, v12, v10

    .line 86
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v11, [I

    and-int/2addr v4, v9

    aput v4, v3, v10

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v11, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v3, v10

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v11, [I

    and-int/lit16 v4, v6, 0xff

    aput v4, v3, v10

    .line 89
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v11, [I

    and-int/lit16 v4, v7, 0xff

    aput v4, v3, v10

    .line 90
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v11, [I

    and-int/lit16 v4, v8, 0xff

    aput v4, v3, v10

    .line 91
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v11, [I

    and-int/2addr v1, v9

    aput v1, v3, v10

    .line 92
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_c
    add-int/lit8 v2, p2, 0x3

    .line 93
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x152c

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 94
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    const-string v2, "persist.syu.reversefrontdoor"

    .line 95
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 96
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 97
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 98
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 99
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    const/4 v3, 0x4

    .line 100
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 101
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v2, v10

    const/4 v1, 0x5

    .line 102
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 103
    :cond_f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 104
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    if-eq v2, v11, :cond_11

    goto/16 :goto_8

    :cond_11
    add-int/lit8 v2, p2, 0x3

    .line 105
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v11

    aget-byte v4, v1, v2

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    invoke-static {v3, v4, v10}, Ll0/c0;->a(III)V

    .line 106
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v8, [I

    aput v12, v5, v10

    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    aput v1, v5, v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v4, v5, v1, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 107
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 108
    aget-byte v1, v1, v3

    and-int/2addr v2, v9

    .line 109
    iput v2, v0, Lk0/vm;->c:I

    move v3, v10

    .line 110
    :goto_5
    iget-object v4, v0, Lk0/vm;->d:[[I

    array-length v6, v4

    if-ge v3, v6, :cond_14

    .line 111
    iget v6, v0, Lk0/vm;->c:I

    aget-object v7, v4, v3

    aget v7, v7, v10

    if-ne v6, v7, :cond_13

    if-eqz v6, :cond_14

    .line 112
    iput v3, v0, Lk0/vm;->b:I

    .line 113
    iput v6, v0, Lk0/vm;->g:I

    goto :goto_6

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    :goto_6
    if-eqz v2, :cond_19

    const/4 v6, 0x7

    if-eq v2, v6, :cond_17

    and-int/2addr v1, v9

    if-ne v1, v11, :cond_15

    .line 114
    array-length v1, v4

    if-ge v3, v1, :cond_1d

    .line 115
    aget-object v1, v4, v3

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_15
    if-nez v1, :cond_1d

    .line 116
    iget v1, v0, Lk0/vm;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_16

    if-eq v1, v9, :cond_16

    .line 117
    aget-object v1, v4, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 118
    :cond_16
    iput v9, v0, Lk0/vm;->b:I

    goto :goto_8

    .line 119
    :cond_17
    iget v2, v0, Lk0/vm;->e:I

    if-eq v2, v1, :cond_1d

    .line 120
    iput v1, v0, Lk0/vm;->e:I

    if-ne v1, v11, :cond_18

    .line 121
    iput-boolean v10, v0, Lk0/vm;->f:Z

    goto :goto_8

    :cond_18
    if-ne v1, v8, :cond_1d

    .line 122
    iput-boolean v11, v0, Lk0/vm;->f:Z

    .line 123
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    const/16 v1, 0x12

    .line 124
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 125
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 126
    :sswitch_0
    invoke-static {v8, v10}, Ll0/b0;->l0(II)V

    .line 127
    invoke-static {v8, v11}, Ll0/b0;->l0(II)V

    goto :goto_8

    :sswitch_1
    const/16 v1, 0x12

    .line 128
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 129
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 130
    :cond_19
    iget v2, v0, Lk0/vm;->g:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1b

    and-int/2addr v1, v9

    if-nez v1, :cond_1c

    .line 131
    iget v1, v0, Lk0/vm;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_1a

    if-eq v1, v9, :cond_1a

    .line 132
    aget-object v1, v4, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 133
    :cond_1a
    iput v9, v0, Lk0/vm;->b:I

    goto :goto_7

    .line 134
    :cond_1b
    iget-boolean v1, v0, Lk0/vm;->f:Z

    if-nez v1, :cond_1c

    .line 135
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    .line 136
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    .line 137
    :cond_1c
    :goto_7
    iput-boolean v10, v0, Lk0/vm;->f:Z

    .line 138
    iput v10, v0, Lk0/vm;->e:I

    .line 139
    iput v10, v0, Lk0/vm;->g:I

    :cond_1d
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x8001c5 -> :sswitch_1
        0x8101c4 -> :sswitch_0
        0x8d01c4 -> :sswitch_0
        0xa201c7 -> :sswitch_1
    .end sparse-switch
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

    .line 3
    iget-object v0, p0, Lk0/vm;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x89

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
    .locals 5

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    const/4 v4, 0x5

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v4, [I

    aput p3, p1, v1

    const/16 p3, 0xca

    aput p3, p1, v3

    aput v2, p1, v2

    .line 1
    aget p3, p2, v1

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v4, [I

    aput p3, p1, v1

    const/16 p3, 0x8a

    aput p3, p1, v3

    aput v2, p1, v2

    .line 2
    aget p3, p2, v1

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v4, [I

    aput p3, p1, v1

    const/16 p3, 0xc8

    aput p3, p1, v3

    aput v2, p1, v2

    .line 3
    aget p3, p2, v1

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p4, [I

    aput p3, p1, v1

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v3, p1, v2

    .line 4
    aget p2, p2, v1

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
