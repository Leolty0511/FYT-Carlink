.class public Lk0/a1;
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
    iput v0, p0, Lk0/a1;->c:I

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

    iput-object v1, p0, Lk0/a1;->d:[[I

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
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x43
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x44
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

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 8

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0xa

    const/16 v1, 0xff

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_5

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xfff

    invoke-static {p3}, Ll0/c0;->r1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 4
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xfff

    invoke-static {v0}, Ll0/c0;->r1(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 5
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xfff

    invoke-static {p3}, Ll0/c0;->r1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/2addr p2, v2

    .line 6
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xfff

    invoke-static {p1}, Ll0/c0;->r1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_5

    :pswitch_1
    const/16 p3, 0x62

    new-array v0, v7, [I

    add-int/2addr p2, v5

    .line 7
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 8
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/lit8 p3, p2, 0x2

    .line 9
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 10
    aget-byte p1, p1, p2

    const/16 p2, 0x15e0

    .line 11
    invoke-static {p3, p1, v7, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    .line 12
    :pswitch_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/2addr p2, v5

    .line 13
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    .line 14
    div-int/lit8 p2, p1, 0x2

    .line 15
    rem-int/2addr p1, v5

    mul-int/lit8 p3, p2, 0xa

    add-int/2addr p3, p1

    const/16 v1, 0x190

    if-ge p3, v1, :cond_1

    if-eqz p1, :cond_0

    rsub-int/lit8 p2, p2, 0x28

    sub-int/2addr p2, v7

    goto :goto_0

    :cond_0
    rsub-int/lit8 p2, p2, 0x28

    :goto_0
    mul-int/2addr p2, v0

    rsub-int p2, p2, 0x3e8

    mul-int/2addr p1, v4

    sub-int/2addr p2, p1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x28

    mul-int/2addr p2, v0

    add-int/lit16 p2, p2, 0x3e8

    mul-int/2addr p1, v4

    add-int/2addr p2, p1

    .line 16
    :goto_1
    invoke-static {p2}, Lu0/d;->A3(I)V

    goto/16 :goto_5

    :pswitch_4
    add-int/2addr p2, v5

    .line 17
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 18
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 19
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 20
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_2
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 21
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 22
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 23
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 24
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 25
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 26
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_5
    add-int/lit8 p3, p2, 0x2

    .line 27
    aget-byte p3, p1, p3

    const/16 v1, 0xc

    new-array v3, v7, [I

    and-int/lit8 v5, p3, 0x1

    aput v5, v3, v6

    .line 28
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x37

    new-array v3, v7, [I

    shr-int/lit8 v5, p3, 0x1

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 29
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v5, p3, 0x2

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 30
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v3, v7, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 31
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v3, v7, [I

    shr-int/lit8 v5, p3, 0x4

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 32
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v3, v7, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 33
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v3, v7, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 34
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v7

    aput p3, v1, v6

    .line 35
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 36
    aget-byte p3, p1, p3

    and-int/lit8 v0, p3, 0xf

    const/16 v1, 0x15

    new-array v3, v7, [I

    aput v0, v3, v6

    .line 37
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x12

    new-array v1, v7, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v7

    aput v3, v1, v6

    .line 38
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v1, v7, [I

    shr-int/lit8 v3, p3, 0x6

    and-int/2addr v3, v7

    aput v3, v1, v6

    .line 39
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v7, [I

    shr-int/2addr p3, v4

    and-int/2addr p3, v7

    aput p3, v1, v6

    .line 40
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 41
    invoke-static {p3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/16 v0, 0x1c

    const/16 v1, 0x1b

    if-eqz p3, :cond_3

    new-array p3, v7, [I

    add-int/lit8 v3, p2, 0x5

    .line 42
    aget-byte v3, p1, v3

    aput v3, p3, v6

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    add-int/2addr p2, v2

    .line 43
    aget-byte p1, p1, p2

    aput p1, p3, v6

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_3
    new-array p3, v7, [I

    add-int/lit8 v2, p2, 0x4

    .line 44
    aget-byte v2, p1, v2

    aput v2, p3, v6

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v7, [I

    add-int/2addr p2, v4

    .line 45
    aget-byte p1, p1, p2

    aput p1, p3, v6

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 46
    :pswitch_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/lit8 p3, p2, 0x2

    .line 47
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 48
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 49
    iput p2, p0, Lk0/a1;->c:I

    move p2, v6

    .line 50
    :goto_3
    iget-object p3, p0, Lk0/a1;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_5

    .line 51
    iget v0, p0, Lk0/a1;->c:I

    aget-object v2, p3, p2

    aget v2, v2, v6

    if-ne v0, v2, :cond_4

    if-eqz v0, :cond_5

    .line 52
    iput p2, p0, Lk0/a1;->b:I

    goto :goto_4

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    and-int/2addr p1, v1

    if-eqz p1, :cond_6

    .line 53
    array-length p1, p3

    if-ge p2, p1, :cond_8

    .line 54
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 55
    :cond_6
    iget p1, p0, Lk0/a1;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_7

    if-eq p1, v1, :cond_7

    .line 56
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 57
    :cond_7
    iput v1, p0, Lk0/a1;->b:I

    :cond_8
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
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

    const/16 p3, 0x63

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

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 2
    aget p3, p2, p1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 3
    aput p3, p2, p1

    .line 4
    :cond_1
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/a1;->a3(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x87

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
