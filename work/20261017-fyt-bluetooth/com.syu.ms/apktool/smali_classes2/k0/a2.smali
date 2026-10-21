.class public Lk0/a2;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static e:I = 0xff

.field public static f:I = 0xff


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/a2;->c:I

    const/16 v0, 0xe

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/a2;->d:[[I

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xb
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0xc
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x4
    .end array-data
.end method

.method public static a3(I)V
    .locals 4

    .line 1
    sput p0, Lk0/a2;->e:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 2
    :goto_1
    sget v3, Lk0/a2;->f:I

    if-eq v3, p0, :cond_3

    const/16 p0, 0x3f7

    if-ne v2, v1, :cond_2

    new-array v2, v1, [I

    aput v1, v2, v0

    .line 3
    invoke-static {p0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_2
    new-array v1, v1, [I

    aput v0, v1, v0

    .line 4
    invoke-static {p0, v1}, Lk0/qt;->y0(I[I)V

    .line 5
    :cond_3
    :goto_2
    sget p0, Lk0/a2;->e:I

    sput p0, Lk0/a2;->f:I

    return-void
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
    iput v1, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 12

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, -0x4f

    const/16 v1, 0xff

    const/4 v2, 0x2

    if-eq p3, v0, :cond_12

    const/16 v0, 0x12

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p3, v0, :cond_10

    const/16 v2, 0x72

    if-eq p3, v2, :cond_a

    const/16 v1, 0x73

    if-eq p3, v1, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    new-array v1, v7, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v7

    aput v2, v1, v6

    const/16 v2, 0xa

    .line 3
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v8, v7, [I

    shr-int/lit8 v9, p3, 0x4

    and-int/2addr v9, v3

    aput v9, v8, v6

    .line 4
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v8, v7, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v7

    aput p3, v8, v6

    .line 5
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 6
    aget-byte p3, p1, p3

    const/16 v1, 0xb

    new-array v8, v7, [I

    shr-int/lit8 v9, p3, 0x6

    and-int/2addr v3, v9

    aput v3, v8, v6

    .line 7
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v8, p3, 0x5

    and-int/2addr v8, v7

    aput v8, v3, v6

    .line 8
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v3, v7, [I

    shr-int/2addr p3, v5

    and-int/2addr p3, v7

    aput p3, v3, v6

    .line 9
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 10
    aget-byte v1, p1, p3

    add-int/lit8 v3, p2, 0x5

    .line 11
    aget-byte v5, p1, v3

    const-string v8, "persist.fyt.reversetemp"

    .line 12
    invoke-static {v8, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 13
    aget-byte v1, p1, v3

    .line 14
    aget-byte v5, p1, p3

    :cond_1
    const/4 p3, -0x2

    const/4 v3, -0x3

    const/16 v8, 0x1b

    const/4 v9, -0x1

    if-eq v1, v9, :cond_5

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_3

    and-int/lit16 v10, v1, 0x80

    if-nez v10, :cond_2

    move v10, v6

    goto :goto_0

    :cond_2
    move v10, v7

    :goto_0
    new-array v11, v7, [I

    mul-int/2addr v10, v4

    and-int/lit8 v1, v1, 0x7f

    mul-int/2addr v1, v2

    add-int/2addr v10, v1

    aput v10, v11, v6

    .line 15
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array v1, v7, [I

    aput p3, v1, v6

    .line 16
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v1, v7, [I

    aput v9, v1, v6

    .line 17
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v1, v7, [I

    aput v3, v1, v6

    .line 18
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0x1c

    if-eq v5, v9, :cond_9

    if-eqz v5, :cond_8

    if-eq v5, v7, :cond_7

    and-int/lit16 p3, v5, 0x80

    if-nez p3, :cond_6

    move p3, v6

    goto :goto_2

    :cond_6
    move p3, v7

    :goto_2
    new-array v3, v7, [I

    mul-int/2addr p3, v4

    and-int/lit8 v4, v5, 0x7f

    mul-int/2addr v4, v2

    add-int/2addr p3, v4

    aput p3, v3, v6

    .line 19
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v2, v7, [I

    aput p3, v2, v6

    .line 20
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array p3, v7, [I

    aput v9, p3, v6

    .line 21
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array p3, v7, [I

    aput v3, p3, v6

    .line 22
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 p2, p2, 0x6

    .line 23
    aget-byte p1, p1, p2

    const/16 p2, 0x14

    new-array p3, v7, [I

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v7

    aput v1, p3, v6

    .line 24
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v7, [I

    shr-int/lit8 v1, p1, 0x5

    and-int/2addr v1, v7

    aput v1, p3, v6

    .line 25
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 26
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v7, [I

    and-int/lit8 p1, p1, 0xf

    aput p1, p3, v6

    .line 27
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 28
    :cond_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_13

    add-int/lit8 p3, p2, 0x4

    .line 29
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    iput p3, p0, Lk0/a2;->c:I

    move p3, v6

    .line 30
    :goto_4
    iget-object v0, p0, Lk0/a2;->d:[[I

    array-length v2, v0

    if-ge p3, v2, :cond_c

    .line 31
    iget v2, p0, Lk0/a2;->c:I

    aget-object v3, v0, p3

    aget v3, v3, v6

    if-ne v2, v3, :cond_b

    if-eqz v2, :cond_c

    .line 32
    iput p3, p0, Lk0/a2;->b:I

    goto :goto_5

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 33
    :cond_c
    :goto_5
    iget v2, p0, Lk0/a2;->c:I

    if-eqz v2, :cond_d

    .line 34
    array-length v1, v0

    if-ge p3, v1, :cond_f

    .line 35
    aget-object p3, v0, p3

    aget p3, p3, v7

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 36
    :cond_d
    iget p3, p0, Lk0/a2;->b:I

    array-length v2, v0

    if-ge p3, v2, :cond_e

    if-eq p3, v1, :cond_e

    .line 37
    aget-object p3, v0, p3

    aget p3, p3, v7

    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    .line 38
    :cond_e
    iput v1, p0, Lk0/a2;->b:I

    :cond_f
    :goto_6
    add-int/lit8 p3, p2, 0x7

    .line 39
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x6

    aget-byte p1, p1, p2

    const/16 p2, 0x1e78

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->l(IIZI)V

    goto :goto_8

    :cond_10
    add-int/2addr p2, v5

    .line 40
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 41
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_11

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 42
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 43
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_11
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 44
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 45
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_7
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 46
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 47
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 48
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 49
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 50
    :cond_12
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_13

    add-int/2addr p2, v2

    .line 51
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    invoke-static {p1}, Lk0/a2;->a3(I)V

    :cond_13
    :goto_8
    return-void
.end method

.method public W2()V
    .locals 0

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
    .locals 5

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, p4, [I

    aput p3, p1, v4

    aput v3, p1, v2

    const/16 p3, -0x2d

    aput p3, p1, v3

    .line 1
    aget p2, p2, v4

    aput p2, p1, v1

    aput v4, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, p4, [I

    aput p3, p1, v4

    aput v3, p1, v2

    const/16 p3, 0x6e

    aput p3, p1, v3

    .line 2
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    const/16 p1, 0x12

    .line 3
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 p1, 0x11

    .line 4
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x10

    .line 5
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xf

    .line 6
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_6
    const/16 p1, 0xe

    .line 7
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_7
    const/16 p1, 0xd

    .line 8
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_8
    const/16 p1, 0xc

    .line 9
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_9
    const/16 p1, 0xb

    .line 10
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_a
    const/16 p1, 0xa

    .line 11
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_b
    const/16 p1, 0x9

    .line 12
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_c
    const/16 p1, 0x8

    .line 13
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_d
    const/4 p1, 0x7

    .line 14
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    :pswitch_e
    const/4 p1, 0x6

    .line 15
    invoke-virtual {p0, p1}, Lk0/a2;->b3(I)V

    goto :goto_0

    .line 16
    :pswitch_f
    invoke-virtual {p0, p4}, Lk0/a2;->b3(I)V

    goto :goto_0

    .line 17
    :pswitch_10
    invoke-virtual {p0, v0}, Lk0/a2;->b3(I)V

    goto :goto_0

    .line 18
    :pswitch_11
    invoke-virtual {p0, v1}, Lk0/a2;->b3(I)V

    goto :goto_0

    .line 19
    :pswitch_12
    invoke-virtual {p0, v3}, Lk0/a2;->b3(I)V

    goto :goto_0

    .line 20
    :pswitch_13
    invoke-virtual {p0, v2}, Lk0/a2;->b3(I)V

    goto :goto_0

    .line 21
    :pswitch_14
    invoke-virtual {p0, v4}, Lk0/a2;->b3(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final b3(I)V
    .locals 5

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    const/16 v2, -0x2d

    aput v2, v1, v4

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput p1, v1, v2

    const/4 p1, 0x4

    aput v3, v1, p1

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x2d
        0x0
        0x0
    .end array-data
.end method
