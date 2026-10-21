.class public Lk0/y2;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static i:I


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:Lo1/g0;

.field public final e:I

.field public f:I

.field public g:I

.field public h:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lk0/y2;->b:[[I

    const/16 v1, 0x1e

    new-array v1, v1, [[I

    .line 3
    iput-object v1, p0, Lk0/y2;->c:[[I

    .line 4
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/y2;->d:Lo1/g0;

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lk0/y2;->e:I

    const/16 v2, 0xff

    .line 6
    iput v2, p0, Lk0/y2;->g:I

    const/16 v2, 0xe

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 7
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v2, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    const/4 v4, 0x3

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    const/4 v4, 0x4

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x6

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    const/4 v1, 0x7

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    const/16 v1, 0x8

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    const/16 v1, 0x9

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    const/16 v1, 0xa

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    const/16 v1, 0xd

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/y2;->h:[[I

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
        -0x1
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
        0x1b
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1c
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data
.end method

.method public static a3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
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

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iget-object v0, p0, Lk0/y2;->d:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 7
    iget-object v0, p0, Lk0/y2;->d:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/y2;->b3(I)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x7e

    const/16 v2, 0x41

    const/16 v3, 0x13

    const/16 v4, 0x74

    const/16 v5, 0x10

    const/4 v6, 0x5

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v0, v1, :cond_13

    const/16 v1, -0x18

    if-eq v0, v1, :cond_11

    const/16 v1, -0x10

    const/4 v10, 0x2

    if-eq v0, v1, :cond_10

    const/16 p3, 0x11

    const/4 v1, 0x4

    const/4 v11, 0x3

    if-eq v0, p3, :cond_9

    const/16 p3, 0x62

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, p3, :cond_4

    const/16 p3, 0x16

    if-eq v0, p3, :cond_2

    const/16 p3, 0x17

    if-eq v0, p3, :cond_0

    goto/16 :goto_c

    :cond_0
    add-int/lit8 p3, p2, 0x3e

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    shl-int/lit8 p3, p3, 0x18

    move v0, v8

    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1e

    new-array v1, v10, [I

    aput v0, v1, v8

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    add-int/lit8 v3, v2, 0x2

    .line 3
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v11

    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    or-int/2addr v2, v3

    or-int/2addr v2, p3

    aput v2, v1, v9

    .line 4
    iget-object v2, p0, Lk0/y2;->c:[[I

    aget-object v2, v2, v0

    invoke-static {v4, v1, v2}, Lk0/qt;->C0(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lk0/y2;->c:[[I

    aput-object v1, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p2, 0xe

    .line 6
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    shl-int/lit8 p3, p3, 0x18

    const/16 v0, 0x72

    new-array v1, v9, [I

    add-int/lit8 v2, p2, 0x2

    .line 7
    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    or-int/2addr v2, v3

    or-int/2addr v2, p3

    aput v2, v1, v8

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    move v0, v8

    :goto_1
    if-ge v0, v6, :cond_1e

    new-array v1, v10, [I

    aput v0, v1, v8

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    add-int/lit8 v3, v2, 0x4

    .line 8
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v6

    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    or-int/2addr v2, v3

    or-int/2addr v2, p3

    aput v2, v1, v9

    const/16 v2, 0x73

    .line 9
    iget-object v3, p0, Lk0/y2;->b:[[I

    aget-object v3, v3, v0

    invoke-static {v2, v1, v3}, Lk0/qt;->C0(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    iget-object v2, p0, Lk0/y2;->b:[[I

    aput-object v1, v2, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 11
    aget-byte p3, p1, p3

    const/16 v0, 0x76

    new-array v2, v9, [I

    and-int/lit16 v3, p3, 0x80

    aput v3, v2, v8

    .line 12
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x77

    new-array v2, v9, [I

    and-int/lit8 v3, p3, 0x70

    shr-int/2addr v3, v1

    aput v3, v2, v8

    .line 13
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x79

    new-array v2, v9, [I

    and-int/lit8 v3, p3, 0xc

    shr-int/2addr v3, v10

    aput v3, v2, v8

    .line 14
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7a

    new-array v2, v9, [I

    and-int/2addr p3, v11

    aput p3, v2, v8

    .line 15
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 16
    aget-byte p3, p1, p3

    const/16 v0, 0x66

    new-array v2, v9, [I

    and-int/lit8 v3, p3, 0x40

    aput v3, v2, v8

    .line 17
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x70

    new-array v2, v9, [I

    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_5

    move v3, v9

    goto :goto_2

    :cond_5
    move v3, v8

    :goto_2
    aput v3, v2, v8

    .line 18
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6e

    new-array v2, v9, [I

    and-int/lit8 v3, p3, 0x10

    aput v3, v2, v8

    .line 19
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x68

    new-array v2, v9, [I

    and-int/lit8 v3, p3, 0x8

    aput v3, v2, v8

    .line 20
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    new-array v2, v9, [I

    and-int/lit8 v3, p3, 0x4

    aput v3, v2, v8

    .line 21
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x69

    new-array v2, v9, [I

    and-int/lit8 v3, p3, 0x2

    aput v3, v2, v8

    .line 22
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6a

    new-array v2, v9, [I

    and-int/2addr p3, v9

    aput p3, v2, v8

    .line 23
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 24
    aget-byte p3, p1, p3

    const/16 v0, 0x6f

    new-array v2, v9, [I

    and-int/lit16 v3, p3, 0x80

    aput v3, v2, v8

    .line 25
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6b

    new-array v2, v9, [I

    and-int/lit8 v3, p3, 0x40

    aput v3, v2, v8

    .line 26
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x71

    new-array v2, v9, [I

    and-int/lit8 v3, p3, 0x20

    aput v3, v2, v8

    .line 27
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6d

    new-array v2, v9, [I

    and-int/2addr p3, v5

    aput p3, v2, v8

    .line 28
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 29
    aget-byte p3, p1, p3

    and-int/lit8 v0, p3, 0x7

    and-int/2addr v0, v7

    if-le v0, v1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    const/16 v0, 0x6c

    new-array v2, v9, [I

    aput v1, v2, v8

    .line 30
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x65

    new-array v1, v9, [I

    and-int/lit8 p3, p3, 0x18

    shr-int/2addr p3, v11

    aput p3, v1, v8

    .line 31
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x6

    .line 32
    aget-byte p1, p1, p2

    const/16 p2, 0x3f5

    new-array p3, v9, [I

    and-int/2addr p1, v11

    sub-int/2addr p1, v9

    aput p1, p3, v8

    .line 33
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 34
    :cond_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1e

    add-int/lit8 p3, p2, 0x2

    .line 35
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    invoke-static {p3}, Lk0/y2;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 36
    aget-byte v0, p1, p3

    and-int/2addr v0, v7

    invoke-static {v0}, Lk0/y2;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 37
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    invoke-static {p3}, Lk0/y2;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 38
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    invoke-static {p3}, Lk0/y2;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 39
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    invoke-static {p3}, Lk0/y2;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 40
    aget-byte v0, p1, p3

    and-int/2addr v0, v7

    invoke-static {v0}, Lk0/y2;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    .line 41
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    invoke-static {p3}, Lk0/y2;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 42
    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    invoke-static {p1}, Lk0/y2;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    :cond_8
    add-int/lit8 v0, p2, 0xc

    .line 43
    aget-byte v0, p1, v0

    and-int/2addr v0, v7

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0xd

    .line 44
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    shl-int/lit8 v1, v1, 0x18

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 45
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/2addr v4, v7

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    aput v3, v2, v8

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x4

    .line 46
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/2addr v4, v7

    or-int/2addr v3, v4

    or-int/2addr v1, v3

    aput v1, v2, v8

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x75

    new-array v1, v9, [I

    add-int/lit8 v2, p2, 0x6

    .line 47
    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    aput v0, v1, v8

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v9, [I

    add-int/lit8 v1, p2, 0x8

    .line 48
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x9

    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    or-int/2addr v1, v2

    aput v1, v0, v8

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v9, [I

    add-int/lit8 v1, p2, 0xa

    .line 49
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p2, p2, 0xb

    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    or-int/2addr p1, v1

    aput p1, v0, v8

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_9
    add-int/lit8 p3, p2, 0x6

    .line 50
    aget-byte p3, p1, p3

    new-array v0, v9, [I

    shr-int/lit8 v2, p3, 0x3

    and-int/2addr v2, v9

    aput v2, v0, v8

    .line 51
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v9

    aput v2, v0, v8

    .line 52
    invoke-static {v11, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v9

    aput v2, v0, v8

    .line 53
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const-string v0, "persist.syu.reversefrontdoor"

    .line 54
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v9, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v9

    aput v1, v0, v8

    .line 55
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v9

    aput p3, v0, v8

    .line 56
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    new-array v0, v9, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v9

    aput v1, v0, v8

    .line 57
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v9

    aput p3, v0, v8

    .line 58
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    .line 59
    :goto_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1e

    add-int/lit8 p3, p2, 0x4

    .line 60
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 61
    aget-byte v0, p1, v0

    and-int/2addr p3, v7

    .line 62
    iput p3, p0, Lk0/y2;->g:I

    move p3, v8

    .line 63
    :goto_5
    iget-object v1, p0, Lk0/y2;->h:[[I

    array-length v2, v1

    if-ge p3, v2, :cond_c

    .line 64
    iget v2, p0, Lk0/y2;->g:I

    aget-object v3, v1, p3

    aget v3, v3, v8

    if-ne v2, v3, :cond_b

    if-eqz v2, :cond_c

    .line 65
    iput p3, p0, Lk0/y2;->f:I

    goto :goto_6

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    and-int/2addr v0, v7

    if-eqz v0, :cond_d

    .line 66
    array-length v0, v1

    if-ge p3, v0, :cond_f

    .line 67
    aget-object p3, v1, p3

    aget p3, p3, v9

    invoke-static {p3, v8}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 68
    :cond_d
    iget p3, p0, Lk0/y2;->f:I

    array-length v0, v1

    if-ge p3, v0, :cond_e

    if-eq p3, v7, :cond_e

    .line 69
    aget-object p3, v1, p3

    aget p3, p3, v9

    invoke-static {p3, v9}, Ll0/b0;->l0(II)V

    .line 70
    :cond_e
    iput v7, p0, Lk0/y2;->f:I

    :cond_f
    :goto_7
    add-int/lit8 p3, p2, 0x9

    .line 71
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v9, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_c

    .line 72
    :cond_10
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v10

    sub-int/2addr p3, v10

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 73
    :cond_11
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1e

    add-int/2addr p2, v6

    .line 74
    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    if-eqz p1, :cond_12

    .line 75
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_c

    .line 76
    :cond_12
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_c

    :cond_13
    new-array p3, v9, [I

    add-int/lit8 v0, p2, 0x2

    .line 77
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x8

    aput v0, p3, v8

    const/16 v0, 0xd

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v0, v9, [I

    add-int/lit8 v1, p2, 0x3

    .line 78
    aget-byte v10, p1, v1

    and-int/lit8 v10, v10, 0x40

    aput v10, v0, v8

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v9, [I

    .line 79
    aget-byte v0, p1, v1

    and-int/2addr v0, v5

    aput v0, p3, v8

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v9, [I

    .line 80
    aget-byte v0, p1, v1

    and-int/lit8 v0, v0, 0x20

    aput v0, p3, v8

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v9, [I

    add-int/lit8 v1, p2, 0x6

    .line 81
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x40

    aput v2, v0, v8

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v9, [I

    .line 82
    aget-byte v0, p1, v1

    and-int/lit8 v0, v0, 0x20

    aput v0, p3, v8

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v9, [I

    .line 83
    aget-byte v2, p1, v1

    and-int/2addr v2, v5

    aput v2, v0, v8

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v9, [I

    .line 84
    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v8

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 85
    aget-byte v0, p1, p3

    and-int/2addr v0, v7

    const-string v1, "persist.fyt.reversetemp"

    .line 86
    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    add-int/lit8 v0, p2, 0x5

    .line 87
    aget-byte v0, p1, v0

    and-int/2addr v0, v7

    :cond_14
    const/16 v1, 0x1b

    if-ne v0, v9, :cond_15

    new-array v0, v9, [I

    const/4 v2, -0x2

    aput v2, v0, v8

    .line 88
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_15
    if-ne v0, v7, :cond_16

    new-array v0, v9, [I

    const/4 v2, -0x3

    aput v2, v0, v8

    .line 89
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_16
    if-eqz v0, :cond_18

    if-lt v0, v4, :cond_18

    const/16 v2, 0x90

    if-le v0, v2, :cond_17

    goto :goto_8

    :cond_17
    new-array v2, v9, [I

    mul-int/2addr v0, v6

    add-int/lit16 v0, v0, -0x190

    aput v0, v2, v8

    .line 90
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_18
    :goto_8
    new-array v0, v9, [I

    const/4 v2, -0x1

    aput v2, v0, v8

    .line 91
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    :goto_9
    const-string v0, "persist.fyt.reversetemp"

    .line 92
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 93
    aget-byte p1, p1, p3

    goto :goto_a

    :cond_19
    add-int/2addr p2, v6

    .line 94
    aget-byte p1, p1, p2

    :goto_a
    and-int/2addr p1, v7

    const/16 p2, 0x1c

    if-ne p1, v9, :cond_1a

    new-array p1, v9, [I

    const/4 p3, -0x2

    aput p3, p1, v8

    .line 95
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1a
    if-ne p1, v7, :cond_1b

    new-array p1, v9, [I

    const/4 p3, -0x3

    aput p3, p1, v8

    .line 96
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1b
    if-eqz p1, :cond_1d

    if-lt p1, v4, :cond_1d

    const/16 p3, 0x90

    if-le p1, p3, :cond_1c

    goto :goto_b

    :cond_1c
    new-array p3, v9, [I

    mul-int/2addr p1, v6

    add-int/lit16 p1, p1, -0x190

    aput p1, p3, v8

    .line 97
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1d
    :goto_b
    new-array p1, v9, [I

    const/4 p3, -0x1

    aput p3, p1, v8

    .line 98
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    :cond_1e
    :goto_c
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/y2;->d:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 p3, 0x7d

    if-ge p2, p3, :cond_2

    const/16 p3, 0x73

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x74

    if-eq p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :cond_0
    :goto_0
    const/16 p3, 0x1e

    if-ge v0, p3, :cond_2

    .line 2
    iget-object p3, p0, Lk0/y2;->c:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, 0x5

    if-ge v0, p3, :cond_2

    .line 3
    iget-object p3, p0, Lk0/y2;->b:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 3

    const/16 p3, 0x3ed

    const/4 p4, 0x0

    if-eq p1, p3, :cond_f

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    invoke-virtual {p0, p3, v1, v2}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    .line 2
    :pswitch_1
    invoke-virtual {p0, p3, v1, v1}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    .line 3
    :pswitch_2
    invoke-virtual {p0, p3, v2, v2}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    .line 4
    :pswitch_3
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    :pswitch_4
    if-eqz p2, :cond_10

    .line 5
    array-length p1, p2

    if-lez p1, :cond_10

    .line 6
    aget p1, p2, p4

    if-gez p1, :cond_0

    .line 7
    aput p4, p2, p4

    goto :goto_0

    .line 8
    :cond_0
    aget p1, p2, p4

    if-le p1, v0, :cond_1

    .line 9
    aput v0, p2, p4

    .line 10
    :cond_1
    :goto_0
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    :pswitch_5
    if-eqz p2, :cond_10

    .line 11
    array-length p1, p2

    if-lez p1, :cond_10

    .line 12
    aget p1, p2, p4

    if-gez p1, :cond_2

    .line 13
    aput p4, p2, p4

    goto :goto_1

    .line 14
    :cond_2
    aget p1, p2, p4

    if-le p1, p3, :cond_3

    .line 15
    aput p3, p2, p4

    .line 16
    :cond_3
    :goto_1
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v0, v2, p1}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    :pswitch_6
    if-eqz p2, :cond_10

    .line 17
    array-length p1, p2

    if-lez p1, :cond_10

    .line 18
    aget p1, p2, p4

    if-eqz p1, :cond_4

    .line 19
    aput v2, p2, p4

    :cond_4
    const/4 p1, 0x7

    .line 20
    aget p2, p2, p4

    int-to-byte p2, p2

    invoke-virtual {p0, v2, p1, p2}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    :pswitch_7
    if-eqz p2, :cond_10

    .line 21
    array-length p1, p2

    if-lez p1, :cond_10

    .line 22
    aget p1, p2, p4

    if-eqz p1, :cond_5

    .line 23
    aput v2, p2, p4

    :cond_5
    const/4 p1, 0x6

    .line 24
    aget p2, p2, p4

    int-to-byte p2, p2

    invoke-virtual {p0, v2, p1, p2}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    :pswitch_8
    if-eqz p2, :cond_10

    .line 25
    array-length p1, p2

    if-lez p1, :cond_10

    .line 26
    aget p1, p2, p4

    if-eqz p1, :cond_6

    .line 27
    aput v2, p2, p4

    .line 28
    :cond_6
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v1, p3, p1}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    :pswitch_9
    if-eqz p2, :cond_10

    .line 29
    array-length p1, p2

    if-lez p1, :cond_10

    .line 30
    aget p1, p2, p4

    if-eqz p1, :cond_7

    .line 31
    aput v2, p2, p4

    .line 32
    :cond_7
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v1, v0, p1}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    :pswitch_a
    if-eqz p2, :cond_10

    .line 33
    array-length p1, p2

    if-lez p1, :cond_10

    .line 34
    aget p1, p2, p4

    if-eqz p1, :cond_8

    .line 35
    aput v2, p2, p4

    .line 36
    :cond_8
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v1, v1, p1}, Lk0/y2;->c3(BBB)V

    goto/16 :goto_2

    :pswitch_b
    if-eqz p2, :cond_10

    .line 37
    array-length p1, p2

    if-lez p1, :cond_10

    .line 38
    aget p1, p2, p4

    if-eqz p1, :cond_9

    .line 39
    aput v2, p2, p4

    .line 40
    :cond_9
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v1, v2, p1}, Lk0/y2;->c3(BBB)V

    goto :goto_2

    :pswitch_c
    if-eqz p2, :cond_10

    .line 41
    array-length p1, p2

    if-lez p1, :cond_10

    .line 42
    aget p1, p2, p4

    if-eqz p1, :cond_a

    .line 43
    aput v2, p2, p4

    :cond_a
    const/4 p1, 0x5

    .line 44
    aget p2, p2, p4

    int-to-byte p2, p2

    invoke-virtual {p0, v2, p1, p2}, Lk0/y2;->c3(BBB)V

    goto :goto_2

    :pswitch_d
    if-eqz p2, :cond_10

    .line 45
    array-length p1, p2

    if-lez p1, :cond_10

    .line 46
    aget p1, p2, p4

    if-eqz p1, :cond_b

    .line 47
    aput v2, p2, p4

    .line 48
    :cond_b
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v2, p3, p1}, Lk0/y2;->c3(BBB)V

    goto :goto_2

    :pswitch_e
    if-eqz p2, :cond_10

    .line 49
    array-length p1, p2

    if-lez p1, :cond_10

    .line 50
    aget p1, p2, p4

    if-eqz p1, :cond_c

    .line 51
    aput v2, p2, p4

    .line 52
    :cond_c
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v2, v0, p1}, Lk0/y2;->c3(BBB)V

    goto :goto_2

    :pswitch_f
    if-eqz p2, :cond_10

    .line 53
    array-length p1, p2

    if-lez p1, :cond_10

    .line 54
    aget p1, p2, p4

    if-eqz p1, :cond_d

    .line 55
    aput v2, p2, p4

    .line 56
    :cond_d
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v2, v1, p1}, Lk0/y2;->c3(BBB)V

    goto :goto_2

    :pswitch_10
    if-eqz p2, :cond_10

    .line 57
    array-length p1, p2

    if-lez p1, :cond_10

    .line 58
    aget p1, p2, p4

    if-eqz p1, :cond_e

    .line 59
    aput v2, p2, p4

    .line 60
    :cond_e
    aget p1, p2, p4

    int-to-byte p1, p1

    invoke-virtual {p0, v2, v2, p1}, Lk0/y2;->c3(BBB)V

    goto :goto_2

    .line 61
    :cond_f
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/y2;->b3(I)V

    :cond_10
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 7

    .line 1
    sput p1, Lk0/y2;->i:I

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x3

    aput v4, v1, v2

    const/4 v5, 0x2

    const/16 v6, 0x6a

    aput v6, v1, v5

    aput v0, v1, v4

    const/4 v0, 0x4

    aput v2, v1, v0

    add-int/2addr p1, v2

    const/4 v0, 0x5

    aput p1, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/y2;->d:Lo1/g0;

    invoke-virtual {p1, v2, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/y2;->i:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/y2;->d:Lo1/g0;

    invoke-virtual {p1, v2, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final c3(BBB)V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x6a

    aput v3, v0, v1

    aput p1, v0, v2

    const/4 p1, 0x4

    aput p2, v0, p1

    const/4 p1, 0x5

    aput p3, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
