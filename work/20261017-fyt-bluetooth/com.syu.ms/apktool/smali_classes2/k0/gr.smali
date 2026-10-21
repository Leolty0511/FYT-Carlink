.class public Lk0/gr;
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
    iput v0, p0, Lk0/gr;->c:I

    const/16 v1, 0xa

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

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/gr;->d:[[I

    .line 4
    new-instance v0, Lk0/gr$a;

    invoke-direct {v0, p0}, Lk0/gr$a;-><init>(Lk0/gr;)V

    iput-object v0, p0, Lk0/gr;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/gr$b;

    invoke-direct {v0, p0}, Lk0/gr$b;-><init>(Lk0/gr;)V

    iput-object v0, p0, Lk0/gr;->f:Ljava/lang/Runnable;

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

    :array_9
    .array-data 4
        0xb
        0x1d
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
    iget-object v0, p0, Lk0/gr;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    .line 10
    iget-object v0, p0, Lk0/gr;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, 0x24

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v0, v1, :cond_e

    const/16 v1, 0x7d

    const/16 v9, 0xb

    if-eq v0, v1, :cond_a

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x1e77

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x4

    .line 5
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    add-int/2addr p2, v6

    .line 6
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0xa

    new-array v10, v5, [I

    shr-int/lit8 v11, p3, 0x7

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 7
    invoke-static {p2, v10}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v10, p3, 0x6

    and-int/2addr v10, v5

    aput v10, p2, v4

    .line 8
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v9, v5, [I

    shr-int/lit8 v10, p3, 0x5

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 9
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v9, v5, [I

    shr-int/lit8 v10, p3, 0x4

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 10
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x35

    new-array v9, v5, [I

    shr-int/lit8 v10, p3, 0x2

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 11
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array v9, v5, [I

    shr-int/2addr p3, v5

    and-int/2addr p3, v5

    aput p3, v9, v4

    .line 12
    invoke-static {p2, v9}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 p2, v0, 0x4

    and-int/lit8 p2, p2, 0xf

    if-eq p2, v5, :cond_3

    if-eq p2, v8, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v7, :cond_0

    move p2, v4

    move p3, p2

    :goto_0
    move v2, p3

    goto :goto_1

    :cond_0
    move p3, v4

    move p2, v5

    move v2, p2

    goto :goto_1

    :cond_1
    move p2, v4

    move p3, p2

    move v2, v5

    goto :goto_1

    :cond_2
    move p2, v4

    move p3, v5

    goto :goto_0

    :cond_3
    move p2, v4

    move v2, p2

    move p3, v5

    :goto_1
    const/16 v7, 0x12

    new-array v8, v5, [I

    aput p2, v8, v4

    .line 13
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array v7, v5, [I

    aput p3, v7, v4

    .line 14
    invoke-static {p2, v7}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v5, [I

    aput v2, p3, v4

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v5, [I

    and-int/lit8 v0, v0, 0xf

    aput v0, p3, v4

    .line 16
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    if-eqz v1, :cond_6

    const/16 p2, 0x1e

    if-eq v1, p2, :cond_5

    if-lt v1, v5, :cond_4

    const/16 p2, 0x1d

    if-gt v1, p2, :cond_4

    mul-int/2addr v1, v6

    add-int/lit16 v1, v1, 0xaa

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    goto :goto_2

    :cond_5
    const/4 v1, -0x3

    goto :goto_2

    :cond_6
    const/4 v1, -0x2

    :goto_2
    const/16 p2, 0x1b

    new-array p3, v5, [I

    aput v1, p3, v4

    .line 17
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xfe

    if-eq p1, p2, :cond_8

    if-eq p1, v3, :cond_8

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    mul-int/2addr p1, v6

    add-int/lit16 p1, p1, 0x258

    .line 18
    invoke-static {p1}, Lu0/d;->B3(I)V

    goto/16 :goto_7

    .line 19
    :cond_8
    :goto_3
    invoke-static {v4}, Lu0/d;->B3(I)V

    goto/16 :goto_7

    :pswitch_2
    const/16 p3, 0x62

    new-array v0, v5, [I

    add-int/2addr p2, v8

    .line 20
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v5

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v5, [I

    .line 21
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 22
    :cond_9
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    add-int/lit8 p3, p2, 0x2

    .line 23
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    const/16 v0, 0x419

    const/4 v1, 0x0

    if-eq p3, v5, :cond_c

    if-eq p3, v2, :cond_b

    goto/16 :goto_7

    :cond_b
    add-int/lit8 p3, p2, 0x4

    .line 24
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v6, 0xff00

    and-int/2addr p3, v6

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v5, [I

    aput p1, p3, v4

    .line 25
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 26
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    new-array p3, v8, [I

    aput v5, p3, v4

    aput p1, p3, v5

    invoke-static {p2, v0, p3, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    .line 27
    :cond_c
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    new-array v6, v8, [I

    aput v9, v6, v4

    add-int/2addr p2, v2

    aget-byte v8, p1, p2

    and-int/2addr v3, v8

    aput v3, v6, v5

    invoke-static {p3, v0, v6, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const-string p3, "persist.fyt.leftrightlighttype"

    .line 28
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_d

    .line 29
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->b(III)V

    goto/16 :goto_7

    .line 30
    :cond_d
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :cond_e
    add-int/2addr p2, v8

    .line 31
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 32
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_f

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 33
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 34
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 35
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 36
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 37
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 38
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 39
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_10
    add-int/lit8 p3, p2, 0x2

    .line 40
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 41
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 42
    iput p2, p0, Lk0/gr;->c:I

    move p2, v4

    .line 43
    :goto_5
    iget-object p3, p0, Lk0/gr;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_12

    .line 44
    iget v0, p0, Lk0/gr;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_11

    if-eqz v0, :cond_12

    .line 45
    iput p2, p0, Lk0/gr;->b:I

    goto :goto_6

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_12
    :goto_6
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_13

    .line 46
    array-length p1, p3

    if-ge p2, p1, :cond_15

    .line 47
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_13
    if-nez p1, :cond_15

    .line 48
    iget p1, p0, Lk0/gr;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_14

    if-eq p1, v3, :cond_14

    .line 49
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 50
    :cond_14
    iput v3, p0, Lk0/gr;->b:I

    :cond_15
    :goto_7
    return-void

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

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/gr;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/gr;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x64

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

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x75

    aput v0, p1, v4

    aput v2, p1, v2

    .line 1
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0xe0

    aput v0, p1, v4

    aput v2, p1, v2

    .line 2
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
