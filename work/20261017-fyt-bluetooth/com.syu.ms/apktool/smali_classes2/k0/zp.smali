.class public Lk0/zp;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/zp;->c:I

    const/16 v1, 0x9

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

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/zp;->d:[[I

    .line 4
    new-instance v1, Lk0/zp$a;

    invoke-direct {v1, p0}, Lk0/zp$a;-><init>(Lk0/zp;)V

    iput-object v1, p0, Lk0/zp;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lk0/zp$b;

    invoke-direct {v1, p0}, Lk0/zp$b;-><init>(Lk0/zp;)V

    iput-object v1, p0, Lk0/zp;->f:Ljava/lang/Runnable;

    .line 6
    iput v0, p0, Lk0/zp;->g:I

    .line 7
    new-instance v0, Lk0/zp$c;

    invoke-direct {v0, p0}, Lk0/zp$c;-><init>(Lk0/zp;)V

    iput-object v0, p0, Lk0/zp;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/zp$d;

    invoke-direct {v0, p0}, Lk0/zp$d;-><init>(Lk0/zp;)V

    iput-object v0, p0, Lk0/zp;->i:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x6
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

    iget-object v1, p0, Lk0/zp;->h:Ljava/lang/Runnable;

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
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    .line 9
    iput v1, v0, Lk0/mt;->l:I

    .line 10
    iget-object v0, p0, Lk0/zp;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/zp;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/16 v2, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x24

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v0, v1, :cond_f

    const/16 v1, 0x7d

    const/16 v9, 0x64

    if-eq v0, v1, :cond_b

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 3
    aget-byte p1, p1, p2

    const/16 p2, 0x1e78

    .line 4
    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :pswitch_1
    const/16 p3, 0xa

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 5
    aget-byte v9, p1, v1

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v0, v5, [I

    .line 6
    aget-byte v9, p1, v1

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v5, [I

    .line 7
    aget-byte v9, p1, v1

    shr-int/2addr v9, v6

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v0, v5, [I

    .line 8
    aget-byte v9, p1, v1

    shr-int/2addr v9, v7

    and-int/2addr v9, v5

    aput v9, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 9
    aget-byte v0, p1, v1

    shr-int/2addr v0, v5

    and-int/2addr v0, v5

    aput v0, p3, v4

    const/16 v0, 0xf

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x34

    new-array v9, v5, [I

    .line 10
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v9, v4

    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 11
    aget-byte v1, p1, p3

    shr-int/2addr v1, v7

    and-int/2addr v1, v0

    if-eq v1, v5, :cond_4

    if-eq v1, v8, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_0

    move v1, v4

    move v3, v1

    :goto_0
    move v7, v3

    goto :goto_1

    :cond_0
    move v3, v4

    move v7, v3

    move v1, v5

    goto :goto_1

    :cond_1
    move v3, v4

    move v1, v5

    move v7, v1

    goto :goto_1

    :cond_2
    move v1, v4

    move v3, v1

    move v7, v5

    goto :goto_1

    :cond_3
    move v1, v4

    move v3, v5

    goto :goto_0

    :cond_4
    move v1, v4

    move v7, v1

    move v3, v5

    :goto_1
    const/16 v8, 0x12

    new-array v9, v5, [I

    aput v1, v9, v4

    .line 12
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v8, v5, [I

    aput v3, v8, v4

    .line 13
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v3, v5, [I

    aput v7, v3, v4

    .line 14
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v3, v5, [I

    .line 15
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    aput p3, v3, v4

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    const/16 v0, 0x1b

    if-eqz p3, :cond_7

    const/16 v1, 0x1e

    if-eq p3, v1, :cond_6

    if-lt p3, v5, :cond_5

    const/16 v1, 0x1d

    if-gt p3, v1, :cond_5

    new-array v1, v5, [I

    mul-int/2addr p3, v6

    add-int/lit16 p3, p3, 0xaa

    aput p3, v1, v4

    .line 17
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array p3, v5, [I

    const/4 v1, -0x1

    aput v1, p3, v4

    .line 18
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array p3, v5, [I

    const/4 v1, -0x3

    aput v1, p3, v4

    .line 19
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array p3, v5, [I

    const/4 v1, -0x2

    aput v1, p3, v4

    .line 20
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/2addr p2, v6

    .line 21
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0xfe

    if-eq p1, p2, :cond_9

    if-eq p1, v2, :cond_9

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    mul-int/2addr p1, v6

    add-int/lit16 p1, p1, 0x258

    .line 22
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    .line 23
    :cond_9
    :goto_3
    invoke-static {v4}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :pswitch_2
    const/16 p3, 0x62

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 24
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/2addr p2, v3

    .line 25
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 26
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v5

    aput p1, p3, v4

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 27
    :cond_a
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    add-int/lit8 p3, p2, 0x2

    .line 28
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    if-eq p3, v5, :cond_d

    if-eq p3, v3, :cond_c

    goto/16 :goto_7

    :cond_c
    add-int/lit8 p3, p2, 0x4

    .line 29
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    or-int/2addr p1, p3

    div-int/2addr p1, v9

    const/16 p2, 0x407

    new-array p3, v5, [I

    aput p1, p3, v4

    .line 30
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 31
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v8, [I

    aput v5, v0, v4

    aput p1, v0, v5

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_d
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 32
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_e

    add-int/2addr p2, v3

    .line 33
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->b(III)V

    goto/16 :goto_7

    :cond_e
    add-int/2addr p2, v3

    .line 34
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :cond_f
    add-int/2addr p2, v8

    .line 35
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 36
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_10

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 37
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 38
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 39
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 40
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 41
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 42
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 43
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 44
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 45
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 46
    iput p2, p0, Lk0/zp;->c:I

    move p2, v4

    .line 47
    :goto_5
    iget-object p3, p0, Lk0/zp;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_13

    .line 48
    iget v0, p0, Lk0/zp;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_12

    if-eqz v0, :cond_13

    .line 49
    iput p2, p0, Lk0/zp;->b:I

    goto :goto_6

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_13
    :goto_6
    and-int/2addr p1, v2

    if-ne p1, v5, :cond_14

    .line 50
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 51
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_14
    if-nez p1, :cond_16

    .line 52
    iget p1, p0, Lk0/zp;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_15

    if-eq p1, v2, :cond_15

    .line 53
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 54
    :cond_15
    iput v2, p0, Lk0/zp;->b:I

    :cond_16
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/zp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/zp;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/zp;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/zp;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

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

    const/16 v0, 0x75

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

    const/16 v0, 0xe0

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

    const/16 v0, 0x90

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
