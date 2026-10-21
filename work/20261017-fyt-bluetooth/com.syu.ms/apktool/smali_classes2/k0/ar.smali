.class public Lk0/ar;
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
    iput v0, p0, Lk0/ar;->c:I

    const/16 v1, 0xb

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

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v2, 0xa

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/ar;->d:[[I

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
        0x5
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x15
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x14
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
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

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

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_f

    const/16 p3, 0x29

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, p3, :cond_e

    const/16 p3, 0x3a

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eq v0, p3, :cond_c

    const/16 p3, 0x3c

    if-eq v0, p3, :cond_b

    const/16 p3, 0x40

    const/16 v2, 0xff

    if-eq v0, p3, :cond_a

    const/16 p3, 0x41

    if-eq v0, p3, :cond_9

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    and-int/2addr v0, v2

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v7, p1, v1

    and-int/2addr v7, v2

    add-int/lit8 v8, p2, 0x4

    .line 4
    aget-byte v9, p1, v8

    and-int/2addr v9, v2

    add-int/2addr p2, v5

    .line 5
    aget-byte v5, p1, p2

    and-int/2addr v5, v2

    if-nez v0, :cond_0

    if-nez v7, :cond_0

    if-nez v9, :cond_0

    if-nez v5, :cond_0

    .line 6
    invoke-static {v3}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v3, Ll0/c0;->g:I

    if-ne v3, v0, :cond_1

    sget v3, Ll0/c0;->h:I

    if-ne v3, v7, :cond_1

    sget v3, Ll0/c0;->i:I

    if-ne v3, v9, :cond_1

    sget v3, Ll0/c0;->j:I

    if-eq v3, v5, :cond_2

    .line 8
    :cond_1
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_2

    .line 9
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 10
    sput v4, Ll0/c0;->k:I

    .line 11
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 13
    sput v7, Ll0/c0;->h:I

    .line 14
    sput v9, Ll0/c0;->i:I

    .line 15
    sput v5, Ll0/c0;->j:I

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 17
    aget-byte p3, p1, v1

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 18
    aget-byte p3, p1, v8

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    invoke-static {p1}, Ll0/c0;->b1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v5

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    invoke-static {p1}, Ll0/c0;->b1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 24
    aget-byte p3, p1, p3

    const/16 v0, 0xa

    new-array v1, v6, [I

    shr-int/lit8 v4, p3, 0x7

    and-int/2addr v4, v6

    aput v4, v1, v3

    .line 25
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v1, v6, [I

    shr-int/lit8 v4, p3, 0x5

    and-int/2addr v4, v6

    aput v4, v1, v3

    .line 26
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v1, v6, [I

    shr-int/lit8 v4, p3, 0x4

    and-int/2addr v4, v6

    aput v4, v1, v3

    .line 27
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v1, v6, [I

    shr-int/lit8 v4, p3, 0x3

    and-int/2addr v4, v6

    aput v4, v1, v3

    .line 28
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v1, v6, [I

    shr-int/lit8 v4, p3, 0x2

    and-int/2addr v4, v6

    aput v4, v1, v3

    .line 29
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xf

    new-array v1, v6, [I

    shr-int/lit8 v4, p3, 0x1

    and-int/2addr v4, v6

    aput v4, v1, v3

    .line 30
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3f

    new-array v1, v6, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v6

    aput p3, v1, v3

    .line 31
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 32
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 33
    aget-byte p3, p1, p3

    packed-switch p3, :pswitch_data_1

    move p3, v3

    :goto_1
    move v0, p3

    :goto_2
    move v1, v0

    goto :goto_3

    :pswitch_3
    move v1, v3

    move p3, v6

    move v0, p3

    goto :goto_3

    :pswitch_4
    move p3, v6

    goto :goto_1

    :pswitch_5
    move v0, v3

    move p3, v6

    move v1, p3

    goto :goto_3

    :pswitch_6
    move v0, v3

    move v1, v0

    move p3, v6

    goto :goto_3

    :pswitch_7
    move p3, v3

    move v0, p3

    move v1, v6

    goto :goto_3

    :pswitch_8
    move p3, v3

    move v0, v6

    goto :goto_2

    :pswitch_9
    move p3, v3

    move v1, p3

    move v0, v6

    :goto_3
    const/16 v4, 0x12

    new-array v7, v6, [I

    aput p3, v7, v3

    .line 34
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v4, v6, [I

    aput v0, v4, v3

    .line 35
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v6, [I

    aput v1, v0, v3

    .line 36
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v5

    .line 37
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0x1b

    if-eqz p1, :cond_4

    const/16 p3, 0x1e

    if-eq p1, p3, :cond_3

    new-array p3, v6, [I

    aput p1, p3, v3

    .line 38
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_3
    new-array p1, v6, [I

    const/4 p3, -0x3

    aput p3, p1, v3

    .line 39
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_4
    new-array p1, v6, [I

    const/4 p3, -0x2

    aput p3, p1, v3

    .line 40
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_a
    add-int/lit8 p3, p2, 0x2

    .line 41
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 42
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 43
    iput p2, p0, Lk0/ar;->c:I

    move p2, v3

    .line 44
    :goto_4
    iget-object p3, p0, Lk0/ar;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 45
    iget v0, p0, Lk0/ar;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_6

    .line 46
    iput p2, p0, Lk0/ar;->b:I

    goto :goto_5

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    and-int/2addr p1, v2

    if-ne p1, v6, :cond_7

    .line 47
    array-length p1, p3

    if-ge p2, p1, :cond_10

    .line 48
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_7
    if-nez p1, :cond_10

    .line 49
    iget p1, p0, Lk0/ar;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_8

    if-eq p1, v2, :cond_8

    .line 50
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 51
    :cond_8
    iput v2, p0, Lk0/ar;->b:I

    goto/16 :goto_7

    :cond_9
    const/16 p3, 0x64

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x2

    .line 52
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 53
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x4

    .line 54
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v6, [I

    add-int/2addr p2, v5

    .line 55
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_a
    const/16 p3, 0x62

    new-array v0, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 56
    aget-byte v4, p1, v4

    and-int/2addr v4, v2

    aput v4, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v6, [I

    add-int/2addr p2, v1

    .line 57
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_b
    add-int/2addr p2, v2

    .line 58
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v6

    aget-byte p1, p1, p2

    shr-int/2addr p1, v5

    and-int/2addr p1, v6

    invoke-static {p3, p1, v3}, Ll0/c0;->N1(III)V

    goto :goto_7

    :cond_c
    add-int/2addr p2, v2

    .line 59
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 60
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_d

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 61
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 62
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_d
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 63
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 64
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 65
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 66
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 67
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v6

    aput p1, p2, v3

    .line 68
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_e
    add-int/lit8 p3, p2, 0x2

    .line 69
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 70
    aget-byte p1, p1, p2

    const/16 p2, 0x157c

    .line 71
    invoke-static {p1, p3, v3, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_7

    .line 72
    :cond_f
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_10
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
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

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0xc6

    aput p3, p1, v4

    aput v3, p1, v3

    .line 1
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v3, p1, v3

    .line 2
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p3, p1, v2

    const/16 p3, 0x86

    aput p3, p1, v4

    const/4 p3, 0x6

    aput p3, p1, v3

    .line 3
    aget v2, p2, v2

    aput v2, p1, v1

    aget v2, p2, v4

    aput v2, p1, v0

    aget v2, p2, v3

    aput v2, p1, p4

    aget v1, p2, v1

    aput v1, p1, p3

    const/4 p3, 0x7

    aget v0, p2, v0

    aput v0, p1, p3

    const/16 p3, 0x8

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
