.class public Lk0/da;
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
    iput v0, p0, Lk0/da;->c:I

    const/4 v1, 0x7

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

    const/4 v2, 0x6

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/da;->d:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x23
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

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    return-void

    :array_0
    .array-data 4
        0xe3
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public U2([BII)V
    .locals 7

    add-int/lit8 p3, p2, 0x0

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x23

    const/4 v1, 0x3

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v0, :cond_2

    const/16 v0, 0xa

    const/16 v5, 0x8

    const/4 v6, 0x2

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/2addr p2, v1

    .line 3
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/4 p2, 0x7

    new-array v0, v4, [I

    shl-int/2addr p3, v5

    or-int/2addr p1, p3

    aput p1, v0, v3

    .line 4
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_1
    add-int/2addr p2, v6

    .line 5
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    new-array p2, v4, [I

    aput p1, p2, v3

    .line 6
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 7
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/2addr p2, v1

    .line 8
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0xb

    new-array v0, v4, [I

    shl-int/2addr p3, v5

    or-int/2addr p1, p3

    aput p1, v0, v3

    .line 9
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 10
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/2addr p2, v1

    .line 11
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0xc

    new-array v0, v4, [I

    shl-int/2addr p3, v5

    or-int/2addr p1, p3

    aput p1, v0, v3

    .line 12
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/2addr p2, v1

    .line 14
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0x9

    new-array v0, v4, [I

    shl-int/2addr p3, v5

    or-int/2addr p1, p3

    aput p1, v0, v3

    .line 15
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_5
    add-int/lit8 p3, p2, 0x2

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/2addr p2, v1

    .line 17
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    new-array p2, v4, [I

    shl-int/2addr p3, v5

    or-int/2addr p1, p3

    aput p1, p2, v3

    .line 18
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_6
    add-int/2addr p2, v6

    .line 19
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 20
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 21
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 22
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 23
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 24
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/4 p2, 0x4

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x1

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 25
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 26
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 27
    :pswitch_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    add-int/2addr p2, v6

    .line 28
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_1

    and-int/lit8 p1, p1, 0x7f

    sub-int/2addr v2, p1

    add-int/2addr v2, v4

    mul-int/2addr v2, v0

    rsub-int p1, v2, 0x3e8

    goto :goto_1

    :cond_1
    and-int/lit8 p1, p1, 0x7f

    mul-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x3e8

    .line 29
    :goto_1
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_4

    .line 30
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    add-int/lit8 p3, p2, 0x2

    .line 31
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 32
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 33
    iput p2, p0, Lk0/da;->c:I

    move p2, v3

    .line 34
    :goto_2
    iget-object p3, p0, Lk0/da;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_4

    .line 35
    iget v0, p0, Lk0/da;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_3

    if-eqz v0, :cond_4

    .line 36
    iput p2, p0, Lk0/da;->b:I

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    and-int/2addr p1, v2

    if-eqz p1, :cond_5

    .line 37
    array-length p1, p3

    if-ge p2, p1, :cond_7

    .line 38
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 39
    :cond_5
    iget p1, p0, Lk0/da;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_6

    if-eq p1, v2, :cond_6

    .line 40
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 41
    :cond_6
    iput v2, p0, Lk0/da;->b:I

    :cond_7
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch -0x7f
        :pswitch_7
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
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xd

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
