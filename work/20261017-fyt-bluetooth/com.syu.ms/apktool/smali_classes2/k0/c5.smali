.class public Lk0/c5;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static e:Ljava/lang/Runnable;


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk0/c5$a;

    invoke-direct {v0}, Lk0/c5$a;-><init>()V

    sput-object v0, Lk0/c5;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/c5;->c:I

    const/16 v1, 0xc

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

    const/16 v2, 0xb

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/c5;->d:[[I

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x9
        0xd
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xb
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0x13
        0xc
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x12
    .end array-data

    :array_b
    .array-data 4
        0x15
        0x1a
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
    sget v0, Lk0/nt;->c:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Lk0/c5;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    sget-object v1, Lk0/c5;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lk0/c5;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_16

    const/16 v6, 0xc

    const/16 v7, 0x7f

    const/16 v8, 0xa

    const/4 v9, 0x2

    if-eq v0, v9, :cond_9

    if-eq v0, v8, :cond_8

    const/16 v8, 0x11

    if-eq v0, v8, :cond_5

    if-eq v0, v7, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    add-int/lit8 p3, p2, 0x3

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/c5;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 3
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lk0/c5;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/c5;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 5
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/c5;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->G2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 6
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/c5;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 7
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lk0/c5;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 8
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/c5;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0x8

    .line 9
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lk0/c5;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 10
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x11f8

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 11
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/lit8 v0, p2, 0x3

    .line 12
    aget-byte v3, p1, v0

    shr-int/2addr v3, v2

    and-int/lit8 v3, v3, 0xf

    .line 13
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    const-string v6, ""

    const/16 v7, 0x20

    if-nez v3, :cond_0

    .line 14
    :try_start_0
    new-instance v8, Ljava/lang/String;

    add-int/2addr p2, v2

    const-string v2, "GB2312"

    invoke-direct {v8, p1, p2, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_0
    move-object v6, v8

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-ne v3, v5, :cond_1

    .line 15
    new-instance v8, Ljava/lang/String;

    add-int/2addr p2, v2

    const-string v2, "UTF-16BE"

    invoke-direct {v8, p1, p2, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne v3, v9, :cond_2

    .line 16
    new-instance v8, Ljava/lang/String;

    add-int/2addr p2, v2

    const-string v2, "UTF-16LE"

    invoke-direct {v8, p1, p2, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    .line 17
    new-instance v8, Ljava/lang/String;

    add-int/2addr p2, v2

    const-string v2, "UTF-8"

    invoke-direct {v8, p1, p2, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :goto_1
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_3
    :goto_2
    const/16 p1, 0x6e

    new-array p2, v1, [I

    aput p3, p2, v4

    aput v3, p2, v5

    aput v0, p2, v9

    .line 19
    invoke-static {p1, p2, v6}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_a

    :pswitch_3
    add-int/lit8 p3, p2, 0x3

    .line 20
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x4

    .line 21
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x7

    .line 22
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x8

    .line 23
    aget-byte v2, p1, v2

    add-int/lit8 v7, p2, 0x9

    .line 24
    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0xa

    .line 25
    aget-byte v8, p1, v8

    add-int/lit8 v9, p2, 0xb

    .line 26
    aget-byte v9, p1, v9

    add-int/2addr p2, v6

    .line 27
    aget-byte p1, p1, p2

    const/16 p2, 0x66

    new-array v6, v5, [I

    and-int/2addr p3, v3

    aput p3, v6, v4

    .line 28
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x67

    new-array p3, v5, [I

    shr-int/lit8 v6, v0, 0x4

    and-int/2addr v6, v3

    aput v6, p3, v4

    .line 29
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x68

    new-array p3, v5, [I

    and-int/lit8 v0, v0, 0xf

    aput v0, p3, v4

    .line 30
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x69

    new-array p3, v5, [I

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v2, 0xff

    or-int/2addr v0, v1

    aput v0, p3, v4

    .line 31
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6a

    new-array p3, v5, [I

    and-int/lit16 v0, v7, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v8, 0xff

    or-int/2addr v0, v1

    aput v0, p3, v4

    .line 32
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6b

    new-array p3, v5, [I

    and-int/lit16 v0, v9, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    aput p1, p3, v4

    .line 33
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 34
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 35
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x6

    .line 36
    aget-byte p1, p1, p2

    const/16 p2, 0x63

    new-array v1, v5, [I

    shr-int/lit8 v2, p3, 0x7

    and-int/2addr v2, v5

    aput v2, v1, v4

    .line 37
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x64

    new-array v1, v5, [I

    and-int/lit8 p3, p3, 0xf

    aput p3, v1, v4

    .line 38
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x65

    new-array p3, v5, [I

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    aput p1, p3, v4

    .line 39
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 40
    :cond_4
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v9

    sub-int/2addr p3, v9

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 41
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    .line 42
    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0x6f

    aget v2, v0, v1

    const/4 v6, 0x0

    if-eq v2, p3, :cond_6

    .line 43
    aput p3, v0, v1

    .line 44
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput p3, v7, v4

    invoke-static {v2, v1, v7, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_6
    add-int/lit8 p3, p2, 0x3

    .line 45
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    const/16 v1, 0x70

    .line 46
    aget v2, v0, v1

    if-eq v2, p3, :cond_7

    .line 47
    aput p3, v0, v1

    .line 48
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v7, v5, [I

    aput p3, v7, v4

    invoke-static {v2, v1, v7, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_7
    add-int/lit8 p3, p2, 0x4

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 p2, p2, 0x5

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, p3

    const/16 p2, 0x71

    .line 50
    aget p3, v0, p2

    if-eq p3, p1, :cond_1c

    .line 51
    aput p1, v0, p2

    .line 52
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    new-array v0, v5, [I

    aput p1, v0, v4

    invoke-static {p3, p2, v0, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_8
    add-int/2addr p2, v9

    .line 53
    aget-byte p1, p1, p2

    const/16 p2, 0x72

    new-array p3, v5, [I

    and-int/2addr p1, v3

    aput p1, p3, v4

    .line 54
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_9
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 55
    aget-byte v10, p1, v0

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v5

    aput v10, p3, v4

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 56
    aget-byte v10, p1, v0

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v5

    aput v10, p3, v4

    const/16 v10, 0xb

    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x34

    new-array v10, v5, [I

    .line 57
    aget-byte v11, p1, v0

    shr-int/lit8 v11, v11, 0x5

    and-int/2addr v11, v5

    aput v11, v10, v4

    invoke-static {p3, v10}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v10, v5, [I

    .line 58
    aget-byte v11, p1, v0

    shr-int/2addr v11, v2

    and-int/2addr v11, v5

    aput v11, v10, v4

    invoke-static {p3, v10}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v10, v5, [I

    .line 59
    aget-byte v11, p1, v0

    shr-int/lit8 v1, v11, 0x3

    and-int/2addr v1, v5

    aput v1, v10, v4

    invoke-static {p3, v10}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v1, v5, [I

    .line 60
    aget-byte v10, p1, v0

    shr-int/lit8 v9, v10, 0x2

    and-int/2addr v9, v5

    aput v9, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v1, v5, [I

    .line 61
    aget-byte v9, p1, v0

    shr-int/2addr v9, v5

    and-int/2addr v9, v5

    aput v9, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 62
    aget-byte v0, p1, v0

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 63
    aget-byte v6, p1, v1

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v5

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v5, [I

    .line 64
    aget-byte v6, p1, v1

    shr-int/lit8 v6, v6, 0x5

    and-int/2addr v6, v5

    aput v6, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    .line 65
    aget-byte v6, p1, v1

    shr-int/lit8 v2, v6, 0x4

    and-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    .line 66
    aget-byte v2, p1, v1

    shr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 67
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    const-string v2, "persist.fyt.reversetemp"

    .line 68
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v0, p2, 0x5

    .line 69
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    :cond_a
    const/4 v6, -0x2

    if-eqz v0, :cond_d

    if-eq v0, v7, :cond_c

    if-eq v0, v3, :cond_b

    goto :goto_3

    :cond_b
    const/4 v0, -0x3

    goto :goto_3

    :cond_c
    const/4 v0, -0x1

    goto :goto_3

    :cond_d
    move v0, v6

    :goto_3
    const/16 v9, 0x1b

    new-array v10, v5, [I

    aput v0, v10, v4

    .line 70
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    .line 71
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 72
    aget-byte p3, p1, p3

    goto :goto_4

    :cond_e
    add-int/lit8 p3, p2, 0x5

    .line 73
    aget-byte p3, p1, p3

    :goto_4
    and-int/2addr p3, v3

    if-eqz p3, :cond_11

    if-eq p3, v7, :cond_10

    if-eq p3, v3, :cond_f

    move v6, p3

    goto :goto_5

    :cond_f
    const/4 v6, -0x3

    goto :goto_5

    :cond_10
    const/4 v6, -0x1

    :cond_11
    :goto_5
    const/16 p3, 0x1c

    new-array v0, v5, [I

    aput v6, v0, v4

    .line 74
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 75
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne p3, v5, :cond_12

    goto :goto_6

    .line 76
    :cond_12
    aget-byte p3, p1, v1

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v5

    if-ne p3, v5, :cond_13

    goto :goto_6

    :cond_13
    move v5, v4

    :goto_6
    if-nez v5, :cond_14

    .line 77
    invoke-static {v4}, Lu0/d;->A3(I)V

    goto :goto_a

    :cond_14
    add-int/lit8 p2, p2, 0x6

    .line 78
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_15

    rsub-int p1, p1, 0x100

    mul-int/2addr p1, v8

    rsub-int p1, p1, 0x3e8

    goto :goto_7

    :cond_15
    and-int/2addr p1, v3

    mul-int/2addr p1, v8

    add-int/lit16 p1, p1, 0x3e8

    .line 79
    :goto_7
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_a

    .line 80
    :cond_16
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-nez p3, :cond_17

    sget p3, Lk0/nt;->c:I

    if-eq p3, v1, :cond_17

    if-ne p3, v2, :cond_1c

    :cond_17
    add-int/lit8 p3, p2, 0x2

    .line 81
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 82
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 83
    iput p2, p0, Lk0/c5;->c:I

    move p2, v4

    .line 84
    :goto_8
    iget-object p3, p0, Lk0/c5;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_19

    .line 85
    iget v0, p0, Lk0/c5;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_18

    if-eqz v0, :cond_19

    .line 86
    iput p2, p0, Lk0/c5;->b:I

    goto :goto_9

    :cond_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_19
    :goto_9
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_1a

    .line 87
    array-length p1, p3

    if-ge p2, p1, :cond_1c

    .line 88
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_1a
    if-nez p1, :cond_1c

    .line 89
    iget p1, p0, Lk0/c5;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_1b

    if-eq p1, v3, :cond_1b

    .line 90
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 91
    :cond_1b
    iput v3, p0, Lk0/c5;->b:I

    :cond_1c
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
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
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Lk0/c5;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    sget-object v1, Lk0/c5;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lk0/c5;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x74

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

.method public final a3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

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
