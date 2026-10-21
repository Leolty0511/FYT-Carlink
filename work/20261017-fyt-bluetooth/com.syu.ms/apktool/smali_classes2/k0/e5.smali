.class public Lk0/e5;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/e5;->c:I

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

    iput-object v1, p0, Lk0/e5;->d:[[I

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
        0x6
        0xc
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
        0x8
        0xd
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    const/4 v6, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v0, p1, v0

    const/16 v2, 0x63

    new-array v3, v5, [I

    aput v0, v3, v4

    .line 3
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2, v3, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 4
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 5
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 6
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x5

    .line 7
    aget-byte v2, p1, v2

    add-int/lit8 v6, p2, 0x6

    .line 8
    aget-byte v6, p1, v6

    add-int/lit8 v7, p2, 0x7

    .line 9
    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0x8

    .line 10
    aget-byte v8, p1, v8

    add-int/lit8 p2, p2, 0x9

    .line 11
    aget-byte p1, p1, p2

    const p2, 0xffff

    and-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    and-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    add-int/2addr v1, v6

    and-int/2addr v1, p2

    and-int/2addr v1, p2

    and-int v2, v7, p2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    and-int v6, v8, p2

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v2, v6

    add-int/2addr v2, p1

    and-int p1, v2, p2

    and-int/2addr p1, p2

    and-int/2addr p3, v3

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr v0, v3

    add-int/2addr p3, v0

    and-int/2addr p3, p2

    const/16 v0, 0x66

    new-array v2, v5, [I

    and-int/2addr p2, p3

    aput p2, v2, v4

    .line 12
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x64

    new-array p3, v5, [I

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v1

    aput p1, p3, v4

    .line 13
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 14
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 15
    aget-byte p1, p1, p2

    const/16 p2, 0x65

    new-array v0, v5, [I

    and-int/2addr p3, v3

    aput p3, v0, v4

    .line 16
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x67

    new-array p3, v5, [I

    and-int/2addr p1, v3

    aput p1, p3, v4

    .line 17
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_3
    add-int/2addr p2, v6

    .line 18
    aget-byte p1, p1, p2

    and-int/lit8 p2, p1, 0x1

    if-ne p2, v5, :cond_7

    const-string p2, "persist.syu.reversefrontdoor"

    .line 19
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 20
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 21
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 22
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 23
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 24
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 25
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x5

    .line 26
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 27
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_3

    .line 29
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    add-int/lit8 p3, p2, 0x2

    .line 30
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 31
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 32
    iput p2, p0, Lk0/e5;->c:I

    move p2, v4

    .line 33
    :goto_1
    iget-object p3, p0, Lk0/e5;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_4

    .line 34
    iget v0, p0, Lk0/e5;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_3

    if-eqz v0, :cond_4

    .line 35
    iput p2, p0, Lk0/e5;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    and-int/2addr p1, v3

    if-eqz p1, :cond_5

    .line 36
    array-length p1, p3

    if-ge p2, p1, :cond_7

    .line 37
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 38
    :cond_5
    iget p1, p0, Lk0/e5;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_6

    if-eq p1, v3, :cond_6

    .line 39
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 40
    :cond_6
    iput v3, p0, Lk0/e5;->b:I

    :cond_7
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x68

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

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 v0, 0x90

    aput v0, p1, v3

    aput v2, p1, v2

    .line 2
    aget p2, p2, v4

    aput p2, p1, p4

    aput v4, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 v0, 0xc7

    aput v0, p1, v3

    aput v2, p1, v2

    .line 4
    aget p2, p2, v4

    aput p2, p1, p4

    aput v4, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
