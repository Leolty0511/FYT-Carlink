.class public Lk0/gd;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gd;->c:I

    const/16 v1, 0x8

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    iput-object v2, p0, Lk0/gd;->d:[[I

    new-array v1, v1, [[I

    new-array v2, v3, [I

    .line 4
    fill-array-data v2, :array_8

    aput-object v2, v1, v0

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v8

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v9

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v10

    iput-object v1, p0, Lk0/gd;->e:[[I

    .line 5
    iput v0, p0, Lk0/gd;->f:I

    .line 6
    new-instance v0, Lk0/gd$a;

    invoke-direct {v0, p0}, Lk0/gd$a;-><init>(Lk0/gd;)V

    iput-object v0, p0, Lk0/gd;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/gd$b;

    invoke-direct {v0, p0}, Lk0/gd$b;-><init>(Lk0/gd;)V

    iput-object v0, p0, Lk0/gd;->h:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_e
    .array-data 4
        0xa
        0xd
    .end array-data

    :array_f
    .array-data 4
        0xb
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

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x1

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gd;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_11

    const/16 v5, 0xe

    const/4 v6, 0x3

    if-eq v0, v5, :cond_10

    const/16 v5, 0x7f

    if-eq v0, v5, :cond_f

    const/4 p3, 0x5

    const/16 v5, 0xff

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_0
    const/16 p3, 0x79

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7a

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, p1, v6

    and-int/2addr v6, v5

    or-int/2addr v1, v6

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7b

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x5

    .line 4
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x6

    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    or-int/2addr p1, v1

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/2addr p2, v2

    .line 5
    aget-byte p1, p1, p2

    if-ne p1, v4, :cond_0

    .line 6
    invoke-static {v4}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    .line 7
    :cond_0
    invoke-static {v3}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    :pswitch_2
    const/16 p3, 0x78

    new-array v0, v4, [I

    add-int/2addr p2, v2

    .line 8
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_3
    const/16 p3, 0x68

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x3

    .line 9
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x4

    .line 10
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x5

    .line 11
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x6

    .line 12
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x7

    .line 13
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x8

    .line 14
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x9

    .line 15
    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v4, [I

    add-int/2addr p2, v1

    .line 16
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_4
    add-int/2addr p2, v6

    .line 17
    aget-byte p1, p1, p2

    const/16 p2, 0x1d

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    aput v0, p3, v3

    .line 18
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1e

    new-array p3, v4, [I

    and-int/lit8 p1, p1, 0xf

    aput p1, p3, v3

    .line 19
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_5
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    aget-byte p1, p1, p2

    const/16 p2, 0x2d0

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    .line 21
    :pswitch_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_12

    add-int/lit8 p3, p2, 0x2

    .line 22
    aget-byte v0, p1, p3

    if-ne v0, v4, :cond_1

    .line 23
    sget p3, Lu0/b;->o:I

    if-nez p3, :cond_2

    .line 24
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 25
    :cond_1
    aget-byte p3, p1, p3

    if-nez p3, :cond_2

    .line 26
    invoke-static {v3}, Lu0/d;->C2(I)V

    :cond_2
    :goto_0
    add-int/lit8 p3, p2, 0x3

    .line 27
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->g1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 28
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->g1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 29
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->g1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->g1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->G2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->g1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->g1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x9

    .line 33
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->g1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 34
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    invoke-static {p1}, Ll0/c0;->g1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_7
    add-int/2addr p2, v2

    .line 35
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    const-string p2, "persist.syu.reversefrontdoor"

    .line 36
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 37
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 38
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 39
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 40
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 41
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v4

    aput v0, p2, v3

    const/4 v0, 0x4

    .line 42
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 43
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 44
    :pswitch_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    add-int/lit8 p2, p2, 0x7

    .line 45
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_4

    .line 46
    invoke-static {v3}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :cond_4
    const/16 p2, 0x46

    if-lt p1, p2, :cond_5

    add-int/lit8 p1, p1, -0x46

    .line 47
    div-int/lit8 p2, p1, 0x2

    mul-int/2addr p2, v1

    add-int/lit16 p2, p2, 0x3e8

    rem-int/2addr p1, v2

    mul-int/2addr p1, p3

    add-int/2addr p2, p1

    goto :goto_2

    :cond_5
    sub-int/2addr p2, p1

    .line 48
    div-int/lit8 p1, p2, 0x2

    mul-int/2addr p1, v1

    rsub-int p1, p1, 0x3e8

    rem-int/2addr p2, v2

    mul-int/2addr p2, p3

    sub-int p2, p1, p2

    .line 49
    :goto_2
    invoke-static {p2}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    .line 50
    :pswitch_9
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    add-int/lit8 v0, p2, 0x2

    .line 51
    aget-byte v0, p1, v0

    add-int/2addr p2, v6

    .line 52
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    .line 53
    iput p2, p0, Lk0/gd;->c:I

    .line 54
    sget p2, Lk0/nt;->c:I

    if-ne p2, v4, :cond_b

    move p2, v3

    .line 55
    :goto_3
    iget-object v0, p0, Lk0/gd;->e:[[I

    array-length v1, v0

    if-ge p2, v1, :cond_7

    .line 56
    iget v1, p0, Lk0/gd;->c:I

    aget-object v2, v0, p2

    aget v2, v2, v3

    if-ne v1, v2, :cond_6

    if-eqz v1, :cond_7

    .line 57
    iput p2, p0, Lk0/gd;->b:I

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 58
    :cond_7
    :goto_4
    iget v1, p0, Lk0/gd;->c:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_9

    and-int/2addr p1, v5

    if-eqz p1, :cond_8

    .line 59
    array-length p1, v0

    if-ge p2, p1, :cond_12

    .line 60
    aget-object p1, v0, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 61
    :cond_8
    array-length p1, v0

    if-ge p2, p1, :cond_12

    .line 62
    iget p1, p0, Lk0/gd;->b:I

    aget-object p1, v0, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_9
    and-int/2addr p1, v5

    if-ne p1, v4, :cond_12

    .line 63
    sget p1, Lh0/c;->E:I

    if-eq p1, v6, :cond_a

    if-eq p1, p3, :cond_a

    const/16 p1, 0x12

    .line 64
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 65
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_a
    const/16 p1, 0x1a

    .line 66
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 67
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_b
    move p2, v3

    .line 68
    :goto_5
    iget-object p3, p0, Lk0/gd;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_d

    .line 69
    iget v0, p0, Lk0/gd;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_c

    if-eqz v0, :cond_d

    .line 70
    iput p2, p0, Lk0/gd;->b:I

    goto :goto_6

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_d
    :goto_6
    and-int/2addr p1, v5

    if-eqz p1, :cond_e

    .line 71
    array-length p1, p3

    if-ge p2, p1, :cond_12

    .line 72
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 73
    :cond_e
    array-length p1, p3

    if-gt p2, p1, :cond_12

    .line 74
    iget p1, p0, Lk0/gd;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 75
    :cond_f
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_10
    const/16 p3, 0x74

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 76
    aget-byte v5, p1, v1

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v4, [I

    .line 77
    aget-byte v5, p1, v1

    shr-int/2addr v5, v3

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v4, [I

    .line 78
    aget-byte v5, p1, v1

    shr-int/2addr v5, v4

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v0, v4, [I

    .line 79
    aget-byte v5, p1, v1

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v0, v4, [I

    .line 80
    aget-byte v1, p1, v1

    shr-int/2addr v1, v2

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 81
    aget-byte v1, p1, v1

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 82
    aget-byte v1, p1, v1

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x5

    .line 83
    aget-byte v1, p1, v1

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v0, v4, [I

    add-int/lit8 p2, p2, 0x6

    .line 84
    aget-byte p1, p1, p2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_11
    const/16 p3, 0x77

    new-array v0, v4, [I

    add-int/2addr p2, v2

    .line 85
    aget-byte p1, p1, p2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_12
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
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

    iget-object v1, p0, Lk0/gd;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/gd;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7c

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

    const/4 p3, 0x4

    if-eqz p1, :cond_3

    const/16 p4, 0x3eb

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq p1, p4, :cond_1

    const/16 p4, 0x3ed

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v2, [I

    const/16 p4, 0xe3

    aput p4, p1, v1

    const/16 p4, -0x7d

    aput p4, p1, v0

    const/4 p4, 0x2

    aput p4, p1, p4

    const/4 v2, 0x3

    aput v0, p1, v2

    .line 1
    aget p2, p2, v1

    add-int/2addr p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 2
    array-length p1, p2

    if-lez p1, :cond_4

    .line 3
    aget p1, p2, v1

    if-ne p1, v0, :cond_2

    new-array p1, v2, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p3, [I

    .line 6
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, p3, [I

    .line 7
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, p3, [I

    .line 8
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x1
        0x1
        0xe
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x1
        0x1
        0xf
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x1
        0x1
        0x10
    .end array-data
.end method
