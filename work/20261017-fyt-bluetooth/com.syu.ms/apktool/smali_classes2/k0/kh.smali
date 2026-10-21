.class public Lk0/kh;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static g:I = 0xff


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/kh;->c:I

    const/16 v1, 0x14

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

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/kh;->d:[[I

    .line 4
    iput v0, p0, Lk0/kh;->e:I

    .line 5
    new-instance v0, Lk0/kh$a;

    invoke-direct {v0, p0}, Lk0/kh$a;-><init>(Lk0/kh;)V

    iput-object v0, p0, Lk0/kh;->f:Ljava/lang/Runnable;

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
        0xd
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x21
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x2a
        0x20
    .end array-data

    :array_b
    .array-data 4
        0x2b
        0x23
    .end array-data

    :array_c
    .array-data 4
        0x2c
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x2d
        0x22
    .end array-data

    :array_e
    .array-data 4
        0x2e
        0x21
    .end array-data

    :array_f
    .array-data 4
        0x30
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x81
        0x1f
    .end array-data

    :array_11
    .array-data 4
        0x82
        0x1e
    .end array-data

    :array_12
    .array-data 4
        0x91
        0x7
    .end array-data

    :array_13
    .array-data 4
        0x92
        0x8
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
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/kh;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x12

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_1d

    const/16 v6, 0x24

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v0, v6, :cond_1b

    const/16 v6, 0x27

    const/16 v9, 0x8

    const/16 v10, 0xff

    if-eq v0, v6, :cond_19

    const/16 v6, 0x29

    if-eq v0, v6, :cond_18

    const/16 v6, 0x30

    if-eq v0, v6, :cond_17

    const/16 p3, 0x7d

    const/16 v6, 0xb

    if-eq v0, p3, :cond_15

    const/16 p3, 0x1f

    const/16 v3, 0x1e

    const/4 v11, 0x7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v10

    invoke-static {p3}, Ll0/c0;->y1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v10

    invoke-static {p3}, Ll0/c0;->y1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v10

    invoke-static {p3}, Ll0/c0;->y1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v2

    .line 5
    aget-byte p1, p1, p2

    and-int/2addr p1, v10

    invoke-static {p1}, Ll0/c0;->y1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :pswitch_1
    add-int/lit8 v0, p2, 0x2

    .line 6
    aget-byte v0, p1, v0

    const/16 v2, 0xa

    new-array v8, v5, [I

    shr-int/lit8 v9, v0, 0x7

    and-int/2addr v9, v5

    aput v9, v8, v4

    .line 7
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 8
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v6, v5, [I

    shr-int/lit8 v8, v0, 0x5

    and-int/2addr v8, v5

    aput v8, v6, v4

    .line 9
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v6, v5, [I

    shr-int/lit8 v8, v0, 0x4

    and-int/2addr v8, v5

    aput v8, v6, v4

    .line 10
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v6, v5, [I

    shr-int/lit8 v8, v0, 0x3

    and-int/2addr v8, v5

    aput v8, v6, v4

    .line 11
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v6, v5, [I

    shr-int/lit8 v8, v0, 0x2

    and-int/2addr v8, v5

    aput v8, v6, v4

    .line 12
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v6, v0, 0x1

    and-int/2addr v6, v5

    aput v6, v2, v4

    const/16 v6, 0xf

    .line 13
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v8, v5, [I

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, v8, v4

    .line 14
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x3

    .line 15
    aget-byte v0, p1, v0

    new-array v2, v5, [I

    shr-int/lit8 v8, v0, 0x7

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 16
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v2, v5, [I

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 17
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v5, [I

    shr-int/lit8 v8, v0, 0x5

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 18
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x31

    new-array v2, v5, [I

    shr-int/lit8 v8, v0, 0x4

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 19
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v5, [I

    shr-int/2addr v0, v4

    and-int/2addr v0, v6

    aput v0, v2, v4

    .line 20
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x4

    .line 21
    aget-byte v0, p1, v0

    const/16 v1, 0x16

    new-array v2, v5, [I

    shr-int/lit8 v8, v0, 0x7

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 22
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x17

    new-array v2, v5, [I

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 23
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x18

    new-array v2, v5, [I

    shr-int/lit8 v8, v0, 0x5

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 24
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x32

    new-array v2, v5, [I

    shr-int/lit8 v8, v0, 0x4

    and-int/2addr v8, v5

    aput v8, v2, v4

    .line 25
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x19

    new-array v2, v5, [I

    shr-int/2addr v0, v4

    and-int/2addr v0, v6

    aput v0, v2, v4

    .line 26
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x5

    .line 27
    aget-byte v1, p1, v0

    and-int/2addr v1, v10

    add-int/lit8 v2, p2, 0x6

    .line 28
    aget-byte v6, p1, v2

    and-int/2addr v6, v10

    const-string v8, "persist.fyt.reversetemp"

    .line 29
    invoke-static {v8, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 30
    aget-byte v1, p1, v2

    and-int/2addr v1, v10

    .line 31
    aget-byte v0, p1, v0

    and-int/lit16 v6, v0, 0xff

    :cond_0
    const/4 v0, -0x1

    const/4 v2, -0x3

    const/4 v8, -0x2

    const/16 v9, 0x1b

    if-eqz v1, :cond_3

    if-eq v1, p3, :cond_2

    if-lt v1, v5, :cond_1

    if-gt v1, v3, :cond_1

    new-array v10, v5, [I

    aput v1, v10, v4

    .line 32
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v1, v5, [I

    aput v0, v1, v4

    .line 33
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v1, v5, [I

    aput v2, v1, v4

    .line 34
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v1, v5, [I

    aput v8, v1, v4

    .line 35
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v1, 0x1c

    if-eqz v6, :cond_6

    if-eq v6, p3, :cond_5

    if-lt v6, v5, :cond_4

    if-gt v6, v3, :cond_4

    new-array p3, v5, [I

    aput v6, p3, v4

    .line 36
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array p3, v5, [I

    aput v0, p3, v4

    .line 37
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array p3, v5, [I

    aput v2, p3, v4

    .line 38
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array p3, v5, [I

    aput v8, p3, v4

    .line 39
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 p3, 0x1d

    new-array v0, v5, [I

    add-int/2addr p2, v11

    .line 40
    aget-byte v1, p1, p2

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 41
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v11

    aput p1, p3, v4

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_2
    add-int/lit8 v0, p2, 0x2

    .line 42
    aget-byte v0, p1, v0

    add-int/2addr p2, v8

    .line 43
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    .line 44
    iput p2, p0, Lk0/kh;->c:I

    move p2, v4

    .line 45
    :goto_2
    iget-object v0, p0, Lk0/kh;->d:[[I

    array-length v6, v0

    if-ge p2, v6, :cond_8

    .line 46
    iget v6, p0, Lk0/kh;->c:I

    aget-object v7, v0, p2

    aget v7, v7, v4

    if-ne v6, v7, :cond_7

    if-eqz v6, :cond_8

    .line 47
    iput p2, p0, Lk0/kh;->b:I

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 48
    :cond_8
    :goto_3
    iget v6, p0, Lk0/kh;->c:I

    if-eq v6, v2, :cond_13

    const/16 v1, 0x81

    if-eq v6, v1, :cond_11

    const/16 p3, 0x82

    if-eq v6, p3, :cond_f

    const/16 p3, 0x91

    if-eq v6, p3, :cond_d

    const/16 p3, 0x92

    if-eq v6, p3, :cond_b

    and-int/2addr p1, v10

    if-ne p1, v5, :cond_9

    .line 49
    array-length p1, v0

    if-ge p2, p1, :cond_1f

    .line 50
    aget-object p1, v0, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_9
    if-nez p1, :cond_1f

    .line 51
    iget p1, p0, Lk0/kh;->b:I

    array-length p2, v0

    if-ge p1, p2, :cond_a

    if-eq p1, v10, :cond_a

    .line 52
    aget-object p1, v0, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 53
    :cond_a
    iput v10, p0, Lk0/kh;->b:I

    goto/16 :goto_a

    :cond_b
    move p2, v4

    :goto_4
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_c

    .line 54
    invoke-static {v9, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 55
    :cond_c
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_d
    move p2, v4

    :goto_5
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_e

    .line 56
    invoke-static {v11, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 57
    :cond_e
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_f
    move p2, v4

    :goto_6
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_10

    .line 58
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 59
    :cond_10
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_11
    move p2, v4

    :goto_7
    and-int/lit16 v0, p1, 0xff

    if-ge p2, v0, :cond_12

    .line 60
    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 61
    :cond_12
    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_13
    and-int/2addr p1, v10

    if-ne p1, v5, :cond_1f

    .line 62
    sget p1, Lh0/c;->E:I

    if-eq p1, v8, :cond_14

    if-eq p1, v2, :cond_14

    .line 63
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 64
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_14
    const/16 p1, 0x1a

    .line 65
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 66
    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_15
    add-int/lit8 p3, p2, 0x2

    .line 67
    aget-byte p3, p1, p3

    and-int/2addr p3, v10

    if-eq p3, v5, :cond_16

    goto/16 :goto_a

    :cond_16
    add-int/2addr p2, v8

    .line 68
    aget-byte p3, p1, p2

    shr-int/2addr p3, v8

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 69
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v3, [I

    aput v6, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v10

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    .line 70
    :cond_17
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_18
    add-int/lit8 p3, p2, 0x2

    .line 71
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    const/16 p2, 0x4dbc

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :cond_19
    add-int/lit8 p3, p2, 0x4

    .line 72
    aget-byte p3, p1, p3

    shl-int/2addr p3, v9

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    and-int/2addr p1, v10

    or-int/2addr p1, p3

    const p2, 0x8000

    and-int/2addr p2, p1

    if-eqz p2, :cond_1a

    const/high16 p2, 0x10000

    sub-int/2addr p2, p1

    rsub-int p1, p2, 0x3e8

    goto :goto_8

    :cond_1a
    add-int/lit16 p1, p1, 0x3e8

    .line 73
    :goto_8
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    :cond_1b
    add-int/2addr p2, v3

    .line 74
    aget-byte p1, p1, p2

    and-int/lit8 p2, p1, 0x1

    if-ne p2, v5, :cond_1f

    const-string p2, "persist.syu.reversefrontdoor"

    .line 75
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1c

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 76
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 77
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1c
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 78
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 79
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_9
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 80
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 81
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 82
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 83
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    .line 84
    :cond_1d
    iget p3, p0, Lk0/kh;->e:I

    add-int/2addr p2, v3

    aget-byte v0, p1, p2

    if-eq p3, v0, :cond_1f

    .line 85
    aget-byte p1, p1, p2

    iput p1, p0, Lk0/kh;->e:I

    if-ne p1, v5, :cond_1e

    .line 86
    sget p2, Lu0/b;->D:I

    if-eq p2, v2, :cond_1e

    .line 87
    invoke-static {}, Lo1/u;->j()I

    goto :goto_a

    :cond_1e
    if-nez p1, :cond_1f

    .line 88
    sget p1, Lu0/b;->D:I

    if-ne p1, v2, :cond_1f

    .line 89
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    .line 90
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 91
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v4}, Lu0/h;->c(I)V

    :cond_1f
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x20
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
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/kh;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
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
