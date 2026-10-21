.class public Lk0/kr;
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
    iput v0, p0, Lk0/kr;->c:I

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

    iput-object v1, p0, Lk0/kr;->d:[[I

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
        0x5
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 4

    if-eqz p1, :cond_9

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v3

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v1, v0}, Lk0/kr;->a3(II)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v3, v0}, Lk0/kr;->a3(II)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v3

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v1, v0}, Lk0/kr;->a3(II)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v3, v0}, Lk0/kr;->a3(II)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v1, v3}, Lk0/kr;->a3(II)V

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v3, v3}, Lk0/kr;->a3(II)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v3

    const/16 v1, 0x8

    const/16 v2, 0xc

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    .line 14
    invoke-virtual {p0, v1, v0}, Lk0/kr;->a3(II)V

    goto :goto_0

    .line 15
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_9

    .line 16
    invoke-virtual {p0, v1, v0}, Lk0/kr;->a3(II)V

    goto :goto_0

    .line 17
    :pswitch_5
    aget p1, p1, v3

    const/16 v1, 0x10

    const/16 v2, 0x41

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    .line 19
    invoke-virtual {p0, v1, v0}, Lk0/kr;->a3(II)V

    goto :goto_0

    .line 20
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_9

    .line 21
    invoke-virtual {p0, v1, v0}, Lk0/kr;->a3(II)V

    goto :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v3

    const/16 v2, 0xb

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    .line 24
    invoke-virtual {p0, v1, v0}, Lk0/kr;->a3(II)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_9

    .line 26
    invoke-virtual {p0, v1, v0}, Lk0/kr;->a3(II)V

    goto :goto_0

    .line 27
    :pswitch_7
    aget p1, p1, v3

    const/16 v1, 0x80

    const/16 v2, 0xa

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    .line 29
    invoke-virtual {p0, v1, v0}, Lk0/kr;->a3(II)V

    goto :goto_0

    .line 30
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_9

    .line 31
    invoke-virtual {p0, v1, v0}, Lk0/kr;->a3(II)V

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 5

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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0xad

    if-ne v3, v4, :cond_0

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 7
    :cond_0
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
    .end array-data
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/16 v2, 0x20

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_d

    const/16 v2, 0x21

    const/16 v6, 0xb

    if-eq v0, v2, :cond_6

    const/16 v2, 0x24

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v0, v2, :cond_4

    const/16 v2, 0x29

    if-eq v0, v2, :cond_3

    const/16 v2, 0x30

    if-eq v0, v2, :cond_2

    const/16 p3, 0x7d

    if-eq v0, p3, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    if-eq p3, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    add-int/2addr p2, v3

    .line 3
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 4
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v2, v8, [I

    aput v6, v2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    aput p1, v2, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v2, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 6
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const/16 p2, 0x3d00

    const/16 v0, 0x2420

    invoke-static {p3, p1, p2, v5, v0}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_4

    :cond_4
    add-int/2addr p2, v8

    .line 7
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const-string p2, "persist.syu.reversefrontdoor"

    .line 8
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_5

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 9
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 10
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 11
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 12
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 13
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 14
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 15
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    add-int/lit8 v0, p2, 0x3

    .line 16
    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    add-int/lit8 v2, p2, 0x4

    .line 17
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    add-int/lit8 p2, p2, 0x5

    .line 18
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const/16 p2, 0xa

    new-array v1, v5, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v5

    aput v3, v1, v4

    .line 19
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, p2, v4

    .line 20
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v1, v5, [I

    shr-int/lit8 v3, p3, 0x5

    and-int/2addr v3, v5

    aput v3, v1, v4

    .line 21
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x44

    new-array v1, v5, [I

    shr-int/lit8 v3, p3, 0x4

    and-int/2addr v3, v5

    aput v3, v1, v4

    .line 22
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v1, v5, [I

    shr-int/lit8 v3, p3, 0x3

    and-int/2addr v3, v5

    aput v3, v1, v4

    .line 23
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array v1, v5, [I

    shr-int/lit8 v3, p3, 0x1

    and-int/2addr v3, v5

    aput v3, v1, v4

    .line 24
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x35

    new-array v1, v5, [I

    shr-int/2addr p3, v4

    and-int/2addr p3, v5

    aput p3, v1, v4

    .line 25
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x12

    new-array p3, v5, [I

    shr-int/lit8 v1, v0, 0x7

    and-int/2addr v1, v5

    aput v1, p3, v4

    .line 26
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v5, [I

    shr-int/lit8 v1, v0, 0x6

    and-int/2addr v1, v5

    aput v1, p3, v4

    .line 27
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v5, [I

    shr-int/lit8 v1, v0, 0x5

    and-int/2addr v1, v5

    aput v1, p3, v4

    .line 28
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v5, [I

    const/16 v1, 0xf

    and-int/2addr v0, v1

    aput v0, p3, v4

    .line 29
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/4 p2, -0x1

    const/4 p3, -0x3

    const/4 v0, -0x2

    const/16 v3, 0x10

    const/16 v6, 0x1b

    if-eqz v2, :cond_9

    if-eq v2, v3, :cond_8

    if-lt v2, v5, :cond_7

    if-gt v2, v1, :cond_7

    new-array v7, v5, [I

    aput v2, v7, v4

    .line 30
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v2, v5, [I

    aput p2, v2, v4

    .line 31
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v2, v5, [I

    aput p3, v2, v4

    .line 32
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v2, v5, [I

    aput v0, v2, v4

    .line 33
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x1c

    if-eqz p1, :cond_c

    if-eq p1, v3, :cond_b

    if-lt p1, v5, :cond_a

    if-gt p1, v1, :cond_a

    new-array p2, v5, [I

    aput p1, p2, v4

    .line 34
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    new-array p1, v5, [I

    aput p2, p1, v4

    .line 35
    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array p1, v5, [I

    aput p3, p1, v4

    .line 36
    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array p1, v5, [I

    aput v0, p1, v4

    .line 37
    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    add-int/lit8 p3, p2, 0x2

    .line 38
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 39
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 40
    iput p2, p0, Lk0/kr;->c:I

    move p2, v4

    .line 41
    :goto_2
    iget-object p3, p0, Lk0/kr;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_f

    .line 42
    iget v0, p0, Lk0/kr;->c:I

    aget-object v2, p3, p2

    aget v2, v2, v4

    if-ne v0, v2, :cond_e

    if-eqz v0, :cond_f

    .line 43
    iput p2, p0, Lk0/kr;->b:I

    goto :goto_3

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_f
    :goto_3
    and-int/2addr p1, v1

    if-ne p1, v5, :cond_10

    .line 44
    array-length p1, p3

    if-ge p2, p1, :cond_12

    .line 45
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_10
    if-nez p1, :cond_12

    .line 46
    iget p1, p0, Lk0/kr;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_11

    if-eq p1, v1, :cond_11

    .line 47
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 48
    :cond_11
    iput v1, p0, Lk0/kr;->b:I

    :cond_12
    :goto_4
    return-void
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
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    const/4 p3, 0x2

    if-lt p1, p3, :cond_1

    const/16 p1, 0x9

    new-array p1, p1, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p1, v0

    const/16 p4, 0xc7

    const/4 v1, 0x1

    aput p4, p1, v1

    const/4 p4, 0x6

    aput p4, p1, p3

    .line 2
    aget v0, p2, v0

    const/4 v2, 0x3

    aput v0, p1, v2

    aget v0, p2, v1

    const/4 v1, 0x4

    aput v0, p1, v1

    aget p3, p2, p3

    const/4 v0, 0x5

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, p4

    const/4 p3, 0x7

    aget p4, p2, v1

    aput p4, p1, p3

    const/16 p3, 0x8

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(II)V
    .locals 12

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/16 v2, -0x39

    const/16 v3, 0xe3

    const/16 v4, 0x9

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x0

    if-eqz p2, :cond_5

    if-eq p2, v9, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_1

    if-eq p2, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput p1, p2, v0

    .line 1
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput p1, p2, v1

    aput v11, p2, v0

    .line 2
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput p1, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 3
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput p1, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput p1, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput p1, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 6
    invoke-static {p2}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 p1, 0x32

    .line 7
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
