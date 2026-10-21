.class public Lk0/f6;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static i:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/f6;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/f6;->c:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lk0/f6;->e:I

    const/16 v3, 0x23

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_0

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    aput-object v5, v3, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    aput-object v0, v3, v4

    new-array v0, v4, [I

    fill-array-data v0, :array_3

    const/4 v5, 0x3

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_4

    const/4 v5, 0x4

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_5

    const/4 v5, 0x5

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_6

    const/4 v5, 0x6

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    const/4 v5, 0x7

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_8

    const/16 v5, 0x8

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_9

    const/16 v5, 0x9

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_a

    const/16 v5, 0xa

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_b

    const/16 v5, 0xb

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_c

    const/16 v5, 0xc

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_d

    const/16 v5, 0xd

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_e

    const/16 v5, 0xe

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_f

    const/16 v5, 0xf

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_10

    const/16 v5, 0x10

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_11

    const/16 v5, 0x11

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_12

    const/16 v5, 0x12

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_13

    const/16 v5, 0x13

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_14

    const/16 v5, 0x14

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_15

    const/16 v5, 0x15

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_16

    const/16 v5, 0x16

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_17

    const/16 v5, 0x17

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_18

    const/16 v5, 0x18

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_19

    const/16 v5, 0x19

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1a

    const/16 v5, 0x1a

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1b

    const/16 v5, 0x1b

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1c

    const/16 v5, 0x1c

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1d

    const/16 v5, 0x1d

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1e

    const/16 v5, 0x1e

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1f

    const/16 v5, 0x1f

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_20

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_21

    const/16 v2, 0x21

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_22

    const/16 v2, 0x22

    aput-object v0, v3, v2

    iput-object v3, p0, Lk0/f6;->f:[[I

    .line 6
    iput v1, p0, Lk0/f6;->g:I

    .line 7
    iput v1, p0, Lk0/f6;->h:I

    return-void

    :array_0
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x17
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x18
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_9
    .array-data 4
        0x31
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0x32
        0xd
    .end array-data

    :array_b
    .array-data 4
        0x81
        0x19
    .end array-data

    :array_c
    .array-data 4
        0x82
        0xb
    .end array-data

    :array_d
    .array-data 4
        0x83
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x84
        0x2
    .end array-data

    :array_f
    .array-data 4
        0x85
        0x15
    .end array-data

    :array_10
    .array-data 4
        0x86
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x87
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x88
        0x37
    .end array-data

    :array_13
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_14
    .array-data 4
        0x8a
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x8b
        0x26
    .end array-data

    :array_16
    .array-data 4
        0x8c
        0x6
    .end array-data

    :array_17
    .array-data 4
        0x8d
        0x4c
    .end array-data

    :array_18
    .array-data 4
        0x8e
        0xd
    .end array-data

    :array_19
    .array-data 4
        0xa1
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0xa2
        0x29
    .end array-data

    :array_1b
    .array-data 4
        0xa3
        0x2a
    .end array-data

    :array_1c
    .array-data 4
        0xa4
        0x2b
    .end array-data

    :array_1d
    .array-data 4
        0xa5
        0x2c
    .end array-data

    :array_1e
    .array-data 4
        0xa6
        0x2d
    .end array-data

    :array_1f
    .array-data 4
        0xa7
        0x27
    .end array-data

    :array_20
    .array-data 4
        0xa8
        0x40
    .end array-data

    :array_21
    .array-data 4
        0xa9
        0x12
    .end array-data

    :array_22
    .array-data 4
        0xaa
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
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/f6;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/f6;->b:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/f6;->b3(I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 8

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x12

    const/16 v1, 0x10

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v1, :cond_8

    if-eq p3, v0, :cond_4

    const/16 v0, 0x28

    if-eq p3, v0, :cond_1

    const/16 v0, 0x32

    if-eq p3, v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_14

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    iput p3, p0, Lk0/f6;->g:I

    add-int/lit8 p3, p2, 0x3

    .line 4
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    iput p3, p0, Lk0/f6;->h:I

    add-int/lit8 p3, p2, 0x4

    .line 5
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/f6;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 6
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/f6;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 7
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/f6;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v2

    .line 8
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lk0/f6;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :cond_1
    add-int/lit8 p2, p2, 0x2

    .line 9
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x4

    if-gez p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    if-le p1, p2, :cond_3

    move p1, p2

    :cond_3
    :goto_0
    const/16 p2, 0x3f5

    new-array p3, v4, [I

    aput p1, p3, v3

    .line 10
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 11
    :cond_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_14

    add-int/lit8 p2, p2, 0x2

    .line 12
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 13
    iput p1, p0, Lk0/f6;->e:I

    move p2, v3

    .line 14
    :goto_1
    iget-object p3, p0, Lk0/f6;->f:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 15
    iget v0, p0, Lk0/f6;->e:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_6

    .line 16
    iput p2, p0, Lk0/f6;->d:I

    goto :goto_2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 17
    array-length p1, p3

    if-ge p2, p1, :cond_14

    .line 18
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 19
    :cond_7
    array-length p1, p3

    if-gt p2, p1, :cond_14

    .line 20
    iget p1, p0, Lk0/f6;->d:I

    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_8
    add-int/lit8 p3, p2, 0x2

    .line 21
    aget-byte p3, p1, p3

    const/16 v5, 0x38

    new-array v6, v4, [I

    and-int/lit16 p3, p3, 0xff

    aput p3, v6, v3

    .line 22
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 23
    aget-byte p3, p1, p3

    const/16 v5, 0xc

    new-array v6, v4, [I

    and-int/lit16 v7, p3, 0x80

    if-eqz v7, :cond_9

    move v7, v3

    goto :goto_3

    :cond_9
    move v7, v4

    :goto_3
    aput v7, v6, v3

    .line 24
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x41

    new-array v6, v4, [I

    shr-int/lit8 v7, p3, 0x6

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 25
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x5

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 26
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x4

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 27
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    new-array v1, v4, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 28
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v1, v4, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v4

    aput p3, v1, v3

    .line 29
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 30
    aget-byte p3, p1, p3

    and-int/lit8 p3, p3, 0xf

    if-le p3, v2, :cond_a

    goto :goto_4

    :cond_a
    move v2, p3

    :goto_4
    const/16 p3, 0x15

    new-array v0, v4, [I

    aput v2, v0, v3

    .line 31
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 32
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v0, -0x3

    const/4 v1, -0x2

    const/16 v2, 0x39

    const/16 v5, 0x1c

    const/16 v6, 0x1b

    if-eqz p3, :cond_f

    add-int/lit8 p3, p2, 0x6

    .line 33
    aget-byte v7, p1, p3

    and-int/lit16 v7, v7, 0xff

    if-eq v7, v4, :cond_c

    if-eq v7, v2, :cond_b

    new-array v7, v4, [I

    .line 34
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    aput p3, v7, v3

    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_b
    new-array p3, v4, [I

    aput v0, p3, v3

    .line 35
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array p3, v4, [I

    aput v1, p3, v3

    .line 36
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 p2, p2, 0x5

    .line 37
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    if-eq p3, v4, :cond_e

    if-eq p3, v2, :cond_d

    new-array p3, v4, [I

    .line 38
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, p3, v3

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_d
    new-array p1, v4, [I

    aput v0, p1, v3

    .line 39
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_e
    new-array p1, v4, [I

    aput v1, p1, v3

    .line 40
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_f
    add-int/lit8 p3, p2, 0x5

    .line 41
    aget-byte v7, p1, p3

    and-int/lit16 v7, v7, 0xff

    if-eq v7, v4, :cond_11

    if-eq v7, v2, :cond_10

    new-array v7, v4, [I

    .line 42
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    aput p3, v7, v3

    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_10
    new-array p3, v4, [I

    aput v0, p3, v3

    .line 43
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    new-array p3, v4, [I

    aput v1, p3, v3

    .line 44
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 p2, p2, 0x6

    .line 45
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    if-eq p3, v4, :cond_13

    if-eq p3, v2, :cond_12

    new-array p3, v4, [I

    .line 46
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, p3, v3

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_12
    new-array p1, v4, [I

    aput v0, p1, v3

    .line 47
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_13
    new-array p1, v4, [I

    aput v1, p1, v3

    .line 48
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    :cond_14
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/f6;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

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

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_3

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-lez p1, :cond_4

    const/4 p1, 0x0

    .line 2
    aget p1, p2, p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    const/4 p3, 0x5

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    if-le p1, p3, :cond_2

    move p2, p3

    goto :goto_0

    :cond_2
    move p2, p1

    .line 3
    :goto_0
    invoke-virtual {p0, p2}, Lk0/f6;->b3(I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x1
    .end array-data
.end method

.method public final a3(I)I
    .locals 3

    .line 1
    iget v0, p0, Lk0/f6;->g:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lk0/f6;->h:I

    if-gt v0, v2, :cond_1

    if-lez v0, :cond_1

    .line 3
    div-int/2addr v2, v0

    mul-int/2addr v2, p1

    goto :goto_0

    .line 4
    :cond_1
    div-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 5
    div-int v2, p1, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method public final b3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/f6;->i:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x39

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v3, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/f6;->b:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/f6;->i:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/f6;->b:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
