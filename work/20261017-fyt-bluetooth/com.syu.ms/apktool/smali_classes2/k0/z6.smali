.class public Lk0/z6;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Z

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/z6;->c:I

    const/16 v1, 0x9

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

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/z6;->d:[[I

    .line 4
    new-instance v1, Lk0/z6$a;

    invoke-direct {v1, p0}, Lk0/z6$a;-><init>(Lk0/z6;)V

    iput-object v1, p0, Lk0/z6;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lk0/z6$b;

    invoke-direct {v1, p0}, Lk0/z6$b;-><init>(Lk0/z6;)V

    iput-object v1, p0, Lk0/z6;->f:Ljava/lang/Runnable;

    .line 6
    iput-boolean v0, p0, Lk0/z6;->g:Z

    .line 7
    new-instance v0, Lk0/z6$c;

    invoke-direct {v0, p0}, Lk0/z6$c;-><init>(Lk0/z6;)V

    iput-object v0, p0, Lk0/z6;->h:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x43
    .end array-data

    :array_2
    .array-data 4
        0x13
        0x44
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
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x17
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x18
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x4
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
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/z6;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/z6;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/z6;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/z6;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/z6;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v0, p0, Lk0/z6;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 12

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v1, :cond_1a

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-eq p3, v5, :cond_16

    const/16 v6, 0x21

    const/16 v7, 0xb

    const/4 v8, 0x3

    if-eq p3, v6, :cond_8

    const/16 v6, 0x29

    if-eq p3, v6, :cond_7

    const/16 v6, 0x38

    if-eq p3, v6, :cond_5

    const/16 v6, 0x7d

    const/16 v9, 0x64

    if-eq p3, v6, :cond_0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_b

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1f

    add-int/2addr p2, v1

    .line 3
    aget-byte p1, p1, p2

    invoke-static {p1}, Ll0/f0;->a(B)V

    goto/16 :goto_b

    :pswitch_1
    const/16 p3, 0x69

    new-array v0, v3, [I

    add-int/lit8 v1, p2, 0x2

    .line 4
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    aput v1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v3, [I

    add-int/lit8 v1, p2, 0x4

    .line 5
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    aput v1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v3, [I

    add-int/lit8 v1, p2, 0x6

    .line 6
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    aput p1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_2
    const/16 p3, 0x63

    new-array v0, v3, [I

    add-int/lit8 v1, p2, 0x2

    .line 7
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    aput v1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v3, [I

    add-int/lit8 v0, p2, 0x4

    .line 8
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v5

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    aput v0, p3, v2

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v3, [I

    add-int/lit8 v1, p2, 0x6

    .line 9
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    aput p1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_3
    const/16 p3, 0x65

    new-array v0, v3, [I

    add-int/lit8 v1, p2, 0x2

    .line 10
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    aput v1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v3, [I

    add-int/lit8 v1, p2, 0x4

    .line 11
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    aput v1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v3, [I

    add-int/lit8 v1, p2, 0x6

    .line 12
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    aput p1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    const/16 v6, 0x419

    if-eq p3, v3, :cond_3

    if-eq p3, v8, :cond_2

    if-eq p3, v5, :cond_1

    goto/16 :goto_b

    :cond_1
    add-int/lit8 p3, p2, 0x3

    .line 14
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 15
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 16
    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    .line 17
    iput-boolean v3, p0, Lk0/z6;->g:Z

    goto/16 :goto_b

    :cond_2
    add-int/lit8 p3, p2, 0x4

    .line 18
    aget-byte p3, p1, p3

    shl-int/2addr p3, v5

    const v4, 0xff00

    and-int/2addr p3, v4

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    div-int/2addr p1, v9

    const/16 p2, 0x407

    new-array p3, v3, [I

    aput p1, p3, v2

    .line 19
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 20
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    new-array p3, v1, [I

    aput v3, p3, v2

    aput p1, p3, v3

    invoke-static {p2, v6, p3, v0, v0}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_3
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 21
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_4

    add-int/lit8 p3, p2, 0x3

    .line 22
    aget-byte v5, p1, p3

    shr-int/2addr v5, v8

    and-int/2addr v5, v3

    aget-byte p3, p1, p3

    shr-int/2addr p3, v4

    and-int/2addr p3, v3

    invoke-static {v5, p3, v2}, Ll0/c0;->b(III)V

    goto :goto_0

    :cond_4
    add-int/lit8 p3, p2, 0x3

    .line 23
    aget-byte v5, p1, p3

    shr-int/2addr v5, v8

    and-int/2addr v5, v3

    aget-byte p3, p1, p3

    shr-int/2addr p3, v4

    and-int/2addr p3, v3

    invoke-static {v5, p3, v2}, Ll0/c0;->a(III)V

    .line 24
    :goto_0
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    new-array v1, v1, [I

    aput v7, v1, v2

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, v1, v3

    invoke-static {p3, v6, v1, v0, v0}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 25
    aget-byte p3, p1, p3

    const-string v0, "persist.syu.reversefrontdoor"

    .line 26
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v3, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v3

    aput v5, v0, v2

    .line 27
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v3

    aput v5, v0, v2

    .line 28
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v0, v3, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v3

    aput v5, v0, v2

    .line 29
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v3

    aput v5, v0, v2

    .line 30
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v0, v3, [I

    shr-int/lit8 v1, p3, 0x5

    and-int/2addr v1, v3

    aput v1, v0, v2

    .line 31
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/2addr p3, v4

    and-int/2addr p3, v3

    aput p3, v0, v2

    .line 32
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, v8

    .line 33
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x6d

    new-array p3, v3, [I

    and-int/2addr p1, v8

    aput p1, p3, v2

    .line 34
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 35
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x154a

    invoke-static {p3, p1, v2, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_b

    :cond_8
    add-int/lit8 p3, p2, 0x2

    .line 36
    aget-byte p3, p1, p3

    const/16 v0, 0xa

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 37
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/lit8 v4, p3, 0x6

    and-int/2addr v4, v3

    aput v4, v0, v2

    .line 38
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v3

    if-nez v5, :cond_9

    move v5, v2

    goto :goto_2

    :cond_9
    move v5, v3

    :goto_2
    aput v5, v4, v2

    .line 39
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x36

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x4

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 40
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 41
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x2

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 42
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x37

    new-array v4, v3, [I

    aput v5, v4, v2

    .line 43
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x10

    new-array v4, v3, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v3

    aput p3, v4, v2

    .line 44
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 45
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 46
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 47
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v3

    aput v5, v4, v2

    .line 48
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x31

    new-array v4, v3, [I

    and-int/lit16 v5, p3, 0xe0

    if-nez v5, :cond_a

    move v5, v2

    goto :goto_3

    :cond_a
    move v5, v3

    :goto_3
    aput v5, v4, v2

    .line 49
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xf

    and-int/2addr p3, v0

    const/16 v4, 0x9

    if-le p3, v4, :cond_b

    move p3, v4

    :cond_b
    const/16 v5, 0x15

    new-array v6, v3, [I

    aput p3, v6, v2

    .line 50
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 51
    aget-byte v5, p1, p3

    add-int/lit8 v6, p2, 0x5

    .line 52
    aget-byte v7, p1, v6

    const-string v9, "persist.fyt.reversetemp"

    .line 53
    invoke-static {v9, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 54
    aget-byte v5, p1, v6

    .line 55
    aget-byte v7, p1, p3

    :cond_c
    add-int/lit8 p3, p2, 0x6

    .line 56
    aget-byte v6, p1, p3

    and-int/2addr v6, v1

    const/4 v9, -0x3

    const/4 v10, -0x1

    if-nez v6, :cond_f

    const/16 v6, 0x1b

    if-eq v5, v10, :cond_e

    if-eqz v5, :cond_d

    new-array v11, v3, [I

    and-int/lit16 v5, v5, 0xff

    aput v5, v11, v2

    .line 57
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    new-array v5, v3, [I

    const/4 v11, -0x2

    aput v11, v5, v2

    .line 58
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array v5, v3, [I

    aput v9, v5, v2

    .line 59
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    .line 60
    :cond_f
    :goto_4
    aget-byte v5, p1, p3

    and-int/2addr v5, v1

    if-nez v5, :cond_12

    const/16 v5, 0x1c

    if-eq v7, v10, :cond_11

    if-eqz v7, :cond_10

    new-array v6, v3, [I

    and-int/lit16 v7, v7, 0xff

    aput v7, v6, v2

    .line 61
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array v6, v3, [I

    const/4 v7, -0x2

    aput v7, v6, v2

    .line 62
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_11
    new-array v6, v3, [I

    aput v9, v6, v2

    .line 63
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    .line 64
    :cond_12
    :goto_5
    aget-byte p3, p1, p3

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x7

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 65
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x3

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 66
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x25

    new-array v5, v3, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v3

    aput p3, v5, v2

    .line 67
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x7

    .line 68
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    const/16 v0, 0x26

    new-array v5, v3, [I

    and-int/lit16 p3, p3, 0x80

    if-nez p3, :cond_13

    move p3, v2

    goto :goto_6

    :cond_13
    move p3, v3

    :goto_6
    aput p3, v5, v2

    .line 69
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x8

    .line 70
    aget-byte v0, p1, p3

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v8

    if-le v0, v1, :cond_14

    goto :goto_7

    :cond_14
    move v1, v0

    :goto_7
    const/16 v0, 0x34

    new-array v5, v3, [I

    aput v1, v5, v2

    .line 71
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    .line 72
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v8

    const/16 v0, 0x33

    new-array v1, v3, [I

    aput p3, v1, v2

    .line 73
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x16

    new-array v0, v3, [I

    add-int/2addr p2, v4

    .line 74
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v3

    aput v1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x17

    new-array v0, v3, [I

    .line 75
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v3

    aput v1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x18

    new-array v0, v3, [I

    .line 76
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x5

    and-int/2addr v1, v3

    aput v1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x32

    new-array v0, v3, [I

    .line 77
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xe0

    if-nez p1, :cond_15

    move v3, v2

    :cond_15
    aput v3, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 78
    :cond_16
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1f

    add-int/lit8 p3, p2, 0x2

    .line 79
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x3

    .line 80
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    .line 81
    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, p2, 0x4

    .line 82
    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    if-nez v0, :cond_17

    if-nez v5, :cond_17

    if-nez v6, :cond_17

    if-nez v8, :cond_17

    .line 83
    invoke-static {v2}, Lu0/d;->C2(I)V

    goto :goto_8

    .line 84
    :cond_17
    sget v2, Ll0/c0;->g:I

    if-ne v2, v0, :cond_18

    sget v2, Ll0/c0;->h:I

    if-ne v2, v5, :cond_18

    sget v2, Ll0/c0;->i:I

    if-ne v2, v6, :cond_18

    sget v2, Ll0/c0;->j:I

    if-eq v2, v8, :cond_19

    .line 85
    :cond_18
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_19

    .line 86
    invoke-static {v3}, Lu0/d;->C2(I)V

    .line 87
    sput v4, Ll0/c0;->k:I

    .line 88
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 89
    :cond_19
    :goto_8
    sput v0, Ll0/c0;->g:I

    .line 90
    sput v5, Ll0/c0;->h:I

    .line 91
    sput v6, Ll0/c0;->i:I

    .line 92
    sput v8, Ll0/c0;->j:I

    .line 93
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/e0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 94
    aget-byte p3, p1, v1

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/e0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 95
    aget-byte p3, p1, v1

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/e0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 96
    aget-byte p3, p1, v7

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/e0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->G2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 97
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/e0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 98
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/e0;->p(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 99
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/e0;->p(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0x7

    .line 100
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ll0/e0;->p(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_b

    :cond_1a
    add-int/2addr p2, v1

    .line 101
    aget-byte p3, p1, p2

    const/16 v1, 0x20

    if-ne p3, v1, :cond_1b

    .line 102
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p2, 0x6c

    aget-object p1, p1, p2

    new-array p3, v3, [I

    aput v3, p3, v2

    invoke-virtual {p1, p2, p3, v0, v0}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    goto :goto_b

    .line 103
    :cond_1b
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 104
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 105
    iput p1, p0, Lk0/z6;->c:I

    move p2, v2

    .line 106
    :goto_9
    iget-object p3, p0, Lk0/z6;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_1d

    .line 107
    iget v0, p0, Lk0/z6;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v2

    if-ne v0, v1, :cond_1c

    if-eqz v0, :cond_1d

    .line 108
    iput p2, p0, Lk0/z6;->b:I

    goto :goto_a

    :cond_1c
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_1d
    :goto_a
    if-eqz p1, :cond_1e

    .line 109
    array-length p1, p3

    if-ge p2, p1, :cond_1f

    .line 110
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 111
    :cond_1e
    array-length p1, p3

    if-gt p2, p1, :cond_1f

    .line 112
    iget p1, p0, Lk0/z6;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    :cond_1f
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/z6;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/z6;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/z6;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/z6;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/z6;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/z6;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6f

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
    .locals 4

    const/4 p3, 0x4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result p4

    const/4 v0, 0x5

    if-eqz p4, :cond_0

    new-array p4, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, p4, v2

    const/4 v1, 0x1

    aput v0, p4, v1

    const/16 v3, 0x8

    aput v3, p4, p1

    const/4 p1, 0x3

    .line 2
    aget v2, p2, v2

    aput v2, p4, p1

    aget p1, p2, v1

    aput p1, p4, p3

    invoke-static {p4}, Lz/k;->s([I)V

    :cond_0
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    .line 4
    array-length p1, p2

    if-lez p1, :cond_1

    new-array p1, p3, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_1

    .line 6
    array-length p1, p2

    if-lez p1, :cond_1

    new-array p1, p3, [I

    .line 7
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_1

    .line 8
    array-length p1, p2

    if-lez p1, :cond_1

    new-array p1, p3, [I

    .line 9
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x5
        0x8
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        -0x71
        0x35
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        -0x71
        0x34
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        -0x71
        0x33
    .end array-data
.end method
