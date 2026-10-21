.class public Lk0/l5;
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
    iput v0, p0, Lk0/l5;->c:I

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

    iput-object v1, p0, Lk0/l5;->d:[[I

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
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0xd
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xe
        0x3
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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x21

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v0, :cond_8

    const/16 v0, 0x23

    if-eq p3, v0, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    new-array v0, v3, [I

    shr-int/lit8 v4, p3, 0x7

    and-int/2addr v4, v3

    aput v4, v0, v2

    const/16 v4, 0xa

    .line 3
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x6

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 4
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x5

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 5
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x3

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 6
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x41

    new-array v5, v3, [I

    and-int/2addr p3, v3

    aput p3, v5, v2

    .line 7
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 8
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    packed-switch p3, :pswitch_data_0

    move p3, v2

    :goto_0
    move v0, p3

    :goto_1
    move v5, v0

    goto :goto_2

    :pswitch_0
    move p3, v3

    goto :goto_0

    :pswitch_1
    move v5, v2

    move p3, v3

    move v0, p3

    goto :goto_2

    :pswitch_2
    move p3, v2

    move v5, p3

    move v0, v3

    goto :goto_2

    :pswitch_3
    move p3, v2

    move v0, v3

    goto :goto_1

    :pswitch_4
    move p3, v2

    move v0, p3

    move v5, v3

    goto :goto_2

    :pswitch_5
    move v0, v2

    move p3, v3

    move v5, p3

    goto :goto_2

    :pswitch_6
    move v0, v2

    move v5, v0

    move p3, v3

    :goto_2
    const/16 v6, 0x13

    new-array v7, v3, [I

    aput p3, v7, v2

    .line 9
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v6, v3, [I

    aput v0, v6, v2

    .line 10
    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v3, [I

    aput v5, v0, v2

    .line 11
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 12
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    const/16 v0, 0x15

    new-array v5, v3, [I

    aput p3, v5, v2

    .line 13
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 14
    aget-byte v0, p1, p3

    and-int/2addr v0, v1

    const-string v5, "persist.fyt.reversetemp"

    .line 15
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, p2, 0x6

    .line 16
    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    :cond_1
    const/4 v6, -0x3

    const/4 v7, -0x2

    const/16 v8, 0x1f

    const/16 v9, 0x1b

    if-eqz v0, :cond_3

    if-eq v0, v8, :cond_2

    new-array v10, v3, [I

    add-int/lit8 v0, v0, 0x11

    aput v0, v10, v2

    .line 17
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_2
    new-array v0, v3, [I

    aput v6, v0, v2

    .line 18
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_3
    new-array v0, v3, [I

    aput v7, v0, v2

    .line 19
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v0, p2, 0x6

    .line 20
    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    .line 21
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 22
    aget-byte p3, p1, p3

    and-int/lit16 v0, p3, 0xff

    :cond_4
    const/16 p3, 0x1c

    if-eqz v0, :cond_6

    if-eq v0, v8, :cond_5

    new-array v3, v3, [I

    add-int/lit8 v0, v0, 0x11

    aput v0, v3, v2

    .line 23
    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_5
    new-array v0, v3, [I

    aput v6, v0, v2

    .line 24
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_6
    new-array v0, v3, [I

    aput v7, v0, v2

    .line 25
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 26
    :goto_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p2, p2, 0x7

    .line 27
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_7

    and-int/lit8 p1, p1, 0x7f

    mul-int/2addr p1, v4

    rsub-int p1, p1, 0x3e8

    goto :goto_5

    :cond_7
    and-int/lit8 p1, p1, 0x7f

    mul-int/2addr p1, v4

    add-int/lit16 p1, p1, 0x3e8

    .line 28
    :goto_5
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_8

    .line 29
    :cond_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p3, p2, 0x2

    .line 30
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 31
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 32
    iput p2, p0, Lk0/l5;->c:I

    move p2, v2

    .line 33
    :goto_6
    iget-object p3, p0, Lk0/l5;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_a

    .line 34
    iget v0, p0, Lk0/l5;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v2

    if-ne v0, v4, :cond_9

    if-eqz v0, :cond_a

    .line 35
    iput p2, p0, Lk0/l5;->b:I

    goto :goto_7

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    and-int/2addr p1, v1

    if-ne p1, v3, :cond_b

    .line 36
    array-length p1, p3

    if-ge p2, p1, :cond_d

    .line 37
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_b
    if-nez p1, :cond_d

    .line 38
    iget p1, p0, Lk0/l5;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_c

    if-eq p1, v1, :cond_c

    .line 39
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 40
    :cond_c
    iput v1, p0, Lk0/l5;->b:I

    :cond_d
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .locals 0

    return-void
.end method
