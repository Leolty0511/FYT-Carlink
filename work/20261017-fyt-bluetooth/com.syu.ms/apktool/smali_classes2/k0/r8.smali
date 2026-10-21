.class public Lk0/r8;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public final b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lk0/r8;->b:[I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lk0/r8;->c:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lk0/r8;->e:I

    const/16 v2, 0xd

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_1

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x3

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v5, 0x4

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v5, 0x5

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v5, 0x6

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/4 v5, 0x7

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v5, 0x8

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v5, 0x9

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v5, 0xa

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v5, 0xb

    aput-object v4, v2, v5

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    aput-object v3, v2, v0

    iput-object v2, p0, Lk0/r8;->f:[[I

    .line 6
    new-instance v0, Lk0/r8$a;

    invoke-direct {v0, p0}, Lk0/r8$a;-><init>(Lk0/r8;)V

    iput-object v0, p0, Lk0/r8;->g:Ljava/lang/Runnable;

    .line 7
    iput v1, p0, Lk0/r8;->h:I

    .line 8
    new-instance v0, Lk0/r8$b;

    invoke-direct {v0, p0}, Lk0/r8$b;-><init>(Lk0/r8;)V

    iput-object v0, p0, Lk0/r8;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/r8$c;

    invoke-direct {v0, p0}, Lk0/r8$c;-><init>(Lk0/r8;)V

    iput-object v0, p0, Lk0/r8;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/r8$d;

    invoke-direct {v0, p0}, Lk0/r8$d;-><init>(Lk0/r8;)V

    iput-object v0, p0, Lk0/r8;->k:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x258
        0x64
        0x78
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x12
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x1a
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x18
        -0x1
    .end array-data
.end method

.method public static synthetic c3(Lk0/r8;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/r8;->d3(II)V

    return-void
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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/r8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/r8;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/r8;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x7f

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1e

    const/16 p3, 0x10

    const/16 v3, 0xb

    const/4 v4, 0x5

    const/16 v5, 0xa

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_f

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    if-gez p3, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    if-le p3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, p3

    :goto_0
    new-array p3, v10, [I

    aput v2, p3, v9

    .line 3
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 4
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    if-gez p3, :cond_2

    move p3, v9

    goto :goto_1

    :cond_2
    if-le p3, v5, :cond_3

    move p3, v5

    :cond_3
    :goto_1
    const/16 v0, 0x80

    new-array v1, v10, [I

    aput p3, v1, v9

    .line 5
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 6
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    if-gez p3, :cond_4

    move p3, v9

    goto :goto_2

    :cond_4
    if-le p3, v5, :cond_5

    move p3, v5

    :cond_5
    :goto_2
    const/16 v0, 0x81

    new-array v1, v10, [I

    aput p3, v1, v9

    .line 7
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 8
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    if-gez p3, :cond_6

    move v5, v9

    goto :goto_3

    :cond_6
    if-le p3, v5, :cond_7

    goto :goto_3

    :cond_7
    move v5, p3

    :goto_3
    const/16 p3, 0x82

    new-array v0, v10, [I

    aput v5, v0, v9

    .line 9
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x6

    .line 10
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    if-gez p1, :cond_8

    move v7, v9

    goto :goto_4

    :cond_8
    if-le p1, v7, :cond_9

    goto :goto_4

    :cond_9
    move v7, p1

    :goto_4
    const/16 p1, 0x84

    new-array p2, v10, [I

    aput v7, p2, v9

    .line 11
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_1
    add-int/lit8 p2, p2, 0x6

    .line 12
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    if-gez p1, :cond_a

    move v7, v9

    goto :goto_5

    :cond_a
    if-le p1, v7, :cond_b

    goto :goto_5

    :cond_b
    move v7, p1

    :goto_5
    const/16 p1, 0x84

    new-array p2, v10, [I

    aput v7, p2, v9

    .line 13
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    .line 14
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1f

    add-int/lit8 p3, p2, 0x3

    .line 15
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->P0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 16
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->P0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 17
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->P0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v4

    .line 18
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ll0/c0;->P0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_f

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 19
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    .line 20
    aget-byte p1, p1, p2

    .line 21
    iget p2, p0, Lk0/r8;->c:I

    if-ne p2, p3, :cond_1f

    const/4 p2, 0x0

    if-ne p1, v2, :cond_c

    .line 22
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x85

    aget-object p1, p1, p3

    new-array v0, v10, [I

    aput v10, v0, v9

    invoke-virtual {p1, p3, v0, p2, p2}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_c
    if-ne p1, v10, :cond_1f

    .line 23
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x86

    aget-object p1, p1, p3

    new-array v0, v10, [I

    aput v10, v0, v9

    invoke-virtual {p1, p3, v0, p2, p2}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 24
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    const/16 p2, 0x11f8

    invoke-static {p3, p1, v10, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_f

    :pswitch_5
    add-int/lit8 v0, p2, 0x2

    .line 25
    aget-byte v0, p1, v0

    const/high16 v1, 0xff0000

    const v4, 0xff00

    if-eq v0, v10, :cond_10

    if-eq v0, v2, :cond_d

    goto/16 :goto_f

    :cond_d
    const/16 v0, 0x6e

    new-array v2, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 26
    aget-byte v5, p1, v5

    shl-int/2addr v5, p3

    and-int/2addr v5, v1

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v4

    or-int/2addr v5, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    aput v5, v2, v9

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6f

    new-array v2, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 27
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v4

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    aput v5, v2, v9

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x70

    new-array v2, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 28
    aget-byte v5, p1, v5

    shl-int/2addr v5, p3

    and-int/2addr v5, v1

    add-int/lit8 v7, p2, 0x9

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v4

    or-int/2addr v5, v7

    add-int/lit8 v7, p2, 0xa

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    aput v5, v2, v9

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x71

    new-array v2, v10, [I

    add-int/lit8 v5, p2, 0xb

    .line 29
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v4

    add-int/lit8 v7, p2, 0xc

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    aput v5, v2, v9

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x72

    new-array v2, v10, [I

    add-int/lit8 v5, p2, 0xd

    .line 30
    aget-byte v5, p1, v5

    shl-int/lit8 p3, v5, 0x10

    and-int/2addr p3, v1

    add-int/lit8 v1, p2, 0xe

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v4

    or-int/2addr p3, v1

    add-int/lit8 v1, p2, 0xf

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p3, v1

    aput p3, v2, v9

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v0, v10, [I

    add-int/lit8 v1, p2, 0x10

    .line 31
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v4

    add-int/lit8 v2, p2, 0x11

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    aput v1, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x12

    .line 32
    aget-byte p3, p1, p3

    const/16 v0, 0x68

    new-array v1, v10, [I

    and-int/lit8 v2, p3, 0x3

    aput v2, v1, v9

    .line 33
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x69

    new-array v1, v10, [I

    shr-int/lit8 v2, p3, 0x2

    and-int/2addr v2, v8

    aput v2, v1, v9

    .line 34
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6a

    new-array v1, v10, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v8

    aput v2, v1, v9

    .line 35
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6b

    new-array v1, v10, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v10

    aput v2, v1, v9

    .line 36
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6c

    new-array v1, v10, [I

    shr-int/2addr p3, v6

    and-int/2addr p3, v10

    aput p3, v1, v9

    .line 37
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x13

    .line 38
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    if-gez p1, :cond_e

    move v3, v9

    goto :goto_6

    :cond_e
    if-le p1, v3, :cond_f

    goto :goto_6

    :cond_f
    move v3, p1

    :goto_6
    const/16 p1, 0x6d

    new-array p2, v10, [I

    .line 39
    iget-object p3, p0, Lk0/r8;->b:[I

    aget p3, p3, v3

    aput p3, p2, v9

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_10
    const/16 v0, 0x62

    new-array v2, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 40
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v9

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x63

    new-array v2, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 41
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v4

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    aput v5, v2, v9

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x64

    new-array v2, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 42
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v4

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    aput v5, v2, v9

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x65

    new-array v2, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 43
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v4

    add-int/lit8 v7, p2, 0x9

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    aput v5, v2, v9

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v2, v10, [I

    add-int/lit8 v5, p2, 0xa

    .line 44
    aget-byte v5, p1, v5

    shl-int/2addr v5, p3

    and-int/2addr v1, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v4

    or-int/2addr v1, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    aput v1, v2, v9

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    new-array v1, v10, [I

    add-int/lit8 v2, p2, 0xd

    .line 45
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v4

    add-int/lit8 v4, p2, 0xe

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    aput v2, v1, v9

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0xf

    .line 46
    aget-byte v0, p1, v0

    const/16 v1, 0x68

    new-array v2, v10, [I

    and-int/lit8 v4, v0, 0x3

    aput v4, v2, v9

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x69

    new-array v2, v10, [I

    shr-int/lit8 v4, v0, 0x2

    and-int/2addr v4, v8

    aput v4, v2, v9

    .line 48
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6a

    new-array v2, v10, [I

    shr-int/lit8 v4, v0, 0x4

    and-int/2addr v4, v8

    aput v4, v2, v9

    .line 49
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6b

    new-array v2, v10, [I

    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 50
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6c

    new-array v2, v10, [I

    shr-int/2addr v0, v6

    and-int/2addr v0, v10

    aput v0, v2, v9

    .line 51
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, p3

    .line 52
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    if-gez p1, :cond_11

    move v3, v9

    goto :goto_7

    :cond_11
    if-le p1, v3, :cond_12

    goto :goto_7

    :cond_12
    move v3, p1

    :goto_7
    const/16 p1, 0x6d

    new-array p2, v10, [I

    .line 53
    iget-object p3, p0, Lk0/r8;->b:[I

    aget p3, p3, v3

    aput p3, p2, v9

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_6
    add-int/lit8 p3, p2, 0x2

    .line 54
    aget-byte p3, p1, p3

    const/16 v0, 0x74

    new-array v1, v10, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v8

    aput v2, v1, v9

    .line 55
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x75

    new-array v1, v10, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v8

    aput v2, v1, v9

    .line 56
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x76

    new-array v1, v10, [I

    and-int/lit8 p3, p3, 0xf

    aput p3, v1, v9

    .line 57
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 58
    aget-byte p3, p1, p3

    const/16 v0, 0x77

    new-array v1, v10, [I

    shr-int/lit8 v2, p3, 0x7

    and-int/2addr v2, v10

    aput v2, v1, v9

    .line 59
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x79

    new-array v1, v10, [I

    shr-int/lit8 v2, p3, 0x2

    and-int/2addr v2, v8

    aput v2, v1, v9

    .line 60
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7a

    new-array v1, v10, [I

    shr-int/2addr p3, v9

    and-int/2addr p3, v8

    aput p3, v1, v9

    .line 61
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v7

    .line 62
    aget-byte p1, p1, p2

    const/16 p2, 0x7b

    new-array p3, v10, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v10

    aput v0, p3, v9

    .line 63
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x7c

    new-array p3, v10, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v8

    aput p1, p3, v9

    .line 64
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_7
    add-int/2addr p2, v2

    .line 65
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 66
    invoke-static {p2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_13

    new-array p2, v10, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v10

    aput p3, p2, v9

    .line 67
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v10, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v10

    aput p3, p2, v9

    .line 68
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_13
    new-array p2, v10, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v10

    aput p3, p2, v9

    .line 69
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v10, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v10

    aput p3, p2, v9

    .line 70
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array p2, v10, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v10

    aput p3, p2, v9

    .line 71
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v10, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v10

    aput p3, p2, v9

    .line 72
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v10, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v10

    aput p3, p2, v9

    .line 73
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v10, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v10

    aput p1, p2, v9

    .line 74
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_8
    add-int/lit8 v0, p2, 0x2

    .line 75
    aget-byte v0, p1, v0

    new-array v2, v10, [I

    shr-int/lit8 v4, v0, 0x7

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 76
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v10

    aput v4, v2, v9

    .line 77
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_14

    move v3, v9

    goto :goto_9

    :cond_14
    move v3, v10

    :goto_9
    aput v3, v2, v9

    const/16 v3, 0xc

    .line 78
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v0, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/16 v3, 0xd

    .line 79
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v0, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/16 v3, 0xe

    .line 80
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v0, v9

    and-int/2addr v0, v10

    aput v0, v2, v9

    .line 81
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 82
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    new-array v2, v10, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 83
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v2, v10, [I

    shr-int/lit8 v3, p3, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 84
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v2, v10, [I

    shr-int/lit8 v3, p3, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 85
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit8 p3, p3, 0xf

    if-le p3, v6, :cond_15

    goto :goto_a

    :cond_15
    move v6, p3

    :goto_a
    const/16 p3, 0x15

    new-array v0, v10, [I

    aput v6, v0, v9

    .line 86
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 87
    aget-byte v0, p1, p3

    add-int/lit8 v2, p2, 0x5

    .line 88
    aget-byte v3, p1, v2

    const-string v4, "persist.fyt.reversetemp"

    .line 89
    invoke-static {v4, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 90
    aget-byte v0, p1, v2

    .line 91
    aget-byte v3, p1, p3

    :cond_16
    const/16 p3, 0x1b

    if-eqz v0, :cond_18

    if-eq v0, v1, :cond_17

    new-array v2, v10, [I

    and-int/lit16 v0, v0, 0xff

    aput v0, v2, v9

    .line 92
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_17
    new-array v0, v10, [I

    const/4 v2, -0x3

    aput v2, v0, v9

    .line 93
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_18
    new-array v0, v10, [I

    const/4 v2, -0x2

    aput v2, v0, v9

    .line 94
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :goto_b
    if-eqz v3, :cond_1a

    if-eq v3, v1, :cond_19

    const/16 p3, 0x1c

    new-array v0, v10, [I

    and-int/lit16 v1, v3, 0xff

    aput v1, v0, v9

    .line 95
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_19
    const/16 p3, 0x1c

    new-array v0, v10, [I

    const/4 v1, -0x3

    aput v1, v0, v9

    .line 96
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1a
    const/16 p3, 0x1c

    new-array v0, v10, [I

    const/4 v1, -0x2

    aput v1, v0, v9

    .line 97
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :goto_c
    add-int/lit8 p2, p2, 0x6

    .line 98
    aget-byte p1, p1, p2

    const/16 p2, 0x41

    new-array p3, v10, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v10

    aput v0, p3, v9

    .line 99
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x25

    new-array p3, v10, [I

    shr-int/2addr p1, v9

    and-int/2addr p1, v10

    aput p1, p3, v9

    .line 100
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    .line 101
    :pswitch_9
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1f

    add-int/lit8 p3, p2, 0x2

    .line 102
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    .line 103
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 104
    iput p2, p0, Lk0/r8;->e:I

    move p2, v9

    .line 105
    :goto_d
    iget-object p3, p0, Lk0/r8;->f:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_1c

    .line 106
    iget v0, p0, Lk0/r8;->e:I

    aget-object v1, p3, p2

    aget v1, v1, v9

    if-ne v0, v1, :cond_1b

    if-eqz v0, :cond_1c

    .line 107
    iput p2, p0, Lk0/r8;->d:I

    goto :goto_e

    :cond_1b
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_1c
    :goto_e
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_1d

    .line 108
    array-length p1, p3

    if-ge p2, p1, :cond_1f

    .line 109
    aget-object p1, p3, p2

    aget p1, p1, v10

    invoke-static {p1, v9}, Ll0/b0;->l0(II)V

    goto :goto_f

    .line 110
    :cond_1d
    array-length p1, p3

    if-gt p2, p1, :cond_1f

    .line 111
    iget p1, p0, Lk0/r8;->d:I

    aget-object p1, p3, p1

    aget p1, p1, v10

    invoke-static {p1, v10}, Ll0/b0;->l0(II)V

    goto :goto_f

    .line 112
    :cond_1e
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_1f
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/r8;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/r8;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/r8;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/r8;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x89

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

    const/16 p3, 0x64

    const/4 p4, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_27

    const/16 p3, 0x65

    const/4 v2, 0x3

    if-eq p1, p3, :cond_26

    const/16 p3, 0x3ed

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eq p1, p3, :cond_23

    const/16 p3, 0xa

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_e

    :pswitch_0
    if-eqz p2, :cond_29

    .line 1
    array-length p1, p2

    if-lez p1, :cond_29

    .line 2
    aget p1, p2, v1

    if-gez p1, :cond_0

    .line 3
    aput v1, p2, v1

    goto :goto_0

    .line 4
    :cond_0
    aget p1, p2, v1

    if-le p1, p3, :cond_1

    .line 5
    aput p3, p2, v1

    .line 6
    :cond_1
    :goto_0
    aget p1, p2, v1

    invoke-virtual {p0, v2, p1}, Lk0/r8;->a3(II)V

    goto/16 :goto_e

    :pswitch_1
    if-eqz p2, :cond_29

    .line 7
    array-length p1, p2

    if-lez p1, :cond_29

    .line 8
    aget p1, p2, v1

    if-gez p1, :cond_2

    .line 9
    aput v1, p2, v1

    goto :goto_1

    .line 10
    :cond_2
    aget p1, p2, v1

    if-le p1, p3, :cond_3

    .line 11
    aput p3, p2, v1

    .line 12
    :cond_3
    :goto_1
    aget p1, p2, v1

    invoke-virtual {p0, v3, p1}, Lk0/r8;->a3(II)V

    goto/16 :goto_e

    :pswitch_2
    if-eqz p2, :cond_29

    .line 13
    array-length p1, p2

    if-lez p1, :cond_29

    .line 14
    aget p1, p2, v1

    if-gez p1, :cond_4

    .line 15
    aput v1, p2, v1

    goto :goto_2

    .line 16
    :cond_4
    aget p1, p2, v1

    if-le p1, p3, :cond_5

    .line 17
    aput p3, p2, v1

    .line 18
    :cond_5
    :goto_2
    aget p1, p2, v1

    invoke-virtual {p0, v4, p1}, Lk0/r8;->a3(II)V

    goto/16 :goto_e

    :pswitch_3
    if-eqz p2, :cond_29

    .line 19
    array-length p1, p2

    if-lez p1, :cond_29

    .line 20
    aget p1, p2, v1

    if-gez p1, :cond_6

    .line 21
    aput v1, p2, v1

    goto :goto_3

    .line 22
    :cond_6
    aget p1, p2, v1

    if-le p1, v4, :cond_7

    .line 23
    aput v4, p2, v1

    .line 24
    :cond_7
    :goto_3
    aget p1, p2, v1

    invoke-virtual {p0, v0, p1}, Lk0/r8;->a3(II)V

    goto/16 :goto_e

    :pswitch_4
    if-eqz p2, :cond_29

    .line 25
    array-length p1, p2

    if-lez p1, :cond_29

    .line 26
    aget p1, p2, v1

    if-gez p1, :cond_8

    .line 27
    aput v1, p2, v1

    goto :goto_4

    .line 28
    :cond_8
    aget p1, p2, v1

    if-le p1, v3, :cond_9

    .line 29
    aput v3, p2, v1

    .line 30
    :cond_9
    :goto_4
    aget p1, p2, v1

    invoke-virtual {p0, p4, p1}, Lk0/r8;->a3(II)V

    goto/16 :goto_e

    :pswitch_5
    if-eqz p2, :cond_29

    .line 31
    array-length p1, p2

    if-lez p1, :cond_29

    .line 32
    aget p1, p2, v1

    if-eqz p1, :cond_a

    .line 33
    aput v0, p2, v1

    :cond_a
    const/16 p1, 0x13

    .line 34
    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_6
    if-eqz p2, :cond_29

    .line 35
    array-length p1, p2

    if-lez p1, :cond_29

    .line 36
    aget p1, p2, v1

    if-eqz p1, :cond_b

    .line 37
    aput v0, p2, v1

    :cond_b
    const/16 p1, 0x12

    .line 38
    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_7
    if-eqz p2, :cond_29

    .line 39
    array-length p1, p2

    if-lez p1, :cond_29

    const/16 p1, 0x11

    .line 40
    invoke-virtual {p0, p1, v1}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_8
    if-eqz p2, :cond_29

    .line 41
    array-length p1, p2

    if-lez p1, :cond_29

    const/16 p1, 0xf

    .line 42
    invoke-virtual {p0, p1, v1}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_9
    if-eqz p2, :cond_29

    .line 43
    array-length p1, p2

    if-lez p1, :cond_29

    const/16 p1, 0xe

    .line 44
    invoke-virtual {p0, p1, v1}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_a
    if-eqz p2, :cond_29

    .line 45
    array-length p1, p2

    if-lez p1, :cond_29

    .line 46
    aget p1, p2, v1

    if-eqz p1, :cond_c

    .line 47
    aput v0, p2, v1

    :cond_c
    const/16 p1, 0xd

    .line 48
    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_b
    if-eqz p2, :cond_29

    .line 49
    array-length p1, p2

    if-lez p1, :cond_29

    .line 50
    aget p1, p2, v1

    if-eqz p1, :cond_d

    .line 51
    aput v0, p2, v1

    :cond_d
    const/16 p1, 0xc

    .line 52
    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_c
    if-eqz p2, :cond_29

    .line 53
    array-length p1, p2

    if-lez p1, :cond_29

    .line 54
    aget p1, p2, v1

    if-gez p1, :cond_e

    .line 55
    aput v1, p2, v1

    goto :goto_5

    .line 56
    :cond_e
    aget p1, p2, v1

    if-le p1, v4, :cond_f

    .line 57
    aput v4, p2, v1

    :cond_f
    :goto_5
    const/16 p1, 0xb

    .line 58
    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_d
    if-eqz p2, :cond_29

    .line 59
    array-length p1, p2

    if-lez p1, :cond_29

    .line 60
    aget p1, p2, v1

    if-eqz p1, :cond_10

    .line 61
    aput v0, p2, v1

    .line 62
    :cond_10
    aget p1, p2, v1

    invoke-virtual {p0, p3, p1}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_e
    if-eqz p2, :cond_29

    .line 63
    array-length p1, p2

    if-lez p1, :cond_29

    .line 64
    aget p1, p2, v1

    if-eqz p1, :cond_11

    .line 65
    aput v0, p2, v1

    :cond_11
    const/16 p1, 0x9

    .line 66
    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_f
    if-eqz p2, :cond_29

    .line 67
    array-length p1, p2

    if-lez p1, :cond_29

    .line 68
    aget p1, p2, v1

    if-gez p1, :cond_12

    .line 69
    aput v1, p2, v1

    goto :goto_6

    .line 70
    :cond_12
    aget p1, p2, v1

    if-le p1, v2, :cond_13

    .line 71
    aput v2, p2, v1

    :cond_13
    :goto_6
    const/16 p1, 0x8

    .line 72
    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_10
    if-eqz p2, :cond_29

    .line 73
    array-length p1, p2

    if-lez p1, :cond_29

    .line 74
    aget p1, p2, v1

    if-gez p1, :cond_14

    .line 75
    aput v1, p2, v1

    goto :goto_7

    .line 76
    :cond_14
    aget p1, p2, v1

    if-le p1, v4, :cond_15

    .line 77
    aput v4, p2, v1

    :cond_15
    :goto_7
    const/4 p1, 0x7

    .line 78
    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_11
    if-eqz p2, :cond_29

    .line 79
    array-length p1, p2

    if-lez p1, :cond_29

    .line 80
    aget p1, p2, v1

    if-gez p1, :cond_16

    .line 81
    aput v1, p2, v1

    goto :goto_8

    .line 82
    :cond_16
    aget p1, p2, v1

    if-le p1, v3, :cond_17

    .line 83
    aput v3, p2, v1

    :cond_17
    :goto_8
    const/4 p1, 0x6

    .line 84
    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_12
    if-eqz p2, :cond_29

    .line 85
    array-length p1, p2

    if-lez p1, :cond_29

    .line 86
    aget p1, p2, v1

    if-gez p1, :cond_18

    .line 87
    aput v1, p2, v1

    goto :goto_9

    .line 88
    :cond_18
    aget p1, p2, v1

    if-le p1, v2, :cond_19

    .line 89
    aput v2, p2, v1

    .line 90
    :cond_19
    :goto_9
    aget p1, p2, v1

    invoke-virtual {p0, p4, p1}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_13
    if-eqz p2, :cond_29

    .line 91
    array-length p1, p2

    if-lez p1, :cond_29

    .line 92
    aget p1, p2, v1

    if-gez p1, :cond_1a

    .line 93
    aput v1, p2, v1

    goto :goto_a

    .line 94
    :cond_1a
    aget p1, p2, v1

    if-le p1, v4, :cond_1b

    .line 95
    aput v4, p2, v1

    .line 96
    :cond_1b
    :goto_a
    aget p1, p2, v1

    invoke-virtual {p0, v3, p1}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_14
    if-eqz p2, :cond_29

    .line 97
    array-length p1, p2

    if-lez p1, :cond_29

    .line 98
    aget p1, p2, v1

    if-gez p1, :cond_1c

    .line 99
    aput v1, p2, v1

    goto :goto_b

    .line 100
    :cond_1c
    aget p1, p2, v1

    if-le p1, v4, :cond_1d

    .line 101
    aput v4, p2, v1

    .line 102
    :cond_1d
    :goto_b
    aget p1, p2, v1

    invoke-virtual {p0, v2, p1}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_15
    if-eqz p2, :cond_29

    .line 103
    array-length p1, p2

    if-lez p1, :cond_29

    .line 104
    aget p1, p2, v1

    if-gez p1, :cond_1e

    .line 105
    aput v1, p2, v1

    goto :goto_c

    .line 106
    :cond_1e
    aget p1, p2, v1

    if-le p1, v4, :cond_1f

    .line 107
    aput v4, p2, v1

    .line 108
    :cond_1f
    :goto_c
    aget p1, p2, v1

    invoke-virtual {p0, v4, p1}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_16
    if-eqz p2, :cond_29

    .line 109
    array-length p1, p2

    if-lez p1, :cond_29

    .line 110
    aget p1, p2, v1

    if-eqz p1, :cond_20

    .line 111
    aput v0, p2, v1

    .line 112
    :cond_20
    aget p1, p2, v1

    invoke-virtual {p0, v0, p1}, Lk0/r8;->b3(II)V

    goto/16 :goto_e

    :pswitch_17
    if-eqz p2, :cond_29

    .line 113
    array-length p1, p2

    if-lez p1, :cond_29

    .line 114
    aget p1, p2, v1

    if-gez p1, :cond_21

    .line 115
    aput v1, p2, v1

    goto :goto_d

    .line 116
    :cond_21
    aget p1, p2, v1

    if-le p1, p3, :cond_22

    .line 117
    aput p3, p2, v1

    .line 118
    :cond_22
    :goto_d
    aget p1, p2, v1

    invoke-virtual {p0, v1, p1}, Lk0/r8;->b3(II)V

    goto :goto_e

    :cond_23
    :pswitch_18
    if-eqz p2, :cond_29

    .line 119
    array-length p1, p2

    if-lez p1, :cond_29

    .line 120
    aget p1, p2, v1

    if-nez p1, :cond_24

    new-array p1, v3, [I

    .line 121
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_e

    .line 122
    :cond_24
    aget p1, p2, v1

    if-ne p1, v0, :cond_25

    new-array p1, v3, [I

    .line 123
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_e

    .line 124
    :cond_25
    aget p1, p2, v1

    if-ne p1, v4, :cond_29

    new-array p1, v3, [I

    .line 125
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_e

    :cond_26
    if-eqz p2, :cond_29

    .line 126
    array-length p1, p2

    if-lez p1, :cond_29

    .line 127
    aget p1, p2, v1

    if-ne p1, v2, :cond_29

    .line 128
    invoke-virtual {p0, p4, v2}, Lk0/r8;->d3(II)V

    goto :goto_e

    :cond_27
    if-eqz p2, :cond_29

    .line 129
    array-length p1, p2

    if-ne p1, v0, :cond_28

    .line 130
    aget p1, p2, v1

    invoke-virtual {p0, p4, p1}, Lk0/r8;->d3(II)V

    goto :goto_e

    .line 131
    :cond_28
    array-length p1, p2

    if-le p1, v0, :cond_29

    .line 132
    aget p1, p2, v1

    aget p2, p2, v0

    invoke-virtual {p0, p1, p2}, Lk0/r8;->d3(II)V

    :cond_29
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_18
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x7c
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7c
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7c
        0x1
        0x1
    .end array-data
.end method

.method public final a3(II)V
    .locals 3

    .line 1
    iput p1, p0, Lk0/r8;->c:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7b

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(II)V
    .locals 3

    .line 1
    iput p1, p0, Lk0/r8;->c:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7e

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7d

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
