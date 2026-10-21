.class public Lk0/in;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/in;->c:I

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

    iput-object v1, p0, Lk0/in;->d:[[I

    .line 4
    new-instance v0, Lk0/in$a;

    invoke-direct {v0, p0}, Lk0/in$a;-><init>(Lk0/in;)V

    iput-object v0, p0, Lk0/in;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/in$b;

    invoke-direct {v0, p0}, Lk0/in$b;-><init>(Lk0/in;)V

    iput-object v0, p0, Lk0/in;->f:Ljava/lang/Runnable;

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
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
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
    iget-object v0, p0, Lk0/in;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/in;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->g:I

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x29

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-eq v0, v1, :cond_14

    const/16 v1, 0x30

    const/4 v5, 0x2

    if-eq v0, v1, :cond_13

    const/16 p3, 0x7d

    const/16 v1, 0xb

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eq v0, p3, :cond_11

    const/16 p3, 0x40

    const/4 v8, 0x5

    if-eq v0, p3, :cond_10

    const/16 p3, 0x41

    if-eq v0, p3, :cond_f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/2addr p2, v5

    .line 2
    aget-byte p1, p1, p2

    and-int/lit8 p2, p1, 0x1

    if-ne p2, v4, :cond_15

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 4
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 5
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 6
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 7
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 8
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 9
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 10
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v4

    aput p1, p2, v7

    .line 11
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x3

    .line 13
    aget-byte v2, p1, v1

    and-int/2addr v2, v3

    add-int/lit8 v5, p2, 0x4

    .line 14
    aget-byte v9, p1, v5

    and-int/2addr v9, v3

    add-int/2addr p2, v8

    .line 15
    aget-byte v8, p1, p2

    and-int/2addr v8, v3

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-nez v9, :cond_1

    if-nez v8, :cond_1

    .line 16
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v7, Ll0/c0;->g:I

    if-ne v7, v0, :cond_2

    sget v7, Ll0/c0;->h:I

    if-ne v7, v2, :cond_2

    sget v7, Ll0/c0;->i:I

    if-ne v7, v9, :cond_2

    sget v7, Ll0/c0;->j:I

    if-eq v7, v8, :cond_3

    .line 18
    :cond_2
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_3

    .line 19
    invoke-static {v4}, Lu0/d;->C2(I)V

    .line 20
    sput v6, Ll0/c0;->k:I

    .line 21
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v0, Ll0/c0;->g:I

    .line 23
    sput v2, Ll0/c0;->h:I

    .line 24
    sput v9, Ll0/c0;->i:I

    .line 25
    sput v8, Ll0/c0;->j:I

    .line 26
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->e1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 27
    aget-byte p3, p1, v1

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->e1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 28
    aget-byte p3, p1, v5

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->e1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 29
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->e1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->e1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->e1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->e1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v8

    .line 33
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->e1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 34
    aget-byte p3, p1, p3

    const/16 v0, 0xa

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 35
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v4

    aput v2, v0, v7

    .line 36
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v1, v4, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v4

    aput v2, v1, v7

    .line 37
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v1, v4, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v4

    aput v2, v1, v7

    .line 38
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v1, v4, [I

    shr-int/lit8 v2, p3, 0x3

    and-int/2addr v2, v4

    aput v2, v1, v7

    .line 39
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v1, v4, [I

    shr-int/lit8 v2, p3, 0x2

    and-int/2addr v2, v4

    aput v2, v1, v7

    .line 40
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v1, p3, 0x1

    and-int/2addr v1, v4

    aput v1, v0, v7

    const/16 v1, 0xf

    .line 41
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x10

    new-array v2, v4, [I

    shr-int/2addr p3, v7

    and-int/2addr p3, v4

    aput p3, v2, v7

    .line 42
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 43
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 44
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 45
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 46
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v2, v4, [I

    shr-int/2addr p3, v7

    and-int/2addr p3, v1

    aput p3, v2, v7

    .line 47
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 48
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x6

    .line 49
    aget-byte v2, p1, v1

    and-int/2addr v2, v3

    const-string v5, "persist.fyt.reversetemp"

    .line 50
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 51
    aget-byte v0, p1, v1

    and-int/2addr v0, v3

    .line 52
    aget-byte p3, p1, p3

    and-int/lit16 v2, p3, 0xff

    :cond_4
    const/4 p3, -0x1

    const/4 v1, -0x3

    const/4 v3, -0x2

    const/16 v5, 0x1f

    const/16 v8, 0x1e

    const/16 v9, 0x1b

    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-lt v0, v4, :cond_5

    if-gt v0, v8, :cond_5

    new-array v10, v4, [I

    aput v0, v10, v7

    .line 53
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v0, v4, [I

    aput p3, v0, v7

    .line 54
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v0, v4, [I

    aput v1, v0, v7

    .line 55
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v0, v4, [I

    aput v3, v0, v7

    .line 56
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v0, 0x1c

    if-eqz v2, :cond_a

    if-eq v2, v5, :cond_9

    if-lt v2, v4, :cond_8

    if-gt v2, v8, :cond_8

    new-array p3, v4, [I

    aput v2, p3, v7

    .line 57
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v1, v4, [I

    aput p3, v1, v7

    .line 58
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array p3, v4, [I

    aput v1, p3, v7

    .line 59
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array p3, v4, [I

    aput v3, p3, v7

    .line 60
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 p3, 0x1d

    new-array v0, v4, [I

    add-int/lit8 p2, p2, 0x7

    .line 61
    aget-byte v1, p1, p2

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x7

    aput v1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 62
    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/lit8 p1, p1, 0x7

    aput p1, p3, v7

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 63
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 64
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 65
    iput p2, p0, Lk0/in;->c:I

    move p2, v7

    .line 66
    :goto_4
    iget-object p3, p0, Lk0/in;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_c

    .line 67
    iget v0, p0, Lk0/in;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v7

    if-ne v0, v1, :cond_b

    if-eqz v0, :cond_c

    .line 68
    iput p2, p0, Lk0/in;->b:I

    goto :goto_5

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    and-int/2addr p1, v3

    if-ne p1, v4, :cond_d

    .line 69
    array-length p1, p3

    if-ge p2, p1, :cond_15

    .line 70
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_d
    if-nez p1, :cond_15

    .line 71
    iget p1, p0, Lk0/in;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_e

    if-eq p1, v3, :cond_e

    .line 72
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 73
    :cond_e
    iput v3, p0, Lk0/in;->b:I

    goto/16 :goto_6

    :cond_f
    const/16 p3, 0x6c

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 74
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_10
    const/16 p3, 0x62

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 75
    aget-byte v5, p1, v1

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v4

    aput v5, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v4, [I

    .line 76
    aget-byte v5, p1, v1

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v4

    aput v5, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v4, [I

    .line 77
    aget-byte v5, p1, v1

    shr-int/2addr v5, v8

    and-int/2addr v5, v4

    aput v5, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v4, [I

    .line 78
    aget-byte v5, p1, v1

    shr-int/2addr v5, v2

    and-int/2addr v5, v2

    aput v5, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v4, [I

    .line 79
    aget-byte v1, p1, v1

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0x7

    aput v1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 80
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v4, [I

    add-int/2addr p2, v6

    .line 81
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v4

    aput v1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v4, [I

    .line 82
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v4

    aput v1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v4, [I

    .line 83
    aget-byte v1, p1, p2

    shr-int/2addr v1, v8

    and-int/2addr v1, v4

    aput v1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v4, [I

    .line 84
    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v2

    aput p1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 85
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v4, :cond_12

    goto :goto_6

    :cond_12
    add-int/2addr p2, v2

    .line 86
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v4

    aget-byte v0, p1, p2

    shr-int/2addr v0, v6

    and-int/2addr v0, v4

    invoke-static {p3, v0, v7}, Ll0/c0;->a(III)V

    .line 87
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v2, v5, [I

    aput v1, v2, v7

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v2, v4

    const/4 p1, 0x0

    invoke-static {p3, v0, v2, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_6

    .line 88
    :cond_13
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    add-int/lit8 p3, p2, 0x2

    .line 89
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x1518

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    :cond_15
    :goto_6
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

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/in;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/in;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6d

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x8a

    aput v0, p1, v4

    aput v3, p1, v3

    .line 1
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x90

    aput v0, p1, v4

    aput v3, p1, v3

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0xc0

    aput v0, p1, v4

    aput v3, p1, v3

    .line 3
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
