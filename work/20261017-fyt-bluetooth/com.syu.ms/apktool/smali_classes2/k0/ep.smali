.class public Lk0/ep;
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
    iput v0, p0, Lk0/ep;->c:I

    const/16 v1, 0xf

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

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v2, 0xe

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/ep;->d:[[I

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
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x7
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x8
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x1f
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1e
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

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->j:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    iput v2, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 8

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x7

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    const/16 v1, 0xa

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 5
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x5

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 6
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v6, v5, [I

    shr-int/2addr p3, v5

    and-int/2addr p3, v5

    aput p3, v6, v4

    .line 7
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x7

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 8
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x6

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 9
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x5

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 10
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x31

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x4

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 11
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x3

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 12
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v1, v5, [I

    and-int/2addr v0, v2

    aput v0, v1, v4

    .line 13
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x4

    .line 14
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x1b

    if-nez p1, :cond_2

    new-array p1, v5, [I

    const/4 p3, -0x2

    aput p3, p1, v4

    .line 15
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_2
    if-ne p1, v3, :cond_3

    new-array p1, v5, [I

    const/4 p3, -0x3

    aput p3, p1, v4

    .line 16
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_3
    new-array p3, v5, [I

    aput p1, p3, v4

    .line 17
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 18
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 19
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 20
    iput p2, p0, Lk0/ep;->c:I

    move p2, v4

    .line 21
    :goto_0
    iget-object p3, p0, Lk0/ep;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 22
    iget v0, p0, Lk0/ep;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_6

    .line 23
    iput p2, p0, Lk0/ep;->b:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 24
    :cond_6
    :goto_1
    iget v0, p0, Lk0/ep;->c:I

    packed-switch v0, :pswitch_data_0

    and-int/2addr p1, v3

    if-ne p1, v5, :cond_b

    .line 25
    array-length p1, p3

    if-ge p2, p1, :cond_d

    .line 26
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    :pswitch_0
    move p2, v4

    :goto_2
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1e

    if-ge p2, p3, :cond_7

    .line 27
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 28
    :cond_7
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    goto :goto_6

    :pswitch_1
    move p2, v4

    :goto_3
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_8

    .line 29
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 30
    :cond_8
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    goto :goto_6

    :pswitch_2
    move p2, v4

    :goto_4
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x8

    if-ge p2, p3, :cond_9

    .line 31
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 32
    :cond_9
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    goto :goto_6

    :pswitch_3
    move p2, v4

    :goto_5
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_a

    .line 33
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 34
    :cond_a
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_b
    if-nez p1, :cond_d

    .line 35
    iget p1, p0, Lk0/ep;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_c

    if-eq p1, v3, :cond_c

    .line 36
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 37
    :cond_c
    iput v3, p0, Lk0/ep;->b:I

    :cond_d
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0xc
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

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0xe0

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput v0, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
