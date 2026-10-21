.class public Lk0/qe;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static f:Ljava/lang/Runnable;


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk0/qe$b;

    invoke-direct {v0}, Lk0/qe$b;-><init>()V

    sput-object v0, Lk0/qe;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/qe;->c:I

    const/16 v1, 0x8

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

    const/4 v2, 0x7

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/qe;->d:[[I

    .line 4
    new-instance v0, Lk0/qe$a;

    invoke-direct {v0, p0}, Lk0/qe$a;-><init>(Lk0/qe;)V

    iput-object v0, p0, Lk0/qe;->e:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data
.end method

.method public static a3(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
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

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v2, Lk0/qe;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->f:Lo1/y;

    iget-object v2, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->r:Lo1/y;

    iget-object v2, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xc

    const/16 v4, 0x10

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v2, v9, :cond_10

    if-eq v2, v7, :cond_a

    if-eq v2, v8, :cond_8

    const/16 v5, 0x71

    if-eq v2, v5, :cond_7

    const/16 v5, 0xa

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 v2, p2, 0x3

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x11f8

    invoke-static {v2, v1, v13, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/qe;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/qe;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/qe;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 6
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/qe;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 7
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/qe;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 8
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/qe;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 9
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Lk0/qe;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0xa

    .line 10
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-static {v1}, Lk0/qe;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v2, v1, v2

    add-int/lit8 v7, p2, 0x3

    .line 12
    aget-byte v7, v1, v7

    add-int/lit8 v9, p2, 0x4

    .line 13
    aget-byte v9, v1, v9

    add-int/lit8 v14, p2, 0x5

    .line 14
    aget-byte v15, v1, v14

    add-int/lit8 v16, p2, 0x6

    .line 15
    aget-byte v17, v1, v16

    add-int/lit8 v18, p2, 0x8

    .line 16
    aget-byte v10, v1, v18

    add-int/lit8 v18, p2, 0x9

    .line 17
    aget-byte v18, v1, v18

    add-int/lit8 v19, p2, 0xa

    .line 18
    aget-byte v8, v1, v19

    new-array v11, v13, [I

    shr-int/lit8 v20, v2, 0x7

    and-int/lit8 v20, v20, 0x1

    aput v20, v11, v12

    .line 19
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xb

    new-array v5, v13, [I

    shr-int/lit8 v20, v2, 0x6

    and-int/lit8 v20, v20, 0x1

    aput v20, v5, v12

    .line 20
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v11, v13, [I

    shr-int/lit8 v20, v2, 0x5

    and-int/lit8 v20, v20, 0x1

    aput v20, v11, v12

    .line 21
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x41

    new-array v11, v13, [I

    shr-int/lit8 v20, v2, 0x3

    and-int/lit8 v20, v20, 0x1

    aput v20, v11, v12

    .line 22
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    new-array v5, v13, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v13

    aput v11, v5, v12

    .line 23
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    and-int/2addr v2, v13

    aput v2, v4, v12

    .line 24
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v13, [I

    shr-int/lit8 v4, v7, 0x7

    and-int/2addr v4, v13

    aput v4, v3, v12

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v13, [I

    shr-int/lit8 v4, v7, 0x6

    and-int/2addr v4, v13

    aput v4, v3, v12

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v13, [I

    shr-int/lit8 v4, v7, 0x5

    and-int/2addr v4, v13

    aput v4, v3, v12

    .line 27
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v13, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v9, 0xff

    aput v5, v3, v12

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 29
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    aget-byte v15, v1, v16

    .line 31
    aget-byte v17, v1, v14

    :cond_0
    move/from16 v1, v17

    and-int/lit16 v2, v15, 0xff

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v5, 0x1b

    const/16 v7, 0x7f

    if-eqz v2, :cond_2

    if-eq v2, v7, :cond_1

    new-array v9, v13, [I

    aput v2, v9, v12

    .line 32
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v13, [I

    aput v3, v2, v12

    .line 33
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v2, v13, [I

    aput v4, v2, v12

    .line 34
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0x1c

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_3

    new-array v3, v13, [I

    aput v1, v3, v12

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array v1, v13, [I

    aput v3, v1, v12

    .line 36
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v1, v13, [I

    aput v4, v1, v12

    .line 37
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit16 v1, v10, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    const/16 v1, 0x8

    shl-int/lit8 v1, v10, 0x8

    or-int v1, v1, v18

    .line 38
    div-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    .line 39
    rem-int/2addr v1, v3

    const v4, 0xffff

    if-eqz v1, :cond_5

    not-int v2, v2

    add-int/2addr v2, v3

    goto :goto_2

    :cond_5
    not-int v2, v2

    add-int/2addr v2, v13

    :goto_2
    and-int/2addr v2, v4

    const/16 v3, 0xa

    mul-int/2addr v2, v3

    rsub-int v2, v2, 0x3e8

    mul-int/2addr v1, v6

    sub-int/2addr v2, v1

    goto :goto_3

    :cond_6
    const/16 v3, 0xa

    and-int/lit8 v1, v10, 0x7f

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    or-int v1, v1, v18

    .line 40
    div-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    .line 41
    rem-int/2addr v1, v4

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x3e8

    mul-int/2addr v1, v6

    add-int/2addr v2, v1

    .line 42
    :goto_3
    invoke-static {v2}, Lu0/d;->A3(I)V

    const/16 v1, 0x25

    new-array v2, v13, [I

    const/16 v3, 0xff

    and-int/2addr v3, v8

    aput v3, v2, v12

    .line 43
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 44
    :cond_7
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    move v3, v10

    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 46
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 47
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    const/4 v3, 0x2

    .line 48
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_9
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 49
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    const/4 v3, 0x2

    .line 50
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 51
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 52
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v13

    aput v1, v2, v12

    .line 53
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 55
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 56
    iput v2, v0, Lk0/qe;->c:I

    move v2, v12

    .line 57
    :goto_5
    iget-object v3, v0, Lk0/qe;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 58
    iget v4, v0, Lk0/qe;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_b

    if-eqz v4, :cond_c

    .line 59
    iput v2, v0, Lk0/qe;->b:I

    goto :goto_6

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_d

    .line 60
    array-length v1, v3

    if-ge v2, v1, :cond_11

    .line 61
    aget-object v1, v3, v2

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 62
    :cond_d
    iget v1, v0, Lk0/qe;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_e

    const/16 v2, 0xff

    if-eq v1, v2, :cond_f

    .line 63
    aget-object v1, v3, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_e
    const/16 v2, 0xff

    .line 64
    :cond_f
    :goto_7
    iput v2, v0, Lk0/qe;->b:I

    goto/16 :goto_8

    :cond_10
    move v2, v11

    const/16 v8, 0x63

    new-array v10, v13, [I

    add-int/lit8 v11, p2, 0x2

    .line 65
    aget-byte v14, v1, v11

    and-int/2addr v14, v2

    const/16 v15, 0x8

    shl-int/2addr v14, v15

    add-int/lit8 v15, p2, 0x3

    aget-byte v9, v1, v15

    and-int/2addr v9, v2

    or-int/2addr v9, v14

    aput v9, v10, v12

    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x408

    new-array v9, v13, [I

    .line 66
    aget-byte v10, v1, v11

    and-int/2addr v10, v2

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    aget-byte v11, v1, v15

    and-int/2addr v11, v2

    or-int/2addr v10, v11

    aput v10, v9, v12

    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x62

    new-array v9, v13, [I

    add-int/lit8 v10, p2, 0x6

    .line 67
    aget-byte v10, v1, v10

    and-int/2addr v10, v2

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    add-int/lit8 v11, p2, 0x7

    aget-byte v11, v1, v11

    and-int/2addr v11, v2

    or-int v2, v10, v11

    aput v2, v9, v12

    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v8, v13, [I

    add-int/lit8 v9, p2, 0x8

    .line 68
    aget-byte v9, v1, v9

    shl-int/lit8 v4, v9, 0x10

    const/high16 v9, 0xff0000

    and-int/2addr v4, v9

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v1, v9

    const/16 v10, 0x8

    shl-int/2addr v9, v10

    const v10, 0xff00

    and-int/2addr v9, v10

    or-int/2addr v4, v9

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v1, v9

    const/16 v10, 0xff

    and-int/2addr v9, v10

    or-int/2addr v4, v9

    aput v4, v8, v12

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v13, [I

    add-int/lit8 v3, p2, 0xc

    .line 69
    aget-byte v8, v1, v3

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v13

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v13, [I

    .line 70
    aget-byte v8, v1, v3

    shr-int/lit8 v7, v8, 0x6

    and-int/2addr v7, v13

    aput v7, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v13, [I

    .line 71
    aget-byte v7, v1, v3

    shr-int/lit8 v6, v7, 0x5

    and-int/2addr v6, v13

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v4, v13, [I

    .line 72
    aget-byte v6, v1, v3

    shr-int/lit8 v5, v6, 0x4

    and-int/2addr v5, v13

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v13, [I

    .line 73
    aget-byte v5, v1, v3

    const/4 v6, 0x3

    shr-int/2addr v5, v6

    and-int/2addr v5, v13

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v13, [I

    .line 74
    aget-byte v5, v1, v3

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v13

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v13, [I

    .line 75
    aget-byte v1, v1, v3

    shr-int/2addr v1, v13

    and-int/2addr v1, v13

    aput v1, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :cond_11
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v1, Lk0/qe;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->f:Lo1/y;

    iget-object v1, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->r:Lo1/y;

    iget-object v1, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/qe;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6c

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
    .locals 2

    const/4 p3, 0x2

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lt p1, p3, :cond_2

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v0, 0xe3

    const/4 v1, 0x0

    aput v0, p1, v1

    const/16 v0, 0x83

    aput v0, p1, p4

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget v0, p2, v1

    int-to-byte v0, v0

    aput v0, p1, p3

    const/4 p3, 0x4

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lt p1, p3, :cond_2

    aget p1, p2, p4

    :cond_2
    :goto_0
    return-void
.end method
