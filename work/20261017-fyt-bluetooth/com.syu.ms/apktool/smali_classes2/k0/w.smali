.class public Lk0/w;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:J

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:B

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/w;->c:I

    const/16 v0, 0x15

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v4, 0x13

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_14

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/w;->d:[[I

    .line 4
    new-instance v0, Lk0/w$a;

    invoke-direct {v0, p0}, Lk0/w$a;-><init>(Lk0/w;)V

    iput-object v0, p0, Lk0/w;->e:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lk0/w;->f:J

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lk0/w;->g:I

    .line 7
    new-instance v0, Lk0/w$b;

    invoke-direct {v0, p0}, Lk0/w$b;-><init>(Lk0/w;)V

    iput-object v0, p0, Lk0/w;->h:Ljava/lang/Runnable;

    .line 8
    iput-byte v3, p0, Lk0/w;->i:B

    .line 9
    new-instance v0, Lk0/w$c;

    invoke-direct {v0, p0}, Lk0/w$c;-><init>(Lk0/w;)V

    iput-object v0, p0, Lk0/w;->j:Ljava/lang/Runnable;

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
        0x1c
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1b
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x2
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

    :array_e
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x20
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x21
    .end array-data

    :array_12
    .array-data 4
        0x13
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x14
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x15
        -0x1
    .end array-data
.end method

.method public static synthetic b3(Lk0/w;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/w;->f:J

    return-wide v0
.end method

.method public static synthetic c3(Lk0/w;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/w;->f:J

    return-wide p1
.end method

.method public static synthetic d3(Lk0/w;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/w;->g:I

    return p0
.end method

.method public static synthetic e3(Lk0/w;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/w;->g:I

    return p1
.end method

.method public static synthetic f3(Lk0/w;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/w;->a3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/w;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/w;->j:Ljava/lang/Runnable;

    return-object p0
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

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iget-object v0, p0, Lk0/w;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lk0/w;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x31

    const/16 v1, 0xff

    if-eq p3, v0, :cond_c

    const/16 v0, 0x68

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v0, :cond_b

    const/16 v5, 0x41

    if-eq p3, v5, :cond_a

    const/16 v5, 0x42

    if-eq p3, v5, :cond_9

    const/4 v5, 0x5

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const/16 p3, 0x65

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    or-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x4

    .line 3
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    or-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x6

    .line 4
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    or-int/2addr p1, v2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_1
    new-array p3, v4, [I

    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    or-int/2addr v2, v5

    aput v2, p3, v3

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x4

    .line 6
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    or-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x6

    .line 7
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    or-int/2addr p1, v2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_2
    const/16 p3, 0x66

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x2

    .line 8
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    or-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x4

    .line 9
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/2addr v5, v1

    or-int/2addr v2, v5

    aput v2, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x62

    new-array v0, v4, [I

    add-int/lit8 v2, p2, 0x6

    .line 10
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    or-int/2addr p1, v2

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_3
    const/4 p3, 0x4

    add-int/2addr p2, p3

    .line 11
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 12
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v0, 0x2

    if-nez p2, :cond_0

    new-array p2, v4, [I

    shr-int/lit8 v1, p1, 0x7

    and-int/2addr v1, v4

    aput v1, p2, v3

    .line 13
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v4

    aput v1, p2, v3

    .line 14
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v4, [I

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v4

    aput v1, p2, v3

    .line 15
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v1, p1, 0x7

    and-int/2addr v1, v4

    aput v1, p2, v3

    .line 16
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 17
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 18
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 19
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_4
    add-int/lit8 p3, p2, 0x4

    .line 20
    aget-byte v0, p1, p3

    and-int/2addr v0, v1

    add-int/2addr p2, v5

    .line 21
    aget-byte v2, p1, p2

    and-int/2addr v2, v1

    const/16 v5, 0x14

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    if-ne v2, v4, :cond_1

    .line 22
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    const/16 v7, 0x73

    aget-object v5, v5, v7

    new-array v8, v4, [I

    aput v4, v8, v3

    invoke-virtual {v5, v7, v8, v6, v6}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    .line 23
    :cond_1
    sget v5, Ln0/j4;->b:I

    const/16 v7, 0x35

    if-ne v5, v7, :cond_3

    const/16 v5, 0x13

    if-ne v0, v5, :cond_3

    if-ne v2, v4, :cond_3

    .line 24
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.syu.canbus"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 25
    invoke-static {}, Lo1/u;->k()V

    goto :goto_1

    .line 26
    :cond_2
    invoke-static {}, Lo1/u;->v()I

    :cond_3
    :goto_1
    const/16 v5, 0x15

    if-ne v0, v5, :cond_4

    if-ne v2, v4, :cond_4

    .line 27
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x74

    aget-object v0, v0, v2

    new-array v5, v4, [I

    aput v4, v5, v3

    invoke-virtual {v0, v2, v5, v6, v6}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    .line 28
    :cond_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    aget-byte p3, p1, p3

    .line 30
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 31
    iput p2, p0, Lk0/w;->c:I

    move p2, v3

    .line 32
    :goto_2
    iget-object p3, p0, Lk0/w;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 33
    iget v0, p0, Lk0/w;->c:I

    aget-object v2, p3, p2

    aget v2, v2, v3

    if-ne v0, v2, :cond_5

    if-eqz v0, :cond_6

    .line 34
    iput p2, p0, Lk0/w;->b:I

    goto :goto_3

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    and-int/2addr p1, v1

    if-ne p1, v4, :cond_7

    .line 35
    array-length p1, p3

    if-ge p2, p1, :cond_d

    .line 36
    iget-byte p1, p0, Lk0/w;->i:B

    if-nez p1, :cond_d

    add-int/2addr p1, v4

    int-to-byte p1, p1

    .line 37
    iput-byte p1, p0, Lk0/w;->i:B

    .line 38
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 39
    iget-object p1, p0, Lk0/w;->j:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_7
    if-nez p1, :cond_d

    .line 40
    iget p1, p0, Lk0/w;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_8

    if-eq p1, v1, :cond_8

    .line 41
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 42
    iget-object p1, p0, Lk0/w;->j:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 43
    iput-byte v3, p0, Lk0/w;->i:B

    .line 44
    :cond_8
    iput v1, p0, Lk0/w;->b:I

    goto/16 :goto_4

    :cond_9
    add-int/lit8 p3, p2, 0x2

    .line 45
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    or-int/2addr p1, p3

    const/16 p2, 0x72

    new-array p3, v4, [I

    aput p1, p3, v3

    .line 46
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 47
    :cond_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p3, p2, 0x2

    .line 48
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 50
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 51
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 52
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 53
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 54
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/h0;->o(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 55
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    invoke-static {p1}, Ll0/h0;->o(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_4

    :cond_b
    add-int/2addr p2, v2

    .line 56
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const/16 p2, 0x6b

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 57
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6c

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 58
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6d

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 59
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6e

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 60
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6f

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x3

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 61
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x70

    new-array p3, v4, [I

    shr-int/lit8 v0, p1, 0x2

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 62
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x71

    new-array p3, v4, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v2

    aput p1, p3, v3

    .line 63
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 64
    :cond_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p2, p2, 0xd

    .line 65
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    .line 66
    invoke-static {p1}, Ll0/h0;->u(I)V

    :cond_d
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x11
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
    iget-object v0, p0, Lk0/w;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/w;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x75

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

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_10

    const/4 v0, 0x2

    if-eq p1, p3, :cond_e

    const/4 v1, 0x3

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    if-eq p1, v1, :cond_a

    const/4 v2, 0x5

    if-eq p1, v0, :cond_8

    if-eq p1, v2, :cond_5

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 p3, 0x18

    if-eq p1, p3, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_12

    .line 1
    array-length p1, p2

    if-lez p1, :cond_12

    .line 2
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/w;->i3(I)V

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_12

    .line 3
    array-length p1, p2

    if-lez p1, :cond_12

    .line 4
    aget p1, p2, p4

    if-eqz p1, :cond_2

    .line 5
    aput p3, p2, p4

    :cond_2
    const/16 p1, 0xd

    .line 6
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/w;->h3(II)V

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_12

    .line 7
    array-length p1, p2

    if-lez p1, :cond_12

    .line 8
    aget p1, p2, p4

    if-eqz p1, :cond_4

    .line 9
    aput p3, p2, p4

    :cond_4
    const/16 p1, 0xc

    .line 10
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/w;->h3(II)V

    goto/16 :goto_1

    :cond_5
    if-eqz p2, :cond_12

    .line 11
    array-length p1, p2

    if-lez p1, :cond_12

    .line 12
    aget p1, p2, p4

    if-gez p1, :cond_6

    aput p4, p2, p4

    goto :goto_0

    .line 13
    :cond_6
    aget p1, p2, p4

    if-le p1, v1, :cond_7

    aput v1, p2, p4

    :cond_7
    :goto_0
    const/4 p1, 0x6

    .line 14
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/w;->h3(II)V

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_12

    .line 15
    array-length p1, p2

    if-lez p1, :cond_12

    .line 16
    aget p1, p2, p4

    if-eqz p1, :cond_9

    .line 17
    aput p3, p2, p4

    .line 18
    :cond_9
    aget p1, p2, p4

    invoke-virtual {p0, v2, p1}, Lk0/w;->h3(II)V

    goto :goto_1

    :cond_a
    if-eqz p2, :cond_12

    .line 19
    array-length p1, p2

    if-lez p1, :cond_12

    .line 20
    aget p1, p2, p4

    if-eqz p1, :cond_b

    .line 21
    aput p3, p2, p4

    .line 22
    :cond_b
    aget p1, p2, p4

    invoke-virtual {p0, v0, p1}, Lk0/w;->h3(II)V

    goto :goto_1

    :cond_c
    if-eqz p2, :cond_12

    .line 23
    array-length p1, p2

    if-lez p1, :cond_12

    .line 24
    aget p1, p2, p4

    if-eqz p1, :cond_d

    .line 25
    aput p3, p2, p4

    .line 26
    :cond_d
    invoke-virtual {p0, v1, p4}, Lk0/w;->h3(II)V

    goto :goto_1

    :cond_e
    if-eqz p2, :cond_12

    .line 27
    array-length p1, p2

    if-lez p1, :cond_12

    .line 28
    aget p1, p2, p4

    if-eqz p1, :cond_f

    .line 29
    invoke-virtual {p0, v0, p4}, Lk0/w;->h3(II)V

    goto :goto_1

    .line 30
    :cond_f
    invoke-virtual {p0, v0, p3}, Lk0/w;->h3(II)V

    goto :goto_1

    :cond_10
    if-eqz p2, :cond_12

    .line 31
    array-length p1, p2

    if-lez p1, :cond_12

    .line 32
    aget p1, p2, p4

    if-eqz p1, :cond_11

    .line 33
    aput p3, p2, p4

    .line 34
    :cond_11
    aget p1, p2, p4

    invoke-virtual {p0, p3, p1}, Lk0/w;->h3(II)V

    :cond_12
    :goto_1
    return-void
.end method

.method public final a3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v3, -0x66

    aput v3, v0, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 p1, 0x4

    aput v1, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final h3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x6d

    aput v1, v0, v2

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

.method public final i3(I)V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x1b

    aput v4, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x3

    aput p1, v0, v3

    aput p1, v0, v2

    const/4 p1, 0x5

    aput v1, v0, p1

    const/4 p1, 0x6

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
