.class public Lk0/o4;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static j:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:I

.field public i:Z


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

    iput-object v0, p0, Lk0/o4;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/o4;->c:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lk0/o4;->e:I

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

    iput-object v3, p0, Lk0/o4;->f:[[I

    .line 6
    iput v1, p0, Lk0/o4;->g:I

    .line 7
    iput v1, p0, Lk0/o4;->h:I

    .line 8
    iput-boolean v1, p0, Lk0/o4;->i:Z

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
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iget-object v0, p0, Lk0/o4;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 7
    iget-object v0, p0, Lk0/o4;->b:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/o4;->b3(I)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x12

    const/4 v1, 0x7

    const/16 v2, 0x10

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v2, :cond_1d

    const/16 v6, 0x103

    const/4 v7, 0x3

    if-eq p3, v0, :cond_16

    const/16 v8, 0x40

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eq p3, v8, :cond_13

    const/16 v8, 0x50

    if-eq p3, v8, :cond_9

    const/16 v0, 0x55

    if-eq p3, v0, :cond_5

    const/16 v0, 0x7d

    if-eq p3, v0, :cond_0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_c

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_24

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    and-int/2addr p3, v3

    .line 5
    iput p3, p0, Lk0/o4;->g:I

    and-int/lit16 p3, v0, 0xff

    .line 6
    iput p3, p0, Lk0/o4;->h:I

    add-int/lit8 p3, p2, 0x4

    .line 7
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/o4;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 8
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/o4;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 9
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/o4;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/2addr p2, v1

    .line 10
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lk0/o4;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    .line 11
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_24

    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 13
    aget-byte v0, p1, v0

    and-int/2addr p3, v3

    .line 14
    iput p3, p0, Lk0/o4;->g:I

    and-int/lit16 p3, v0, 0xff

    .line 15
    iput p3, p0, Lk0/o4;->h:I

    add-int/lit8 p3, p2, 0x4

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/o4;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 17
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/o4;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 18
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/o4;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lk0/o4;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    .line 20
    :pswitch_2
    iget-boolean p3, p0, Lk0/o4;->i:Z

    if-nez p3, :cond_24

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    add-int/2addr p2, v9

    aget-byte p1, p1, p2

    const/16 p2, 0x1e00

    const/16 v0, 0x1300

    invoke-static {p3, p1, p2, v5, v0}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_c

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_3

    const/16 v0, 0x8

    if-eq p3, v7, :cond_2

    if-eq p3, v0, :cond_1

    goto/16 :goto_c

    :cond_1
    add-int/lit8 p3, p2, 0x3

    .line 23
    aget-byte p3, p1, p3

    add-int/2addr p2, v10

    .line 24
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 25
    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    .line 26
    iput-boolean v5, p0, Lk0/o4;->i:Z

    goto/16 :goto_c

    :cond_2
    add-int/lit8 p3, p2, 0x4

    .line 27
    aget-byte p3, p1, p3

    shl-int/2addr p3, v0

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v7

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v5, [I

    aput p1, p3, v4

    .line 28
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 29
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v9, [I

    aput v5, v0, v4

    aput p1, v0, v5

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_3
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 30
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_4

    add-int/2addr p2, v7

    .line 31
    aget-byte p3, p1, p2

    shr-int/2addr p3, v7

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v10

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->b(III)V

    goto/16 :goto_c

    :cond_4
    add-int/2addr p2, v7

    .line 32
    aget-byte p3, p1, p2

    shr-int/2addr p3, v7

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v10

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->a(III)V

    goto/16 :goto_c

    .line 33
    :cond_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_24

    add-int/lit8 p2, p2, 0x9

    .line 34
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_6

    goto/16 :goto_c

    :cond_6
    const/16 p2, 0x28

    if-ge p1, p2, :cond_7

    sub-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0xa

    rsub-int v4, p2, 0x3e8

    goto :goto_0

    :cond_7
    if-lt p1, p2, :cond_8

    const/16 p3, 0xc8

    if-gt p1, p3, :cond_8

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 v4, p1, 0x3e8

    .line 35
    :cond_8
    :goto_0
    invoke-static {v4}, Lu0/d;->A3(I)V

    goto/16 :goto_c

    .line 36
    :cond_9
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_24

    add-int/lit8 p3, p2, 0x2

    .line 37
    aget-byte p3, p1, p3

    add-int/2addr p2, v7

    .line 38
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    or-int/lit16 p3, p2, 0x80

    .line 39
    iput p3, p0, Lk0/o4;->e:I

    move p3, v4

    .line 40
    :goto_1
    iget-object v1, p0, Lk0/o4;->f:[[I

    array-length v7, v1

    if-ge p3, v7, :cond_b

    .line 41
    iget v7, p0, Lk0/o4;->e:I

    aget-object v8, v1, p3

    aget v8, v8, v4

    if-ne v7, v8, :cond_a

    if-eqz v7, :cond_b

    .line 42
    iput p3, p0, Lk0/o4;->d:I

    goto :goto_2

    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    if-lt p2, v2, :cond_e

    const/16 v7, 0x13

    if-gt p2, v7, :cond_e

    if-eq p2, v2, :cond_d

    if-ne p2, v0, :cond_c

    goto :goto_3

    :cond_c
    and-int/2addr p1, v3

    .line 43
    invoke-static {p1}, Ll0/b0;->r0(I)V

    goto/16 :goto_c

    :cond_d
    :goto_3
    and-int/2addr p1, v3

    .line 44
    invoke-static {p1}, Ll0/b0;->s0(I)V

    goto/16 :goto_c

    .line 45
    :cond_e
    sget v0, Lk0/nt;->a:I

    if-eq v0, v6, :cond_11

    const v2, 0x10118

    if-eq v0, v2, :cond_11

    const v2, 0x30118

    if-eq v0, v2, :cond_11

    const v2, 0x40118

    if-eq v0, v2, :cond_11

    const/16 v2, 0x197

    if-eq v0, v2, :cond_11

    const v2, 0x10197

    if-ne v0, v2, :cond_f

    goto :goto_4

    :cond_f
    if-eqz p2, :cond_10

    .line 46
    array-length p1, v1

    if-gt p3, p1, :cond_24

    .line 47
    aget-object p1, v1, p3

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 48
    :cond_10
    array-length p1, v1

    if-gt p3, p1, :cond_24

    .line 49
    iget p1, p0, Lk0/o4;->d:I

    aget-object p1, v1, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_11
    :goto_4
    and-int/2addr p1, v3

    if-eqz p1, :cond_12

    .line 50
    array-length p1, v1

    if-gt p3, p1, :cond_24

    .line 51
    aget-object p1, v1, p3

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 52
    :cond_12
    array-length p1, v1

    if-gt p3, p1, :cond_24

    .line 53
    iget p1, p0, Lk0/o4;->d:I

    aget-object p1, v1, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_13
    add-int/2addr p2, v9

    .line 54
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_14

    move v10, v4

    goto :goto_5

    :cond_14
    if-le p1, v10, :cond_15

    goto :goto_5

    :cond_15
    move v10, p1

    :goto_5
    const/16 p1, 0x3f5

    new-array p2, v5, [I

    aput v10, p2, v4

    .line 55
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 56
    :cond_16
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_24

    add-int/lit8 p3, p2, 0x2

    .line 57
    aget-byte p3, p1, p3

    add-int/2addr p2, v7

    .line 58
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 59
    iput p2, p0, Lk0/o4;->e:I

    move p3, v4

    .line 60
    :goto_6
    iget-object v0, p0, Lk0/o4;->f:[[I

    array-length v1, v0

    if-ge p3, v1, :cond_18

    .line 61
    iget v1, p0, Lk0/o4;->e:I

    aget-object v2, v0, p3

    aget v2, v2, v4

    if-ne v1, v2, :cond_17

    if-eqz v1, :cond_18

    .line 62
    iput p3, p0, Lk0/o4;->d:I

    goto :goto_7

    :cond_17
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 63
    :cond_18
    :goto_7
    sget v1, Lk0/nt;->a:I

    if-eq v1, v6, :cond_1b

    const v2, 0x10118

    if-eq v1, v2, :cond_1b

    const v2, 0x30118

    if-eq v1, v2, :cond_1b

    const v2, 0x40118

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x197

    if-eq v1, v2, :cond_1b

    const v2, 0x10197

    if-ne v1, v2, :cond_19

    goto :goto_8

    :cond_19
    if-eqz p2, :cond_1a

    .line 64
    array-length p1, v0

    if-gt p3, p1, :cond_24

    .line 65
    aget-object p1, v0, p3

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 66
    :cond_1a
    array-length p1, v0

    if-gt p3, p1, :cond_24

    .line 67
    iget p1, p0, Lk0/o4;->d:I

    aget-object p1, v0, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_1b
    :goto_8
    and-int/2addr p1, v3

    if-eqz p1, :cond_1c

    .line 68
    array-length p1, v0

    if-gt p3, p1, :cond_24

    .line 69
    aget-object p1, v0, p3

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 70
    :cond_1c
    array-length p1, v0

    if-gt p3, p1, :cond_24

    .line 71
    iget p1, p0, Lk0/o4;->d:I

    aget-object p1, v0, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_1d
    add-int/lit8 p3, p2, 0x2

    .line 72
    aget-byte p3, p1, p3

    const/16 v6, 0x38

    new-array v7, v5, [I

    and-int/2addr p3, v3

    aput p3, v7, v4

    .line 73
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 74
    aget-byte p3, p1, p3

    const/16 v6, 0xc

    new-array v7, v5, [I

    and-int/lit16 v8, p3, 0x80

    if-eqz v8, :cond_1e

    move v8, v4

    goto :goto_9

    :cond_1e
    move v8, v5

    :goto_9
    aput v8, v7, v4

    .line 75
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x41

    new-array v7, v5, [I

    shr-int/lit8 v8, p3, 0x6

    and-int/2addr v8, v5

    aput v8, v7, v4

    .line 76
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x5

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 77
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v5, [I

    shr-int/lit8 v7, p3, 0x4

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 78
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v6, p3, 0x3

    and-int/2addr v6, v5

    aput v6, v2, v4

    .line 79
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v2, v5, [I

    shr-int/2addr p3, v4

    and-int/2addr p3, v5

    aput p3, v2, v4

    .line 80
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 81
    aget-byte p3, p1, p3

    and-int/lit8 p3, p3, 0xf

    if-le p3, v1, :cond_1f

    goto :goto_a

    :cond_1f
    move v1, p3

    :goto_a
    const/16 p3, 0x15

    new-array v0, v5, [I

    aput v1, v0, v4

    .line 82
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 83
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    const/4 v1, -0x2

    const/16 v2, 0x39

    const/16 v6, 0x1b

    if-eq v0, v5, :cond_21

    if-eq v0, v2, :cond_20

    new-array v0, v5, [I

    .line 84
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    aput p3, v0, v4

    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_20
    new-array p3, v5, [I

    const/4 v0, -0x3

    aput v0, p3, v4

    .line 85
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_21
    new-array p3, v5, [I

    aput v1, p3, v4

    .line 86
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    :goto_b
    add-int/lit8 p2, p2, 0x6

    .line 87
    aget-byte p3, p1, p2

    and-int/2addr p3, v3

    const/16 v0, 0x1c

    if-eq p3, v5, :cond_23

    if-eq p3, v2, :cond_22

    new-array p3, v5, [I

    .line 88
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, p3, v4

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_22
    new-array p1, v5, [I

    const/4 p2, -0x3

    aput p2, p1, v4

    .line 89
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_23
    new-array p1, v5, [I

    aput v1, p1, v4

    .line 90
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    :cond_24
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/o4;->b:Lo1/g0;

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
    invoke-virtual {p0, p2}, Lk0/o4;->b3(I)V

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
    .locals 4

    .line 1
    iget v0, p0, Lk0/o4;->g:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v1, :cond_2

    .line 2
    sget v0, Lk0/nt;->a:I

    const/16 v3, 0x103

    if-eq v0, v3, :cond_1

    const v3, 0x10118

    if-eq v0, v3, :cond_1

    const v3, 0x30118

    if-eq v0, v3, :cond_1

    const v3, 0x40118

    if-eq v0, v3, :cond_1

    const/16 v3, 0x197

    if-eq v0, v3, :cond_1

    const v3, 0x10197

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_5

    add-int/lit8 v2, p1, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x7f

    if-eq p1, v0, :cond_5

    const/16 v0, 0xff

    if-eq p1, v0, :cond_5

    .line 3
    div-int/2addr p1, v2

    add-int/lit8 v2, p1, -0x2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    .line 4
    iget v0, p0, Lk0/o4;->h:I

    if-gt v0, v2, :cond_3

    if-lez v0, :cond_3

    .line 5
    div-int/2addr v2, v0

    mul-int/2addr v2, p1

    goto :goto_1

    .line 6
    :cond_3
    div-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 7
    div-int v2, p1, v0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    return v2
.end method

.method public final b3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/o4;->j:I

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
    iget-object p1, p0, Lk0/o4;->b:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/o4;->j:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/o4;->b:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
