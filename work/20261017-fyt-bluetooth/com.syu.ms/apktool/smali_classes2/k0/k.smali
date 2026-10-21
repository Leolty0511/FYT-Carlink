.class public Lk0/k;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Z

.field public i:Ljava/lang/Runnable;

.field public j:B

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/k;->b:I

    .line 3
    iput v0, p0, Lk0/k;->c:I

    .line 4
    iput v0, p0, Lk0/k;->d:I

    const/16 v1, 0xff

    .line 5
    iput v1, p0, Lk0/k;->f:I

    const/16 v1, 0x15

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 6
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

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/k;->g:[[I

    .line 7
    iput-boolean v0, p0, Lk0/k;->h:Z

    .line 8
    new-instance v1, Lk0/k$a;

    invoke-direct {v1, p0}, Lk0/k$a;-><init>(Lk0/k;)V

    iput-object v1, p0, Lk0/k;->i:Ljava/lang/Runnable;

    .line 9
    iput-byte v0, p0, Lk0/k;->j:B

    .line 10
    new-instance v0, Lk0/k$b;

    invoke-direct {v0, p0}, Lk0/k$b;-><init>(Lk0/k;)V

    iput-object v0, p0, Lk0/k;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/k$c;

    invoke-direct {v0, p0}, Lk0/k$c;-><init>(Lk0/k;)V

    iput-object v0, p0, Lk0/k;->l:Ljava/lang/Runnable;

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
        0x8
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x37
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x12
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x5
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x20
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x21
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_f
    .array-data 4
        0x11
        0x1b
    .end array-data

    :array_10
    .array-data 4
        0x12
        0x1c
    .end array-data

    :array_11
    .array-data 4
        0x13
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x14
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x15
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x16
        0x19
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0xa

    .line 1
    div-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, -0x1

    const/16 v0, 0x9

    if-le p0, v0, :cond_0

    const/16 p0, 0xf

    :cond_0
    return p0
.end method

.method public static synthetic b3(Lk0/k;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/k;->k:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lk0/k;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/k;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1a

    const/16 p3, 0x22

    const/4 v1, 0x7

    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, p3, :cond_f

    const/16 p3, 0x31

    const/4 v7, 0x5

    const/16 v8, 0xff

    if-eq v0, p3, :cond_d

    const/16 p3, 0x76

    if-eq v0, p3, :cond_c

    const/16 p3, 0x41

    if-eq v0, p3, :cond_b

    const/16 p3, 0x42

    if-eq v0, p3, :cond_a

    const/4 p3, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const/16 p3, 0x65

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v8

    or-int/2addr v2, v3

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x4

    .line 3
    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/2addr v3, v8

    or-int/2addr v2, v3

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x6

    .line 4
    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    or-int/2addr p1, v2

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_1
    const/16 p3, 0x68

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v8

    or-int/2addr v2, v3

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x4

    .line 6
    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/2addr v3, v8

    or-int/2addr v2, v3

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x6

    .line 7
    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    or-int/2addr p1, v2

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_2
    const/16 p3, 0x66

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x2

    .line 8
    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v8

    or-int/2addr v2, v3

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x4

    .line 9
    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/2addr v3, v8

    or-int/2addr v2, v3

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x62

    new-array v0, v6, [I

    add-int/lit8 v2, p2, 0x6

    .line 10
    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v4

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    or-int/2addr p1, v2

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_3
    add-int/2addr p2, p3

    .line 11
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 12
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 13
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 14
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 15
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 16
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 17
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 18
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 19
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_4
    add-int/lit8 v0, p2, 0x4

    .line 20
    aget-byte v1, p1, v0

    add-int/2addr p2, v7

    .line 21
    aget-byte v2, p1, p2

    if-ne v2, v6, :cond_5

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 22
    sget v1, Lh0/c;->E:I

    if-eq v1, p3, :cond_2

    if-eq v1, v7, :cond_1

    .line 23
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p3

    const/16 v1, 0x214

    invoke-virtual {p3, v1}, Lc/e;->c(I)Z

    goto :goto_1

    .line 24
    :cond_1
    sget-object p3, Lh0/c;->b:Lh0/f;

    invoke-interface {p3}, Lh0/f;->e()V

    goto :goto_1

    .line 25
    :cond_2
    sget-object p3, Lh0/c;->b:Lh0/f;

    invoke-interface {p3}, Lh0/f;->n()V

    goto :goto_1

    :cond_3
    const/16 p3, 0x14

    const/4 v2, 0x0

    if-ne v1, p3, :cond_4

    .line 26
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x73

    aget-object p3, p3, v1

    new-array v3, v6, [I

    aput v6, v3, v5

    invoke-virtual {p3, v1, v3, v2, v2}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 p3, 0x15

    if-ne v1, p3, :cond_5

    .line 27
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x74

    aget-object p3, p3, v1

    new-array v3, v6, [I

    aput v6, v3, v5

    invoke-virtual {p3, v1, v3, v2, v2}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    .line 28
    :cond_5
    :goto_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 29
    aget-byte p3, p1, v0

    .line 30
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 31
    iput p2, p0, Lk0/k;->f:I

    move p2, v5

    .line 32
    :goto_2
    iget-object p3, p0, Lk0/k;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_7

    .line 33
    iget v0, p0, Lk0/k;->f:I

    aget-object v1, p3, p2

    aget v1, v1, v5

    if-ne v0, v1, :cond_6

    if-eqz v0, :cond_7

    .line 34
    iput p2, p0, Lk0/k;->e:I

    goto :goto_3

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    and-int/2addr p1, v8

    if-ne p1, v6, :cond_8

    .line 35
    array-length p1, p3

    if-ge p2, p1, :cond_1b

    .line 36
    iget-byte p1, p0, Lk0/k;->j:B

    if-nez p1, :cond_1b

    add-int/2addr p1, v6

    int-to-byte p1, p1

    .line 37
    iput-byte p1, p0, Lk0/k;->j:B

    .line 38
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 39
    iget-object p1, p0, Lk0/k;->k:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_8
    if-nez p1, :cond_1b

    .line 40
    iget p1, p0, Lk0/k;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_9

    if-eq p1, v8, :cond_9

    .line 41
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 42
    iget-object p1, p0, Lk0/k;->k:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 43
    iput-byte v5, p0, Lk0/k;->j:B

    .line 44
    :cond_9
    iput v8, p0, Lk0/k;->e:I

    goto/16 :goto_b

    :cond_a
    add-int/lit8 p3, p2, 0x2

    .line 45
    aget-byte p3, p1, p3

    shl-int/2addr p3, v4

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    or-int/2addr p1, p3

    const/16 p2, 0x72

    new-array p3, v6, [I

    aput p1, p3, v5

    .line 46
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 47
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/lit8 p3, p2, 0x2

    .line 48
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lk0/k;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lk0/k;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 50
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lk0/k;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 51
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lk0/k;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 52
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lk0/k;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 53
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lk0/k;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x8

    .line 54
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Lk0/k;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 55
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    invoke-static {p1}, Lk0/k;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    :cond_c
    add-int/2addr p2, v3

    .line 56
    aget-byte p1, p1, p2

    const/16 p2, 0x6c

    new-array p3, v6, [I

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v6

    aput p1, p3, v5

    .line 57
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 58
    :cond_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/lit8 p2, p2, 0xd

    .line 59
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    const/16 p2, 0x50

    if-lt p1, p2, :cond_e

    mul-int/2addr p1, v7

    add-int/lit16 p1, p1, 0x3e8

    add-int/lit16 p1, p1, -0x190

    goto :goto_4

    :cond_e
    mul-int/2addr p1, v7

    rsub-int p1, p1, 0x190

    rsub-int p1, p1, 0x3e8

    :goto_4
    const/16 p2, 0x258

    if-le p1, p2, :cond_1b

    .line 60
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_b

    .line 61
    :cond_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/lit8 p3, p2, 0x2

    .line 62
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 63
    aget-byte p1, p1, p2

    if-eq p3, v6, :cond_15

    if-eq p3, v2, :cond_10

    goto/16 :goto_b

    .line 64
    :cond_10
    iget p2, p0, Lk0/k;->c:I

    if-eq p1, p2, :cond_1b

    if-le p1, p2, :cond_12

    move p2, v5

    .line 65
    :goto_5
    iget p3, p0, Lk0/k;->c:I

    sub-int p3, p1, p3

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_11

    .line 66
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 67
    :cond_11
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_12
    if-ge p1, p2, :cond_14

    move p2, v5

    .line 68
    :goto_6
    iget p3, p0, Lk0/k;->c:I

    sub-int/2addr p3, p1

    const/16 v0, 0x1e

    if-ge p2, p3, :cond_13

    .line 69
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 70
    :cond_13
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 71
    :cond_14
    :goto_7
    iput p1, p0, Lk0/k;->c:I

    goto :goto_b

    .line 72
    :cond_15
    iget p2, p0, Lk0/k;->b:I

    if-eq p1, p2, :cond_1b

    if-le p1, p2, :cond_17

    move p2, v5

    .line 73
    :goto_8
    iget p3, p0, Lk0/k;->b:I

    sub-int p3, p1, p3

    if-ge p2, p3, :cond_16

    .line 74
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 75
    :cond_16
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_17
    if-ge p1, p2, :cond_19

    move p2, v5

    .line 76
    :goto_9
    iget p3, p0, Lk0/k;->b:I

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_18

    .line 77
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 78
    :cond_18
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 79
    :cond_19
    :goto_a
    iput p1, p0, Lk0/k;->b:I

    goto :goto_b

    .line 80
    :cond_1a
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_1b
    :goto_b
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
    iget-object v0, p0, Lk0/k;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/k;->i:Ljava/lang/Runnable;

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
    .locals 0

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eq p1, p3, :cond_1

    const/16 p3, 0x18

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lez p1, :cond_3

    .line 2
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/k;->d3(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-lez p1, :cond_3

    .line 4
    aget p1, p2, p4

    if-eqz p1, :cond_2

    .line 5
    aput p3, p2, p4

    :cond_2
    const/4 p1, 0x2

    .line 6
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/k;->c3(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x7b

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

.method public final d3(I)V
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
