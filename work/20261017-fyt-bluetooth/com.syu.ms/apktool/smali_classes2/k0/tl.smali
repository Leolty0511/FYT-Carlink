.class public Lk0/tl;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/tl;->c:I

    const/4 v1, 0x7

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    iput-object v1, p0, Lk0/tl;->d:[[I

    .line 4
    iput v0, p0, Lk0/tl;->f:I

    new-array v1, v8, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_7

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    aput-object v0, v1, v5

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    aput-object v0, v1, v7

    iput-object v1, p0, Lk0/tl;->g:[[I

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x7
        0xc
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
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v2, v0, Lk0/mt;->l:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

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

    if-eq v0, v4, :cond_14

    const/4 v5, 0x2

    if-eq v0, v5, :cond_f

    const/16 v6, 0x10

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x7

    if-eq v0, v1, :cond_9

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v10, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte v0, p1, p3

    and-int/2addr v0, v2

    add-int/lit8 v1, p2, 0x3

    .line 4
    aget-byte v5, p1, v1

    and-int/2addr v5, v2

    add-int/lit8 v6, p2, 0x4

    .line 5
    aget-byte v7, p1, v6

    and-int/2addr v7, v2

    add-int/lit8 v8, p2, 0x5

    .line 6
    aget-byte v10, p1, v8

    and-int/2addr v10, v2

    if-nez v0, :cond_2

    if-nez v5, :cond_2

    if-nez v7, :cond_2

    if-nez v10, :cond_2

    .line 7
    invoke-static {v3}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 8
    :cond_2
    sget v3, Ll0/c0;->g:I

    if-ne v3, v0, :cond_3

    sget v3, Ll0/c0;->h:I

    if-ne v3, v5, :cond_3

    sget v3, Ll0/c0;->i:I

    if-ne v3, v7, :cond_3

    sget v3, Ll0/c0;->j:I

    if-eq v3, v10, :cond_4

    .line 9
    :cond_3
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_4

    .line 10
    invoke-static {v4}, Lu0/d;->C2(I)V

    .line 11
    sput v9, Ll0/c0;->k:I

    .line 12
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 13
    :cond_4
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 14
    sput v5, Ll0/c0;->h:I

    .line 15
    sput v7, Ll0/c0;->i:I

    .line 16
    sput v10, Ll0/c0;->j:I

    .line 17
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 18
    aget-byte p3, p1, v1

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 19
    aget-byte p3, p1, v6

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 20
    aget-byte p3, p1, v8

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->G2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 23
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->L0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 24
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    invoke-static {p1}, Ll0/c0;->L0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :cond_5
    add-int/lit8 p3, p2, 0x7

    .line 25
    aget-byte p3, p1, p3

    add-int/2addr p2, v7

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 26
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    if-eq p3, v8, :cond_7

    const v0, 0xff00

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/16 p3, 0x64

    new-array v0, v4, [I

    add-int/2addr p2, v1

    .line 27
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    const/16 p3, 0x63

    new-array v1, v4, [I

    add-int/lit8 v4, p2, 0x3

    .line 28
    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v0, v4

    add-int/2addr p2, v9

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    aput p1, v1, v3

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_2
    const/16 p3, 0x62

    new-array v1, v4, [I

    add-int/lit8 v4, p2, 0x3

    .line 29
    aget-byte v4, p1, v4

    shl-int/2addr v4, v6

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v0, v5

    or-int/2addr v0, v4

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    aput p1, v1, v3

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_7
    const-string p3, "persist.syu.reversefrontdoor"

    .line 30
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_8

    new-array p3, v4, [I

    add-int/lit8 v0, p2, 0x3

    .line 31
    aget-byte v2, p1, v0

    shr-int/2addr v2, v10

    and-int/2addr v2, v4

    aput v2, p3, v3

    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 32
    aget-byte v0, p1, v0

    shr-int/2addr v0, v7

    and-int/2addr v0, v4

    aput v0, p3, v3

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array p3, v4, [I

    add-int/lit8 v0, p2, 0x3

    .line 33
    aget-byte v2, p1, v0

    shr-int/2addr v2, v7

    and-int/2addr v2, v4

    aput v2, p3, v3

    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 34
    aget-byte v0, p1, v0

    shr-int/2addr v0, v10

    and-int/2addr v0, v4

    aput v0, p3, v3

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p3, v4, [I

    add-int/2addr p2, v1

    .line 35
    aget-byte v0, p1, p2

    shr-int/2addr v0, v8

    and-int/2addr v0, v4

    aput v0, p3, v3

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 36
    aget-byte v0, p1, p2

    shr-int/2addr v0, v9

    and-int/2addr v0, v4

    aput v0, p3, v3

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 37
    aget-byte v0, p1, p2

    shr-int/2addr v0, v5

    and-int/2addr v0, v4

    aput v0, p3, v3

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 38
    aget-byte p1, p1, p2

    shr-int/2addr p1, v1

    and-int/2addr p1, v4

    aput p1, p3, v3

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_9
    const/16 p3, 0xa

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v5, p1, v2

    shr-int/2addr v5, v10

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v4, [I

    .line 40
    aget-byte v5, p1, v2

    shr-int/2addr v5, v8

    and-int/2addr v5, v1

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v4, [I

    .line 41
    aget-byte v2, p1, v2

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x3

    .line 42
    aget-byte v5, p1, v2

    shr-int/2addr v5, v10

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v4, [I

    .line 43
    aget-byte v5, p1, v2

    shr-int/2addr v5, v7

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v4, [I

    .line 44
    aget-byte v5, p1, v2

    shr-int/2addr v5, v8

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v4, [I

    .line 45
    aget-byte v5, p1, v2

    shr-int/2addr v5, v9

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 46
    aget-byte v0, p1, v2

    shr-int/2addr v0, v1

    and-int/2addr v0, v4

    aput v0, p3, v3

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x4

    .line 47
    aget-byte v5, p1, v2

    shr-int/2addr v5, v10

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v0, v4, [I

    .line 48
    aget-byte v5, p1, v2

    shr-int/2addr v5, v7

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v0, v4, [I

    .line 49
    aget-byte v2, p1, v2

    shr-int/2addr v2, v9

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x38

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x5

    .line 50
    aget-byte v2, p1, v1

    shr-int/2addr v2, v10

    and-int/2addr v2, v4

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 51
    aget-byte p3, p1, v1

    const/16 v0, 0x7f

    and-int/2addr p3, v0

    add-int/lit8 v2, p2, 0x6

    .line 52
    aget-byte v5, p1, v2

    and-int/2addr v5, v0

    const-string v6, "persist.fyt.reversetemp"

    .line 53
    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 54
    aget-byte p3, p1, v2

    and-int/2addr p3, v0

    .line 55
    aget-byte v1, p1, v1

    and-int/lit8 v5, v1, 0x7f

    :cond_a
    const/4 v1, -0x3

    const/4 v2, -0x2

    const/16 v6, 0x1b

    if-eqz p3, :cond_c

    if-eq p3, v0, :cond_b

    new-array v7, v4, [I

    aput p3, v7, v3

    .line 56
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array p3, v4, [I

    aput v1, p3, v3

    .line 57
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array p3, v4, [I

    aput v2, p3, v3

    .line 58
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 p3, 0x1c

    if-eqz v5, :cond_e

    if-eq v5, v0, :cond_d

    new-array v0, v4, [I

    aput v5, v0, v3

    .line 59
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v0, v4, [I

    aput v1, v0, v3

    .line 60
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    new-array v0, v4, [I

    aput v2, v0, v3

    .line 61
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 p3, 0x1d

    new-array v0, v4, [I

    add-int/2addr p2, v10

    .line 62
    aget-byte v1, p1, p2

    shr-int/2addr v1, v9

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1e

    new-array v0, v4, [I

    .line 63
    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/lit8 p1, p1, 0xf

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_f
    add-int/lit8 p3, p2, 0x2

    .line 64
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 65
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 66
    iput p2, p0, Lk0/tl;->f:I

    move p2, v3

    .line 67
    :goto_4
    iget-object p3, p0, Lk0/tl;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_11

    .line 68
    iget v0, p0, Lk0/tl;->f:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_10

    if-eqz v0, :cond_11

    .line 69
    iput p2, p0, Lk0/tl;->e:I

    goto :goto_5

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_11
    :goto_5
    and-int/2addr p1, v2

    if-ne p1, v4, :cond_12

    .line 70
    array-length p1, p3

    if-ge p2, p1, :cond_19

    .line 71
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_12
    if-nez p1, :cond_19

    .line 72
    iget p1, p0, Lk0/tl;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_13

    if-eq p1, v2, :cond_13

    .line 73
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 74
    :cond_13
    iput v2, p0, Lk0/tl;->e:I

    goto :goto_8

    :cond_14
    add-int/lit8 p3, p2, 0x2

    .line 75
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 76
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 77
    iput p2, p0, Lk0/tl;->c:I

    move p2, v3

    .line 78
    :goto_6
    iget-object p3, p0, Lk0/tl;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_16

    .line 79
    iget v0, p0, Lk0/tl;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_15

    if-eqz v0, :cond_16

    .line 80
    iput p2, p0, Lk0/tl;->b:I

    goto :goto_7

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_16
    :goto_7
    and-int/2addr p1, v2

    if-ne p1, v4, :cond_17

    .line 81
    array-length p1, p3

    if-ge p2, p1, :cond_19

    .line 82
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_17
    if-nez p1, :cond_19

    .line 83
    iget p1, p0, Lk0/tl;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_18

    if-eq p1, v2, :cond_18

    .line 84
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 85
    :cond_18
    iput v2, p0, Lk0/tl;->b:I

    :cond_19
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x50
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
    .locals 0

    return-void
.end method
